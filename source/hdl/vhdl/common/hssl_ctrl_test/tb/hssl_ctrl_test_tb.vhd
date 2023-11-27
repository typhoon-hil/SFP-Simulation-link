library ieee;
use ieee.std_logic_1164.all;  

library work;
use work.hssl_comp_dec_1l.all;

entity hssl_ctrl_test_tb is
end hssl_ctrl_test_tb;

architecture rtl of hssl_ctrl_test_tb is

  -- 200.0 MHz  clock ( Module called hssl_ctrl_test inside itself has clk_wiz
  -- that div 200MHz and makes of it 100 MHz.)
  constant CLOCKPERIOD_1          : time := 5.0 ns;
  -- 125.0 MHz GTX Reference clock 
  constant CLOCKPERIOD_2          : time := 8.0 ns;
  -- Reset
  signal u0_reset               : std_logic;
  signal u1_reset               : std_logic;
  -- Gtx clks
  signal gtx_clk_p                : std_logic;
  signal gtx_clk_n                : std_logic;
  --Freerunning Clock
  signal clk0                     : std_logic;
  signal clk0_n                   : std_logic;
  -- Gtx tx signals
  signal u0_gtx_tx_p              : std_logic;
  signal u0_gtx_tx_n              : std_logic;
  signal u1_gtx_tx_p              : std_logic;
  signal u1_gtx_tx_n              : std_logic;
  -- Unit ID signals
  signal u0_unit_id               : std_logic_vector(3 downto 0);
  signal u1_unit_id               : std_logic_vector(3 downto 0);
  -- VCO
  signal vco_dac_clk_0            : std_logic;
  signal vco_dac_clk_1            : std_logic;
  signal vco_dac_clk_2            : std_logic;
  signal vco_dac_data_0           : std_logic;
  signal vco_dac_data_1           : std_logic;
  signal vco_dac_sync_0           : std_logic;
  signal vco_dac_sync_1           : std_logic;
  -- DCM
  signal dcm_rst_dut2             : std_logic;
  signal channel_up               : std_logic;
  -- Aurora life u0
  signal u0_aurora_link_up        : std_logic;
  signal u0_aurora_channel_up     : std_logic;
  signal u0_aurora_error          : std_logic;
  -- Aurora life u1
  signal u1_aurora_link_up        : std_logic;
  signal u1_aurora_channel_up     : std_logic;
  signal u1_aurora_error          : std_logic;
  -- u0 outputs
  signal u0_led_output            : std_logic_vector(3 downto 0);
  signal u0_switch_input          : std_logic_vector(3 downto 0);
  signal u0_sfp_tx_disable_output : std_logic;
  -- u1 outputs
  signal u1_led_output            : std_logic_vector(3 downto 0);
  signal u1_switch_input          : std_logic_vector(3 downto 0);
  signal u1_sfp_tx_disable_output : std_logic;
  
  signal disable_header           : std_logic := '0';
  
begin

  gtx_clk_process : process
  begin
    gtx_clk_p <= '0';
    wait for CLOCKPERIOD_2/2;
    gtx_clk_p <= '1';
    wait for CLOCKPERIOD_2/2;
  end process;
  gtx_clk_n <= not gtx_clk_p;
  
    -- Clock process definitions
  clk_process : process
  begin
    clk0 <= '0';
    wait for CLOCKPERIOD_1/2;
    clk0 <= '1';
    wait for CLOCKPERIOD_1/2;
  end process;

  clk0_n <= not clk0;

  u0_hssl_ctrl_test_1l : hssl_ctrl_test_1l
  generic map(
    NO_OF_UNIT => 2,
    ONE_SEC_TC => 5000
    )
  port map(
    i_clk_p          => clk0,
    i_clk_n          => clk0_n,
    i_reset          => u0_reset,
    -- User IO
    i_disable_header => disable_header,
    i_unit_id        => u0_unit_id,
    o_led            => u0_led_output,
    i_sw             => u0_switch_input, 
    -- Aurora GTX clock
    i_gtx_clk_p      => gtx_clk_p,
    i_gtx_clk_n      => gtx_clk_n,
    --
    sfp_tx_disable_o => u0_sfp_tx_disable_output, 
    -- Aurora life
    o_link_up        => u0_aurora_link_up,
    o_channel_up     => u0_aurora_channel_up,
    o_error          => u0_aurora_error,
    -- Aurora GTX data  
    i_gtx_rx_p       => u1_gtx_tx_p,
    i_gtx_rx_n       => u1_gtx_tx_n,
    o_gtx_tx_p       => u0_gtx_tx_p,
    o_gtx_tx_n       => u0_gtx_tx_n
  );
  
  u1_hssl_ctrl_test_1l : hssl_ctrl_test_1l
  generic map(
    NO_OF_UNIT => 2,
    ONE_SEC_TC => 5000
    )
  port map(
    i_clk_p          => clk0,
    i_clk_n          => clk0_n,
    i_reset          => u1_reset,
    -- User IO
    i_disable_header => disable_header,
    i_unit_id        => u1_unit_id,
    o_led            => u1_led_output,
    i_sw             => u1_switch_input, 
    -- Aurora GTX clock
    i_gtx_clk_p      => gtx_clk_p,
    i_gtx_clk_n      => gtx_clk_n,
    --
    sfp_tx_disable_o => u1_sfp_tx_disable_output, 
    -- Aurora life
    o_link_up        => u1_aurora_link_up,
    o_channel_up     => u1_aurora_channel_up,
    o_error          => u1_aurora_error,
    -- Aurora GTX data
    i_gtx_rx_p       => u0_gtx_tx_p,
    i_gtx_rx_n       => u0_gtx_tx_n,
    o_gtx_tx_p       => u1_gtx_tx_p,
    o_gtx_tx_n       => u1_gtx_tx_n
  );
  
  -- Stimulus process
  stim_proc : process
  begin
    u0_switch_input <= "1011"; -- (a2a send 10, m2s send 11 and set this unit to be master)
    u1_switch_input <= "0100"; -- (a2a send 01, and set to be slave)
    u0_reset        <= '1';
    u1_reset        <= '1';
    u0_unit_id      <= "0000";
    u1_unit_id      <= "0001";
    --gtx_rst_n <= '0';
    wait for 110 ns;
    wait for 100 ns;
    u0_reset        <= '0';
    u1_reset        <= '0';
    wait for 5 us;
    wait until dcm_rst_dut2 = '1' and channel_up = '1';
    wait for 100 ns;
    wait;
  end process;

end;
