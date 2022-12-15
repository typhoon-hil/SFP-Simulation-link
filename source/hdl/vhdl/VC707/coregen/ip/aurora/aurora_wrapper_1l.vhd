library ieee;
use ieee.std_logic_1164.all;  

library work;
use work.aurora_comp_dec_1l.all;
use IEEE.STD_LOGIC_MISC.all;
use ieee.numeric_std.all;

entity aurora_wrapper_1l is
  port(
    -- Clock / reset
    i_init_clk        : in  std_logic;
    o_user_clk        : out std_logic;
    i_reset_n         : in  std_logic;
    -- AXI TX Interface
    i_axi_tx_data     : in  std_logic_vector(31 downto 0);
    i_axi_tx_tstrb    : in  std_logic_vector(3 downto 0);
    i_axi_tx_tvalid   : in  std_logic;
    i_axi_tx_tlast    : in  std_logic;
    o_axi_tx_tready   : out std_logic;
    -- AXI RX Interface
    o_axi_rx_data     : out std_logic_vector(31 downto 0);
    o_axi_rx_tstrb    : out std_logic_vector(3 downto 0);
    o_axi_rx_tvalid   : out std_logic;
    o_axi_rx_tlast    : out std_logic;
    -- User Flow Control TX Interface
    i_ufc_tx_req      : in  std_logic;
    i_ufc_tx_ms       : in  std_logic_vector(2 downto 0);
    o_ufc_tx_ack      : out std_logic;
    -- User Flow Control RX Inteface
    o_ufc_rx_tdata    : out std_logic_vector(31 downto 0);
    o_ufc_rx_tstrb    : out std_logic_vector(3 downto 0);
    o_ufc_rx_tvalid   : out std_logic;
    o_ufc_rx_tlast    : out std_logic;
    -- GTX Serial I/O
    i_gtx_rx_p        : in  std_logic_vector(0 downto 0);
    i_gtx_rx_n        : in  std_logic_vector(0 downto 0);
    o_gtx_tx_p        : out std_logic_vector(0 downto 0);
    o_gtx_tx_n        : out std_logic_vector(0 downto 0);
    -- GTX clock
    i_gtx_clk_p       : in  std_logic;
    i_gtx_clk_n       : in  std_logic;
    -- Aurora GTX reset
    i_gtx_rst_n       : in  std_logic;
    -- Status          
    o_link_lane_up    : out std_logic;
    o_link_channel_up : out std_logic;
    o_link_hard_err   : out std_logic;
    o_link_soft_err   : out std_logic;
    o_link_frame_err  : out std_logic;
    -- For debug
    o_debug_port      : out std_logic_vector(7 downto 0)
  );    
end aurora_wrapper_1l;

