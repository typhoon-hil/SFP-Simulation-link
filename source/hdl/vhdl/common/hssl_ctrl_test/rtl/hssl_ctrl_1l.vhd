library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.hssl_comp_dec.all;
use work.aurora_comp_dec_1l.all;

entity hssl_ctrl_1l is
  generic(
    -- General
    DEVICE_ID_WIDTH     : natural := 1
    );
  port(
    i_clk                  : in  std_logic;
    i_reset_n              : in  std_logic;
    -- Global
    i_en                   : in  std_logic;
    i_disable_header       : in  std_logic;
    i_device_id            : in  std_logic_vector(DEVICE_ID_WIDTH-1 downto 0);
    -- Data interface
    i_tx_req               : in  std_logic;
    o_tx_ack               : out std_logic;
    i_tx_data              : in  std_logic_vector(31 downto 0);
    i_tx_last              : in  std_logic;
    o_rx_valid             : out std_logic;
    o_rx_last              : out std_logic;
    o_rx_data              : out std_logic_vector(31 downto 0);
    -- Sync interface
    i_sync_master          : in  std_logic;
    i_sync_m2s_data        : in  std_logic_vector(15 downto 0);  -- master to slave
    o_sync_m2s_data        : out std_logic_vector(15 downto 0);
    i_sync_a2a_data        : in  std_logic_vector(15 downto 0);  -- any 2 all
    o_sync_a2a_data        : out std_logic_vector(15 downto 0);
    -- Data int status
    o_rx_fifo_full         : out std_logic;
    o_tx_fifo_full         : out std_logic;
    -- Aurora status
    o_link_lane_up         : out std_logic;
    o_link_channel_up      : out std_logic;
    o_link_hard_err        : out std_logic;
    o_link_soft_err        : out std_logic;
    o_link_frame_err       : out std_logic;
    -- Aurora GTX clock
    i_gtx_clk_p            : in  std_logic;
    i_gtx_clk_n            : in  std_logic;
    -- Aurora GTX reset
    i_gtx_rst_n            : in  std_logic;
    -- Aurora GTX data
    i_gtx_rx_p             : in  std_logic;
    i_gtx_rx_n             : in  std_logic;
    o_gtx_tx_p             : out std_logic;
    o_gtx_tx_n             : out std_logic;
    -- For debug
    o_debug_port           : out std_logic_vector(7 downto 0);
    o_hssl_ctrl_debug_port : out std_logic_vector(20 downto 0)
  );
end hssl_ctrl_1l;

