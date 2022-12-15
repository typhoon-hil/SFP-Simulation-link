------------------------------------------------------------------------------/
-- (c) Copyright 1995-2013 Xilinx, Inc. All rights reserved.
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
------------------------------------------------------------------------------/
 library ieee;
     use ieee.std_logic_1164.all;
     use ieee.std_logic_misc.all;
     use IEEE.numeric_std.all;
     use ieee.std_logic_arith.all;
     use ieee.std_logic_unsigned.all;

-- synthesis translate_off
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
-- synthesis translate_on

entity  aurora_support is
port (
    -- AXI TX Interface
    s_axi_tx_tdata         : in  std_logic_vector(0 to 31);
    s_axi_tx_tkeep         : in std_logic_vector(0 to 3);
    s_axi_tx_tvalid        : in  std_logic;
    s_axi_tx_tready        : out std_logic;
    s_axi_tx_tlast         : in  std_logic;


    -- AXI RX Interface
    m_axi_rx_tdata         : out std_logic_vector(0 to 31);
    m_axi_rx_tkeep         : out std_logic_vector(0 to 3);
    m_axi_rx_tvalid        : out std_logic;
    m_axi_rx_tlast         : out std_logic;


    -- User Flow Control TX Interface
    s_axi_ufc_tx_req       : in std_logic;
 
    s_axi_ufc_tx_ms        : in std_logic_vector(0 to 2);
    s_axi_ufc_tx_ack       : out std_logic;


    -- User Flow Control RX Inteface
 
    m_axi_ufc_rx_tdata     : out std_logic_vector(0 to 31);
    m_axi_ufc_rx_tkeep     : out std_logic_vector(0 to 3);
    m_axi_ufc_rx_tvalid    : out std_logic;
    m_axi_ufc_rx_tlast     : out std_logic;


 
    -- GT Serial I/O
    rxp                    : in std_logic_vector(0 downto 0);
    rxn                    : in std_logic_vector(0 downto 0);

    txp                    : out std_logic_vector(0 downto 0);
    txn                    : out std_logic_vector(0 downto 0);

    -- GT Reference Clock Interface
    gt_refclk1_p             : in  std_logic;
    gt_refclk1_n             : in  std_logic;

    -- Error Detection Interface
 
    frame_err              : out std_logic;
    hard_err               : out std_logic;
    soft_err               : out std_logic;
    channel_up             : out std_logic;
    lane_up                : out std_logic_vector(0 downto 0);




    -- System Interface
    user_clk_out           : out std_logic;
    reset                  : in  std_logic;
    gt_reset               : in  std_logic;
    sys_reset_out          : out std_logic;

    power_down             : in  std_logic;
    loopback               : in  std_logic_vector(2 downto 0);
    tx_lock                : out std_logic;
    init_clk_p             : in  std_logic;
    --init_clk_n             : in  std_logic;
    init_clk_out           : out std_logic;
    tx_resetdone_out       : out std_logic;
    rx_resetdone_out       : out std_logic;
    link_reset_out         : out std_logic;


    --DRP Ports
    drpclk_in                         : in   std_logic;
    drpaddr_in             : in   std_logic_vector(8 downto 0);
    drpdi_in               : in   std_logic_vector(15 downto 0);
    drpdo_out              : out  std_logic_vector(15 downto 0);
    drpen_in               : in   std_logic;
    drprdy_out             : out  std_logic;
    drpwe_in               : in   std_logic;
   

    pll_not_locked_out      : out  std_logic

 );

end aurora_support;


