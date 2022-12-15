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
//  UFC_FILTER
//
//
//  Description: The UFC module separates data into UFC data and regular data.
//
//               This module supports 2 4-byte lane designs.
//

`timescale 1 ns / 1 ps

module aurora_UFC_FILTER
(
    // Aurora Channel Interface

    RX_PAD,
    RX_PE_DATA,
    RX_PE_DATA_V,
    RX_SCP,
    RX_ECP,
    RX_SUF,
    RX_FC_NB,

    // PDU Datapath Interface

    PDU_DATA,
    PDU_DATA_V,
    PDU_PAD,
    PDU_SCP,
    PDU_ECP,

    // UFC Datapath Interface

    UFC_DATA,
    UFC_DATA_V,
    UFC_MESSAGE_START,
    UFC_START,

    // System Interface

    USER_CLK,
    RESET

 );

`define DLY #1


//***********************************Port Declarations*******************************

    // Aurora Channel Interface

input   [0:1]      RX_PAD;
input   [0:31]     RX_PE_DATA;
input   [0:1]      RX_PE_DATA_V;
input   [0:1]      RX_SCP;
input   [0:1]      RX_ECP;
input   [0:1]      RX_SUF;
input   [0:7]      RX_FC_NB;

    // PDU Datapath Interface

output  [0:31]     PDU_DATA;
output  [0:1]      PDU_DATA_V;
output  [0:1]      PDU_PAD;
output  [0:1]      PDU_SCP;
output  [0:1]      PDU_ECP;

    // UFC Datapath Interface

output  [0:31]     UFC_DATA;
output  [0:1]      UFC_DATA_V;
output  [0:1]      UFC_MESSAGE_START;
output             UFC_START;


    // System Interface

    input              USER_CLK;
    input              RESET;


//****************************External Register Declarations*************************

    // PDU Datapath Interface

reg     [0:31]     PDU_DATA;
reg     [0:1]      PDU_DATA_V;
reg     [0:1]      PDU_PAD;
reg     [0:1]      PDU_SCP;
reg     [0:1]      PDU_ECP;


    // UFC Datapath Interface

reg     [0:31]     UFC_DATA;
reg     [0:1]      UFC_DATA_V;
reg     [0:1]      UFC_MESSAGE_START;
reg                UFC_START;



//****************************Internal Register Declarations*************************

    reg     [0:1]      stage_1_lane_mask_0_c;
    reg     [0:3]      stage_1_count_value_0_c;
    reg     [0:1]      stage_1_lane_mask_1_c;
    reg     [0:3]      stage_1_count_value_1_c;
reg     [0:1]      stage_1_lane_mask_r;
    reg     [0:3]      stage_1_count_value_r;
    reg                load_ufc_control_code_r;
reg     [0:1]      rx_data_v_r;
reg     [0:1]      rx_suf_r;
reg     [0:1]      rx_pad_r;
reg     [0:31]     rx_pe_data_r;
reg     [0:1]      rx_scp_r;
reg     [0:1]      rx_ecp_r;
    reg     [0:3]      stage_2_count_value_r;
reg     [0:1]      stage_2_lane_mask_c;
    reg     [0:3]      stage_2_count_value_c;
    reg                save_start_r;


//*********************************Main Body of Code*********************************




    //__________________________________Stage 1_______________________________________________


    // Decode a lane mask value for each lane.  The lane mask indicates which lanes in the
    // current cycle contain UFC data.

    // Lane mask for lane 0.

    always @(RX_FC_NB[0:2])
        case(RX_FC_NB[0:2])
3'h0    :   stage_1_lane_mask_0_c  =   2'd1;
3'h1    :   stage_1_lane_mask_0_c  =   2'd1;
3'h2    :   stage_1_lane_mask_0_c  =   2'd1;
3'h3    :   stage_1_lane_mask_0_c  =   2'd1;
3'h4    :   stage_1_lane_mask_0_c  =   2'd1;
3'h5    :   stage_1_lane_mask_0_c  =   2'd1;
3'h6    :   stage_1_lane_mask_0_c  =   2'd1;
3'h7    :   stage_1_lane_mask_0_c  =   2'd1;
            default :   stage_1_lane_mask_0_c  =   2'd0;
        endcase

    // Lane mask for lane 1.

    always @(RX_FC_NB[4:6])
        case(RX_FC_NB[4:6])