architecture rtl of hssl_ctrl_1l is

  constant SYNC_MSG_M2S : natural := 0;
  constant SYNC_MSG_A2A : natural := 1;

  type rx_state_type     is (RX_WAIT_FOR_HEADER, RX_PARSE_HEADER, RX_WAIT_FOR_DATA, RX_TERM_FRAME, RX_RCV_FRAME, RX_BYPASS_FRAME);
  type tx_out_state_type is (TX_OUT_IDLE, TX_OUT_SEND);
  type tx_state_type     is (TX_IDLE, TX_SEND, TX_BYPASS);
  type sync_state_type   is (SYNC_IDLE, SYNC_M2S_SND_REQ, SYNC_M2S_SND_DATA, SYNC_M2S_BYPASS, SYNC_A2A_SND_REQ, SYNC_A2A_SND_DATA, SYNC_A2A_BYPASS);

  signal user_clk : std_logic;
  signal reset    : std_logic;
  signal reset_n  : std_logic;
  signal en_d     : std_logic;
  signal en_dd    : std_logic;

  ---------------------------------------------------------
  -- Aurora
  ---------------------------------------------------------

  -- Aurora AXI TX Interface
  signal axi_tx_data      : std_logic_vector(31 downto 0);
  signal axi_tx_tstrb     : std_logic_vector(3 downto 0);
  signal axi_tx_tvalid    : std_logic;
  signal axi_tx_tlast     : std_logic;
  signal axi_tx_tready    : std_logic;
  -- Aurora AXI RX Interface
  signal axi_rx_data      : std_logic_vector(31 downto 0);
  signal axi_rx_tstrb     : std_logic_vector(3 downto 0);
  signal axi_rx_tvalid    : std_logic;
  signal axi_rx_tlast     : std_logic;
  -- Aurora UFC TX Interface
  signal ufc_tx_req       : std_logic;
  signal ufc_tx_ms        : std_logic_vector(2 downto 0);
  signal ufc_tx_ack       : std_logic;
  -- Aurora status
   signal link_channel_up : std_logic;
  -- Aurora UFC RX Interface
  signal ufc_rx_tdata     : std_logic_vector(31 downto 0);
  signal ufc_rx_tstrb     : std_logic_vector(3 downto 0);
  signal ufc_rx_tvalid    : std_logic;
  signal ufc_rx_tlast     : std_logic;
  -- Aurora HSS signals
  signal gtx_tx_p_buff    : std_logic;
  signal gtx_tx_n_buff    : std_logic;

  ------------------------------------------------------------
  -- Data logic
  ------------------------------------------------------------

  -- RX interface
  signal rx_src_id            : std_logic_vector(3 downto 0);
  signal rx_dst_id            : std_logic_vector(3 downto 0);
  signal rx_header            : std_logic_vector(31 downto 0);
  signal rx_fsm_state         : rx_state_type;
  signal rx_fifo_full         : std_logic;
  signal rx_s_tvalid          : std_logic;
  signal rx_s_tlast           : std_logic;
  signal rx_s_tdata           : std_logic_vector(31 downto 0);
  
  signal rx_m_tvalid          : std_logic;
  signal rx_m_tvalid_d        : std_logic;
  signal rx_m_tvalid_re       : std_logic;
  signal rx_m_tready          : std_logic;
  signal rx_m_tdata           : std_logic_vector(31 downto 0);
  signal rx_m_tlast           : std_logic;

  -- TX interface
  signal tx_fsm_state       : tx_state_type;
  signal tx_ack             : std_logic;
  signal tx_bypass_data     : std_logic_vector(31 downto 0);
  signal tx_bypass_last     : std_logic;
  signal tx_bypass_req      : std_logic;
  signal tx_bypass_ack      : std_logic;
  signal tx_fifo_full       : std_logic;

  signal tx_s_tvalid          : std_logic;
  signal tx_s_tready          : std_logic;
  signal tx_s_tdata           : std_logic_vector(31 downto 0);
  signal tx_s_tlast           : std_logic;

  signal tx_m_tvalid          : std_logic;
  signal tx_m_tready          : std_logic;
  signal tx_m_tdata           : std_logic_vector(31 downto 0);
  signal tx_m_tlast           : std_logic;
 

  ------------------------------------------------------------
  -- Sync logic
  ------------------------------------------------------------

  signal sync_fsm_state          : sync_state_type;
  signal sync_m2s_data_in_c1_d   : std_logic_vector(15 downto 0);
  signal sync_m2s_data_in_c2_d   : std_logic_vector(15 downto 0);
  signal sync_m2s_data_in_c2_dd  : std_logic_vector(15 downto 0);
  signal sync_m2s_data_out_c2_d  : std_logic_vector(15 downto 0);
  signal sync_m2s_data_out_c2_dd : std_logic_vector(15 downto 0);
  signal sync_m2s_data_in        : std_logic_vector(15 downto 0);
  signal sync_m2s_data_in_d      : std_logic_vector(15 downto 0);
  signal sync_m2s_data_out       : std_logic_vector(15 downto 0);
  signal sync_master_c1_d        : std_logic;
  signal sync_master_c2_d        : std_logic;
  signal sync_master_c2_dd       : std_logic;
  signal sync_master             : std_logic;
  signal sync_m2s_in_changed     : std_logic;
  signal sync_m2s_send_req       : std_logic;
  signal sync_a2a_data_in_c1_d   : std_logic_vector(15 downto 0);
  signal sync_a2a_data_in_c2_d   : std_logic_vector(15 downto 0);
  signal sync_a2a_data_in_c2_dd  : std_logic_vector(15 downto 0);
  signal sync_a2a_data_out_c2_d  : std_logic_vector(15 downto 0);
  signal sync_a2a_data_out_c2_dd : std_logic_vector(15 downto 0);
  signal sync_a2a_data_in        : std_logic_vector(15 downto 0);
  signal sync_a2a_data_in_d      : std_logic_vector(15 downto 0);
  signal sync_a2a_data_out       : std_logic_vector(15 downto 0);
  signal sync_a2a_in_changed     : std_logic;
  signal sync_a2a_send_req       : std_logic;
  signal axi_tx_data_sync        : std_logic_vector(31 downto 0);
  signal sync_tx_msg_type        : std_logic_vector(3 downto 0);
  signal sync_rx_msg_type        : std_logic_vector(3 downto 0);
  signal sync_tx_src_id          : std_logic_vector(3 downto 0);
  signal sync_rx_src_id          : std_logic_vector(3 downto 0);
  signal sync_tx_header          : std_logic_vector(15 downto 0);
  signal ufc_rx_tdata_d          : std_logic_vector(31 downto 0);
  signal rest_out_d              : std_logic;
  signal rest_out_dd             : std_logic;
  signal sync_reset_out          : std_logic;
  signal sync_master_d           : std_logic;
  signal slave2master            : std_logic;

  attribute mark_debug                  : string;
  attribute mark_debug of axi_tx_data   : signal is "true";
  attribute mark_debug of axi_tx_tvalid : signal is "true";
  attribute mark_debug of axi_tx_tlast  : signal is "true";

  attribute mark_debug of axi_rx_data   : signal is "true";
  attribute mark_debug of axi_rx_tvalid : signal is "true";
  attribute mark_debug of axi_rx_tlast  : signal is "true";
  
  attribute mark_debug of tx_fsm_state  : signal is "true";

