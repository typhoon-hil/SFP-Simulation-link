library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

library work;
use work.hssl_comp_dec_1l.all;

entity hssl_ctrl_test_1l is
  generic(
    -- General
    NO_OF_UNIT          :     natural := 3;
    ONE_SEC_TC          :     natural := 200000000
    );
  port(
    i_clk_p             : in  std_logic;
    i_clk_n             : in  std_logic;
    i_reset           : in  std_logic;
    -- User IO
    i_unit_id           : in  std_logic_vector(3 downto 0);  -- We have 8 sw on vc707 board. Top 4(sw 1 to 4) are for unit_id.
    o_led               : out std_logic_vector(3 downto 0);
    i_sw                : in  std_logic_vector(3 downto 0);  -- We have 8 sw on vc707 board. Lower 4(sw 5 to 8) are for control.
    -- Aurora GTX clock
    i_gtx_clk_p         : in  std_logic;
    i_gtx_clk_n         : in  std_logic;
    --
    sfp_tx_disable_o    : out std_logic;  -- For sfp to work, we need to assign this pin to 0.
    -- Aurora life
    o_link_up           : out std_logic;
    o_channel_up        : out std_logic;
    o_error             : out std_logic;
    -- Aurora GTX data
    i_gtx_rx_p          : in  std_logic;
    i_gtx_rx_n          : in  std_logic;
    o_gtx_tx_p          : out std_logic;
    o_gtx_tx_n          : out std_logic
  );
end hssl_ctrl_test_1l;

architecture rtl of hssl_ctrl_test_1l is

  attribute mark_debug     : string;
  attribute keep           : string;
  attribute syn_noclockbuf : boolean;

  signal reset_n              : std_logic;
  signal gtx_rst_n            : std_logic;
  -- Clk_wizard 
  signal cgu_rst              : std_logic;
  signal clk                  : std_logic;
  signal reset_from_clk_wiz   : std_logic;
  -- Destination unit 
  signal dest_unit            : unsigned(3 downto 0);
  signal dest_unit_en         : std_logic;
  signal dest_unit_tc         : std_logic;
  -- One sec counter  
  signal sec_cnt              : unsigned(31 downto 0);
  signal sec_cnt_en           : std_logic;
  signal sec_cnt_tc           : std_logic;
  -- Data interface
  signal tx_req               : std_logic;
  signal tx_ack               : std_logic;
  signal tx_data              : std_logic_vector(31 downto 0);
  signal tx_data_we           : std_logic;
  signal tx_paylod_size       : std_logic_vector(7 downto 0);
  signal rx_valid             : std_logic;
  signal rx_data              : std_logic_vector(31 downto 0);
  signal msg_heder            : std_logic_vector(31 downto 0);
  -- Data counter
  signal data_send_en         : std_logic;
  signal send_data_pckt       : unsigned(7 downto 0);
  -- Sync interface
  signal sync_m2s_data_out    : std_logic_vector(15 downto 0);
  signal sync_a2a_data_out    : std_logic_vector(15 downto 0);
  -- Aurora status signals
  signal link_lane_up         : std_logic;
  signal link_lane_up_d       : std_logic;
  signal link_lane_up_dd      : std_logic;
  signal link_channel_up      : std_logic;
  signal link_channel_up_d    : std_logic;
  signal link_channel_up_dd   : std_logic;
  signal link_hard_err        : std_logic;
  signal link_hard_err_d      : std_logic;
  signal link_hard_err_dd     : std_logic;
  signal link_soft_err        : std_logic;
  signal link_soft_err_d      : std_logic;
  signal link_soft_err_dd     : std_logic;
  signal link_frame_err       : std_logic;
  signal link_frame_err_d     : std_logic;
  signal link_frame_err_dd    : std_logic;
  -- Data int status
  signal rx_fifo_full         : std_logic;
  signal tx_fifo_full         : std_logic;
  -- Aurora GTX clock
  signal u0_ctrl_gtx_clk_p    : std_logic;
  signal u0_ctrl_gtx_clk_n    : std_logic;
  -- Aurora GTX data
  signal u0_ctrl_gtx_rx_p     : std_logic;
  signal u0_ctrl_gtx_rx_n     : std_logic;
  signal gtx_tx_p_buff        : std_logic;
  signal gtx_tx_n_buff        : std_logic;
  -- Generate dummy content
  signal data_gen             : unsigned(31 downto 0);
  signal data_gen_en          : std_logic;
  -- Hssl_ctrl_1l - distributive signals
  signal sync_a2a_data        : std_logic_vector(15 downto 0);
  signal unit_id              : std_logic_vector(3 downto 0);
  signal hssl_ctrl_reset_n    : std_logic;
  signal sync_m2s_data_in     : std_logic_vector(15 downto 0);
  signal hssl_ctrl_debug_port : std_logic_vector(20 downto 0);

 type gen_msg_state_type is (IDLE, GET_HDR, WAIT_ACK, SEND_CON_4, NEXT_UNIT);
 signal fsm_state           : gen_msg_state_type;

