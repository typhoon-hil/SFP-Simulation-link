
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
//  UFC_OUTPUT_MUX
//
//
//  Description: the UFC_OUTPUT mux moves selected data from ufc storage and the
//               ufc barrel shifter to the ufc LocalLink output register. It
//               is made up of a series of muxes, one set for each lane. The
//               number of selections available for each mux increments with
//               lane position. The first lane has only one possible input, the
//               nth lane has N inputs.
//               Note that the 0th selection for each mux is connected to the
//               UFC storage input, and the remaining selections are connected
//               to the barrel-shifted input lanes in incrementing order.
//
//               This module supports 2 4-byte lane designs
// 


`timescale 1 ns / 1 ps

module aurora_UFC_OUTPUT_MUX
(
    //Input interface to the muxes
    UFC_STORAGE_DATA,   
    BARREL_SHIFTED_DATA,
    MUX_SELECT,
    USER_CLK,

    MUXED_DATA
);

`define DLY #1


//***********************************Port Declarations*******************************
   
  
    //Mux input interface
    input   [0:31]  UFC_STORAGE_DATA;
    input   [0:31]  BARREL_SHIFTED_DATA;
    input   [0:5]  MUX_SELECT;
    input           USER_CLK;

    output  [0:31]  MUXED_DATA;
      

//**************************External Register Declarations****************************

    reg     [0:31]   MUXED_DATA;
   
   
//**************************Internal Register Declarations****************************   
 
    reg     [0:31]   muxed_data_c; 
  
  
//*********************************Main Body of Code**********************************
  
   
   
    //We create a set of muxes for each lane

    //Lane 0 needs no mux, it is always connected to the storage lane
   
    //Data for lane 1
    always @(MUX_SELECT[3:5] or UFC_STORAGE_DATA or BARREL_SHIFTED_DATA)
    case(MUX_SELECT[3:5])
        3'd0   :  muxed_data_c[16:31] = UFC_STORAGE_DATA[16:31];
        3'd1  :  muxed_data_c[16:31] = BARREL_SHIFTED_DATA[0:15]; 
       
        default  :  muxed_data_c[16:31] = 16'h0;  
    endcase
   


    //Register the data
    always @(posedge USER_CLK)
        MUXED_DATA  <=  `DLY    {UFC_STORAGE_DATA[0:15], muxed_data_c[16:31]};
       
endmodule


