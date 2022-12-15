----------------------------------------------------------------------------------------------------------------------------------------
--
--  Package Name: aurora_comp_dec
--  Author: Nikola Stojkov <nikola.stojkov@typhoon-hil.ch>
--
--  Description:
--            Top level aurora component declarations.
--
-----------------------------------------------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;


package aurora_comp_dec_1l is

  component aurora_wrapper_1l is
    port(
      -- Clock / reset
      i_init_clk         : in  std_logic;
      o_user_clk         : out std_logic;
      i_reset_n          : in  std_logic;
      -- AXI TX Interface
      i_axi_tx_data      : in  std_logic_vector(31 downto 0);
      i_axi_tx_tstrb     : in  std_logic_vector(3 downto 0);
      i_axi_tx_tvalid    : in  std_logic;
      i_axi_tx_tlast     : in  std_logic;
      o_axi_tx_tready    : out std_logic;
      -- AXI RX Interface
      o_axi_rx_data      : out std_logic_vector(31 downto 0);
      o_axi_rx_tstrb     : out std_logic_vector(3 downto 0);
      o_axi_rx_tvalid    : out std_logic;
      o_axi_rx_tlast     : out std_logic;
      -- User Flow Control TX Interface
      i_ufc_tx_req       : in  std_logic;
      i_ufc_tx_ms        : in  std_logic_vector(2 downto 0);
      o_ufc_tx_ack       : out std_logic;
      -- User Flow Control RX Inteface
      o_ufc_rx_tdata     : out std_logic_vector(31 downto 0);
      o_ufc_rx_tstrb     : out std_logic_vector(3 downto 0);
      o_ufc_rx_tvalid    : out std_logic;
      o_ufc_rx_tlast     : out std_logic;
      -- GTX Serial I/O
      i_gtx_rx_p         : in  std_logic_vector(0 downto 0);
      i_gtx_rx_n         : in  std_logic_vector(0 downto 0);
      o_gtx_tx_p         : out std_logic_vector(0 downto 0);
      o_gtx_tx_n         : out std_logic_vector(0 downto 0);
      -- GTX clock
      i_gtx_clk_p        : in  std_logic;
      i_gtx_clk_n        : in  std_logic;
      -- Aurora GTX reset
      i_gtx_rst_n        : in  std_logic; 
      -- Status          
      o_link_lane_up     : out std_logic;
      o_link_channel_up  : out std_logic; 
      o_link_hard_err    : out std_logic; 
      o_link_soft_err    : out std_logic; 
      o_link_frame_err   : out std_logic;
      -- For debug
      o_debug_port       : out std_logic_vector(7 downto 0)
    );
  end component;

  COMPONENT aurora_support
  PORT (
  -- AXI TX Interface
  s_axi_tx_tdata      : in  std_logic_vector(0 to 31);
  s_axi_tx_tkeep      : in  std_logic_vector(0 to 3);
  s_axi_tx_tvalid     : in  std_logic;
  s_axi_tx_tready     : out std_logic;
  s_axi_tx_tlast      : in  std_logic;
  -- AXI RX Interface
  m_axi_rx_tdata      : out std_logic_vector(0 to 31);
  m_axi_rx_tkeep      : out std_logic_vector(0 to 3);
  m_axi_rx_tvalid     : out std_logic;
  m_axi_rx_tlast      : out std_logic;
  -- User Flow Control TX Interface
  s_axi_ufc_tx_req    : in  std_logic;
  s_axi_ufc_tx_ms     : in  std_logic_vector(0 to 2);
  s_axi_ufc_tx_ack    : out std_logic;
  -- User Flow Control RX Inteface
  m_axi_ufc_rx_tdata  : out std_logic_vector(0 to 31);
  m_axi_ufc_rx_tkeep  : out std_logic_vector(0 to 3);
  m_axi_ufc_rx_tvalid : out std_logic;
  m_axi_ufc_rx_tlast  : out std_logic;
  -- GT Serial I/O
  rxp                 : in  std_logic_vector(0 downto 0);
  rxn                 : in  std_logic_vector(0 downto 0);
  txp                 : out std_logic_vector(0 downto 0);
  txn                 : out std_logic_vector(0 downto 0);
  -- GT Reference Clock Interface
  gt_refclk1_p        : in  std_logic;
  gt_refclk1_n        : in  std_logic;
  -- Error Detection Interface
  frame_err           : out std_logic;
  hard_err            : out std_logic;
  soft_err            : out std_logic;
  -- Status
  channel_up          : out std_logic;
  lane_up             : out std_logic_vector(0 downto 0);
  -- System Interface
  user_clk_out        : out std_logic;
  reset               : in  std_logic;
  gt_reset            : in  std_logic;
  sys_reset_out       : out std_logic;
  power_down          : in  std_logic;
  loopback            : in  std_logic_vector(2 downto 0);
  tx_lock             : out std_logic;
  init_clk_p          : in  std_logic;
  --init_clk_n       : in  std_logic;
  init_clk_out        : out std_logic;
  tx_resetdone_out    : out std_logic;
  rx_resetdone_out    : out std_logic;
  link_reset_out      : out std_logic;
   --DRP Ports
  drpclk_in           : in  std_logic;
  drpaddr_in          : in  std_logic_vector(8 downto 0);
  drpdi_in            : in  std_logic_vector(15 downto 0);
  drpdo_out           : out std_logic_vector(15 downto 0);
  drpen_in            : in  std_logic;
  drprdy_out          : out std_logic;
  drpwe_in            : in  std_logic;
  pll_not_locked_out  : out std_logic
  );
  END COMPONENT;

  COMPONENT aurora_1l
  PORT (
    s_axi_tx_tdata      : IN  STD_LOGIC_VECTOR(0 TO 31);
    s_axi_tx_tkeep      : IN  STD_LOGIC_VECTOR(0 TO 3);
    s_axi_tx_tlast      : IN  STD_LOGIC;
    s_axi_tx_tvalid     : IN  STD_LOGIC;
    s_axi_tx_tready     : OUT STD_LOGIC;
    s_axi_ufc_tx_tvalid : IN  STD_LOGIC;
    s_axi_ufc_tx_tdata  : IN  STD_LOGIC_VECTOR(0 TO 2);
    s_axi_ufc_tx_tready : OUT STD_LOGIC;
    m_axi_rx_tdata      : OUT STD_LOGIC_VECTOR(0 TO 31);
    m_axi_rx_tkeep      : OUT STD_LOGIC_VECTOR(0 TO 3);
    m_axi_rx_tlast      : OUT STD_LOGIC;
    m_axi_rx_tvalid     : OUT STD_LOGIC;
    m_axi_ufc_rx_tdata  : OUT STD_LOGIC_VECTOR(0 TO 31);
    m_axi_ufc_rx_tkeep  : OUT STD_LOGIC_VECTOR(0 TO 3);
    m_axi_ufc_rx_tlast  : OUT STD_LOGIC;
    m_axi_ufc_rx_tvalid : OUT STD_LOGIC;
    hard_err            : OUT STD_LOGIC;
    soft_err            : OUT STD_LOGIC;
    frame_err           : OUT STD_LOGIC;
    channel_up          : OUT STD_LOGIC;
    lane_up             : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    txp                 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    txn                 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    reset               : IN  STD_LOGIC;
    gt_reset            : IN  STD_LOGIC;
    loopback            : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
    rxp                 : IN  STD_LOGIC_VECTOR(0 DOWNTO 0);
    rxn                 : IN  STD_LOGIC_VECTOR(0 DOWNTO 0);
    gt0_drpaddr         : IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
    gt0_drpen           : IN  STD_LOGIC;
    gt0_drpdi           : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
    gt0_drprdy          : OUT STD_LOGIC;
    gt0_drpdo           : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    gt0_drpwe           : IN  STD_LOGIC;
    power_down          : IN  STD_LOGIC;
    tx_lock             : OUT STD_LOGIC;
    tx_resetdone_out    : OUT STD_LOGIC;
    rx_resetdone_out    : OUT STD_LOGIC;
    link_reset_out      : OUT STD_LOGIC;
    init_clk_in         : IN  STD_LOGIC;
    pll_not_locked      : IN  STD_LOGIC;
    tx_out_clk          : OUT STD_LOGIC;
    bufg_gt_clr_out     : OUT STD_LOGIC;
    sys_reset_out       : OUT STD_LOGIC;
    user_clk            : IN  STD_LOGIC;
    sync_clk            : IN  STD_LOGIC;
    gt_refclk1          : IN  STD_LOGIC;
    gt_powergood        : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
  END COMPONENT;

end package;
