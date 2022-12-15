///////////////////////////////////////////////////////////////////////////////
// (c) Copyright 2008 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
//
///////////////////////////////////////////////////////////////////////////////
//
//  RX_LL_UFC_DATAPATH
//
//
//  Description: the RX_LL_UFC_DATAPATH module takes UFC data in Aurora format
//               and transforms it to LocalLink formatted data
//
//               This module supports 2 4-byte lane designs
//
//

`timescale 1 ns / 1 ps

module aurora_RX_LL_UFC_DATAPATH
(

    //Traffic Separator Interface
    UFC_DATA,
    UFC_DATA_V,
    UFC_MESSAGE_START,
    UFC_START,


    //LocalLink UFC Interface
    UFC_RX_DATA,
    UFC_RX_REM,
    UFC_RX_SRC_RDY_N,
    UFC_RX_SOF_N,
    UFC_RX_EOF_N,


    //System Interface
    USER_CLK,
    RESET
);

`define DLY #1


//***********************************Port Declarations*******************************


    //Traffic Separator Interface
    input   [0:31]  UFC_DATA;
    input   [0:1]  UFC_DATA_V;
    input   [0:1]  UFC_MESSAGE_START;
    input           UFC_START;


    //LocalLink Interface
    output  [0:31]  UFC_RX_DATA;
    output  [0:1]  UFC_RX_REM;
    output          UFC_RX_SRC_RDY_N;
    output          UFC_RX_SOF_N;
    output          UFC_RX_EOF_N;


    //System Interface
    input                           USER_CLK;
    input                           RESET;


//****************************External Register Declarations**************************

    reg     [0:1]  UFC_RX_REM;
    reg             UFC_RX_SRC_RDY_N;
    reg             UFC_RX_SOF_N;
    reg             UFC_RX_EOF_N;



//****************************Internal Register Declarations**************************

    //Stage 1
    reg     [0:31]  stage_1_data_r;
    reg             stage_1_ufc_start_r;




//*********************************Wire Declarations**********************************


    //Stage 1
    wire    [0:1]  barrel_shifter_control_r;
    wire    [0:1]  barrel_shifted_count_r;


    //Stage 2
    wire    [0:31]  barrel_shifted_data_r;
    wire    [0:1]  ufc_storage_count_r;
    wire    [0:5]  ufc_storage_select_r;
    wire    [0:5]  ufc_output_select_r;
    wire            stage_2_ufc_src_rdy_n_r;
    wire            stage_2_ufc_sof_n_r;
    wire            stage_2_ufc_eof_n_r;
    wire    [0:1]  stage_2_ufc_rem_r;


    //Stage 3
    wire    [0:31]   ufc_storage_data_r;



