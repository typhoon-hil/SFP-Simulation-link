
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
---------------------------------------------------------------------------------------------
--  AURORA_EXAMPLE
--
--  Aurora Generator
--
--
--
--  Description: Sample Instantiation of a 1 4-byte lane module.
--               Only tests initialization in hardware.
--
--        

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use WORK.AURORA_PKG.all;

-- synthesis translate_off
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
-- synthesis translate_on

entity aurora_exdes is
   generic(
           USE_CORE_TRAFFIC       : integer :=   1;
           USE_CHIPSCOPE          : boolean :=   false
         );
    port (

    -- User I/O

            RESET             : in std_logic;
            HARD_ERR          : out std_logic;
            SOFT_ERR          : out std_logic;
            FRAME_ERR         : out std_logic;
ERR_COUNT         : out std_logic_vector(0 to 7);


LANE_UP           : out std_logic;
            CHANNEL_UP        : out std_logic;
           INIT_CLK_P         : in std_logic;
           INIT_CLK_N         : in std_logic;
           DRP_CLK_IN         : in std_logic;
           GT_RESET_IN        : in  std_logic;

    -- Clocks

           GTXQ0_P    : in  std_logic;
           GTXQ0_N    : in  std_logic;

   -- GT I/O

RXP               : in std_logic;
RXN               : in std_logic;
TXP               : out std_logic;
TXN               : out std_logic

         );

end aurora_exdes;

architecture MAPPED of aurora_exdes is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of MAPPED : architecture is "yes";
  attribute core_generation_info           : string;
  attribute core_generation_info of MAPPED : architecture is "aurora,aurora_8b10b_v11_1_7,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=right,c_gt_clock_1=GTXQ0,c_gt_clock_2=None,c_gt_loc_1=1,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=50000,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=125000,c_simplex=false,c_simplex_mode=TX,c_stream=false,c_ufc=true,flow_mode=UFC,interface_mode=Framing,dataflow_config=Duplex}";

-- Parameter Declarations --

    constant DLY : time := 1 ns;

-- External Register Declarations --

    signal HARD_ERR_Buffer    : std_logic;
    signal SOFT_ERR_Buffer    : std_logic;
    signal FRAME_ERR_Buffer   : std_logic;
signal LANE_UP_Buffer     : std_logic;
    signal CHANNEL_UP_Buffer  : std_logic;
signal TXP_Buffer         : std_logic;
signal TXN_Buffer         : std_logic;

-- Internal Register Declarations --

    signal gt_reset_i         : std_logic;
    signal system_reset_i     : std_logic;
    signal sysreset_vio_i     : std_logic;
    signal sysreset_i         : std_logic;
    signal gtreset_vio_i      : std_logic;
    signal gtreset_vio_o      : std_logic;
    signal loopback_vio_i     : std_logic_vector(2 downto 0);
    signal loopback_vio_o     : std_logic_vector(2 downto 0);

-- Wire Declarations --

    -- LocalLink TX Interface

signal tx_d_i             : std_logic_vector(0 to 31);
signal tx_rem_i           : std_logic_vector(0 to 1);
    signal tx_src_rdy_n_i     : std_logic;
    signal tx_sof_n_i         : std_logic;
    signal tx_eof_n_i         : std_logic;

    signal tx_dst_rdy_n_i     : std_logic;

    -- LocalLink RX Interface

signal rx_d_i             : std_logic_vector(0 to 31);
signal rx_rem_i           : std_logic_vector(0 to 1);
    signal rx_src_rdy_n_i     : std_logic;
    signal rx_sof_n_i         : std_logic;
    signal rx_eof_n_i         : std_logic;


    -- User Flow Control TX Interface

    signal ufc_tx_req_n_i     : std_logic;
    signal ufc_tx_ms_i        : std_logic_vector(0 to 2);
    signal ufc_tx_ack_n_i     : std_logic;

    -- User Flow Control RX Inteface

signal ufc_rx_data_i      : std_logic_vector(0 to 31);
signal ufc_rx_rem_i       : std_logic_vector(0 to 1);
    signal ufc_rx_src_rdy_n_i : std_logic;
    signal ufc_rx_sof_n_i     : std_logic;
    signal ufc_rx_eof_n_i     : std_logic;
   

    -- Error Detection Interface

    signal hard_err_i       : std_logic;
    signal soft_err_i       : std_logic;
    signal frame_err_i      : std_logic;

    -- Status

    signal channel_up_i       : std_logic;
    signal channel_up_r       : std_logic;
    signal channel_up_r_vio   : std_logic;
signal lane_up_i          : std_logic;

    -- Clock Compensation Control Interface

    signal warn_cc_i          : std_logic;

    -- System Interface

    signal pll_not_locked_i   : std_logic;
    signal pll_not_locked_ila : std_logic;
    signal user_clk_i         : std_logic;
    signal reset_i            : std_logic;
    signal power_down_i       : std_logic;
    signal loopback_i         : std_logic_vector(2 downto 0);
    signal tx_lock_i          : std_logic;
    signal link_reset_i       : std_logic;
    signal link_reset_ila     : std_logic;
    signal rx_resetdone_i     : std_logic;
    signal tx_resetdone_i     : std_logic;
    signal tx_resetdone_ila   : std_logic;
    attribute keep            : string;
    signal init_clk_i         : std_logic;
    attribute keep of init_clk_i  : signal is "true";