architecture STRUCTURE of aurora_support is
  attribute core_generation_info           : string;
  attribute core_generation_info of STRUCTURE : architecture is "aurora,aurora_8b10b_v11_1_7,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=right,c_gt_clock_1=GTXQ0,c_gt_clock_2=None,c_gt_loc_1=1,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=50000,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=125000,c_simplex=false,c_simplex_mode=TX,c_stream=false,c_ufc=true,flow_mode=UFC,interface_mode=Framing,dataflow_config=Duplex}";

    component aurora
        port   (
         -- TX Stream Interface
         S_AXI_TX_TDATA         : in  std_logic_vector(0 to 31);
         S_AXI_TX_TKEEP         : in std_logic_vector(0 to 3);
         S_AXI_TX_TVALID        : in  std_logic;
         S_AXI_TX_TREADY        : out std_logic;
         S_AXI_TX_TLAST         : in  std_logic;

         -- RX Stream Interface
         M_AXI_RX_TDATA         : out std_logic_vector(0 to 31);
         M_AXI_RX_TKEEP         : out std_logic_vector(0 to 3);
         M_AXI_RX_TVALID        : out std_logic;
         M_AXI_RX_TLAST         : out std_logic;
         -- User Flow Control TX Interface

         S_AXI_UFC_TX_TVALID    : in std_logic;
         S_AXI_UFC_TX_TDATA     : in std_logic_vector(0 to 2);
         S_AXI_UFC_TX_TREADY    : out std_logic;

         -- User Flow Control RX Inteface
         M_AXI_UFC_RX_TDATA     : out std_logic_vector(0 to 31);
         M_AXI_UFC_RX_TKEEP     : out std_logic_vector(0 to 3);
         M_AXI_UFC_RX_TVALID    : out std_logic;
         M_AXI_UFC_RX_TLAST     : out std_logic;

         -- GT Serial I/O
    RXP                    : in std_logic_vector(0 downto 0);
    RXN                    : in std_logic_vector(0 downto 0);
    TXP                    : out std_logic_vector(0 downto 0);
    TXN                    : out std_logic_vector(0 downto 0);

         -- GT Reference Clock Interface
         gt_refclk1           : in std_logic;

         -- Error Detection Interface
         HARD_ERR               : out std_logic;
         SOFT_ERR               : out std_logic;

         -- Status
         CHANNEL_UP             : out std_logic;
         LANE_UP             : out std_logic_vector(0 downto 0);

               
         FRAME_ERR              : out std_logic;




         -- System Interface

         USER_CLK         : in std_logic;
         SYNC_CLK         : in std_logic;
         GT_RESET         : in std_logic;
         RESET            : in std_logic;
         sys_reset_out    : out std_logic;
         POWER_DOWN       : in std_logic;
         LOOPBACK         : in std_logic_vector(2 downto 0);
         TX_OUT_CLK       : out std_logic;
         INIT_CLK_IN         : in  std_logic; 
         PLL_NOT_LOCKED      : in  std_logic;
         TX_RESETDONE_OUT    : out std_logic;
         RX_RESETDONE_OUT    : out std_logic;
         LINK_RESET_OUT      : out std_logic;

         drpclk_in                                             : in   std_logic;
    drpaddr_in             : in   std_logic_vector(8 downto 0);
    drpdi_in               : in   std_logic_vector(15 downto 0);
    drpdo_out              : out  std_logic_vector(15 downto 0);
    drpen_in               : in   std_logic;
    drprdy_out             : out  std_logic;
    drpwe_in               : in   std_logic;
   	
--------------------{
--__________COMMON PORTS _______________________________{
    ------------------------- Common Block - QPLL Ports ------------------------
      gt0_qplllock_in       :  in  std_logic;
      gt0_qpllrefclklost_in :  in  std_logic;
      gt0_qpllreset_out     :  out std_logic;
  gt_qpllclk_quad1_in      : in  std_logic;  
  gt_qpllrefclk_quad1_in   : in  std_logic;  
--____________________________COMMON PORTS _______________________________}
         TX_LOCK          : out std_logic
    );

    end component;


component aurora_gt_common_wrapper
port
(
--____________________________COMMON PORTS ,_______________________________{
   gt_qpllclk_quad1_i    : out  std_logic;
   gt_qpllrefclk_quad1_i : out  std_logic;
--____________________________COMMON PORTS ,_______________________________}
    ---------------------- Common Block  - Ref Clock Ports ---------------------
    gt0_gtrefclk0_common_in    :  in  std_logic;
    ------------------------- Common Block - QPLL Ports ------------------------
    gt0_qplllock_out           : out std_logic;
    gt0_qplllockdetclk_in      : in  std_logic;
    gt0_qpllrefclklost_out     : out std_logic;
    gt0_qpllreset_in           : in  std_logic  

);
end component;


  component IBUFDS_GTE2
  port (
     O : out std_ulogic;
     ODIV2 : out std_ulogic;
     CEB : in std_ulogic;
     I : in std_ulogic;
     IB : in std_ulogic
       );
  end component;

    component BUFG

        port (

                O : out std_ulogic;
                I : in  std_ulogic

             );

    end component;

    component aurora_CLOCK_MODULE
        port (
                INIT_CLK_P              : in std_logic;
                --INIT_CLK_N              : in std_logic;
                INIT_CLK_O              : out std_logic; 
                GT_CLK                  : in std_logic;
                GT_CLK_LOCKED           : in std_logic;
                USER_CLK                : out std_logic;
                SYNC_CLK                : out std_logic;
                PLL_NOT_LOCKED          : out std_logic
             );
    end component;

    component aurora_SUPPORT_RESET_LOGIC
        port (
                RESET                  : in std_logic;
                USER_CLK               : in std_logic;
                INIT_CLK_IN            : in std_logic;
                GT_RESET_IN            : in std_logic;
                SYSTEM_RESET           : out std_logic;
                GT_RESET_OUT           : out std_logic
             );
    end component;

  component  aurora_cdc_sync is
    generic (
        C_CDC_TYPE                  : integer range 0 to 2 := 1                 ;
                                    -- 0 is pulse synch
                                    -- 1 is level synch
                                    -- 2 is ack based level sync
        C_RESET_STATE               : integer range 0 to 1 := 0                 ;
                                    -- 0 is reset not needed 
                                    -- 1 is reset needed 
        C_SINGLE_BIT                : integer range 0 to 1 := 1                 ; 
                                    -- 0 is bus input
                                    -- 1 is single bit input
        C_FLOP_INPUT                : integer range 0 to 1 := 0                 ;
        C_VECTOR_WIDTH              : integer range 0 to 32 := 32               ;
        C_MTBF_STAGES               : integer range 0 to 6 := 2                 
            -- Vector Data witdth
    );

    port (
        prmry_aclk                  : in  std_logic                             ;               --
        prmry_resetn                : in  std_logic                             ;               --
        prmry_in                    : in  std_logic                             ;               --
        prmry_vect_in               : in  std_logic_vector                                      --
                                        (C_VECTOR_WIDTH - 1 downto 0)           ;               --
        prmry_ack                   : out std_logic                             ;
                                                                                                --
        scndry_aclk                 : in  std_logic                             ;               --
        scndry_resetn               : in  std_logic                             ;               --
                                                                                                --
        -- Primary to Secondary Clock Crossing                                                  --
        scndry_out                  : out std_logic                             ;               --
                                                                                                --
        scndry_vect_out             : out std_logic_vector                                      --
                                        (C_VECTOR_WIDTH - 1 downto 0)                           --

    );
  end component;

------------  Wire declarations
--------------------{
    ------------------------- Common Block - QPLL Ports ------------------------
signal gt0_qplllock_i         : std_logic;
signal gt0_qpllrefclklost_i   : std_logic;
signal gt0_qpllreset_i        : std_logic;
signal                      gt_qpllclk_quad1_i  :  std_logic;
signal                      gt_qpllrefclk_quad1_i  :  std_logic;
--------------------}
signal               gt_refclk1    :   std_logic;

signal               tx_out_clk_i            :  std_logic;
signal               user_clk_i              :  std_logic;
signal               sync_clk_i              :  std_logic;
signal               pll_not_locked_i        :  std_logic;
signal               tx_lock_i               :  std_logic;

signal               init_clk_i              :  std_logic;
signal               tx_resetdone_i          :  std_logic;
signal               rx_resetdone_i          :  std_logic;
signal               link_reset_i            :  std_logic;
signal               system_reset_i          :  std_logic;
signal               gt_reset_i              :  std_logic;
signal               drpclk_i                :  std_logic;
signal               reset_sync_user_clk     : std_logic;
signal               gt_reset_sync_init_clk  : std_logic;
begin

 --*********************************Main Body of Code**********************************

      IBUFDS_GTE2_CLK1 :  IBUFDS_GTE2
      port map (
           I     => gt_refclk1_p,
           IB    => gt_refclk1_n,
           CEB   => '0',
           O     => gt_refclk1,
           ODIV2 => OPEN);


  drpclk_i <= drpclk_in;

    -- Instantiate a clock module for clock division

    clock_module_i : aurora_CLOCK_MODULE
        port map (
                    INIT_CLK_P          => init_clk_p,
                    --INIT_CLK_N          => init_clk_n,
                    INIT_CLK_O          => init_clk_i,
                    GT_CLK              => tx_out_clk_i,
                    GT_CLK_LOCKED       => tx_lock_i,
                    USER_CLK            => user_clk_i,
                    SYNC_CLK            => sync_clk_i,
                    PLL_NOT_LOCKED      => pll_not_locked_i
                 );

  --  outputs
  init_clk_out          <=  init_clk_i;
  user_clk_out          <=  user_clk_i;
  pll_not_locked_out    <=  pll_not_locked_i;
  tx_lock               <=  tx_lock_i;
  tx_resetdone_out      <=  tx_resetdone_i;
  rx_resetdone_out      <=  rx_resetdone_i;
  link_reset_out        <=  link_reset_i;


    reset_sync_user_clk    <= reset;
    gt_reset_sync_init_clk <= gt_reset;

    support_reset_logic_i : aurora_SUPPORT_RESET_LOGIC
        port map (
                   RESET               =>  reset_sync_user_clk,
                   USER_CLK            =>  user_clk_i,
                   INIT_CLK_IN         =>  init_clk_i,
                   GT_RESET_IN         =>  gt_reset_sync_init_clk,
                   SYSTEM_RESET        =>  system_reset_i,
                   GT_RESET_OUT        =>  gt_reset_i
                 );

-------- instance of _gt_common_wrapper ---{
gt_common_support : aurora_gt_common_wrapper

port map
(
--____________________________COMMON PORTS ,_______________________________{
  gt_qpllclk_quad1_i      => gt_qpllclk_quad1_i ,
  gt_qpllrefclk_quad1_i   => gt_qpllrefclk_quad1_i ,
    ---------------------- Common Block  - Ref Clock Ports ---------------------
      gt0_gtrefclk0_common_in  =>  gt_refclk1,

    ------------------------- Common Block - QPLL Ports ------------------------
      gt0_qplllock_out        => gt0_qplllock_i,
      gt0_qplllockdetclk_in   => init_clk_i,
      gt0_qpllrefclklost_out  => gt0_qpllrefclklost_i ,
      gt0_qpllreset_in  =>  gt0_qpllreset_i 
--____________________________COMMON PORTS ,_______________________________}
);


-------- instance of _gt_common_wrapper ---}

     aurora_i : aurora
     port map (
        -- AXI TX Interface
        s_axi_tx_tdata               => s_axi_tx_tdata,
        s_axi_tx_tkeep               => s_axi_tx_tkeep,
        s_axi_tx_tvalid              => s_axi_tx_tvalid,
        s_axi_tx_tlast               => s_axi_tx_tlast,
        s_axi_tx_tready              => s_axi_tx_tready,

        -- AXI RX Interface
        m_axi_rx_tdata               => m_axi_rx_tdata,
        m_axi_rx_tkeep               => m_axi_rx_tkeep,
        m_axi_rx_tvalid              => m_axi_rx_tvalid,
        m_axi_rx_tlast               => m_axi_rx_tlast,

 
        -- User Flow Control TX Interface
        s_axi_ufc_tx_tvalid          => s_axi_ufc_tx_req,
        s_axi_ufc_tx_tdata           => s_axi_ufc_tx_ms,
        s_axi_ufc_tx_tready          => s_axi_ufc_tx_ack,

        -- User Flow Control RX Inteface
        m_axi_ufc_rx_tdata           => m_axi_ufc_rx_tdata,
        m_axi_ufc_rx_tkeep           => m_axi_ufc_rx_tkeep,
        m_axi_ufc_rx_tvalid          => m_axi_ufc_rx_tvalid,
        m_axi_ufc_rx_tlast           => m_axi_ufc_rx_tlast,

        -- GT Serial I/O
        rxp                          => rxp,
        rxn                          => rxn,
        txp                          => txp,
        txn                          => txn,

        -- GT Reference Clock Interface
        gt_refclk1                   => gt_refclk1,
        -- Error Detection Interface
        frame_err                    => frame_err,

        -- Error Detection Interface
        hard_err                     => hard_err,
        soft_err                     => soft_err,

        -- Status
        channel_up                   => channel_up,
        lane_up                      => lane_up,




        -- System Interface
        user_clk                     => user_clk_i,
        sync_clk                     => sync_clk_i,
        reset                        => system_reset_i,
        sys_reset_out                => sys_reset_out,
        power_down                   => power_down,
        loopback                     => loopback,
        gt_reset                     => gt_reset_i,
        tx_lock                      => tx_lock_i,
        init_clk_in                  => init_clk_i,
        pll_not_locked               => pll_not_locked_i,
	tx_resetdone_out             => tx_resetdone_i,
	rx_resetdone_out             => rx_resetdone_i,
        link_reset_out               => link_reset_i,


        drpclk_in                            => drpclk_i,
        drpaddr_in                   => drpaddr_in,
        drpen_in                     => drpen_in,
        drpdi_in                     => drpdi_in,
        drprdy_out                   => drprdy_out, 
        drpdo_out                    => drpdo_out,
        drpwe_in                     => drpwe_in,
--------------------{
--__________COMMON PORTS _______________________________{
    ------------------------- Common Block - QPLL Ports ------------------------
      gt0_qplllock_in        =>  gt0_qplllock_i,
      gt0_qpllrefclklost_in  =>  gt0_qpllrefclklost_i,
      gt0_qpllreset_out      =>  gt0_qpllreset_i,
  gt_qpllclk_quad1_in      => gt_qpllclk_quad1_i ,
  gt_qpllrefclk_quad1_in   => gt_qpllrefclk_quad1_i ,
--____________________________COMMON PORTS ,_______________________________}
--------------------}
        tx_out_clk                   => tx_out_clk_i

     );

 end STRUCTURE; 