//*********************************Main Body of Code**********************************



    //_________________________ Stage 1: Shifter Control and Count_______________________


    //Instantiate a barrel shifter control module
    aurora_UFC_BARREL_SHIFTER_CONTROL ufc_barrel_shifter_control_i
    (
        .UFC_MESSAGE_START(UFC_MESSAGE_START),
        .USER_CLK(USER_CLK),

        .BARREL_SHIFTER_CONTROL(barrel_shifter_control_r)
    );


    //Instantiate a Valid Data counter to count the number of valid UFC data lanes
    // that will be barrel shifted in the cycle.
    aurora_VALID_DATA_COUNTER ufc_valid_data_counter
    (
        .PREVIOUS_STAGE_VALID(UFC_DATA_V),
        .USER_CLK(USER_CLK),
        .RESET(RESET),

        .COUNT(barrel_shifted_count_r)
    );



    //Pipeline the data
    always @(posedge USER_CLK)
        stage_1_data_r  <=  `DLY UFC_DATA;



    //Pipeline the UFC_START signal
    always @(posedge USER_CLK)
        if(RESET)   stage_1_ufc_start_r <=  `DLY    1'd0;
        else        stage_1_ufc_start_r <=  `DLY    UFC_START;




    //______________Stage 2: Barrel Shifter, control for storage and output______________


    //Instantiate a barrel shifter for the UFC data
    aurora_UFC_BARREL_SHIFTER ufc_barrel_shifter_i
    (
        //Input interface to the muxes
        .RAW_DATA(stage_1_data_r),
        .BARREL_SHIFTER_CONTROL(barrel_shifter_control_r),
        .USER_CLK(USER_CLK),
        .RESET(RESET),

        //Mux output
        .SHIFTED_DATA(barrel_shifted_data_r)
    );



    //Instantiate a ufc_storage_count controller
    aurora_UFC_STORAGE_COUNT_CONTROL ufc_storage_count_control_i
    (
        .BARREL_SHIFTED_COUNT(barrel_shifted_count_r),
        .UFC_START(stage_1_ufc_start_r),
        .USER_CLK(USER_CLK),
        .RESET(RESET),

        .UFC_STORAGE_COUNT(ufc_storage_count_r)

    );



    //Instantiate a control module for the storage switch
    aurora_UFC_STORAGE_SWITCH_CONTROL ufc_storage_switch_control_i
    (
        .BARREL_SHIFTED_COUNT(barrel_shifted_count_r),
        .UFC_STORAGE_COUNT(ufc_storage_count_r),
        .UFC_START(stage_1_ufc_start_r),
        .USER_CLK(USER_CLK),

        .UFC_STORAGE_SELECT(ufc_storage_select_r)

    );



    //Instantiate a control module for the output switch
    aurora_UFC_OUTPUT_SWITCH_CONTROL ufc_output_switch_control_i
    (
        .UFC_STORAGE_COUNT(ufc_storage_count_r),
        .USER_CLK(USER_CLK),

        .UFC_OUTPUT_SELECT(ufc_output_select_r)

    );



    //Instantiate a control module for the sideband signals
    aurora_UFC_SIDEBAND_OUTPUT ufc_sideband_output_i
    (
        .BARREL_SHIFTED_COUNT(barrel_shifted_count_r),
        .UFC_STORAGE_COUNT(ufc_storage_count_r),
        .UFC_START(stage_1_ufc_start_r),

        .UFC_SRC_RDY_N(stage_2_ufc_src_rdy_n_r),
        .UFC_SOF_N(stage_2_ufc_sof_n_r),
        .UFC_EOF_N(stage_2_ufc_eof_n_r),
        .UFC_REM(stage_2_ufc_rem_r),

        .USER_CLK(USER_CLK),
        .RESET(RESET)

    );


    //_______________________________ Stage 3:Storage and Output _________________________


    //Instantiate the storage mux
    aurora_UFC_STORAGE_MUX ufc_storage_mux_i
    (
        //Input interface to the muxes
        .RAW_DATA(barrel_shifted_data_r),
        .MUX_SELECT(ufc_storage_select_r),
        .USER_CLK(USER_CLK),

        .MUXED_DATA(ufc_storage_data_r)
    );



    //Instantiate the output mux
    aurora_UFC_OUTPUT_MUX ufc_output_mux_i
    (
        //Input interface to the muxes
        .UFC_STORAGE_DATA(ufc_storage_data_r),
        .BARREL_SHIFTED_DATA(barrel_shifted_data_r),
        .MUX_SELECT(ufc_output_select_r),
        .USER_CLK(USER_CLK),

        .MUXED_DATA(UFC_RX_DATA)
    );



    //Pipeline the LocalLink SRC_RDY_N output
    always @(posedge USER_CLK)
        if(RESET)   UFC_RX_SRC_RDY_N   <=  `DLY    1'b1;
        else        UFC_RX_SRC_RDY_N   <=  `DLY    stage_2_ufc_src_rdy_n_r;



    //Pipeline the remaining LocalLink signals
    always @(posedge USER_CLK)
    begin
        UFC_RX_SOF_N   <=  `DLY    stage_2_ufc_sof_n_r;
        UFC_RX_EOF_N   <=  `DLY    stage_2_ufc_eof_n_r;
        UFC_RX_REM     <=  `DLY    stage_2_ufc_rem_r;
    end


endmodule