begin 
  
  sfp_tx_disable_o <= '0';

  -- Aurora status
  process (clk)
  begin
    if rising_edge(clk) then
      link_lane_up_d     <= link_lane_up;
      link_lane_up_dd    <= link_lane_up_d;
      link_channel_up_d  <= link_channel_up;
      link_channel_up_dd <= link_channel_up_d;
      link_hard_err_d    <= link_hard_err;
      link_hard_err_dd   <= link_hard_err_d;
      link_soft_err_d    <= link_soft_err;
      link_soft_err_dd   <= link_soft_err_d;
      link_frame_err_d   <= link_frame_err;
      link_frame_err_dd  <= link_frame_err_d;
    end if;
  end process;

  o_link_up    <= link_lane_up_dd;
  o_channel_up <= link_channel_up_dd;
  o_error      <= link_hard_err_dd and link_soft_err_dd and link_frame_err_dd;

  -- Generate dummy content
  process (clk, reset_n)
  begin
    if reset_n = '0' then 
      data_gen <= (others => '0');
    elsif rising_edge(clk) then 
      if (data_gen_en = '1') then
          data_gen <= data_gen + 1;
      end if;
    end if;
  end process;
  data_gen_en <= '1' when (fsm_state = SEND_CON_4) else '0';

  -- Data counter
  process (clk, reset_n)
  begin
    if reset_n = '0' then 
      send_data_pckt <= (others => '0');
    elsif rising_edge(clk) then 
      if(fsm_state = GET_HDR) then
        send_data_pckt <= unsigned(tx_paylod_size); -- Header is not included as data
      elsif (data_send_en = '1') then    
        send_data_pckt <= send_data_pckt - 1;
      end if;
    end if;
  end process; 
  data_send_en <= '1' when (fsm_state = SEND_CON_4) else '0';

  -- Generate destination unit addr
  process (clk, reset_n)
  begin
    if reset_n = '0' then 
      dest_unit <= (others => '0');
    elsif rising_edge(clk) then 
      if (dest_unit_en = '1') then
        if (dest_unit_tc = '1')  then
          dest_unit <= (others => '0');
        else
          dest_unit <= dest_unit + 1;
        end if;
      end if;
    end if;
  end process;
  dest_unit_en <= '1' when (fsm_state = NEXT_UNIT) else '0';
  dest_unit_tc <= '1' when (dest_unit = NO_OF_UNIT - 1) else '0';

  -- Cnt for serial do extracting
  process (clk, reset_n)
  begin
    if reset_n = '0' then 
      sec_cnt <= (others => '0');
    elsif rising_edge(clk) then 
      if (sec_cnt_en = '1') then
        if (sec_cnt_tc = '1')  then
          sec_cnt <= (others => '0');
        else
          sec_cnt <= sec_cnt + 1;
        end if;
      end if;
    end if;
  end process;
  sec_cnt_en <= '1' when (fsm_state = IDLE) else '0';
  sec_cnt_tc <= '1' when (sec_cnt = ONE_SEC_TC - 1) else '0';

  -- ______________________________ RX FSM _____________________________________
  process (clk, reset_n)
  begin
    if (reset_n='0') then
      fsm_state <= IDLE;
    elsif (rising_edge(clk)) then
      case (fsm_state) is
        when IDLE       =>
                            if (link_channel_up = '1' and sec_cnt_tc = '1') then
                              fsm_state <= GET_HDR;
                            end if;
        when GET_HDR    =>
                            if (dest_unit = unsigned(i_unit_id)) then
                              fsm_state <= NEXT_UNIT;
                            else
                              fsm_state <= WAIT_ACK;
                            end if;             
        when WAIT_ACK   =>
                            if (tx_ack = '1') then
                              fsm_state <= SEND_CON_4;
                            end if;
        when SEND_CON_4 =>
                            if((send_data_pckt - 1) = 0) then
                              fsm_state <= NEXT_UNIT;
                            end if;
        when NEXT_UNIT  =>
                            if (dest_unit_tc = '1') then
                              fsm_state <= IDLE;
                            else
                              fsm_state <= GET_HDR;
                            end if;
      end case;
    end if;
  end process;
    
  tx_req         <= '1'       when (fsm_state /= IDLE and fsm_state /= GET_HDR and fsm_state /= NEXT_UNIT) else '0';
  tx_data        <= msg_heder when (fsm_state = WAIT_ACK)                                                  else std_logic_vector(data_gen);  --  when (fsm_state = SEND_CON_4) else ; used for simulation purposes
  tx_data_we     <= '1'       when ((fsm_state = WAIT_ACK) or (fsm_state = SEND_CON_4))                    else '0';
  tx_paylod_size <= "00000001";

  -- Register msg header
  process (clk, reset_n)
  begin
    if (reset_n = '0') then
      msg_heder <= (others => '0');
    elsif (rising_edge(clk)) then
      if (fsm_state = GET_HDR) then
        msg_heder <= i_unit_id & std_logic_vector(dest_unit) & tx_paylod_size & x"0000";
      end if;
    end if;
  end process;

  clk_wiz_u0 : clk_wiz
  port map (
    clk_out1  => clk,
    reset     => i_reset,
    locked    => reset_n,  -- When i_reset = 1, clk wiz is stoped and this output is inverted and it is 0.
    clk_in1_p => i_clk_p,
    clk_in1_n => i_clk_n
  );

  -----------------------------------------------------------------------------------------
  -- Module instances
  -----------------------------------------------------------------------------------------

  hssl_ctrl_u0 : hssl_ctrl_1l
  generic map(
    -- aurora
    DEVICE_ID_WIDTH => 4
    )
  port map(
    i_clk                  => clk,
    i_reset_n              => hssl_ctrl_reset_n,
    -- Global
    i_en                   => '1',
    i_device_id            => unit_id,
    -- Data interface
    i_tx_req               => tx_req,
    o_tx_ack               => tx_ack,
    i_tx_data              => tx_data,
    o_rx_valid             => rx_valid,
    o_rx_data              => rx_data,
    -- Sync interface
    i_sync_master          => i_sw(0),
    i_sync_m2s_data        => sync_m2s_data_in,
    o_sync_m2s_data        => sync_m2s_data_out,
    i_sync_a2a_data        => sync_a2a_data,
    o_sync_a2a_data        => sync_a2a_data_out,
    -- Data int status
    o_rx_fifo_full         => rx_fifo_full,
    o_tx_fifo_full         => tx_fifo_full,
    -- Aurora status
    o_link_lane_up         => link_lane_up,
    o_link_channel_up      => link_channel_up,
    o_link_hard_err        => link_hard_err,
    o_link_soft_err        => link_soft_err,
    o_link_frame_err       => link_frame_err,
    -- Aurora GTX clock
    i_gtx_clk_p            => u0_ctrl_gtx_clk_p,
    i_gtx_clk_n            => u0_ctrl_gtx_clk_n,
    -- Aurora GTX reset
    i_gtx_rst_n            => hssl_ctrl_reset_n,
    -- Aurora GTX data
    i_gtx_rx_p             => u0_ctrl_gtx_rx_p,
    i_gtx_rx_n             => u0_ctrl_gtx_rx_n,
    o_gtx_tx_p             => o_gtx_tx_p,
    o_gtx_tx_n             => o_gtx_tx_n,
    -- For debug
    o_debug_port           => open,
    o_hssl_ctrl_debug_port => hssl_ctrl_debug_port
  );  

  sync_a2a_data     <= (x"000" & "00" & i_sw(3 downto 2));
  sync_m2s_data_in  <= std_logic_vector(to_unsigned(0, 13)) & '0' & i_sw(1 downto 0);
  unit_id           <= i_unit_id;
  hssl_ctrl_reset_n <= reset_n;
  u0_ctrl_gtx_clk_p <= i_gtx_clk_p;
  u0_ctrl_gtx_clk_n <= i_gtx_clk_n;
  u0_ctrl_gtx_rx_p  <= i_gtx_rx_p;
  u0_ctrl_gtx_rx_n  <= i_gtx_rx_n;

  o_led <= sync_a2a_data_out(1 downto 0) & sync_m2s_data_out(1 downto 0);

end rtl;