signal daddr_in_i         : std_logic_vector(8 downto 0);
signal dclk_in_i          : std_logic;
signal den_in_i           : std_logic;
signal di_in_i            : std_logic_vector(15 downto 0);
signal drdy_out_unused_i  : std_logic;
signal drpdo_out_unused_i : std_logic_vector(15 downto 0);
signal dwe_in_i           : std_logic;
    --Frame check signals
signal err_count_i      : std_logic_vector(0 to 7);
signal ERR_COUNT_Buffer : std_logic_vector(0 to 7);

-- VIO Signals
   signal icon_to_vio_i       : std_logic_vector (35 downto 0);
   signal sync_in_i           : std_logic_vector (63 downto 0);
   signal sync_out_i          : std_logic_vector (0 to 15);

   signal lane_up_i_i  	      : std_logic;
   signal lane_up_i_i_r	      : std_logic;
   signal lane_up_i_i_vio     : std_logic;
   signal tx_lock_i_i  	      : std_logic;
   signal tx_lock_i_ila  	   : std_logic;
   signal tx_lock_i_i_vio     : std_logic;
   signal lane_up_reduce_i    : std_logic;
   signal rst_cc_module_i     : std_logic;

   signal tied_to_ground_i    :   std_logic;  
signal tied_to_gnd_vec_i   :   std_logic_vector(0 to 31);

   -- TX AXI PDU I/F signals
signal tx_data_i           :   std_logic_vector(0 to 31);
   signal tx_tvalid_i         :   std_logic;
   signal tx_tready_i         :   std_logic;

signal tx_tkeep_i          :   std_logic_vector(0 to 3);
   signal tx_tlast_i          :   std_logic;

   -- RX AXI PDU I/F signals
signal rx_data_i           :   std_logic_vector(0 to 31);
   signal rx_tvalid_i         :   std_logic;
signal rx_tkeep_i          :   std_logic_vector(0 to 3);
   signal rx_tlast_i          :   std_logic;

    -- TX AXI UFC I/F signals
signal axi_ufc_tx_ms_i     :   std_logic_vector(0 to 2);
   signal axi_ufc_tx_req_n_i  :   std_logic;
   signal axi_ufc_tx_ack_n_i  :   std_logic;

    -- RX AXI UFC I/F signals
signal axi_ufc_rx_data_i   :   std_logic_vector(0 to 31);
signal axi_ufc_rx_rem_i    :   std_logic_vector(0 to 3);
   signal axi_ufc_rx_src_rdy_n_i  :   std_logic;
   signal axi_ufc_rx_eof_n_i  :   std_logic;

    --SLACK Registers
    signal lane_up_r          : std_logic;
    signal lane_up_r2         : std_logic;
    signal drpclk_i           :   std_logic;
    attribute mark_debug            : string;
    attribute mark_debug of tx_d_i  : signal is "true";
    attribute mark_debug of rx_d_i  : signal is "true";
    attribute mark_debug of err_count_i        : signal is "true";
    attribute mark_debug of rx_resetdone_i     : signal is "true";
    attribute mark_debug of tx_resetdone_i     : signal is "true";
    attribute mark_debug of tx_resetdone_ila   : signal is "true";
    attribute mark_debug of link_reset_i       : signal is "true";
    attribute mark_debug of link_reset_ila     : signal is "true";
    attribute mark_debug of frame_err_i  : signal is "true";
    attribute mark_debug of gt_reset_i         : signal is "true";
    attribute mark_debug of system_reset_i     : signal is "true";
    attribute mark_debug of loopback_vio_i     : signal is "true";
    attribute mark_debug of gtreset_vio_i      : signal is "true";
    attribute mark_debug of sysreset_vio_i     : signal is "true";
    attribute mark_debug of sysreset_i         : signal is "true";
    attribute mark_debug of soft_err_i         : signal is "true";
    attribute mark_debug of hard_err_i         : signal is "true";
    attribute mark_debug of tx_lock_i_i        : signal is "true";
    attribute mark_debug of tx_lock_i_ila      : signal is "true";
    attribute mark_debug of tx_lock_i_i_vio    : signal is "true";
    attribute mark_debug of pll_not_locked_i   : signal is "true";
    attribute mark_debug of pll_not_locked_ila : signal is "true";
    attribute mark_debug of lane_up_i_i        : signal is "true";
    attribute mark_debug of lane_up_i_i_r      : signal is "true";
    attribute mark_debug of lane_up_i_i_vio    : signal is "true";
    attribute mark_debug of channel_up_r       : signal is "true";
    attribute mark_debug of channel_up_r_vio   : signal is "true";

