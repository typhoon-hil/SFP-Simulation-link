 
################################################################################
##
## (c) Copyright 2010-2014 Xilinx, Inc. All rights reserved.
##
## This file contains confidential and proprietary information
## of Xilinx, Inc. and is protected under U.S. and
## international copyright and other intellectual property
## laws.
##
## DISCLAIMER
## This disclaimer is not a license and does not grant any
## rights to the materials distributed herewith. Except as
## otherwise provided in a valid license issued to you by
## Xilinx, and to the maximum extent permitted by applicable
## law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
## WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
## AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
## BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
## INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
## (2) Xilinx shall not be liable (whether in contract or tort,
## including negligence, or under any other theory of
## liability) for any loss or damage of any kind or nature
## related to, arising under or in connection with these
## materials, including for any direct, or any indirect,
## special, incidental, or consequential loss or damage
## (including loss of data, profits, goodwill, or any type of
## loss or damage suffered as a result of any action brought
## by a third party) even if such damage or loss was
## reasonably foreseeable or Xilinx had been advised of the
## possibility of the same.
##
## CRITICAL APPLICATIONS
## Xilinx products are not designed or intended to be fail-
## safe, or for use in any application requiring fail-safe
## performance, such as life-support or safety devices or
## systems, Class III medical devices, nuclear facilities,
## applications related to the deployment of airbags, or any
## other applications that could lead to death, personal
## injury, or severe property or environmental damage
## (individually and collectively, "Critical
## Applications"). Customer assumes the sole risk and
## liability of any use of Xilinx products in Critical
## Applications, subject only to applicable laws and
## regulations governing limitations on product liability.
##
## THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
## PART OF THIS FILE AT ALL TIMES.
##
##
################################################################################
## XDC generated for xc7vx485t-ffg1761-2 device
# 125.0MHz GT Reference clock constraint
create_clock -name GT_REFCLK1 -period 8.0	 [get_ports GTXQ0_P]
####################### GT reference clock LOC #######################
set_property LOC AH7 [get_ports GTXQ0_N]
set_property LOC AH8 [get_ports GTXQ0_P]

# USER_CLK Constraint : Value is selected based on the line rate (5.0 Gbps) and lane width (4-Byte)
# create_clock -name user_clk_i -period 8.000	 [get_pins aurora_module_i/clock_module_i/user_clk_buf_i/I]

# 20.0 ns period Board Clock Constraint 
create_clock -name init_clk_i -period 20.0 [get_ports INIT_CLK_P]

# 20.000	 ns period DRP Clock Constraint 
create_clock -name drp_clk_i -period 20.000	 [get_ports DRP_CLK_IN]

###### CDC in RESET_LOGIC from INIT_CLK to USER_CLK ##############
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~ *aurora_cdc_to*}]]

##################### Locatoin constrain #########################
set_property LOC AJ32 [get_ports INIT_CLK_P]
set_property LOC AK32 [get_ports INIT_CLK_N]
set_property LOC AV39 [get_ports RESET]
set_property LOC AW40 [get_ports GT_RESET_IN]
set_property LOC AR37 [get_ports CHANNEL_UP]
set_property LOC AT37 [get_ports LANE_UP]
set_property LOC G28 [get_ports HARD_ERR]   
set_property LOC G23 [get_ports SOFT_ERR]   
set_property LOC H23 [get_ports ERR_COUNT[0]]   
set_property LOC G27 [get_ports ERR_COUNT[1]]   
set_property LOC G26 [get_ports ERR_COUNT[2]]   
set_property LOC G22 [get_ports ERR_COUNT[3]]   
set_property LOC G21 [get_ports ERR_COUNT[4]]   
set_property LOC H26 [get_ports ERR_COUNT[5]]   
set_property LOC H25 [get_ports ERR_COUNT[6]]   
set_property LOC H21 [get_ports ERR_COUNT[7]]   
set_property LOC J21 [get_ports FRAME_ERR]
   
 
set_property LOC M32 [get_ports DRP_CLK_IN]
#// DRP CLK needs a clock LOC
    
set_property IOSTANDARD LVDS [get_ports INIT_CLK_P]
set_property IOSTANDARD LVDS [get_ports INIT_CLK_N]
set_property IOSTANDARD LVCMOS18 [get_ports RESET]
set_property IOSTANDARD LVCMOS18 [get_ports GT_RESET_IN]
set_property IOSTANDARD LVCMOS18 [get_ports CHANNEL_UP]
set_property IOSTANDARD LVCMOS18 [get_ports LANE_UP]
set_property IOSTANDARD LVCMOS18 [get_ports HARD_ERR]   
set_property IOSTANDARD LVCMOS18 [get_ports SOFT_ERR]   
set_property IOSTANDARD LVCMOS18 [get_ports ERR_COUNT[0]]   
set_property IOSTANDARD LVCMOS18 [get_ports ERR_COUNT[1]]   
set_property IOSTANDARD LVCMOS18 [get_ports ERR_COUNT[2]]   
set_property IOSTANDARD LVCMOS18 [get_ports ERR_COUNT[3]]   
set_property IOSTANDARD LVCMOS18 [get_ports ERR_COUNT[4]]   
set_property IOSTANDARD LVCMOS18 [get_ports ERR_COUNT[5]]   
set_property IOSTANDARD LVCMOS18 [get_ports ERR_COUNT[6]]   
set_property IOSTANDARD LVCMOS18 [get_ports ERR_COUNT[7]]   
set_property IOSTANDARD LVCMOS18 [get_ports FRAME_ERR]
    
    
set_property IOSTANDARD SSTL15 [get_ports DRP_CLK_IN]
#// DRP CLK needs a clock IOSTDLOC
    
##################################################################


############################### GT LOC ###################################
set_property LOC GTXE2_CHANNEL_X1Y0 [get_cells aurora_module_i/aurora_i/U0/gt_wrapper_i/aurora_multi_gt_i/gt0_aurora_i/gtxe2_i]

  
