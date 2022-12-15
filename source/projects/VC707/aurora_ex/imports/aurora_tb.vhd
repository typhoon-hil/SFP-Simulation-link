-- (c) Copyright 2008 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
--

--
--  aurora_TB
--
--  Description:  This testbench instantiates 2 Aurora Sample Modules. The serial TX pins from 
--                one module are connected to the RX pins of the other and vice versa. A simple Local-Link
--                frame generator is used to generate packets for the TX data interface while a frame checker
--                module is connected to the RX data interface to check the incoming frames and keep
--                track of any errors.
--        
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use STD.TEXTIO.all;

package TB_PKG is

    procedure tbprint (message : in string);

end;

package body TB_PKG is

    function std_bool (EXP_IN : in boolean) return std_logic is

    begin

        if (EXP_IN) then

            return('1');

        else

            return('0');

        end if;

    end std_bool;

    procedure tbprint (message : in string) is
      variable outline : line;
    begin
      write(outline, string'("## Time: "));
      write(outline, NOW, RIGHT, 0, ps);
      write(outline, string'("  "));
      write(outline, string'(message));
      writeline(output,outline);
    end tbprint;

end;
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use WORK.TB_PKG.all;

-- synthesis translate_off
library UNISIM;
use UNISIM.all;
-- synthesis translate_on

entity aurora_TB is
end aurora_TB;

architecture MAPPED of aurora_TB is

--*************************Parameter Declarations**************************
    -- 125.0MHz GT Reference clock
constant  CLOCKPERIOD_1 : time := 8.0	 ns;
constant  CLOCKPERIOD_2 : time := 8.0	 ns;
--constant  CLOCKPERIOD_1 : time := 8.0 ns;
--constant  CLOCKPERIOD_2 : time := 8.0 ns;
constant  DRP_CLOCKPERIOD  : time := 20.000	 ns;  -- GT DRP Clock
constant  INIT_CLOCKPERIOD : time := 20.0 ns; -- Board/System Clock

    constant  DLY           : time := 1 ns;


--********************************Signal Declarations**********************************

--Freerunning Clock
signal  reference_clk_1_n_r   :  std_logic;
signal  reference_clk_2_n_r   :  std_logic;          
signal  reference_clk_1_p_r   :  std_logic;
signal  reference_clk_2_p_r   :  std_logic;          
signal  drp_clk_i             :  std_logic;         
signal  init_clk_p            :  std_logic;         
signal  init_clk_n            :  std_logic;         
 
--Reset
signal  reset_i               :  std_logic;            
signal  gt_reset_i            :  std_logic;         

--Dut1

    --Error Detection Interface
signal  hard_err_1_i         :  std_logic;        
signal  soft_err_1_i         :  std_logic;        
signal  frame_err_1_i        :  std_logic;        

    --Status
signal   channel_up_1_i      :  std_logic;        
signal   lane_up_1_i         :  std_logic;


    --GT Serial I/O
signal   rxp_1_i             :  std_logic; 
signal   rxn_1_i             :  std_logic; 
   
signal   txp_1_i             :  std_logic; 
signal   txn_1_i             :  std_logic; 

    -- Error signals from the Local Link packet checker
signal   err_count_1_i       :  std_logic_vector(0 to 7); 


--Dut2

    --Error Detection Interface
signal  hard_err_2_i        :  std_logic;        
signal  soft_err_2_i        :  std_logic;        
signal  frame_err_2_i       :  std_logic;        

    --Status
signal   channel_up_2_i       :  std_logic;        
signal   lane_up_2_i          :  std_logic;


    --GT Serial I/O
signal   rxp_2_i              :  std_logic; 
signal   rxn_2_i              :  std_logic; 
   
signal   txp_2_i              :  std_logic; 
signal   txn_2_i              :  std_logic; 

    -- Error signals from the Local Link packet checker
signal   err_count_2_i        :  std_logic_vector(0 to 7); 

-- Component Declarations --

    component aurora_exdes
    port   (

    -- User I/O

            RESET             : in std_logic;
            GT_RESET_IN       : in  std_logic;

            HARD_ERR          : out std_logic;
            SOFT_ERR          : out std_logic;
            FRAME_ERR         : out std_logic;
            ERR_COUNT         : out std_logic_vector(0 to 7);


LANE_UP           : out std_logic;
            CHANNEL_UP        : out std_logic;
           INIT_CLK_P         : in std_logic;
           INIT_CLK_N         : in std_logic;
           DRP_CLK_IN         : in std_logic;
    -- Clocks

           GTXQ0_P    : in  std_logic;
           GTXQ0_N    : in  std_logic;

   -- GT I/O

RXP               : in std_logic;
RXN               : in std_logic;
TXP               : out std_logic;
TXN               : out std_logic

         );

    end component;


begin

   
    --_________________________GT Serial Connections________________
  
    rxn_1_i      <=    txn_2_i;
    rxp_1_i      <=    txp_2_i;
    rxn_2_i      <=    txn_1_i;
    rxp_2_i      <=    txp_1_i;

    --____________________________Clocks____________________________

    process 
    begin
        reference_clk_1_p_r <= '0';
        wait for CLOCKPERIOD_1 / 2;
        reference_clk_1_p_r <= '1';
        wait for CLOCKPERIOD_1 / 2;
    end process;

    reference_clk_1_n_r <= not reference_clk_1_p_r;


    --____________________________Clocks____________________________

    process 
    begin
        reference_clk_2_p_r <= '0';
        wait for CLOCKPERIOD_2 / 2;
        reference_clk_2_p_r <= '1';
        wait for CLOCKPERIOD_2 / 2;
    end process;

    reference_clk_2_n_r <= not reference_clk_2_p_r;



    process 
    begin
        drp_clk_i <= '0';
        wait for DRP_CLOCKPERIOD / 2;
        drp_clk_i <= '1';
        wait for DRP_CLOCKPERIOD / 2;
    end process;

    process 
    begin
        init_clk_p <= '0';
        wait for INIT_CLOCKPERIOD / 2;
        init_clk_p <= '1';
        wait for INIT_CLOCKPERIOD / 2;
    end process;

   init_clk_n <= not init_clk_p;

    --____________________________Resets____________________________

    process
    begin
        reset_i <= '1';
        wait for 200 ns;
        reset_i <= '0';
        wait;
    end process;

    --____________________________Reseting PMA____________________________

    process
    begin
        gt_reset_i <= '1';
        wait for 5000 ns;
        gt_reset_i <= '0';
        wait;
    end process;
       
    --________________________Instantiate Dut 1 ________________

example_design_1_i : aurora_exdes
port map   (
    -- User IO
    RESET           =>      reset_i,
    -- Error signals from Aurora   
    HARD_ERR        =>      hard_err_1_i,
    SOFT_ERR        =>      soft_err_1_i,
    FRAME_ERR       =>      frame_err_1_i,


    -- Status Signals
    LANE_UP         =>      lane_up_1_i,
    CHANNEL_UP      =>      channel_up_1_i,
    INIT_CLK_P      =>      init_clk_p,
    INIT_CLK_N      =>      init_clk_n,
    GT_RESET_IN     =>      gt_reset_i,

    -- Clock Signals
    GTXQ0_P          =>      reference_clk_1_p_r,
    GTXQ0_N          =>      reference_clk_1_n_r,
    DRP_CLK_IN         => drp_clk_i,

    -- GT I/O
    RXP             =>      rxp_1_i,
    RXN             =>      rxn_1_i,

    TXP             =>      txp_1_i,
    TXN             =>      txn_1_i,

    -- Error signals from the Local Link packet checker
    ERR_COUNT       =>      err_count_1_i
);

    --________________________Instantiate Dut 2 ________________

example_design_2_i : aurora_exdes
port map   (
    -- User IO
    RESET           =>      reset_i,
    -- Error signals from Aurora   
    HARD_ERR        =>      hard_err_2_i,
    SOFT_ERR        =>      soft_err_2_i,
    FRAME_ERR       =>      frame_err_2_i,


    -- Status Signals
    LANE_UP         =>      lane_up_2_i,
    CHANNEL_UP      =>      channel_up_2_i,
    INIT_CLK_P      =>      init_clk_p,
    INIT_CLK_N      =>      init_clk_n,
    GT_RESET_IN     =>      gt_reset_i,

    -- Clock Signals
    GTXQ0_P          =>      reference_clk_2_p_r,
    GTXQ0_N          =>      reference_clk_2_n_r,
    DRP_CLK_IN         => drp_clk_i,

    -- GT I/O
    RXP             =>      rxp_2_i,
    RXN             =>      rxn_2_i,

    TXP             =>      txp_2_i,
    TXN             =>      txn_2_i,

    -- Error signals from the Local Link packet checker
    ERR_COUNT       =>      err_count_2_i
);


    -- Checking CHANNEL_UP Signal
    process
    begin
      wait until ((channel_up_1_i and channel_up_2_i)='1');
        tbprint("  ******************************************************  ");
        tbprint("  AURORA_TB : INFO  : CHANNEL_UP is asserted in both DUT");
        tbprint("  ******************************************************  ");
        wait for 5 us;
        tbprint("  AURORA_TB : INFO : Test Completed Successfully");
        assert FALSE
          report "Simulation Stopped."
            severity FAILURE;
    end process;

    -- Poll on ERR_COUNT signal and exit prematurely from simulation
    process
    begin
      wait until ((err_count_1_i or err_count_2_i)>="00000001");
        tbprint("  **************************************************  ");
        tbprint("  AURORA_TB : INFO  : Data integrity check failed");
        tbprint("  **************************************************  ");
        wait for 1 us;
        tbprint("  AURORA_TB : ERROR : TEST FAIL");
        assert FALSE
          report "Simulation Stopped."
            severity FAILURE;
    end process;

    -- Abort the simulation when it reaches to max time limit
    process
    begin
      wait for 9500 us;
        tbprint(" *****************************************************  ");
        tbprint(" AURORA_TB : INFO : Reached max. simulation time limit  ");
        assert FALSE
          report "Simulation Stopped."
            severity FAILURE;
    end process;

end MAPPED;
