# 200 MHz clk
#-name init_clk_i
#create_clock -period 5.0 [get_ports i_clk_p]
set_property PACKAGE_PIN E19 [get_ports i_clk_p]
set_property PACKAGE_PIN E18 [get_ports i_clk_n]
# clk crossing
create_clock -period 8.000 -name hssl_clk [get_pins -hier -filter name=~*TXOUTCLK]
set_clock_groups -asynchronous -group [get_clocks hssl_clk] -group [get_clocks clk_out1_clk_wiz]
set_clock_groups -asynchronous -group [get_clocks clk_out1_clk_wiz] -group [get_clocks hssl_clk]
# reset
set_property PACKAGE_PIN AV40 [get_ports i_reset]
# switches for unit id
set_property PACKAGE_PIN BA32 [get_ports {i_unit_id[0]}]
set_property PACKAGE_PIN BA31 [get_ports {i_unit_id[1]}]
set_property PACKAGE_PIN AY33 [get_ports {i_unit_id[2]}]
set_property PACKAGE_PIN AV30 [get_ports {i_unit_id[3]}]
# leds 3 downto 0
set_property PACKAGE_PIN AM39 [get_ports {o_led[0]}]
set_property PACKAGE_PIN AN39 [get_ports {o_led[1]}]
set_property PACKAGE_PIN AR37 [get_ports {o_led[2]}]
set_property PACKAGE_PIN AT37 [get_ports {o_led[3]}]
# switches for control
set_property PACKAGE_PIN BB31 [get_ports {i_sw[0]}]
set_property PACKAGE_PIN BA30 [get_ports {i_sw[1]}]
set_property PACKAGE_PIN AY30 [get_ports {i_sw[2]}]
set_property PACKAGE_PIN AW30 [get_ports {i_sw[3]}]
# 125.0MHz GT Reference clock constraint
create_clock -period 8.000 -name GT_REFCLK1 [get_ports i_gtx_clk_p]
set_property PACKAGE_PIN AH8 [get_ports i_gtx_clk_p]
set_property PACKAGE_PIN AH7 [get_ports i_gtx_clk_n]
# sfp to work, this pin must be set to 0
set_property PACKAGE_PIN AP33 [get_ports sfp_tx_disable_o]
# leds 7 downto 5
set_property PACKAGE_PIN AP41 [get_ports o_link_up]
set_property PACKAGE_PIN AP42 [get_ports o_channel_up]
set_property PACKAGE_PIN AU39 [get_ports o_error]
#aurora rx-tx  -- need checking
set_property PACKAGE_PIN AL5 [get_ports i_gtx_rx_n]
set_property PACKAGE_PIN AL6 [get_ports i_gtx_rx_p]
set_property PACKAGE_PIN AM3 [get_ports o_gtx_tx_n]
set_property PACKAGE_PIN AM4 [get_ports o_gtx_tx_p]

set_property IOSTANDARD LVCMOS18 [get_ports i_reset]
set_property IOSTANDARD LVCMOS18 [get_ports {i_unit_id[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {i_unit_id[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {i_unit_id[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {i_unit_id[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {o_led[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {o_led[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {o_led[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {o_led[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {i_sw[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {i_sw[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {i_sw[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {i_sw[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_disable_o]
set_property IOSTANDARD LVCMOS18 [get_ports o_link_up]
set_property IOSTANDARD LVCMOS18 [get_ports o_channel_up]
set_property IOSTANDARD LVCMOS18 [get_ports o_error]
set_property IOSTANDARD LVDS [get_ports i_clk_p]
set_property IOSTANDARD LVDS [get_ports i_clk_n]

