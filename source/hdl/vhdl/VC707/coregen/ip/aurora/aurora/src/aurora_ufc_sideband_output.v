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
//  UFC_SIDEBAND_OUTPUT
//
//
//  Description: UFC_SIDEBAND_OUTPUT generates the UFC_SRC_RDY_N, UFC_EOF_N,
//               UFC_SOF_N and UFC_REM signals for the RX localLink interface
//
//               This module supports 2 4-byte lane designs
//
//

`timescale 1 ns / 1 ps

module aurora_UFC_SIDEBAND_OUTPUT
(
    BARREL_SHIFTED_COUNT,
    UFC_STORAGE_COUNT,
    UFC_START,

    UFC_SRC_RDY_N,
    UFC_SOF_N,
    UFC_EOF_N,
    UFC_REM,

    USER_CLK,
    RESET

 );

`define DLY #1


//***********************************Port Declarations*******************************

    input   [0:1]   BARREL_SHIFTED_COUNT;
    input   [0:1]   UFC_STORAGE_COUNT;
    input           UFC_START;

    output          UFC_SRC_RDY_N;
    output          UFC_SOF_N;
    output          UFC_EOF_N;
    output  [0:1]   UFC_REM;

    input           USER_CLK;
    input           RESET;


//***************************External Register Declarations *************************

    reg             UFC_SRC_RDY_N;
    reg             UFC_SOF_N;
    reg             UFC_EOF_N;
    reg     [0:1]   UFC_REM;


//***************************Internal Register Declarations *************************

    reg             ufc_sof_early_r;


//*********************************** Wire Declarations *****************************

    wire    [0:2]   sum_c;
    wire    [0:2]   storage_count_2x_c;
    wire    [0:2]   sum_2x_c;
    wire    [0:2]   back_to_back_rem_c;
    wire    [0:2]   non_back_to_back_rem_c;
    wire            storage_empty_c;
    wire            message_finished_c;
    wire            back_to_back_ufc_c;


//*********************************Main Body of Code*********************************




    //___________________________Calculate the output__________________________________


    // Assert ufc_src_rdy_n whenever data is moved to the output.

    always @(posedge USER_CLK)
        if(RESET)   UFC_SRC_RDY_N   <=  `DLY    1'b1;
        else        UFC_SRC_RDY_N   <=  `DLY    (UFC_STORAGE_COUNT == 2'd0);


    // Assert ufc_sof one cycle after a new frame is delivered to storage.

    always @(posedge USER_CLK)
        begin
            ufc_sof_early_r     <=  `DLY    UFC_START;
            UFC_SOF_N           <=  `DLY    ~ufc_sof_early_r;
        end



    assign  sum_c   =   UFC_STORAGE_COUNT + BARREL_SHIFTED_COUNT;


    // Detect empty storage.

    assign storage_empty_c    =   !(UFC_STORAGE_COUNT > 0);


    // Detect back to back ufc messages.

    assign  back_to_back_ufc_c    =   !storage_empty_c && UFC_START;


    // Detect messages that are finishing.

    assign  message_finished_c  =   !storage_empty_c && (sum_c <= 3'd2 || UFC_START);


    // Assert eof_n when the storage will empty or a new frame arrives.

    always @(posedge USER_CLK)
        UFC_EOF_N   <=  `DLY    ~message_finished_c;



    // REM calculations
    assign  storage_count_2x_c  =   {UFC_STORAGE_COUNT,1'b0};
    assign  sum_2x_c            =   {sum_c[1:2],1'b0};

    assign  back_to_back_rem_c         =   storage_count_2x_c - 3'd1;
    assign  non_back_to_back_rem_c     =   sum_2x_c - 3'd1;


    // Rem depends on the number of valid bytes being transferred to output
    // on the eof cycle.

    always @(posedge USER_CLK)
        if(back_to_back_ufc_c)  UFC_REM <=  `DLY   back_to_back_rem_c[1:2];
        else                    UFC_REM <=  `DLY   non_back_to_back_rem_c[1:2];


endmodule