-- Component Declarations --

    component BUFG is
        port (

                O : out std_ulogic;
                I : in  std_ulogic

             );
    end component;


   -- AXI Shim modules
   component aurora_LL_TO_AXI_EXDES is
   generic
   (
    DATA_WIDTH  : integer :=   16;      -- DATA bus width
    USE_UFC_REM : integer :=   0;       -- UFC REM bus width identifier
    STRB_WIDTH  : integer :=   2;       -- STROBE bus width
    USE_4_NFC   : integer :=   0;       --  0 => PDU, 1 => NFC, 2 => UFC
    REM_WIDTH   : integer :=   1        -- REM bus width
   );  

   port
   (

    ----------------------  AXI4-S Interface -------------------------------
    AXI4_S_OP_TDATA                 : out   std_logic_vector (0 to DATA_WIDTH-1);
    AXI4_S_OP_TKEEP                 : out   std_logic_vector (0 to STRB_WIDTH-1);
    AXI4_S_OP_TVALID                : out   std_logic;
    AXI4_S_OP_TLAST                 : out   std_logic;
    AXI4_S_IP_TREADY                : in    std_logic;

    ----------------------  LocalLink Interface ----------------------------
    LL_IP_DATA                      : in    std_logic_vector (0 to DATA_WIDTH-1);
    LL_IP_REM                       : in    std_logic_vector (0 to REM_WIDTH-1);
    LL_IP_SRC_RDY_N                 : in    std_logic;
    LL_IP_SOF_N                     : in    std_logic;
    LL_IP_EOF_N                     : in    std_logic;
    LL_OP_DST_RDY_N                 : out   std_logic

   );
   end component;

   component aurora_AXI_TO_LL_EXDES is
   generic
   (
    DATA_WIDTH  : integer :=   16;      -- DATA bus width
    STRB_WIDTH  : integer :=   2;       -- STROBE bus width
    REM_WIDTH   : integer :=   1;       -- REM bus width
    USE_UFC_REM : integer :=   0        -- UFC REM bus width identifier
   );  

   port
   (

     ----------------------  AXI4-S Interface -------------------------------
     AXI4_S_IP_TX_TDATA              : in    std_logic_vector (0 to DATA_WIDTH-1);
     AXI4_S_IP_TX_TKEEP              : in    std_logic_vector (0 to STRB_WIDTH-1);
     AXI4_S_IP_TX_TVALID             : in    std_logic;
     AXI4_S_IP_TX_TLAST              : in    std_logic;
     AXI4_S_OP_TX_TREADY             : out   std_logic;

     ----------------------  LocalLink Interface ----------------------------
     LL_OP_DATA                      : out   std_logic_vector (0 to DATA_WIDTH-1);
     LL_OP_REM                       : out   std_logic_vector (0 to REM_WIDTH -1);
     LL_OP_SRC_RDY_N                 : out   std_logic;
     LL_OP_SOF_N                     : out   std_logic;
     LL_OP_EOF_N                     : out   std_logic;
     LL_IP_DST_RDY_N                 : in    std_logic;

     ----------------------  System Interface ----------------------------
     USER_CLK                        : in    std_logic;
     RESET                           : in    std_logic;
     CHANNEL_UP                      : in    std_logic

   );
   end component;
   



    component aurora_support
        port   (
         -- TX Stream Interface
s_axi_tx_tdata         : in  std_logic_vector(0 to 31);
                s_axi_tx_tvalid        : in  std_logic;
                s_axi_tx_tready        : out std_logic;
s_axi_tx_tkeep         : in std_logic_vector(0 to 3);
                s_axi_tx_tlast         : in  std_logic;

         -- RX Stream Interface
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
                gt_refclk1_p    : in std_logic;
                gt_refclk1_n    : in std_logic;
        -- Error Detection Interface

                hard_err       : out std_logic;
                soft_err       : out std_logic;
               
                frame_err      : out std_logic;


        -- Status

                channel_up       : out std_logic;
    lane_up                : out std_logic_vector(0 downto 0);
        -- System Interface

                user_clk_out     : out std_logic;
                sys_reset_out    : out std_logic;
                gt_reset         : in std_logic;
                reset            : in std_logic;
                power_down       : in std_logic;
                loopback         : in std_logic_vector(2 downto 0);
                init_clk_p          : in  std_logic; 
                init_clk_n          : in  std_logic; 
                init_clk_out        : out std_logic;
                pll_not_locked_out  : out std_logic;
                tx_resetdone_out    : out std_logic;
                rx_resetdone_out    : out std_logic;
                link_reset_out      : out std_logic;

drpclk_in                                                   : in   std_logic;
drpaddr_in                              : in   std_logic_vector(8 downto 0);
drpdi_in                                : in   std_logic_vector(15 downto 0);
drpdo_out                               : out  std_logic_vector(15 downto 0);
drpen_in                                : in   std_logic;
drprdy_out                              : out  std_logic;
drpwe_in                                : in   std_logic;
   	

                tx_lock          : out std_logic
            );

    end component;

    component aurora_FRAME_GEN
    port
    (
        -- User Interface
TX_D            : out  std_logic_vector(0 to 31); 
TX_REM          : out  std_logic_vector(0 to 1);     
TX_SOF_N        : out  std_logic;
TX_EOF_N        : out  std_logic;
TX_SRC_RDY_N    : out  std_logic;
TX_DST_RDY_N    : in   std_logic;  
 
        -- UFC Interface
UFC_TX_REQ_N    : out  std_logic;
UFC_TX_MS       : out  std_logic_vector(0 to 2);     
UFC_TX_ACK_N    : in   std_logic;  


        -- System Interface
USER_CLK        : in  std_logic;   
RESET           : in  std_logic;
CHANNEL_UP      : in  std_logic
    );
    end component;


    component aurora_FRAME_CHECK
    port
    (
        -- User Interface
RX_D            : in  std_logic_vector(0 to 31); 
RX_REM          : in  std_logic_vector(0 to 1);     
RX_SOF_N        : in  std_logic;
RX_EOF_N        : in  std_logic;
RX_SRC_RDY_N    : in  std_logic; 

        -- UFC Interface
UFC_RX_DATA     : in  std_logic_vector(0 to 31); 
UFC_RX_REM      : in  std_logic_vector(0 to 1);     
UFC_RX_SRC_RDY_N: in  std_logic; 
UFC_RX_SOF_N    : in  std_logic; 
UFC_RX_EOF_N    : in  std_logic; 


        -- System Interface
USER_CLK        : in  std_logic;   
RESET           : in  std_logic;
CHANNEL_UP      : in  std_logic;
ERR_COUNT       : out std_logic_vector(0 to 7)
 
    );
    end component;


  -------------------------------------------------------------------
  --  VIO core component declaration
  -------------------------------------------------------------------
