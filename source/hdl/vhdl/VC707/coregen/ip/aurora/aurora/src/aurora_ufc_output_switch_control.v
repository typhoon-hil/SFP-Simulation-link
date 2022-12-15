


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
//  UFC_OUTPUT_COUNT_CONTROL
//
//
//  Description: UFC_OUTPUT_SWITCH_CONTROL selects the input chunk for each ufc output mux
//
//              This module supports 2 4-byte lane designs
//             
//

`timescale 1 ns / 1 ps

module aurora_UFC_OUTPUT_SWITCH_CONTROL
(
    UFC_STORAGE_COUNT,
    USER_CLK,
   
    UFC_OUTPUT_SELECT
     
 );

`define DLY #1

   
//***********************************Port Declarations*******************************
      
    input   [0:1]   UFC_STORAGE_COUNT;
    input           USER_CLK;
   
    output   [0:5]   UFC_OUTPUT_SELECT;
   
   
//****************************External Register Declarations*************************
  
    reg     [0:5]   UFC_OUTPUT_SELECT;
   
   
//****************************Internal Register Declarations*************************
   
    reg     [0:5]   ufc_output_select_c; 
  
//*********************************** Wire Declarations *****************************   
   
    wire            overflow_c;
    wire    [0:7]  sum_c;
  
//*********************************Main Body of Code*********************************



    //____________________________Generate switch signals________________________
   
  
    //Select for Lane 0
    assign sum_c[0:3]    =   4'd1 - UFC_STORAGE_COUNT;

    always @(sum_c)
        if(sum_c[0])     ufc_output_select_c[0:2] = 0;
        else            ufc_output_select_c[0:2] = sum_c[1:3];
      
   
   
      
  
    //Select for Lane 1
    assign sum_c[4:7]    =   4'd2 - UFC_STORAGE_COUNT;

    always @(sum_c)
        if(sum_c[4])     ufc_output_select_c[3:5] = 0;
        else            ufc_output_select_c[3:5] = sum_c[5:7];
      
   
   
      
  


    //Register the output
    always @(posedge USER_CLK)
        UFC_OUTPUT_SELECT   <=  `DLY    ufc_output_select_c;
       
       
   
endmodule


