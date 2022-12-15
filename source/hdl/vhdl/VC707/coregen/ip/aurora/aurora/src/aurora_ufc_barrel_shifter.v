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
//  UFC_BARREL_SHIFTER
//
//
//  Description: the UFC_BARREL shifter is a barrel shifter that takes UFC
//               message data from the Aurora channel and left aligns it.
//     
//               This module supports 2 4-byte lane designs
//

`timescale 1 ns / 1 ps

module aurora_UFC_BARREL_SHIFTER
(
    //Input interface to the muxes
    RAW_DATA,
    BARREL_SHIFTER_CONTROL,
    USER_CLK,
    RESET,

    //Mux output
    SHIFTED_DATA
);

`define DLY #1


//***********************************Port Declarations*******************************
   
    input   [0:31]  RAW_DATA;
    input   [0:1]   BARREL_SHIFTER_CONTROL;
    input           USER_CLK;
    input           RESET;

    output  [0:31]  SHIFTED_DATA;


//**************************External Register Declarations****************************
   
    reg     [0:31]   SHIFTED_DATA;
  


//**************************Internal Register Declarations**************************** 
  
    reg     [0:1]   ufc_select_c;
    reg     [0:31]   shifted_data_c;  
  
  
//*********************************Main Body of Code**********************************
  
   
   
    //_______________________Muxes for barrel shifting__________________________________
   
   
    //Data for lane 0
    always @(BARREL_SHIFTER_CONTROL or RAW_DATA)
    case(BARREL_SHIFTER_CONTROL)
        2'd0  :  shifted_data_c[0:15] = RAW_DATA[0:15]; 
        2'd1  :  shifted_data_c[0:15] = RAW_DATA[16:31]; 
       
        default  :  shifted_data_c[0:15] = 16'h0;  
    endcase
   
    //Data for lane 1
    always @(BARREL_SHIFTER_CONTROL or RAW_DATA)
    case(BARREL_SHIFTER_CONTROL)
        2'd0  :  shifted_data_c[16:31] = RAW_DATA[16:31]; 
       
        default  :  shifted_data_c[16:31] = 16'h0;  
    endcase
   


    //Register the output
    always @(posedge USER_CLK)
        SHIFTED_DATA    <=  `DLY    shifted_data_c;
       
       

endmodule