COMPONENT vio_7series
  PORT (
  clk : IN STD_LOGIC;
  probe_in0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
  probe_in1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
  probe_in2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
  probe_out0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
  probe_out1 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
  probe_out2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END COMPONENT;
  -------------------------------------------------------------------
  --  ILA core component declaration
  -------------------------------------------------------------------
COMPONENT ila_7series
  PORT (
    clk : IN STD_LOGIC;
    probe0 : IN STD_LOGIC_VECTOR(63 DOWNTO 0)
  );
END COMPONENT;

  component  aurora_cdc_sync_exdes is
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
        C_VECTOR_WIDTH              : integer range 0 to 32 := 32                             ;
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


begin



    drpclk_bufg : BUFG
    port map 
      (
        I  => DRP_CLK_IN,
        O  => drpclk_i
      );

    tied_to_ground_i    <= '0';

    process (user_clk_i)
    begin
      if (user_clk_i 'event and user_clk_i = '1') then
        lane_up_r    <=  lane_up_i;
        lane_up_r2   <=  lane_up_r;
      end if;
    end process;

    lane_up_reduce_i    <=  lane_up_r2;
    rst_cc_module_i     <=  not lane_up_reduce_i; 

    HARD_ERR  <= HARD_ERR_Buffer;
    SOFT_ERR  <= SOFT_ERR_Buffer;
    FRAME_ERR <= FRAME_ERR_Buffer;
    ERR_COUNT   <= ERR_COUNT_Buffer;
    LANE_UP     <= LANE_UP_Buffer;
    CHANNEL_UP  <= CHANNEL_UP_Buffer;
    TXP         <= TXP_Buffer;
    TXN         <= TXN_Buffer;


    -- Register User I/O --

    -- Register User Outputs from core.

    process (user_clk_i)

    begin

        if (user_clk_i 'event and user_clk_i = '1') then

            HARD_ERR_Buffer  <= hard_err_i;
            SOFT_ERR_Buffer  <= soft_err_i;
            FRAME_ERR_Buffer <= frame_err_i;
            ERR_COUNT_Buffer <= err_count_i;
            LANE_UP_Buffer     <= lane_up_i;
            CHANNEL_UP_Buffer  <= channel_up_i;

        end if;

    end process;

    -- System Interface

    power_down_i     <= '0';

    process (user_clk_i)
    begin
        if (user_clk_i 'event and user_clk_i = '1') then
            channel_up_r  <= channel_up_i;
        end if;
    end process;


daddr_in_i  <=  (others=>'0');
dclk_in_i   <=  '0';
den_in_i    <=  '0';
di_in_i     <=  (others=>'0');
dwe_in_i    <=  '0';
    -- _______________________________ Module Instantiations ________________________--

traffic : if USE_CORE_TRAFFIC = 1 generate

    --_____________________________ RX AXI SHIM _______________________________
    frame_chk_axi_to_ll_pdu_i : aurora_AXI_TO_LL_EXDES
    generic map
    (
       DATA_WIDTH           => 32,
       STRB_WIDTH           => 4,
       REM_WIDTH            => 2,
       USE_UFC_REM          => 0
    )
    port map
    (
      -- AXI4-S input signals
      AXI4_S_IP_TX_TVALID  => rx_tvalid_i,
      AXI4_S_OP_TX_TREADY  => OPEN,
      AXI4_S_IP_TX_TDATA   => rx_data_i,
      AXI4_S_IP_TX_TKEEP   => rx_tkeep_i,
      AXI4_S_IP_TX_TLAST   => rx_tlast_i,

      -- LocalLink output Interface
      LL_OP_DATA           => rx_d_i,
      LL_OP_SOF_N          => rx_sof_n_i,
      LL_OP_EOF_N          => rx_eof_n_i,
      LL_OP_REM            => rx_rem_i,
      LL_OP_SRC_RDY_N      => rx_src_rdy_n_i,
      LL_IP_DST_RDY_N      => tied_to_ground_i,

      -- System Interface
      USER_CLK              => user_clk_i,      
      RESET                 => system_reset_i,
      CHANNEL_UP            => channel_up_r
     );


    frame_chk_axi_to_ll_ufc_i : aurora_AXI_TO_LL_EXDES
    generic map
    (
       DATA_WIDTH           => 32,
       STRB_WIDTH           => 4,
       REM_WIDTH            => 2,
       USE_UFC_REM          => 1
    )
    port map
    (
       -- AXI4-S input signals
      AXI4_S_IP_TX_TVALID   => axi_ufc_rx_src_rdy_n_i,
      AXI4_S_OP_TX_TREADY   => OPEN,
      AXI4_S_IP_TX_TDATA    => axi_ufc_rx_data_i,
      AXI4_S_IP_TX_TKEEP    => axi_ufc_rx_rem_i,
      AXI4_S_IP_TX_TLAST    => axi_ufc_rx_eof_n_i,

      -- LocalLink output Interface
      LL_OP_DATA            => ufc_rx_data_i,
      LL_OP_SOF_N           => ufc_rx_sof_n_i,
      LL_OP_EOF_N           => ufc_rx_eof_n_i,
      LL_OP_REM             => ufc_rx_rem_i,
      LL_OP_SRC_RDY_N       => ufc_rx_src_rdy_n_i,
      LL_IP_DST_RDY_N       => tied_to_ground_i,

      -- System Interface
      USER_CLK              => user_clk_i,      
      RESET                 => system_reset_i,
      CHANNEL_UP            => channel_up_r
    );

    --Connect a frame checker to the user interface
    frame_check_i : aurora_FRAME_CHECK
    port map
    (
        -- User Interface
        RX_D            =>  rx_d_i,
        RX_REM          =>  rx_rem_i,
        RX_SOF_N        =>  rx_sof_n_i,
        RX_EOF_N        =>  rx_eof_n_i,
        RX_SRC_RDY_N    =>  rx_src_rdy_n_i, 

        -- UFC Interface
        UFC_RX_DATA     => ufc_rx_data_i,
        UFC_RX_REM      => ufc_rx_rem_i,
        UFC_RX_SRC_RDY_N=> ufc_rx_src_rdy_n_i,
        UFC_RX_SOF_N    => ufc_rx_sof_n_i,
        UFC_RX_EOF_N    => ufc_rx_eof_n_i,

        -- System Interface
        USER_CLK        =>  user_clk_i,  
        RESET           =>  system_reset_i,
        CHANNEL_UP      =>  channel_up_r,
        ERR_COUNT       =>  err_count_i
 
    );

    --_____________________________ TX AXI SHIM _______________________________
    frame_gen_ll_to_axi_pdu_i : aurora_LL_TO_AXI_EXDES
    generic map
    (
       DATA_WIDTH           => 32,
       STRB_WIDTH           => 4,
       USE_4_NFC            => 0,
       REM_WIDTH            => 2
    )

    port map
    (
      LL_IP_DATA            => tx_d_i,
      LL_IP_SOF_N           => tx_sof_n_i,
      LL_IP_EOF_N           => tx_eof_n_i,
      LL_IP_REM             => tx_rem_i,
      LL_IP_SRC_RDY_N       => tx_src_rdy_n_i,
      LL_OP_DST_RDY_N       => tx_dst_rdy_n_i,

      AXI4_S_OP_TVALID      => tx_tvalid_i,
      AXI4_S_OP_TDATA       => tx_data_i,
      AXI4_S_OP_TKEEP       => tx_tkeep_i,
      AXI4_S_OP_TLAST       => tx_tlast_i,
      AXI4_S_IP_TREADY      => tx_tready_i

    );

    frame_gen_ll_to_axi_ufc_i : aurora_LL_TO_AXI_EXDES
    generic map
    (
       DATA_WIDTH           => 3,
       USE_UFC_REM          => 1,     
       STRB_WIDTH           => 4,
       USE_4_NFC            => 2,
       REM_WIDTH            => 2
    )

    port map
    (
      LL_IP_DATA            => ufc_tx_ms_i,
      LL_IP_SOF_N           => tied_to_ground_i,
      LL_IP_EOF_N           => tied_to_ground_i,
LL_IP_REM             => "00",
      LL_IP_SRC_RDY_N       => ufc_tx_req_n_i,
      LL_OP_DST_RDY_N       => ufc_tx_ack_n_i,

      -- AXI4-S output signals
      AXI4_S_OP_TVALID      => axi_ufc_tx_req_n_i,
      AXI4_S_OP_TDATA       => axi_ufc_tx_ms_i,
      AXI4_S_OP_TKEEP       => OPEN,
      AXI4_S_OP_TLAST       => OPEN,
      AXI4_S_IP_TREADY      => axi_ufc_tx_ack_n_i
    );

    --Connect a frame generator to the user interface
    frame_gen_i : aurora_FRAME_GEN
    port map
    (
        -- User Interface
        TX_D            =>  tx_d_i,
        TX_REM          =>  tx_rem_i,
        TX_SOF_N        =>  tx_sof_n_i,
        TX_EOF_N        =>  tx_eof_n_i,
        TX_SRC_RDY_N    =>  tx_src_rdy_n_i,
        TX_DST_RDY_N    =>  tx_dst_rdy_n_i,   

        -- UFC Interface
        UFC_TX_REQ_N    => ufc_tx_req_n_i,
        UFC_TX_MS       => ufc_tx_ms_i,
        UFC_TX_ACK_N    => ufc_tx_ack_n_i,


        -- System Interface
        USER_CLK        =>  user_clk_i,
        RESET           =>  system_reset_i,
        CHANNEL_UP      =>  channel_up_r
    );

end generate traffic;

no_traffic : if USE_CORE_TRAFFIC = 0 generate
    --define traffic generation modules

end generate no_traffic;

    -- Module Instantiations --
    aurora_module_i : aurora_support
        port map   (
        -- AXI TX Interface
                   s_axi_tx_tdata          => tx_data_i,
                   s_axi_tx_tkeep          => tx_tkeep_i,
                   s_axi_tx_tvalid         => tx_tvalid_i,
                   s_axi_tx_tlast          => tx_tlast_i,
                   s_axi_tx_tready         => tx_tready_i,

        -- AXI RX Interface
                   m_axi_rx_tdata          => rx_data_i,
                   m_axi_rx_tkeep          => rx_tkeep_i,
                   m_axi_rx_tvalid         => rx_tvalid_i,
                   m_axi_rx_tlast          => rx_tlast_i,

        -- User Flow Control TX Interface
                    s_axi_ufc_tx_req       => axi_ufc_tx_req_n_i,
                    s_axi_ufc_tx_ms        => axi_ufc_tx_ms_i,
                    s_axi_ufc_tx_ack       => axi_ufc_tx_ack_n_i,
        -- User Flow Control RX Inteface
                    m_axi_ufc_rx_tdata     => axi_ufc_rx_data_i,
                    m_axi_ufc_rx_tkeep     => axi_ufc_rx_rem_i,
                    m_axi_ufc_rx_tvalid    => axi_ufc_rx_src_rdy_n_i,
                    m_axi_ufc_rx_tlast     => axi_ufc_rx_eof_n_i,
        -- GT Serial I/O
                    rxp(0)           => RXP,
                    rxn(0)           => RXN,
                    txp(0)           => TXP_Buffer,
                    txn(0)           => TXN_Buffer,

        -- GT Reference Clock Interface
                   gt_refclk1_p    => GTXQ0_P,
                   gt_refclk1_n    => GTXQ0_N,
 

        -- Error Detection Interface

                    hard_err       => hard_err_i,
                    soft_err       => soft_err_i,
                    frame_err      => frame_err_i,


        -- Status

                    channel_up       => channel_up_i,
                    lane_up(0)       => lane_up_i,

        -- System Interface

                    user_clk_out     => user_clk_i,
                    sys_reset_out    => system_reset_i,
                    reset            => reset_i,
                    power_down       => power_down_i,
                    loopback         => loopback_vio_o,
                    gt_reset         => gtreset_vio_o,
                    init_clk_p        => INIT_CLK_P,
                    init_clk_n        => INIT_CLK_N,
                    init_clk_out      => init_clk_i,
            	    pll_not_locked_out => pll_not_locked_i,
            	    tx_resetdone_out   => tx_resetdone_i,
            	    rx_resetdone_out   => rx_resetdone_i,
            	    link_reset_out     => link_reset_i,


drpclk_in                           => drpclk_i,
drpaddr_in   => daddr_in_i,
drpen_in     => den_in_i,
drpdi_in      => di_in_i,
drprdy_out   => drdy_out_unused_i,
drpdo_out  => drpdo_out_unused_i,
drpwe_in     => dwe_in_i,
                    tx_lock          => tx_lock_i
                 );

 chipscope1 : if USE_CHIPSCOPE = true generate

   lane_up_i_i    <=  lane_up_i;
   tx_lock_i_i    <= '1'  and tx_lock_i;

  --Shared VIO Inputs
   sync_in_i(15 downto 0)  <= tx_d_i(0 to 15);
   sync_in_i(31 downto 16) <= rx_d_i(0 to 15);
   sync_in_i(39 downto 32) <= err_count_i;
   sync_in_i(53 downto 40) <= (others => '0');
   sync_in_i(54)           <= link_reset_i;
   sync_in_i(55)           <= rx_resetdone_i;
   sync_in_i(56)           <= tx_resetdone_i;
   sync_in_i(57)           <= frame_err_i;
   sync_in_i(58)           <= soft_err_i;
   sync_in_i(59)           <= hard_err_i;
   sync_in_i(60)           <= tx_lock_i_i;
   sync_in_i(61)           <= pll_not_locked_i;
   sync_in_i(62)           <= lane_up_i_i;
   sync_in_i(63)           <= channel_up_r;

lane_up_proc : process (user_clk_i)
begin
  if(user_clk_i = '1' and user_clk_i'event) then
    lane_up_i_i_r <= lane_up_i_i;
  end if;
end process lane_up_proc;
 
 channel_up_vio_cdc_sync_exdes : aurora_cdc_sync_exdes
   generic map
     (
       c_cdc_type       => 1,   
       c_flop_input     => 1,  
       c_reset_state    => 0,  
       c_single_bit     => 1,  
       c_vector_width   => 2,  
       c_mtbf_stages    => 3 
     )
   port map 
     (
       prmry_aclk       => user_clk_i      ,
       prmry_resetn     => '1'             ,
       prmry_in         => channel_up_r    ,
       prmry_vect_in    => "00"            ,
       scndry_aclk      => init_clk_i      ,
       scndry_resetn    => '1'             ,
       prmry_ack        => open            ,
       scndry_out       => channel_up_r_vio,
       scndry_vect_out  => open                 
     );
      
 lane_up_vio_cdc_sync_exdes : aurora_cdc_sync_exdes
   generic map
     (
        c_cdc_type       => 1,   
        c_flop_input     => 1,  
        c_reset_state    => 0,  
        c_single_bit     => 1,  
        c_vector_width   => 2,  
        c_mtbf_stages    => 3 
     )
   port map 
     (
       prmry_aclk        => user_clk_i     ,
       prmry_resetn      => '1'            ,
       prmry_in          => lane_up_i_i_r  ,
       prmry_vect_in     => "00"           ,
       scndry_aclk       => init_clk_i     ,
       scndry_resetn     => '1'            ,
       prmry_ack         => open           ,
       scndry_out        => lane_up_i_i_vio,
       scndry_vect_out   => open            
     );
      
 tx_lock_vio_cdc_sync_exdes : aurora_cdc_sync_exdes
   generic map
     (
        c_cdc_type       => 1,   
        c_flop_input     => 1,  
        c_reset_state    => 0,  
        c_single_bit     => 1,  
        c_vector_width   => 2,  
        c_mtbf_stages    => 3 
     )
  port map
     (
       prmry_aclk        => user_clk_i     ,
       prmry_resetn      => '1'            ,
       prmry_in          => tx_lock_i_i    ,
       prmry_vect_in     => "00"           ,
       scndry_aclk       => init_clk_i     ,
       scndry_resetn     => '1'            ,
       prmry_ack         => open           ,
       scndry_out        => tx_lock_i_i_vio,
       scndry_vect_out   => open            
     );
                 
 system_reset_vio_cdc_sync_exdes : aurora_cdc_sync_exdes
   generic map
     (
       c_cdc_type        => 1,   
       c_flop_input      => 1,  
       c_reset_state     => 0,  
       c_single_bit      => 1,  
       c_vector_width    => 2,  
       c_mtbf_stages     => 3  
     )
  port map
     (
       prmry_aclk        => init_clk_i    ,
       prmry_resetn      => '1'           ,
       prmry_in          => sysreset_vio_i,
       prmry_vect_in     => "00"          ,
       scndry_aclk       => user_clk_i    ,
       scndry_resetn     => '1'           ,
       prmry_ack         => open          ,
       scndry_out        => sysreset_i    ,
       scndry_vect_out   => open           
     );


 tx_resetdone_ila_cdc_sync_exdes : aurora_cdc_sync_exdes
   generic map
     (
       c_cdc_type        => 1,   
       c_flop_input      => 1,  
       c_reset_state     => 0,  
       c_single_bit      => 1,  
       c_vector_width    => 2,  
       c_mtbf_stages     => 3  
     )
  port map
     (
       prmry_aclk        => init_clk_i    ,
       prmry_resetn      => '1'           ,
       prmry_in          => tx_resetdone_i,
       prmry_vect_in     => "00"          ,
       scndry_aclk       => user_clk_i    ,
       scndry_resetn     => '1'           ,
       prmry_ack         => open          ,
       scndry_out        => tx_resetdone_ila,
       scndry_vect_out   => open           
     );
 link_reset_ila_cdc_sync_exdes : aurora_cdc_sync_exdes
   generic map
     (
       c_cdc_type        => 1,   
       c_flop_input      => 1,  
       c_reset_state     => 0,  
       c_single_bit      => 1,  
       c_vector_width    => 2,  
       c_mtbf_stages     => 3  
     )
  port map
     (
       prmry_aclk        => init_clk_i    ,
       prmry_resetn      => '1'           ,
       prmry_in          => link_reset_i  ,
       prmry_vect_in     => "00"          ,
       scndry_aclk       => user_clk_i    ,
       scndry_resetn     => '1'           ,
       prmry_ack         => open          ,
       scndry_out        => link_reset_ila,
       scndry_vect_out   => open           
     );

 pll_not_locked_ila_cdc_sync_exdes : aurora_cdc_sync_exdes
   generic map
     (
       c_cdc_type        => 1,   
       c_flop_input      => 1,  
       c_reset_state     => 0,  
       c_single_bit      => 1,  
       c_vector_width    => 2,  
       c_mtbf_stages     => 3  
     )
  port map
     (
       prmry_aclk        => init_clk_i        ,
       prmry_resetn      => '1'               ,
       prmry_in          => pll_not_locked_i  ,
       prmry_vect_in     => "00"              ,
       scndry_aclk       => user_clk_i        ,
       scndry_resetn     => '1'               ,
       prmry_ack         => open              ,
       scndry_out        => pll_not_locked_ila,
       scndry_vect_out   => open           
     );

 tx_lock_i_ila_cdc_sync_exdes : aurora_cdc_sync_exdes
   generic map
     (
       c_cdc_type        => 1,   
       c_flop_input      => 1,  
       c_reset_state     => 0,  
       c_single_bit      => 1,  
       c_vector_width    => 2,  
       c_mtbf_stages     => 3  
     )
  port map
     (
       prmry_aclk        => init_clk_i   ,
       prmry_resetn      => '1'          ,
       prmry_in          => tx_lock_i_i  ,
       prmry_vect_in     => "00"         ,
       scndry_aclk       => user_clk_i   ,
       scndry_resetn     => '1'          ,
       prmry_ack         => open         ,
       scndry_out        => tx_lock_i_ila,
       scndry_vect_out   => open           
     );
 
  -------------------------------------------------------------------
  --  VIO core instance
  -------------------------------------------------------------------
i_vio : vio_7series 
port map
(
  clk            =>  init_clk_i, -- input CLK
  probe_in0(0)   =>  channel_up_r_vio, -- input [0 : 0] PROBE_IN0
  probe_in1(0)   =>  lane_up_i_i_vio, -- input [0 : 0] PROBE_IN1
  probe_in2(0)   =>  tx_lock_i_i_vio, -- input [0 : 0] PROBE_IN2
  probe_out0(0)  =>  sysreset_vio_i, -- output [0 : 0] PROBE_OUT0
  probe_out1(0)  =>  gtreset_vio_i, -- output [0 : 0] PROBE_OUT1
  probe_out2     =>  loopback_vio_i -- output [2 : 0] PROBE_OUT2
);

i_ila : ila_7series
  PORT MAP (
    clk => user_clk_i,
    --probe0 => (lane_up_i_i_r & channel_up_r & pll_not_locked_ila & tx_lock_i_ila & hard_err_i & soft_err_i & frame_err_i & tx_resetdone_ila & rx_resetdone_i & link_reset_ila & "00000000000000" & err_count_i & rx_d_i(0 to 15) & tx_d_i(0 to 15)) 
    probe0(63)           => lane_up_i_i_r,
    probe0(62)           => channel_up_r,
    probe0(61)           => pll_not_locked_ila,
    probe0(60)           => tx_lock_i_ila,
    probe0(59)           => hard_err_i,
    probe0(58)           => soft_err_i,
    probe0(57)           => frame_err_i,
    probe0(56)           => tx_resetdone_ila,
    probe0(55)           => rx_resetdone_i,
    probe0(54)           => link_reset_ila,
    probe0(53 downto 40) => "00000000000000",
    probe0(39 downto 32) => err_count_i,
    probe0(31 downto 16) => rx_d_i(0 to 15),
    probe0(15 downto 0)  => tx_d_i(0 to 15)
  );

end generate chipscope1;

no_chipscope1 : if USE_CHIPSCOPE = false generate
   sync_in_i  <= (others=>'0');
end generate no_chipscope1;

chipscope2 : if USE_CHIPSCOPE = true generate
 -- Shared VIO Outputs
    reset_i        <=   RESET or sysreset_i;
    gtreset_vio_o  <=   GT_RESET_IN or gtreset_vio_i;
    loopback_vio_o <=   "000" or loopback_vio_i;

end generate chipscope2;

no_chipscope2 : if USE_CHIPSCOPE = false generate
 -- Shared VIO Outputs
    reset_i        <=   RESET;
    gtreset_vio_o  <=   GT_RESET_IN;
    loopback_vio_o <=   "000";
end generate no_chipscope2;


end MAPPED; 
