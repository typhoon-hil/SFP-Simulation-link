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
//  RX_LL
//
//
//  Description: The RX_LL module receives data from the Aurora Channel,
//               converts it to LocalLink and sends it to the user interface.
//               It also handles NFC and UFC messages.
//
//               This module supports 2 4-byte lane designs.
//
//               This module supports User Flow Control.
//

`timescale 1 ns / 1 ps

module aurora_RX_LL
(
    // LocalLink PDU Interface
    RX_D,
    RX_REM,
    RX_SRC_RDY_N,
    RX_SOF_N,
    RX_EOF_N,

    // UFC Interface
    UFC_RX_DATA,
    UFC_RX_REM,
    UFC_RX_SRC_RDY_N,
    UFC_RX_SOF_N,
    UFC_RX_EOF_N,

    // Global Logic Interface
    START_RX,


    // Aurora Lane Interface
    RX_PAD,
    RX_PE_DATA,
    RX_PE_DATA_V,
    RX_SCP,
    RX_ECP,
    RX_SUF,
    RX_FC_NB,


    // Error Interface
    FRAME_ERR,


    // System Interface
    USER_CLK


);

`define DLY #1


//***********************************Port Declarations*******************************


    // LocalLink PDU Interface
output  [0:31]     RX_D;
output  [0:1]      RX_REM;
output             RX_SRC_RDY_N;
output             RX_SOF_N;
output             RX_EOF_N;

    // UFC Interface
output  [0:31]     UFC_RX_DATA;
output  [0:1]      UFC_RX_REM;
output             UFC_RX_SRC_RDY_N;
output             UFC_RX_SOF_N;
output             UFC_RX_EOF_N;

    // Global Logic Interface
input              START_RX;


    // Aurora Lane Interface
input   [0:1]      RX_PAD;
input   [0:31]     RX_PE_DATA;
input   [0:1]      RX_PE_DATA_V;
input   [0:1]      RX_SCP;
input   [0:1]      RX_ECP;
input   [0:1]      RX_SUF;
input   [0:7]      RX_FC_NB;


    // Error Interface
output             FRAME_ERR;

    // System Interface
input              USER_CLK;


//*********************************Wire Declarations**********************************

wire    [0:1]      pdu_pad_i;
wire    [0:31]     pdu_data_i;
wire    [0:1]      pdu_data_v_i;
wire    [0:1]      pdu_scp_i;
wire    [0:1]      pdu_ecp_i;

wire    [0:1]      ufc_message_start_i;
wire    [0:31]     ufc_data_i;
wire    [0:1]      ufc_data_v_i;
wire               ufc_start_i;



wire               rx_ll_rst;

//*********************************Main Body of Code**********************************

   assign rx_ll_rst = ~START_RX;



    //____________________ Separate UFC traffic from regular data_____________________

    aurora_UFC_FILTER ufc_filter_i
    (
        // Aurora Channel Interface
        .RX_PAD(RX_PAD),
        .RX_PE_DATA(RX_PE_DATA),
        .RX_PE_DATA_V(RX_PE_DATA_V),
        .RX_SCP(RX_SCP),
        .RX_ECP(RX_ECP),
        .RX_SUF(RX_SUF),
        .RX_FC_NB(RX_FC_NB),


        // PDU Datapath Interface
        .PDU_DATA(pdu_data_i),
        .PDU_DATA_V(pdu_data_v_i),
        .PDU_PAD(pdu_pad_i),
        .PDU_SCP(pdu_scp_i),
        .PDU_ECP(pdu_ecp_i),


        // UFC Datapath Interface
        .UFC_DATA(ufc_data_i),
        .UFC_DATA_V(ufc_data_v_i),
        .UFC_MESSAGE_START(ufc_message_start_i),
        .UFC_START(ufc_start_i),


        // System Interface
        .USER_CLK(USER_CLK),
        .RESET(rx_ll_rst)
    );




    //____________________________ Datapath for user PDUs_____________________________

    aurora_RX_LL_PDU_DATAPATH rx_ll_pdu_datapath_i
    (

        // Traffic Separator Interface
        .PDU_DATA(pdu_data_i),
        .PDU_DATA_V(pdu_data_v_i),
        .PDU_PAD(pdu_pad_i),
        .PDU_SCP(pdu_scp_i),
        .PDU_ECP(pdu_ecp_i),


        // LocalLink PDU Interface
        .RX_D(RX_D),
        .RX_REM(RX_REM),
        .RX_SRC_RDY_N(RX_SRC_RDY_N),
        .RX_SOF_N(RX_SOF_N),
        .RX_EOF_N(RX_EOF_N),


        // Error Interface
        .FRAME_ERR(FRAME_ERR),


        // System Interface
        .USER_CLK(USER_CLK),
        .RESET(rx_ll_rst)
    );



    //_______________________Datapath for UFC PDUs___________________________________

    aurora_RX_LL_UFC_DATAPATH rx_ll_ufc_datapath_i
    (
        // Traffic Separator Interface
        .UFC_DATA(ufc_data_i),
        .UFC_DATA_V(ufc_data_v_i),
        .UFC_MESSAGE_START(ufc_message_start_i),
        .UFC_START(ufc_start_i),


        // LocalLink PDU Interface
        .UFC_RX_DATA(UFC_RX_DATA),
        .UFC_RX_REM(UFC_RX_REM),
        .UFC_RX_SRC_RDY_N(UFC_RX_SRC_RDY_N),
        .UFC_RX_SOF_N(UFC_RX_SOF_N),
        .UFC_RX_EOF_N(UFC_RX_EOF_N),


        // System Interface
        .USER_CLK(USER_CLK),
        .RESET(rx_ll_rst)
    );

endmodule
