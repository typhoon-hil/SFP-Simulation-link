library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;

package hssl_comp_dec_1l is

  component hssl_ctrl_fifo_4x
    port (
      rst           : in  std_logic;
      wr_clk        : in  std_logic;
      rd_clk        : in  std_logic;
      din           : in  std_logic_vector(127 downto 0);
      wr_en         : in  std_logic;
      rd_en         : in  std_logic;
      dout          : out std_logic_vector(127 downto 0);
      full          : out std_logic;
      empty         : out std_logic;
      rd_data_count : out std_logic_vector(10 downto 0);
      wr_data_count : out std_logic_vector(10 downto 0)
   );
  end component;

  component hssl_ctrl_fifo_rx_1x
    port (
      rst           : in  std_logic;
      wr_clk        : in  std_logic;
      rd_clk        : in  std_logic;
      din           : in  std_logic_vector(127 downto 0);
      wr_en         : in  std_logic;
      rd_en         : in  std_logic;
      dout          : out std_logic_vector(31 downto 0);
      full          : out std_logic;
      empty         : out std_logic;
      rd_data_count : out std_logic_vector(12 downto 0);
      wr_data_count : out std_logic_vector(10 downto 0)
    );
  end component;

  component hssl_ctrl_fifo_tx_1x
    port (
      rst           : in  std_logic;
      wr_clk        : in  std_logic;
      rd_clk        : in  std_logic;
      din           : in  std_logic_vector(31 downto 0);
      wr_en         : in  std_logic;
      rd_en         : in  std_logic;
      dout          : out std_logic_vector(127 downto 0);
      full          : out std_logic;
      empty         : out std_logic;
      rd_data_count : out std_logic_vector(8 downto 0);
      wr_data_count : out std_logic_vector(10 downto 0)
    );
  end component;

  component hssl_ctrl_1l
    generic(
      -- general
      DEVICE_ID_WIDTH : natural := 1
      );
    port(
      i_clk                  : in  std_logic;
      i_reset_n              : in  std_logic;
      -- Global
      i_en                   : in  std_logic;
      i_device_id            : in  std_logic_vector(DEVICE_ID_WIDTH-1 downto 0);
      -- Data interface
      i_tx_req               : in  std_logic;
      o_tx_ack               : out std_logic;
      i_tx_data              : in  std_logic_vector(31 downto 0);
      o_rx_valid             : out std_logic;
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
  end component;

  component dual_hssl_ctrl_1l
    generic(
      -- general
      MAX_UNITS             : natural := 4;
      DEVICE_ID_WIDTH       : natural := 1;
      SP_SUPPORT            : boolean := false;
      SPC_NUM               : natural := 4;
      IN_VARS_PER_SPC       : natural := 4;
      OUT_VARS_MAX          : natural := 16;
      MV_OUT_MEM_ADDR_WIDTH : natural := 5;
      DATA_WIDTH            : natural := 32;
      SP_MAX_STREAMS        : natural := 4;
      SP_VARS_PER_STREAM    : natural := 16;
      SP_MAX_PACKET_SIZE    : natural := 16;
      -- cb bus
      CB_S_ADDR_WIDTH       : natural := 22;
      CB_DATA_WIDTH         : natural := 32;
      -- aurora
      HSSl_LOW_LATENCY      : boolean := false;
      HSSL_LANE_NUM         : natural := 1;
      HSSL_CLK_LANE_NUM     : natural := 1;
      HSSL_LANE_INDP        : boolean := false
      );
    port(
      i_clk                  : in  std_logic;
      i_reset_n              : in  std_logic;
      -- Global
      i_en                   : in  std_logic;
      i_device_id            : in  std_logic_vector(DEVICE_ID_WIDTH-1 downto 0);
      -- Data interface
      i_tx_req               : in  std_logic;
      o_tx_ack               : out std_logic;
      i_tx_data              : in  std_logic_vector(31 downto 0);
      o_rx_valid             : out std_logic;
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
      i_gtx_clk_p            : in  std_logic_vector(HSSL_CLK_LANE_NUM-1 downto 0);
      i_gtx_clk_n            : in  std_logic_vector(HSSL_CLK_LANE_NUM-1 downto 0);
      i_init_clk             : in  std_logic;
      -- Aurora GTX reset
      i_gtx_rst_n            : in  std_logic;
      -- Aurora GTX data
      i_gtx_rx_p             : in  std_logic_vector(HSSL_LANE_NUM-1 downto 0);
      i_gtx_rx_n             : in  std_logic_vector(HSSL_LANE_NUM-1 downto 0);
      o_gtx_tx_p             : out std_logic_vector(HSSL_LANE_NUM-1 downto 0);
      o_gtx_tx_n             : out std_logic_vector(HSSL_LANE_NUM-1 downto 0);
      -- For debug
      o_debug_port           : out std_logic_vector(7 downto 0);
      o_hssl_ctrl_debug_port : out std_logic_vector(20 downto 0)
    );
  end component;

  component hssl_ctrl_test_1l is
    generic(
      -- general
      NO_OF_UNIT          : natural := 2;
      ONE_SEC_TC          : natural := 200000000
      );
    port(
      i_clk_p          : in  std_logic;
      i_clk_n          : in  std_logic;
      i_reset        : in  std_logic;
      -- user IO
      i_unit_id        : in  std_logic_vector(3 downto 0);
      o_led            : out std_logic_vector(3 downto 0);
      i_sw             : in  std_logic_vector(3 downto 0);
      -- Aurora GTX clock
      i_gtx_clk_p      : in  std_logic;
      i_gtx_clk_n      : in  std_logic;
      --
      sfp_tx_disable_o : out std_logic;
      -- aurora life
      o_link_up        : out std_logic;
      o_channel_up     : out std_logic;
      o_error          : out std_logic;
      -- Aurora GTX data
      i_gtx_rx_p       : in  std_logic;
      i_gtx_rx_n       : in  std_logic;
      o_gtx_tx_p       : out std_logic;
      o_gtx_tx_n       : out std_logic
    );
  end component;

  component hssl_ctrl_test_1l_loopback is
    generic(
      -- general
      NO_OF_UNIT                  : natural := 2;
      ONE_SEC_TC                  : natural := 200000000;
      VAR_NUM_PER_LOOPBACK_STREAM : natural := 128;
      DATA_WIDTH                  : natural := 32
      );
    port(
      i_clk_p          : in  std_logic;
      i_clk_n          : in  std_logic;
      i_reset        : in  std_logic;
      -- user IO
      i_unit_id        : in  std_logic_vector(3 downto 0);
      o_led            : out std_logic_vector(3 downto 0);
      i_sw             : in  std_logic_vector(3 downto 0);
      -- Aurora GTX clock
      i_gtx_clk_p      : in  std_logic;
      i_gtx_clk_n      : in  std_logic;
      --
      sfp_tx_disable_o : out std_logic;
      -- aurora life
      o_link_up        : out std_logic;
      o_channel_up     : out std_logic;
      o_error          : out std_logic;
      -- Aurora GTX data
      i_gtx_rx_p       : in  std_logic;
      i_gtx_rx_n       : in  std_logic;
      o_gtx_tx_p       : out std_logic;
      o_gtx_tx_n       : out std_logic
    );
  end component;

  component clk_wiz
  port
  (
    -- Clock out ports
    clk_out1  : out std_logic;
    -- Status and control signals
    reset     : in  std_logic;
    locked    : out std_logic;
    clk_in1_p : in  std_logic;
    clk_in1_n : in  std_logic
  );
  end component;
 
end package;