architecture rtl of aurora_wrapper_1l is

  -- Aurora HSS signals
  signal gtx_tx_p_buff    : std_logic_vector(0 downto 0);
  signal gtx_tx_n_buff    : std_logic_vector(0 downto 0);
  signal gtx_rx_p         : std_logic_vector(0 downto 0);
  signal gtx_rx_n         : std_logic_vector(0 downto 0);
  -- System Interface    
  signal pll_not_locked_i : std_logic;
  signal user_clk_i       : std_logic;
  signal power_down_i     : std_logic;
  signal loopback_i       : std_logic_vector(2 downto 0);
  signal tx_lock_i        : std_logic;
  signal tx_resetdone_i   : std_logic;
  signal rx_resetdone_i   : std_logic;

  signal daddr_in_i         : std_logic_vector(8 downto 0);
  signal dclk_in_i          : std_logic;
  signal den_in_i           : std_logic;
  signal di_in_i            : std_logic_vector(15 downto 0);
  signal drdy_out_unused_i  : std_logic;
  signal drpdo_out_unused_i : std_logic_vector(15 downto 0);
  signal dwe_in_i           : std_logic;
  signal init_clk_out_o     : std_logic;
  -- Reset signals
  signal gtx_ext_rst_d       : std_logic := '0';
  signal gtx_ext_rst_dd      : std_logic := '0';
  signal gtx_ext_rst_ddd     : std_logic := '0';
  signal gtx_ext_rst_dddd    : std_logic := '0';
  signal gtx_ext_rst_ddddd   : std_logic := '0';
  signal gtx_ext_rst_dddddd  : std_logic := '0';
  signal gtx_ext_rst_ddddddd : std_logic := '0';

  signal system_reset_in : std_logic;
  signal gtreset_in      : std_logic;
  signal system_reset_i  : std_logic;
  -- Signal routing
  signal lane_up_i       : std_logic_vector(0 downto 0);

  signal reset        : std_logic;
  signal gt_reset_sig : std_logic;

  signal gtx_rst_n        : std_logic;
  signal gtx_rst_n_d      : std_logic;
  signal gtx_rst_n_dd     : std_logic;
  signal gtx_rst_n_ddd    : std_logic;
  signal gtx_rst_n_dddd   : std_logic;
  signal gtx_rst_n_ddddd  : std_logic;
  signal gtx_rst_n_dddddd : std_logic;

  signal au_wrap_reset              : std_logic;
  signal au_wrap_gt_reset           : std_logic;

  COMPONENT my_vio
  PORT (
    clk        : IN  STD_LOGIC;
    probe_in0  : IN  STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe_in1  : IN  STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe_in2  : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe_out0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe_out1 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
  END COMPONENT;

begin

  o_user_clk     <= user_clk_i;
  o_link_lane_up <= lane_up_i(0);
  power_down_i   <= '0';
  loopback_i     <= "000";

  o_debug_port(0)          <= tx_lock_i;
  o_debug_port(1)          <= system_reset_i;
  o_debug_port(3)          <= pll_not_locked_i;
  o_debug_port(7 downto 4) <= (others => '0');
  
  daddr_in_i <= (others => '0');
  dclk_in_i  <= '0';
  den_in_i   <= '0';
  di_in_i    <= (others => '0');
  dwe_in_i   <= '0';
  ----------------------------------------------------------------------------
  -- Aurora instances
  ----------------------------------------------------------------------------

  gtx_rx_p <= i_gtx_rx_p(0 downto 0);
  gtx_rx_n <= i_gtx_rx_n(0 downto 0);

  --Aurora reset
  process(i_init_clk)
  begin
    if(rising_edge(i_init_clk)) then
      gtx_rst_n        <= reset;
      gtx_rst_n_d      <= gtx_rst_n;
      gtx_rst_n_dd     <= gtx_rst_n_d;
      gtx_rst_n_ddd    <= gtx_rst_n_dd;
      gtx_rst_n_dddd   <= gtx_rst_n_ddd;
      gtx_rst_n_ddddd  <= gtx_rst_n_dddd;
      gtx_rst_n_dddddd <= gtx_rst_n_ddddd;
    end if;
  end process;

  -----------------------------------------------------------------------------------------
  -- Module instances
  -----------------------------------------------------------------------------------------

  -- Module Instantiations --
  aurora_1l_support_i : aurora_support
  port map (
    -- AXI TX Interface
    s_axi_tx_tdata      => i_axi_tx_data,
    s_axi_tx_tkeep      => i_axi_tx_tstrb,
    s_axi_tx_tvalid     => i_axi_tx_tvalid,
    s_axi_tx_tlast      => i_axi_tx_tlast,
    s_axi_tx_tready     => o_axi_tx_tready,
    -- AXI RX Interface
    m_axi_rx_tdata      => o_axi_rx_data,
    m_axi_rx_tkeep      => o_axi_rx_tstrb,
    m_axi_rx_tvalid     => o_axi_rx_tvalid,
    m_axi_rx_tlast      => o_axi_rx_tlast,
    -- User Flow Control TX Interface
    s_axi_ufc_tx_req    => i_ufc_tx_req,
    s_axi_ufc_tx_ms     => i_ufc_tx_ms,
    s_axi_ufc_tx_ack    => o_ufc_tx_ack,
     --User Flow Control RX Inteface
    m_axi_ufc_rx_tdata  => o_ufc_rx_tdata,
    m_axi_ufc_rx_tkeep  => o_ufc_rx_tstrb,
    m_axi_ufc_rx_tvalid => o_ufc_rx_tvalid,
    m_axi_ufc_rx_tlast  => o_ufc_rx_tlast,
    -- GT Serial I/O
    rxp                 => gtx_rx_p,
    rxn                 => gtx_rx_n,
    txp                 => gtx_tx_p_buff,
    txn                 => gtx_tx_n_buff,
    -- GT Reference Clock Interface
    gt_refclk1_p        => i_gtx_clk_p,
    gt_refclk1_n        => i_gtx_clk_n,
    -- Error Detection Interface
    frame_err           => o_link_frame_err,
    hard_err            => o_link_hard_err,
    soft_err            => o_link_soft_err,
    -- Status
    channel_up          => o_link_channel_up,
    lane_up             => lane_up_i(0 downto 0),
    -- System Interface
    user_clk_out        => user_clk_i,
    reset               => au_wrap_reset,             
    gt_reset            => au_wrap_gt_reset,                
    sys_reset_out       => system_reset_i,
    power_down          => power_down_i,
    loopback            => loopback_i,
    tx_lock             => tx_lock_i,
    init_clk_p          => i_init_clk,
    init_clk_out        => init_clk_out_o,
    tx_resetdone_out    => tx_resetdone_i,
    rx_resetdone_out    => rx_resetdone_i,
    -- DRP
    drpclk_in           => i_init_clk,
    drpaddr_in          => daddr_in_i,
    drpdi_in            => di_in_i,
    drpdo_out           => drpdo_out_unused_i,
    drpen_in            => den_in_i,
    drprdy_out          => drdy_out_unused_i,
    drpwe_in            => dwe_in_i,
    pll_not_locked_out  => pll_not_locked_i
    );

  o_gtx_tx_p(0)    <= gtx_tx_p_buff(0);
  o_gtx_tx_n(0)    <= gtx_tx_n_buff(0);
  reset            <= not i_reset_n;
  gt_reset_sig     <= not i_gtx_rst_n;
  au_wrap_reset    <= reset; 
  au_wrap_gt_reset <= gtx_rst_n_dddddd;

end rtl;