3'h0    :   stage_1_lane_mask_1_c  =   2'd0;
3'h1    :   stage_1_lane_mask_1_c  =   2'd0;
3'h2    :   stage_1_lane_mask_1_c  =   2'd0;
3'h3    :   stage_1_lane_mask_1_c  =   2'd0;
3'h4    :   stage_1_lane_mask_1_c  =   2'd0;
3'h5    :   stage_1_lane_mask_1_c  =   2'd0;
3'h6    :   stage_1_lane_mask_1_c  =   2'd0;
3'h7    :   stage_1_lane_mask_1_c  =   2'd0;
            default :   stage_1_lane_mask_1_c  =   2'd0;
        endcase



    // Decode a count value for each lane.  The count value indicates the number of lanes in
    // the cycles that will follow will contain UFC data, based on the current FC_NB value
    // and its lane position.

    // Count value for lane 0.

    always @(RX_FC_NB[0:2])
        case(RX_FC_NB[0:2])
3'h0    :   stage_1_count_value_0_c  =   4'd0;
3'h1    :   stage_1_count_value_0_c  =   4'd1;
3'h2    :   stage_1_count_value_0_c  =   4'd2;
3'h3    :   stage_1_count_value_0_c  =   4'd3;
3'h4    :   stage_1_count_value_0_c  =   4'd4;
3'h5    :   stage_1_count_value_0_c  =   4'd5;
3'h6    :   stage_1_count_value_0_c  =   4'd6;
3'h7    :   stage_1_count_value_0_c  =   4'd7;
            default :   stage_1_count_value_0_c  =   4'd0;
        endcase

    // Count value for lane 1.

    always @(RX_FC_NB[4:6])
        case(RX_FC_NB[4:6])