begin

  o_hssl_ctrl_debug_port(0)           <= user_clk;
  o_hssl_ctrl_debug_port(1)           <= axi_tx_tvalid;
  o_hssl_ctrl_debug_port(2)           <= axi_tx_tready;
  o_hssl_ctrl_debug_port(3)           <= ufc_tx_req;
  o_hssl_ctrl_debug_port(4)           <= ufc_tx_ack;
  o_hssl_ctrl_debug_port(20 downto 5) <= axi_tx_data(31 downto 16);

  reset   <= not reset_n;
  reset_n <= i_reset_n and link_channel_up;

  -- Enable ccd sync
  process (user_clk)
  begin
    if (rising_edge(user_clk)) then
      en_d  <= i_en;
      en_dd <= en_d;
    end if;
  end process;

  o_link_channel_up <= link_channel_up;

  -----------------------------------------------------------------------------------------
  -- Data interface logic
  -----------------------------------------------------------------------------------------

  -- Status
  o_rx_fifo_full <= rx_fifo_full;
  o_tx_fifo_full <= tx_fifo_full;

  -- RX logic
  -----------------------------------------------

  -- RX fsm
  process (i_clk)
  begin
    if (rising_edge(i_clk)) then
      if (reset_n='0') then
        rx_fsm_state <= RX_WAIT_FOR_HEADER;
      else
        case (rx_fsm_state) is
          when RX_WAIT_FOR_HEADER  =>
                                    if (rx_m_tvalid_re = '1') then
                                      if (i_disable_header = '1') then
                                        rx_fsm_state <= RX_RCV_FRAME;
                                      else
                                        rx_fsm_state <= RX_PARSE_HEADER;
                                      end if;
                                    end if;
          when RX_PARSE_HEADER     =>
                                      rx_fsm_state <= RX_WAIT_FOR_DATA;
          when RX_WAIT_FOR_DATA    =>
                                    if (rx_dst_id = i_device_id) then
                                      rx_fsm_state <= RX_RCV_FRAME;
                                    elsif (rx_src_id = i_device_id) then
                                      rx_fsm_state <= RX_TERM_FRAME;
                                    else
                                      rx_fsm_state <= RX_BYPASS_FRAME;
                                    end if;
          when RX_RCV_FRAME        =>
                                    if (rx_m_tlast = '1') then
                                      rx_fsm_state <= RX_WAIT_FOR_HEADER;
                                    end if;
          when RX_TERM_FRAME       =>
                                    if (rx_m_tlast = '1') then
                                      rx_fsm_state <= RX_WAIT_FOR_HEADER;
                                    end if;
          when RX_BYPASS_FRAME     =>
                                    if ((rx_m_tlast = '1') and (tx_bypass_ack = '1')) then
                                      rx_fsm_state <= RX_WAIT_FOR_HEADER;
                                    end if;
        end case;
      end if;
    end if;
  end process;

  rx_m_tready <= '1' when ((rx_fsm_state = RX_RCV_FRAME) or (rx_fsm_state = RX_TERM_FRAME) or
                           ((rx_fsm_state = RX_BYPASS_FRAME) and (tx_bypass_ack = '1'))) else '0';

  tx_bypass_req <= '1' when (rx_fsm_state = RX_BYPASS_FRAME) else '0';
  tx_bypass_last <= '1' when ((rx_fsm_state = RX_BYPASS_FRAME) and (rx_m_tlast = '1')) else '0';
  tx_bypass_data <= rx_m_tdata;

  o_rx_valid <= rx_m_tready;
  o_rx_data <= rx_m_tdata;
  o_rx_last <= rx_m_tlast;

  process (i_clk)
  begin
    if (rising_edge(i_clk)) then
      if (reset_n='0') then
        rx_header <= (others => '0');
      else
        if (rx_fsm_state = RX_PARSE_HEADER) then
          rx_header <= rx_m_tdata;
        end if;
      end if;
    end if;
  end process;

  rx_src_id <= rx_header(31 downto 28);
  rx_dst_id <= rx_header(27 downto 24);

  -- RX in logic
  -----------------------------------------------

  rx_s_tdata <= axi_rx_data;
  rx_s_tlast  <= axi_rx_tlast;
  rx_s_tvalid <= axi_rx_tvalid and en_dd;

  rx_m_tvalid_re <= rx_m_tvalid and not rx_m_tvalid_d;

  process(i_clk) begin
    if rising_edge(i_clk) then
      rx_m_tvalid_d <= rx_m_tvalid;
    end if;
  end process;

  -- TX logic
  -----------------------------------------------

  -- TX fsm
  -- tx_rqw must be continuous, bypass_req can be paused
  process (i_clk)
  begin
    if (rising_edge(i_clk)) then
      if (reset_n='0') then
        tx_fsm_state <= TX_IDLE;
      else
        case (tx_fsm_state) is
          when TX_IDLE     =>
                                  if (i_en = '1') then
                                    if (i_tx_req = '1') then
                                      tx_fsm_state <= TX_SEND;
                                    elsif (tx_bypass_req = '1') then
                                      tx_fsm_state <= TX_BYPASS;
                                    end if;
                                  end if;
          when TX_SEND     =>
                                  if (i_tx_req = '0') then
                                    tx_fsm_state <= TX_IDLE;
                                  end if;
          when TX_BYPASS   =>
                                  if ((tx_bypass_req = '1') and (tx_bypass_last = '1') and (tx_s_tvalid = '1')) then
                                    tx_fsm_state <= TX_IDLE;
                                  end if;
        end case;
        end if;
    end if;
  end process;

  tx_ack        <= '1' when ((tx_fsm_state = TX_SEND) and (i_tx_req = '1') and (tx_s_tready = '1')) else '0';
  tx_bypass_ack <= '1' when ((tx_fsm_state = TX_BYPASS) and (tx_bypass_req = '1')) else '0';
  o_tx_ack      <= tx_ack;

  tx_s_tdata    <= i_tx_data when (tx_fsm_state = TX_SEND) else tx_bypass_data;
  tx_s_tvalid   <= tx_ack or tx_bypass_ack;
  tx_s_tlast    <= i_tx_last when (tx_fsm_state = TX_SEND) else tx_bypass_last;

  -- TX out logic
  -------------------------------------------------

  axi_tx_tvalid <= tx_m_tvalid;
  axi_tx_tlast  <= tx_m_tlast;
  tx_m_tready   <= axi_tx_tready;
  axi_tx_data   <= tx_m_tdata when (axi_tx_tready = '1') else axi_tx_data_sync;
  axi_tx_tstrb  <= "1111";

  -----------------------------------------------------------------------------------------
  -- SYNC interface logic
  -----------------------------------------------------------------------------------------

  -- UFC TX logic : sync FSM
  process (user_clk)
  begin
    if (rising_edge(user_clk)) then
      if (reset_n='0') then
        sync_fsm_state <= SYNC_IDLE;
      else
        case (sync_fsm_state) is
          when SYNC_IDLE     =>
                                if (en_dd = '1') then
                                  if (ufc_rx_tvalid = '1') then -- bypass path
                                    if ((sync_master = '0') and (unsigned(sync_rx_msg_type) = SYNC_MSG_M2S)) then   -- M2S slave bypass path
                                      sync_fsm_state <= SYNC_M2S_BYPASS;
                                    elsif ((unsigned(sync_rx_msg_type) = SYNC_MSG_A2A) and (sync_rx_src_id /= i_device_id)) then   -- A2A bypass path
                                      sync_fsm_state <= SYNC_A2A_BYPASS;
                                    end if;
                                  else -- send path
                                    if ((sync_master = '1') and ((sync_m2s_send_req = '1') or (sync_reset_out = '1') or (slave2master = '1'))) then   -- M2S master send path
                                      sync_fsm_state <= SYNC_M2S_SND_REQ;
                                    elsif (sync_a2a_send_req = '1') then  -- A2A send path
                                      sync_fsm_state <= SYNC_A2A_SND_REQ;
                                    end if;
                                  end if;
                                end if;
          when SYNC_M2S_SND_REQ =>
                                  if (ufc_tx_ack = '1') then
                                    sync_fsm_state <= SYNC_M2S_SND_DATA;
                                  end if;
          when SYNC_M2S_SND_DATA =>
                                  sync_fsm_state <= SYNC_IDLE;  -- Aurora ufc tx side takes data with one cycle delay

          when SYNC_M2S_BYPASS =>
                                  if (ufc_tx_ack = '1') then
                                    sync_fsm_state <= SYNC_IDLE;
                                  end if;
          when SYNC_A2A_SND_REQ =>
                                  if (ufc_tx_ack = '1') then
                                    sync_fsm_state <= SYNC_A2A_SND_DATA;
                                  end if;

          when SYNC_A2A_SND_DATA =>
                                  sync_fsm_state <= SYNC_IDLE;  -- Aurora ufc tx side takes data with one cycle delay

          when SYNC_A2A_BYPASS =>
                                  if (ufc_tx_ack = '1') then
                                    sync_fsm_state <= SYNC_IDLE;
                                  end if;
        end case;
      end if;
    end if;
  end process;

  -- Siganl assignments

  ufc_tx_req       <= '0' when ((sync_fsm_state = SYNC_IDLE) or (sync_fsm_state = SYNC_M2S_SND_DATA) or (sync_fsm_state = SYNC_A2A_SND_DATA)) else '1';

  sync_tx_src_id   <= i_device_id;

  sync_tx_msg_type <= std_logic_vector(to_unsigned(SYNC_MSG_A2A,4)) when (sync_fsm_state = SYNC_A2A_SND_DATA) else std_logic_vector(to_unsigned(SYNC_MSG_M2S,4));

  sync_tx_header   <= x"00" & sync_tx_src_id & sync_tx_msg_type;

  with (sync_fsm_state) select
    axi_tx_data_sync <= sync_m2s_data_in & sync_tx_header when SYNC_M2S_SND_DATA,
                        sync_a2a_data_in & sync_tx_header when SYNC_A2A_SND_DATA,
                        ufc_rx_tdata_d                    when others;

  sync_master      <= sync_master_c2_dd;

  o_sync_m2s_data  <= sync_m2s_data_out_c2_dd;

  o_sync_a2a_data  <= sync_a2a_data_out_c2_dd;

  sync_m2s_data_in <= sync_m2s_data_in_c2_dd;

  sync_a2a_data_in <= sync_a2a_data_in_c2_dd;

  ufc_tx_ms        <= "001"; -- 4 byte message

  sync_rx_msg_type <= ufc_rx_tdata(3 downto 0);

  sync_rx_src_id   <= ufc_rx_tdata(7 downto 4);

  -- Store received UFC msg (needed for bypass)

  process (user_clk)
  begin
    if (rising_edge(user_clk)) then
      if (reset_n = '0') then
        ufc_rx_tdata_d <= (others => '0');
      else
        if (ufc_rx_tvalid = '1') then
          ufc_rx_tdata_d <= ufc_rx_tdata;
        end if;
      end if;
    end if;
  end process;

  -- Detect reset out condition

  process (user_clk)
  begin
    if (rising_edge(user_clk)) then
      if (reset_n = '0') then
        rest_out_d  <= '0';
        rest_out_dd <= '0';
      else
        rest_out_d  <= '1';
        rest_out_dd <= rest_out_d;
      end if;
    end if;
  end process;

  sync_reset_out <= '1' when (rest_out_dd /= rest_out_d) else '0';

  -- Detect slave -> master transition

  process (user_clk)
  begin
    if (rising_edge(user_clk)) then
      sync_master_d <= sync_master;
    end if;
  end process;

  slave2master <= '1' when ((sync_master = '1') and (sync_master_d = '0')) else '0';

  -- UFC RX logic m2s

  process (user_clk)
  begin
    if (rising_edge(user_clk)) then
      if (reset_n = '0') then
        sync_m2s_data_out <= (others => '0');
      else
        if (sync_master = '1') then     -- Master path
          sync_m2s_data_out <= sync_m2s_data_in;
        elsif ((sync_master = '0') and (ufc_rx_tvalid = '1') and (unsigned(sync_rx_msg_type) = SYNC_MSG_M2S)) then  -- slave path
          sync_m2s_data_out <= ufc_rx_tdata(31 downto 16);
        end if;
      end if;
    end if;
  end process;

  -- UFC RX logic a2a
  process (user_clk)
  begin
    if (rising_edge(user_clk)) then
      if (reset_n = '0') then
        sync_a2a_data_out <= (others => '0');
      else
        if ((ufc_rx_tvalid = '1') and (unsigned(sync_rx_msg_type) = SYNC_MSG_A2A) and (sync_rx_src_id /= i_device_id)) then
          sync_a2a_data_out <= ufc_rx_tdata(31 downto 16);
        end if;
      end if;
    end if;
  end process;

  -- Detect change in m2s sync vector
  process (user_clk)
  begin
    if (rising_edge(user_clk)) then
      if (reset_n = '0') then
        sync_m2s_data_in_d <= (others => '0');
      else
        sync_m2s_data_in_d <= sync_m2s_data_in;
      end if;
    end if;
  end process;

  sync_m2s_in_changed <= '1' when (sync_m2s_data_in /= sync_m2s_data_in_d) else '0';

  -- M2S send request logic
  process (user_clk)
  begin
    if (rising_edge(user_clk)) then
      if (reset_n = '0') then
        sync_m2s_send_req <= '0';
      else
        if (sync_m2s_in_changed = '1') then
          sync_m2s_send_req <= '1';
        elsif (sync_fsm_state = SYNC_M2S_SND_REQ) then
          sync_m2s_send_req <= '0';
        end if;
      end if;
    end if;
  end process;

  -- M2S ccd synchronization
  process (i_clk)
  begin
    if (rising_edge(i_clk)) then
      sync_m2s_data_in_c1_d   <= i_sync_m2s_data;
      sync_m2s_data_out_c2_d  <= sync_m2s_data_out;
      sync_m2s_data_out_c2_dd <= sync_m2s_data_out_c2_d;
      sync_master_c1_d        <= i_sync_master;
    end if;
  end process;

  process (user_clk)
  begin
    if (rising_edge(user_clk)) then
      sync_m2s_data_in_c2_d  <= sync_m2s_data_in_c1_d;  -- Sync_m2s_data_in_c1_d
      sync_m2s_data_in_c2_dd <= sync_m2s_data_in_c2_d;
      sync_master_c2_d       <= sync_master_c1_d;
      sync_master_c2_dd      <= sync_master_c2_d;
    end if;
  end process;

  -- Detect change in a2a sync vector
  process (user_clk)
  begin
    if (rising_edge(user_clk)) then
      if (reset_n = '0') then
        sync_a2a_data_in_d <= (others => '0');
      else
        sync_a2a_data_in_d <= sync_a2a_data_in;
      end if;
    end if;
  end process;

  sync_a2a_in_changed <= '1' when (sync_a2a_data_in /= sync_a2a_data_in_d) else '0';

  -- A2A send request logic
  process (user_clk)
  begin
    if (rising_edge(user_clk)) then
      if (reset_n = '0') then
        sync_a2a_send_req <= '0';
      else
        if (sync_a2a_in_changed = '1') then
          sync_a2a_send_req <= '1';
        elsif (sync_fsm_state = SYNC_A2A_SND_REQ) then
          sync_a2a_send_req <= '0';
        end if;
      end if;
    end if;
  end process;

  -- A2A ccd synchronization
  process (i_clk)
  begin
    if (rising_edge(i_clk)) then
      sync_a2a_data_in_c1_d   <= i_sync_a2a_data;
      sync_a2a_data_out_c2_d  <= sync_a2a_data_out;  --sync_a2a_data_out_c1_d;
      sync_a2a_data_out_c2_dd <= sync_a2a_data_out_c2_d;
    end if;
  end process;

  process (user_clk)
  begin
    if (rising_edge(user_clk)) then
      sync_a2a_data_in_c2_d  <= sync_a2a_data_in_c1_d;
      sync_a2a_data_in_c2_dd <= sync_a2a_data_in_c2_d;
    end if;
  end process;

  -----------------------------------------------------------------------------------------
  -- Module instances
  -----------------------------------------------------------------------------------------

  -- RX fifo
  u_hssl_ctrl_fifo_rx : hssl_ctrl_axis_fifo
  port map (
    m_aclk         => i_clk,
    s_aclk         => user_clk,
    s_aresetn      => reset_n,
    s_axis_tvalid  => rx_s_tvalid,
    s_axis_tready  => open,
    s_axis_tdata   => rx_s_tdata,
    s_axis_tlast   => rx_s_tlast,
    m_axis_tvalid  => rx_m_tvalid,
    m_axis_tready  => rx_m_tready,
    m_axis_tdata   => rx_m_tdata,
    m_axis_tlast   => rx_m_tlast,
    axis_prog_full => rx_fifo_full
  );

  -- TX fifo
  u_hssl_ctrl_fifo_tx : hssl_ctrl_axis_fifo
  port map (
    s_aclk         => i_clk,
    m_aclk         => user_clk,
    s_aresetn      => reset_n,
    s_axis_tvalid  => tx_s_tvalid,
    s_axis_tready  => tx_s_tready,
    s_axis_tdata   => tx_s_tdata,
    s_axis_tlast   => tx_s_tlast,
    m_axis_tvalid  => tx_m_tvalid,
    m_axis_tready  => tx_m_tready,
    m_axis_tdata   => tx_m_tdata,
    m_axis_tlast   => tx_m_tlast,
    axis_prog_full => tx_fifo_full
  );

  -- Aurora instance
  u_aurora_wrapper : aurora_wrapper_1l
  port map (
    -- Clock / reset
    i_init_clk        => i_clk,
    o_user_clk        => user_clk,
    i_reset_n         => i_reset_n,
    -- AXI TX Interface
    i_axi_tx_data     => axi_tx_data,
    i_axi_tx_tstrb    => axi_tx_tstrb,
    i_axi_tx_tvalid   => axi_tx_tvalid,
    i_axi_tx_tlast    => axi_tx_tlast,
    o_axi_tx_tready   => axi_tx_tready,
    -- AXI RX Interface
    o_axi_rx_data     => axi_rx_data,
    o_axi_rx_tstrb    => axi_rx_tstrb,
    o_axi_rx_tvalid   => axi_rx_tvalid,
    o_axi_rx_tlast    => axi_rx_tlast,
    -- User Flow Control TX Interface
    i_ufc_tx_req      => ufc_tx_req,
    i_ufc_tx_ms       => ufc_tx_ms,
    o_ufc_tx_ack      => ufc_tx_ack,
    -- User Flow Control RX Inteface
    o_ufc_rx_tdata    => ufc_rx_tdata,
    o_ufc_rx_tstrb    => ufc_rx_tstrb,
    o_ufc_rx_tvalid   => ufc_rx_tvalid,
    o_ufc_rx_tlast    => ufc_rx_tlast,
    -- GTX Serial I/O
    i_gtx_rx_p(0)     => i_gtx_rx_p,
    i_gtx_rx_n(0)     => i_gtx_rx_n,
    o_gtx_tx_p(0)     => gtx_tx_p_buff,
    o_gtx_tx_n(0)     => gtx_tx_n_buff,
    -- GTX clock
    i_gtx_clk_p       => i_gtx_clk_p,
    i_gtx_clk_n       => i_gtx_clk_n,
    -- GTX reset
    i_gtx_rst_n       => i_gtx_rst_n,
    -- Status
    o_link_lane_up    => o_link_lane_up,
    o_link_channel_up => link_channel_up,  -- Used for hssl_ctrl logic reset
    o_link_hard_err   => o_link_hard_err,
    o_link_soft_err   => o_link_soft_err,
    o_link_frame_err  => o_link_frame_err,
    -- For debug
    o_debug_port      => o_debug_port
    );

  o_gtx_tx_p <= gtx_tx_p_buff;
  o_gtx_tx_n <= gtx_tx_n_buff;

end rtl;