3'h0    :   stage_1_count_value_1_c  =   4'd1;
3'h1    :   stage_1_count_value_1_c  =   4'd2;
3'h2    :   stage_1_count_value_1_c  =   4'd3;
3'h3    :   stage_1_count_value_1_c  =   4'd4;
3'h4    :   stage_1_count_value_1_c  =   4'd5;
3'h5    :   stage_1_count_value_1_c  =   4'd6;
3'h6    :   stage_1_count_value_1_c  =   4'd7;
3'h7    :   stage_1_count_value_1_c  =   4'd8;
            default :   stage_1_count_value_1_c  =   4'd0;
        endcase



    // Select and store the lane mask from the first lane that contained the UFC message header.

    always @(posedge USER_CLK)
        if(RESET)   stage_1_lane_mask_r     <=  `DLY    2'd0;
        else
        begin
            if(RX_SUF[0])   stage_1_lane_mask_r     <=  `DLY    stage_1_lane_mask_0_c;
            else if(RX_SUF[1])   stage_1_lane_mask_r     <=  `DLY    stage_1_lane_mask_1_c;
            else          stage_1_lane_mask_r     <=  `DLY    2'd0;
        end



    // Select and store the count value from the last lane that contained the UFC message header.

    always @(posedge USER_CLK)
        if(RESET)   stage_1_count_value_r   <=  `DLY    4'd0;
        else
        begin
            if(RX_SUF[1])   stage_1_count_value_r   <=  `DLY    stage_1_count_value_1_c;
            else if(RX_SUF[0])   stage_1_count_value_r   <=  `DLY    stage_1_count_value_0_c;
            else                         stage_1_count_value_r   <=  `DLY    4'd0;
        end



    // Register a load flag if any of the SUF flags are high.

    always @(posedge USER_CLK)
        if(RESET)   load_ufc_control_code_r <=  `DLY    1'b0;
        else        load_ufc_control_code_r <=  `DLY    |RX_SUF;


    // Pipeline the data valid signal and the RX_SUF signal: they need reset.

    always @(posedge USER_CLK)
        if(RESET)
        begin
            rx_data_v_r <=  `DLY    2'd0;
            rx_suf_r    <=  `DLY    2'd0;
        end
        else
        begin
            rx_data_v_r <=  `DLY    RX_PE_DATA_V;
            rx_suf_r    <=  `DLY    RX_SUF;
        end


    // Pipeline the remaining signals.

    always  @(posedge USER_CLK)
    begin
        rx_pad_r        <=  `DLY    RX_PAD;
        rx_pe_data_r    <=  `DLY    RX_PE_DATA;
        rx_scp_r        <=  `DLY    RX_SCP;
        rx_ecp_r        <=  `DLY    RX_ECP;
    end



    //_________________________________Stage 2__________________________________________________


    // If a new message was started in the previous cycle, load the new message size value into a
    // counter.  Otherwise, continue to process the previous count.

    always @(posedge USER_CLK)
        if(RESET)                       stage_2_count_value_r   <=  `DLY    4'd0;
        else if(load_ufc_control_code_r)stage_2_count_value_r   <=  `DLY    stage_1_count_value_r;
        else                            stage_2_count_value_r   <=  `DLY    stage_2_count_value_c;



    // Generate a lane mask based on previous count.

    always @(stage_2_count_value_r)
        case(stage_2_count_value_r)
4'h1    :   stage_2_lane_mask_c  =   2'd2;
4'h2    :   stage_2_lane_mask_c  =   2'd3;
4'h3    :   stage_2_lane_mask_c  =   2'd3;
4'h4    :   stage_2_lane_mask_c  =   2'd3;
4'h5    :   stage_2_lane_mask_c  =   2'd3;
4'h6    :   stage_2_lane_mask_c  =   2'd3;
4'h7    :   stage_2_lane_mask_c  =   2'd3;
4'h8    :   stage_2_lane_mask_c  =   2'd3;
            default :   stage_2_lane_mask_c  =   2'd0;
        endcase


    // Generate a new lane count based on previous count.

    always @(stage_2_count_value_r)
        case(stage_2_count_value_r)
4'h1    :   stage_2_count_value_c  =   4'd0;
4'h2    :   stage_2_count_value_c  =   4'd0;
4'h3    :   stage_2_count_value_c  =   4'd1;
4'h4    :   stage_2_count_value_c  =   4'd2;
4'h5    :   stage_2_count_value_c  =   4'd3;
4'h6    :   stage_2_count_value_c  =   4'd4;
4'h7    :   stage_2_count_value_c  =   4'd5;
4'h8    :   stage_2_count_value_c  =   4'd6;
            default :   stage_2_count_value_c  =   4'd0;
        endcase


    // For each lane, mask the valid bit based on the incoming valid signal and the stage 1 and stage 2 lane masks.

    always @(posedge USER_CLK)
        if(RESET)   PDU_DATA_V  <=  `DLY    2'd0;
        else        PDU_DATA_V  <=  `DLY    rx_data_v_r & ~stage_1_lane_mask_r & ~stage_2_lane_mask_c;



    // For each lane, the lane mask serves as a data valid signal for the UFC data.

    always @(posedge USER_CLK)
        if(RESET)   UFC_DATA_V  <=  `DLY    2'd0;
        else        UFC_DATA_V  <=  `DLY    stage_1_lane_mask_r | stage_2_lane_mask_c;



    // Save start signals from ufc headers that appeared at the end of previous cycles.

    always @(posedge USER_CLK)
        if(RESET)   save_start_r    <=  `DLY    1'b0;
        else        save_start_r    <=  `DLY    rx_suf_r[1];



    // Generate the UFC_MESSAGE_START and the UFC_START signals.

    always @(posedge USER_CLK)
        if(RESET)
        begin
            UFC_MESSAGE_START   <=  `DLY    2'd0;
            UFC_START           <=  `DLY    1'b0;
        end
        else
        begin
            UFC_MESSAGE_START   <=  `DLY    rx_suf_r;
            UFC_START           <=  `DLY    |{rx_suf_r[0:0],save_start_r};
        end



    // Pipeline the remaining signals.

    always  @(posedge USER_CLK)
    begin
        PDU_PAD         <=  `DLY    rx_pad_r;
        PDU_DATA        <=  `DLY    rx_pe_data_r;
        UFC_DATA        <=  `DLY    rx_pe_data_r;
        PDU_SCP         <=  `DLY    rx_scp_r;
        PDU_ECP         <=  `DLY    rx_ecp_r;
    end



endmodule
