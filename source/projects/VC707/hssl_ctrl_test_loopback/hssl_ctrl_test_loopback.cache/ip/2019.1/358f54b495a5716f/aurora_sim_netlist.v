// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Dec 15 12:46:02 2022
// Host        : DraganT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ aurora_sim_netlist.v
// Design      : aurora
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_tx_tdata,
    s_axi_tx_tkeep,
    s_axi_tx_tvalid,
    s_axi_tx_tlast,
    s_axi_tx_tready,
    m_axi_rx_tdata,
    m_axi_rx_tkeep,
    m_axi_rx_tvalid,
    m_axi_rx_tlast,
    s_axi_ufc_tx_tvalid,
    s_axi_ufc_tx_tdata,
    s_axi_ufc_tx_tready,
    m_axi_ufc_rx_tdata,
    m_axi_ufc_rx_tkeep,
    m_axi_ufc_rx_tvalid,
    m_axi_ufc_rx_tlast,
    rxp,
    rxn,
    txp,
    txn,
    gt_refclk1,
    frame_err,
    hard_err,
    soft_err,
    lane_up,
    channel_up,
    user_clk,
    sync_clk,
    gt_reset,
    reset,
    sys_reset_out,
    power_down,
    loopback,
    tx_lock,
    init_clk_in,
    tx_resetdone_out,
    rx_resetdone_out,
    link_reset_out,
    drpclk_in,
    drpaddr_in,
    drpen_in,
    drpdi_in,
    drprdy_out,
    drpdo_out,
    drpwe_in,
    gt0_qplllock_in,
    gt0_qpllrefclklost_in,
    gt0_qpllreset_out,
    gt_qpllclk_quad1_in,
    gt_qpllrefclk_quad1_in,
    tx_out_clk,
    pll_not_locked);
  input [0:31]s_axi_tx_tdata;
  input [0:3]s_axi_tx_tkeep;
  input s_axi_tx_tvalid;
  input s_axi_tx_tlast;
  output s_axi_tx_tready;
  output [0:31]m_axi_rx_tdata;
  output [0:3]m_axi_rx_tkeep;
  output m_axi_rx_tvalid;
  output m_axi_rx_tlast;
  input s_axi_ufc_tx_tvalid;
  input [0:2]s_axi_ufc_tx_tdata;
  output s_axi_ufc_tx_tready;
  output [0:31]m_axi_ufc_rx_tdata;
  output [0:3]m_axi_ufc_rx_tkeep;
  output m_axi_ufc_rx_tvalid;
  output m_axi_ufc_rx_tlast;
  input rxp;
  input rxn;
  output txp;
  output txn;
  input gt_refclk1;
  output frame_err;
  output hard_err;
  output soft_err;
  output lane_up;
  output channel_up;
  input user_clk;
  input sync_clk;
  input gt_reset;
  input reset;
  output sys_reset_out;
  input power_down;
  input [2:0]loopback;
  output tx_lock;
  input init_clk_in;
  output tx_resetdone_out;
  output rx_resetdone_out;
  output link_reset_out;
  input drpclk_in;
  input [8:0]drpaddr_in;
  input drpen_in;
  input [15:0]drpdi_in;
  output drprdy_out;
  output [15:0]drpdo_out;
  input drpwe_in;
  input gt0_qplllock_in;
  input gt0_qpllrefclklost_in;
  output gt0_qpllreset_out;
  input gt_qpllclk_quad1_in;
  input gt_qpllrefclk_quad1_in;
  output tx_out_clk;
  input pll_not_locked;

  wire channel_up;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire frame_err;
  wire gt0_qplllock_in;
  wire gt0_qpllrefclklost_in;
  wire gt0_qpllreset_out;
  wire gt_qpllclk_quad1_in;
  wire gt_qpllrefclk_quad1_in;
  wire gt_refclk1;
  wire gt_reset;
  wire hard_err;
  wire init_clk_in;
  wire lane_up;
  wire link_reset_out;
  wire [2:0]loopback;
  wire [0:31]m_axi_rx_tdata;
  wire [0:3]m_axi_rx_tkeep;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire [0:31]m_axi_ufc_rx_tdata;
  wire [0:3]m_axi_ufc_rx_tkeep;
  wire m_axi_ufc_rx_tlast;
  wire m_axi_ufc_rx_tvalid;
  wire pll_not_locked;
  wire power_down;
  wire reset;
  wire rx_resetdone_out;
  wire rxn;
  wire rxp;
  wire [0:31]s_axi_tx_tdata;
  wire [0:3]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire [0:2]s_axi_ufc_tx_tdata;
  wire s_axi_ufc_tx_tready;
  wire s_axi_ufc_tx_tvalid;
  wire soft_err;
  wire sync_clk;
  wire sys_reset_out;
  wire tx_lock;
  wire tx_out_clk;
  wire tx_resetdone_out;
  wire txn;
  wire txp;
  wire user_clk;

  (* CC_FREQ_FACTOR = "5'b01100" *) 
  (* EXAMPLE_SIMULATION = "0" *) 
  (* SIM_GTRESET_SPEEDUP = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_core inst
       (.channel_up(channel_up),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .frame_err(frame_err),
        .gt0_qplllock_in(gt0_qplllock_in),
        .gt0_qpllrefclklost_in(gt0_qpllrefclklost_in),
        .gt0_qpllreset_out(gt0_qpllreset_out),
        .gt_qpllclk_quad1_in(gt_qpllclk_quad1_in),
        .gt_qpllrefclk_quad1_in(gt_qpllrefclk_quad1_in),
        .gt_refclk1(gt_refclk1),
        .gt_reset(gt_reset),
        .hard_err(hard_err),
        .init_clk_in(init_clk_in),
        .lane_up(lane_up),
        .link_reset_out(link_reset_out),
        .loopback(loopback),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tkeep(m_axi_rx_tkeep),
        .m_axi_rx_tlast(m_axi_rx_tlast),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .m_axi_ufc_rx_tdata(m_axi_ufc_rx_tdata),
        .m_axi_ufc_rx_tkeep(m_axi_ufc_rx_tkeep),
        .m_axi_ufc_rx_tlast(m_axi_ufc_rx_tlast),
        .m_axi_ufc_rx_tvalid(m_axi_ufc_rx_tvalid),
        .pll_not_locked(pll_not_locked),
        .power_down(power_down),
        .reset(reset),
        .rx_resetdone_out(rx_resetdone_out),
        .rxn(rxn),
        .rxp(rxp),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .s_axi_tx_tkeep(s_axi_tx_tkeep),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tready(s_axi_tx_tready),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .s_axi_ufc_tx_ack(s_axi_ufc_tx_tready),
        .s_axi_ufc_tx_ms(s_axi_ufc_tx_tdata),
        .s_axi_ufc_tx_req(s_axi_ufc_tx_tvalid),
        .soft_err(soft_err),
        .sync_clk(sync_clk),
        .sys_reset_out(sys_reset_out),
        .tx_lock(tx_lock),
        .tx_out_clk(tx_out_clk),
        .tx_resetdone_out(tx_resetdone_out),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_AURORA_LANE_4BYTE
   (lane_up,
    ena_comma_align_i,
    tx_reset_i,
    TXCHARISK,
    \left_align_select_r_reg[0] ,
    \left_align_select_r_reg[1] ,
    got_v_i,
    link_reset_out,
    rx_pe_data_striped_i,
    rx_polarity_i,
    \RX_SUF_reg[1] ,
    Q,
    \RX_PE_DATA_reg[26] ,
    \RX_PE_DATA_reg[26]_0 ,
    \RX_PE_DATA_reg[25] ,
    hard_err_i,
    ready_r_reg,
    \previous_cycle_data_r_reg[7] ,
    \previous_cycle_control_r_reg[0] ,
    \RX_SUF_reg[1]_0 ,
    TXDATA,
    \word_aligned_data_r_reg[27] ,
    \word_aligned_data_r_reg[16] ,
    \word_aligned_data_r_reg[11] ,
    \word_aligned_data_r_reg[0] ,
    \RX_PE_DATA_V_reg[0] ,
    \SOFT_ERR_reg[0] ,
    RX_SCP0,
    RX_ECP0,
    \rx_ecp_d_r_reg[6] ,
    \rx_ecp_d_r_reg[6]_0 ,
    p_3_out,
    SR,
    user_clk,
    gen_cc_i,
    gen_suf_striped_i,
    gen_ecp_i,
    gen_scp_striped_i,
    gen_a_i,
    \left_align_select_r_reg[0]_0 ,
    \left_align_select_r_reg[1]_0 ,
    \word_aligned_control_bits_r_reg[3] ,
    \word_aligned_control_bits_r_reg[2] ,
    hard_err_gt0,
    init_clk_in,
    \fc_nb_r_reg[0] ,
    \fc_nb_r_reg[1] ,
    \fc_nb_r_reg[2] ,
    rx_realign_i,
    RXNOTINTABLE,
    RXDISPERR,
    reset_count_r_reg,
    RXDATA,
    RXCHARISK,
    D,
    \gen_v_r_reg[1] ,
    \gen_pad_r_reg[0] ,
    \tx_pe_data_v_r_reg[0] ,
    \gen_r_r_reg[0] ,
    \gen_k_r_reg[0] ,
    \tx_pe_data_r_reg[0] ,
    \word_aligned_data_r_reg[24] ,
    \word_aligned_data_r_reg[16]_0 ,
    \soft_err_r_reg[0] ,
    \soft_err_r_reg[1] ,
    \soft_err_r_reg[2] ,
    \soft_err_r_reg[3] );
  output lane_up;
  output ena_comma_align_i;
  output tx_reset_i;
  output [3:0]TXCHARISK;
  output \left_align_select_r_reg[0] ;
  output \left_align_select_r_reg[1] ;
  output got_v_i;
  output link_reset_out;
  output [5:0]rx_pe_data_striped_i;
  output rx_polarity_i;
  output \RX_SUF_reg[1] ;
  output [1:0]Q;
  output \RX_PE_DATA_reg[26] ;
  output \RX_PE_DATA_reg[26]_0 ;
  output \RX_PE_DATA_reg[25] ;
  output hard_err_i;
  output ready_r_reg;
  output [7:0]\previous_cycle_data_r_reg[7] ;
  output [0:0]\previous_cycle_control_r_reg[0] ;
  output \RX_SUF_reg[1]_0 ;
  output [31:0]TXDATA;
  output [4:0]\word_aligned_data_r_reg[27] ;
  output [7:0]\word_aligned_data_r_reg[16] ;
  output [4:0]\word_aligned_data_r_reg[11] ;
  output [7:0]\word_aligned_data_r_reg[0] ;
  output [1:0]\RX_PE_DATA_V_reg[0] ;
  output [1:0]\SOFT_ERR_reg[0] ;
  output RX_SCP0;
  output RX_ECP0;
  output \rx_ecp_d_r_reg[6] ;
  output \rx_ecp_d_r_reg[6]_0 ;
  output [1:0]p_3_out;
  input [0:0]SR;
  input user_clk;
  input gen_cc_i;
  input [0:0]gen_suf_striped_i;
  input gen_ecp_i;
  input [0:0]gen_scp_striped_i;
  input gen_a_i;
  input \left_align_select_r_reg[0]_0 ;
  input \left_align_select_r_reg[1]_0 ;
  input \word_aligned_control_bits_r_reg[3] ;
  input \word_aligned_control_bits_r_reg[2] ;
  input hard_err_gt0;
  input init_clk_in;
  input \fc_nb_r_reg[0] ;
  input \fc_nb_r_reg[1] ;
  input \fc_nb_r_reg[2] ;
  input rx_realign_i;
  input [1:0]RXNOTINTABLE;
  input [1:0]RXDISPERR;
  input reset_count_r_reg;
  input [31:0]RXDATA;
  input [3:0]RXCHARISK;
  input [3:0]D;
  input [2:0]\gen_v_r_reg[1] ;
  input [1:0]\gen_pad_r_reg[0] ;
  input [1:0]\tx_pe_data_v_r_reg[0] ;
  input [3:0]\gen_r_r_reg[0] ;
  input [3:0]\gen_k_r_reg[0] ;
  input [31:0]\tx_pe_data_r_reg[0] ;
  input [7:0]\word_aligned_data_r_reg[24] ;
  input [7:0]\word_aligned_data_r_reg[16]_0 ;
  input \soft_err_r_reg[0] ;
  input \soft_err_r_reg[1] ;
  input \soft_err_r_reg[2] ;
  input \soft_err_r_reg[3] ;

  wire [3:0]D;
  wire GEN_SP;
  wire [1:0]Q;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire [1:0]RXDISPERR;
  wire [1:0]RXNOTINTABLE;
  wire RX_CC;
  wire RX_ECP0;
  wire RX_NEG;
  wire [1:0]\RX_PE_DATA_V_reg[0] ;
  wire \RX_PE_DATA_reg[25] ;
  wire \RX_PE_DATA_reg[26] ;
  wire \RX_PE_DATA_reg[26]_0 ;
  wire RX_SCP0;
  wire \RX_SUF_reg[1] ;
  wire \RX_SUF_reg[1]_0 ;
  wire [1:0]\SOFT_ERR_reg[0] ;
  wire [0:0]SR;
  wire [3:0]TXCHARISK;
  wire [31:0]TXDATA;
  wire aurora_lane_init_sm_4byte_i_n_8;
  wire aurora_sym_dec_4byte_i_n_29;
  wire counter4_r0;
  wire ena_comma_align_i;
  wire enable_err_detect_i;
  wire \fc_nb_r_reg[0] ;
  wire \fc_nb_r_reg[1] ;
  wire \fc_nb_r_reg[2] ;
  wire first_v_received_r;
  wire gen_a_i;
  wire gen_cc_i;
  wire gen_ecp_i;
  wire [3:0]\gen_k_r_reg[0] ;
  wire [1:0]\gen_pad_r_reg[0] ;
  wire [3:0]\gen_r_r_reg[0] ;
  wire [0:0]gen_scp_striped_i;
  wire gen_spa_i;
  wire gen_spa_r;
  wire [0:0]gen_suf_striped_i;
  wire [2:0]\gen_v_r_reg[1] ;
  wire got_v_i;
  wire hard_err_gt0;
  wire hard_err_i;
  wire init_clk_in;
  wire lane_up;
  wire \left_align_select_r_reg[0] ;
  wire \left_align_select_r_reg[0]_0 ;
  wire \left_align_select_r_reg[1] ;
  wire \left_align_select_r_reg[1]_0 ;
  wire link_reset_out;
  wire [1:0]p_3_out;
  wire [0:0]\previous_cycle_control_r_reg[0] ;
  wire [7:0]\previous_cycle_data_r_reg[7] ;
  wire ready_r;
  wire ready_r_reg;
  wire ready_r_reg0;
  wire reset_count_r_reg;
  wire \rx_ecp_d_r_reg[6] ;
  wire \rx_ecp_d_r_reg[6]_0 ;
  wire [5:0]rx_pe_data_striped_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire \soft_err_r_reg[0] ;
  wire \soft_err_r_reg[1] ;
  wire \soft_err_r_reg[2] ;
  wire \soft_err_r_reg[3] ;
  wire [31:0]\tx_pe_data_r_reg[0] ;
  wire [1:0]\tx_pe_data_v_r_reg[0] ;
  wire tx_reset_i;
  wire user_clk;
  wire \word_aligned_control_bits_r_reg[2] ;
  wire \word_aligned_control_bits_r_reg[3] ;
  wire [7:0]\word_aligned_data_r_reg[0] ;
  wire [4:0]\word_aligned_data_r_reg[11] ;
  wire [7:0]\word_aligned_data_r_reg[16] ;
  wire [7:0]\word_aligned_data_r_reg[16]_0 ;
  wire [7:0]\word_aligned_data_r_reg[24] ;
  wire [4:0]\word_aligned_data_r_reg[27] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_ERR_DETECT_4BYTE aurora_err_detect_4byte_i
       (.\SOFT_ERR_reg[0]_0 (\SOFT_ERR_reg[0] ),
        .SR(SR),
        .enable_err_detect_i(enable_err_detect_i),
        .hard_err_frm_soft_err_reg_0(aurora_lane_init_sm_4byte_i_n_8),
        .hard_err_gt0(hard_err_gt0),
        .hard_err_i(hard_err_i),
        .ready_r_reg0(ready_r_reg0),
        .\soft_err_r_reg[0]_0 (\soft_err_r_reg[0] ),
        .\soft_err_r_reg[1]_0 (\soft_err_r_reg[1] ),
        .\soft_err_r_reg[2]_0 (\soft_err_r_reg[2] ),
        .\soft_err_r_reg[3]_0 (\soft_err_r_reg[3] ),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_hotplug aurora_hotplug_i
       (.D(RX_CC),
        .SR(SR),
        .init_clk_in(init_clk_in),
        .link_reset_out(link_reset_out),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_LANE_INIT_SM_4BYTE aurora_lane_init_sm_4byte_i
       (.D(D),
        .ENABLE_ERR_DETECT_reg_0(aurora_lane_init_sm_4byte_i_n_8),
        .GEN_SP(GEN_SP),
        .RXDISPERR(RXDISPERR),
        .RXNOTINTABLE(RXNOTINTABLE),
        .RX_NEG(RX_NEG),
        .SR(SR),
        .align_r_reg_0(ena_comma_align_i),
        .\counter3_r_reg[3]_0 (aurora_sym_dec_4byte_i_n_29),
        .counter4_r0(counter4_r0),
        .enable_err_detect_i(enable_err_detect_i),
        .first_v_received_r(first_v_received_r),
        .gen_spa_i(gen_spa_i),
        .gen_spa_r(gen_spa_r),
        .lane_up(lane_up),
        .ready_r(ready_r),
        .ready_r_reg0(ready_r_reg0),
        .ready_r_reg_0(ready_r_reg),
        .reset_count_r_reg_0(reset_count_r_reg),
        .rst_r_reg_0(tx_reset_i),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_SYM_DEC_4BYTE aurora_sym_dec_4byte_i
       (.D(RX_CC),
        .Q(Q),
        .RXCHARISK(RXCHARISK),
        .RXDATA(RXDATA),
        .RX_ECP0(RX_ECP0),
        .RX_NEG(RX_NEG),
        .\RX_PE_DATA_V_reg[0]_0 (\RX_PE_DATA_V_reg[0] ),
        .\RX_PE_DATA_reg[25]_0 (\RX_PE_DATA_reg[25] ),
        .\RX_PE_DATA_reg[26]_0 (\RX_PE_DATA_reg[26] ),
        .\RX_PE_DATA_reg[26]_1 (\RX_PE_DATA_reg[26]_0 ),
        .RX_SCP0(RX_SCP0),
        .RX_SPA_reg_0(aurora_sym_dec_4byte_i_n_29),
        .\RX_SUF_reg[1]_0 (\RX_SUF_reg[1] ),
        .\RX_SUF_reg[1]_1 (\RX_SUF_reg[1]_0 ),
        .counter4_r0(counter4_r0),
        .first_v_received_r(first_v_received_r),
        .gen_spa_i(gen_spa_i),
        .got_v_i(got_v_i),
        .lane_up(lane_up),
        .\left_align_select_r_reg[0]_0 (\left_align_select_r_reg[0] ),
        .\left_align_select_r_reg[0]_1 (\left_align_select_r_reg[0]_0 ),
        .\left_align_select_r_reg[1]_0 (\left_align_select_r_reg[1] ),
        .\left_align_select_r_reg[1]_1 (\left_align_select_r_reg[1]_0 ),
        .p_3_out(p_3_out),
        .\previous_cycle_control_r_reg[0]_0 (\previous_cycle_control_r_reg[0] ),
        .\previous_cycle_data_r_reg[7]_0 (\previous_cycle_data_r_reg[7] ),
        .ready_r(ready_r),
        .\rx_ecp_d_r_reg[6]_0 (\rx_ecp_d_r_reg[6] ),
        .\rx_ecp_d_r_reg[6]_1 (\rx_ecp_d_r_reg[6]_0 ),
        .rx_pe_data_striped_i(rx_pe_data_striped_i),
        .user_clk(user_clk),
        .\word_aligned_control_bits_r_reg[2]_0 (\word_aligned_control_bits_r_reg[2] ),
        .\word_aligned_control_bits_r_reg[3]_0 (\word_aligned_control_bits_r_reg[3] ),
        .\word_aligned_data_r_reg[0]_0 (\word_aligned_data_r_reg[0] ),
        .\word_aligned_data_r_reg[11]_0 (\word_aligned_data_r_reg[11] ),
        .\word_aligned_data_r_reg[16]_0 (\word_aligned_data_r_reg[16] ),
        .\word_aligned_data_r_reg[16]_1 (\word_aligned_data_r_reg[16]_0 ),
        .\word_aligned_data_r_reg[24]_0 (\word_aligned_data_r_reg[24] ),
        .\word_aligned_data_r_reg[27]_0 (\word_aligned_data_r_reg[27] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_SYM_GEN_4BYTE aurora_sym_gen_4byte_i
       (.GEN_SP(GEN_SP),
        .TXCHARISK(TXCHARISK),
        .TXDATA(TXDATA),
        .\fc_nb_r_reg[0]_0 (\fc_nb_r_reg[0] ),
        .\fc_nb_r_reg[1]_0 (\fc_nb_r_reg[1] ),
        .\fc_nb_r_reg[2]_0 (\fc_nb_r_reg[2] ),
        .gen_a_i(gen_a_i),
        .gen_cc_i(gen_cc_i),
        .gen_ecp_i(gen_ecp_i),
        .\gen_k_r_reg[0]_0 (\gen_k_r_reg[0] ),
        .\gen_pad_r_reg[0]_0 (\gen_pad_r_reg[0] ),
        .\gen_r_r_reg[0]_0 (\gen_r_r_reg[0] ),
        .gen_scp_striped_i(gen_scp_striped_i),
        .gen_spa_i(gen_spa_i),
        .gen_spa_r(gen_spa_r),
        .gen_suf_striped_i(gen_suf_striped_i),
        .\gen_v_r_reg[1]_0 (\gen_v_r_reg[1] ),
        .\tx_pe_data_r_reg[0]_0 (\tx_pe_data_r_reg[0] ),
        .\tx_pe_data_v_r_reg[0]_0 (\tx_pe_data_v_r_reg[0] ),
        .user_clk(user_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_AXI_TO_LL
   (new_pkt_r_reg_0,
    new_pkt_r,
    user_clk);
  output new_pkt_r_reg_0;
  input new_pkt_r;
  input user_clk;

  wire new_pkt_r;
  wire new_pkt_r_reg_0;
  wire user_clk;

  FDRE new_pkt_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(new_pkt_r),
        .Q(new_pkt_r_reg_0),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_CHANNEL_ERR_DETECT
   (soft_err,
    hard_err,
    reset_channel_i,
    user_clk,
    hard_err_i,
    lane_up,
    power_down,
    D);
  output soft_err;
  output hard_err;
  output reset_channel_i;
  input user_clk;
  input hard_err_i;
  input lane_up;
  input power_down;
  input [1:0]D;

  wire [1:0]D;
  wire RESET_CHANNEL0;
  wire channel_soft_err_c;
  wire hard_err;
  wire hard_err_i;
  wire hard_err_r;
  wire lane_up;
  wire lane_up_r;
  wire power_down;
  wire reset_channel_i;
  wire soft_err;
  wire [1:0]soft_err_r;
  wire user_clk;

  FDRE #(
    .INIT(1'b1)) 
    CHANNEL_HARD_ERR_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_r),
        .Q(hard_err),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    CHANNEL_SOFT_ERR_i_1
       (.I0(soft_err_r[1]),
        .I1(soft_err_r[0]),
        .O(channel_soft_err_c));
  FDRE #(
    .INIT(1'b1)) 
    CHANNEL_SOFT_ERR_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(channel_soft_err_c),
        .Q(soft_err),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    RESET_CHANNEL_i_1
       (.I0(power_down),
        .I1(lane_up_r),
        .O(RESET_CHANNEL0));
  FDRE #(
    .INIT(1'b1)) 
    RESET_CHANNEL_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RESET_CHANNEL0),
        .Q(reset_channel_i),
        .R(1'b0));
  FDRE hard_err_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_i),
        .Q(hard_err_r),
        .R(1'b0));
  FDRE lane_up_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(lane_up),
        .Q(lane_up_r),
        .R(1'b0));
  FDRE \soft_err_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(soft_err_r[1]),
        .R(1'b0));
  FDRE \soft_err_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(soft_err_r[0]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_CHANNEL_INIT_SM
   (SR,
    gen_ver_i,
    channel_up,
    start_rx_i,
    gtrxreset_i,
    rx_ll_rst,
    p_0_in,
    user_clk,
    got_v_i,
    wait_for_lane_up_r0,
    START_RX_reg_0,
    \txver_count_r_reg[7]_0 ,
    reset_channel_i);
  output [0:0]SR;
  output gen_ver_i;
  output channel_up;
  output start_rx_i;
  output gtrxreset_i;
  output rx_ll_rst;
  output p_0_in;
  input user_clk;
  input got_v_i;
  input wait_for_lane_up_r0;
  input START_RX_reg_0;
  input \txver_count_r_reg[7]_0 ;
  input reset_channel_i;

  wire GTRXRESET_OUT_i_1_n_0;
  wire GTRXRESET_OUT_i_2_n_0;
  wire [0:0]SR;
  wire START_RX0;
  wire START_RX_reg_0;
  wire all_lanes_v_r;
  wire bad_v_r;
  wire bad_v_r0;
  wire channel_up;
  wire \free_count_r[13]_i_2_n_0 ;
  wire \free_count_r[13]_i_3_n_0 ;
  wire \free_count_r[13]_i_4_n_0 ;
  wire \free_count_r[13]_i_5_n_0 ;
  wire \free_count_r[1]_i_2_n_0 ;
  wire \free_count_r[1]_i_3_n_0 ;
  wire \free_count_r[5]_i_2_n_0 ;
  wire \free_count_r[5]_i_3_n_0 ;
  wire \free_count_r[5]_i_4_n_0 ;
  wire \free_count_r[5]_i_5_n_0 ;
  wire \free_count_r[9]_i_2_n_0 ;
  wire \free_count_r[9]_i_3_n_0 ;
  wire \free_count_r[9]_i_4_n_0 ;
  wire \free_count_r[9]_i_5_n_0 ;
  wire [0:13]free_count_r_reg;
  wire \free_count_r_reg[13]_i_1_n_0 ;
  wire \free_count_r_reg[13]_i_1_n_1 ;
  wire \free_count_r_reg[13]_i_1_n_2 ;
  wire \free_count_r_reg[13]_i_1_n_3 ;
  wire \free_count_r_reg[13]_i_1_n_4 ;
  wire \free_count_r_reg[13]_i_1_n_5 ;
  wire \free_count_r_reg[13]_i_1_n_6 ;
  wire \free_count_r_reg[13]_i_1_n_7 ;
  wire \free_count_r_reg[1]_i_1_n_3 ;
  wire \free_count_r_reg[1]_i_1_n_6 ;
  wire \free_count_r_reg[1]_i_1_n_7 ;
  wire \free_count_r_reg[5]_i_1_n_0 ;
  wire \free_count_r_reg[5]_i_1_n_1 ;
  wire \free_count_r_reg[5]_i_1_n_2 ;
  wire \free_count_r_reg[5]_i_1_n_3 ;
  wire \free_count_r_reg[5]_i_1_n_4 ;
  wire \free_count_r_reg[5]_i_1_n_5 ;
  wire \free_count_r_reg[5]_i_1_n_6 ;
  wire \free_count_r_reg[5]_i_1_n_7 ;
  wire \free_count_r_reg[9]_i_1_n_0 ;
  wire \free_count_r_reg[9]_i_1_n_1 ;
  wire \free_count_r_reg[9]_i_1_n_2 ;
  wire \free_count_r_reg[9]_i_1_n_3 ;
  wire \free_count_r_reg[9]_i_1_n_4 ;
  wire \free_count_r_reg[9]_i_1_n_5 ;
  wire \free_count_r_reg[9]_i_1_n_6 ;
  wire \free_count_r_reg[9]_i_1_n_7 ;
  wire gen_ver_i;
  wire got_first_v_r;
  wire got_first_v_r_i_1_n_0;
  wire got_v_i;
  wire gtreset_c;
  wire [7:0]gtrxreset_extend_r;
  wire gtrxreset_i;
  wire gtrxreset_nxt;
  wire next_ready_c;
  wire next_verify_c;
  wire p_0_in;
  wire [15:15]p_2_out;
  wire ready_r;
  wire ready_r2;
  wire reset_channel_i;
  wire reset_lanes_c;
  wire rx_ll_rst;
  wire rxver_count_r0;
  wire \rxver_count_r_reg[1]_srl2_n_0 ;
  wire \rxver_count_r_reg_n_0_[2] ;
  wire start_rx_i;
  wire \txver_count_r_reg[6]_srl7_n_0 ;
  wire \txver_count_r_reg[7]_0 ;
  wire \txver_count_r_reg_n_0_[7] ;
  wire user_clk;
  wire \v_count_r_reg[14]_srl15_n_0 ;
  wire \v_count_r_reg_n_0_[15] ;
  wire verify_watchdog_r0;
  wire \verify_watchdog_r_reg[14]_srl15_i_2_n_0 ;
  wire \verify_watchdog_r_reg[14]_srl15_i_3_n_0 ;
  wire \verify_watchdog_r_reg[14]_srl15_n_0 ;
  wire \verify_watchdog_r_reg_n_0_[15] ;
  wire wait_for_lane_up_r;
  wire wait_for_lane_up_r0;
  wire [3:1]\NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED ;

  FDRE CHANNEL_UP_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r2),
        .Q(channel_up),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    FRAME_ERR_i_1
       (.I0(start_rx_i),
        .O(rx_ll_rst));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    GTRXRESET_OUT_i_1
       (.I0(gtrxreset_extend_r[2]),
        .I1(gtrxreset_extend_r[3]),
        .I2(gtrxreset_extend_r[0]),
        .I3(gtrxreset_extend_r[1]),
        .I4(GTRXRESET_OUT_i_2_n_0),
        .O(GTRXRESET_OUT_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    GTRXRESET_OUT_i_2
       (.I0(gtrxreset_extend_r[5]),
        .I1(gtrxreset_extend_r[4]),
        .I2(gtrxreset_extend_r[7]),
        .I3(gtrxreset_extend_r[6]),
        .O(GTRXRESET_OUT_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    GTRXRESET_OUT_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GTRXRESET_OUT_i_1_n_0),
        .Q(gtrxreset_i),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    START_RX_i_1
       (.I0(wait_for_lane_up_r),
        .O(START_RX0));
  FDRE START_RX_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(START_RX0),
        .Q(start_rx_i),
        .R(START_RX_reg_0));
  FDRE all_lanes_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(got_v_i),
        .Q(all_lanes_v_r),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h48)) 
    bad_v_r_i_1
       (.I0(all_lanes_v_r),
        .I1(got_first_v_r),
        .I2(\v_count_r_reg_n_0_[15] ),
        .O(bad_v_r0));
  FDRE bad_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(bad_v_r0),
        .Q(bad_v_r),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[13]_i_2 
       (.I0(free_count_r_reg[10]),
        .O(\free_count_r[13]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[13]_i_3 
       (.I0(free_count_r_reg[11]),
        .O(\free_count_r[13]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[13]_i_4 
       (.I0(free_count_r_reg[12]),
        .O(\free_count_r[13]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[13]_i_5 
       (.I0(free_count_r_reg[13]),
        .O(\free_count_r[13]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[1]_i_2 
       (.I0(free_count_r_reg[0]),
        .O(\free_count_r[1]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[1]_i_3 
       (.I0(free_count_r_reg[1]),
        .O(\free_count_r[1]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[5]_i_2 
       (.I0(free_count_r_reg[2]),
        .O(\free_count_r[5]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[5]_i_3 
       (.I0(free_count_r_reg[3]),
        .O(\free_count_r[5]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[5]_i_4 
       (.I0(free_count_r_reg[4]),
        .O(\free_count_r[5]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[5]_i_5 
       (.I0(free_count_r_reg[5]),
        .O(\free_count_r[5]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[9]_i_2 
       (.I0(free_count_r_reg[6]),
        .O(\free_count_r[9]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[9]_i_3 
       (.I0(free_count_r_reg[7]),
        .O(\free_count_r[9]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[9]_i_4 
       (.I0(free_count_r_reg[8]),
        .O(\free_count_r[9]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[9]_i_5 
       (.I0(free_count_r_reg[9]),
        .O(\free_count_r[9]_i_5_n_0 ));
  FDSE \free_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[1]_i_1_n_6 ),
        .Q(free_count_r_reg[0]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[13]_i_1_n_4 ),
        .Q(free_count_r_reg[10]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[13]_i_1_n_5 ),
        .Q(free_count_r_reg[11]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[13]_i_1_n_6 ),
        .Q(free_count_r_reg[12]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[13]_i_1_n_7 ),
        .Q(free_count_r_reg[13]),
        .S(wait_for_lane_up_r0));
  CARRY4 \free_count_r_reg[13]_i_1 
       (.CI(1'b0),
        .CO({\free_count_r_reg[13]_i_1_n_0 ,\free_count_r_reg[13]_i_1_n_1 ,\free_count_r_reg[13]_i_1_n_2 ,\free_count_r_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\free_count_r_reg[13]_i_1_n_4 ,\free_count_r_reg[13]_i_1_n_5 ,\free_count_r_reg[13]_i_1_n_6 ,\free_count_r_reg[13]_i_1_n_7 }),
        .S({\free_count_r[13]_i_2_n_0 ,\free_count_r[13]_i_3_n_0 ,\free_count_r[13]_i_4_n_0 ,\free_count_r[13]_i_5_n_0 }));
  FDSE \free_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[1]_i_1_n_7 ),
        .Q(free_count_r_reg[1]),
        .S(wait_for_lane_up_r0));
  CARRY4 \free_count_r_reg[1]_i_1 
       (.CI(\free_count_r_reg[5]_i_1_n_0 ),
        .CO({\NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED [3:1],\free_count_r_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED [3:2],\free_count_r_reg[1]_i_1_n_6 ,\free_count_r_reg[1]_i_1_n_7 }),
        .S({1'b0,1'b0,\free_count_r[1]_i_2_n_0 ,\free_count_r[1]_i_3_n_0 }));
  FDSE \free_count_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[5]_i_1_n_4 ),
        .Q(free_count_r_reg[2]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[5]_i_1_n_5 ),
        .Q(free_count_r_reg[3]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[5]_i_1_n_6 ),
        .Q(free_count_r_reg[4]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[5]_i_1_n_7 ),
        .Q(free_count_r_reg[5]),
        .S(wait_for_lane_up_r0));
  CARRY4 \free_count_r_reg[5]_i_1 
       (.CI(\free_count_r_reg[9]_i_1_n_0 ),
        .CO({\free_count_r_reg[5]_i_1_n_0 ,\free_count_r_reg[5]_i_1_n_1 ,\free_count_r_reg[5]_i_1_n_2 ,\free_count_r_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\free_count_r_reg[5]_i_1_n_4 ,\free_count_r_reg[5]_i_1_n_5 ,\free_count_r_reg[5]_i_1_n_6 ,\free_count_r_reg[5]_i_1_n_7 }),
        .S({\free_count_r[5]_i_2_n_0 ,\free_count_r[5]_i_3_n_0 ,\free_count_r[5]_i_4_n_0 ,\free_count_r[5]_i_5_n_0 }));
  FDSE \free_count_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[9]_i_1_n_4 ),
        .Q(free_count_r_reg[6]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[9]_i_1_n_5 ),
        .Q(free_count_r_reg[7]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[9]_i_1_n_6 ),
        .Q(free_count_r_reg[8]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[9]_i_1_n_7 ),
        .Q(free_count_r_reg[9]),
        .S(wait_for_lane_up_r0));
  CARRY4 \free_count_r_reg[9]_i_1 
       (.CI(\free_count_r_reg[13]_i_1_n_0 ),
        .CO({\free_count_r_reg[9]_i_1_n_0 ,\free_count_r_reg[9]_i_1_n_1 ,\free_count_r_reg[9]_i_1_n_2 ,\free_count_r_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\free_count_r_reg[9]_i_1_n_4 ,\free_count_r_reg[9]_i_1_n_5 ,\free_count_r_reg[9]_i_1_n_6 ,\free_count_r_reg[9]_i_1_n_7 }),
        .S({\free_count_r[9]_i_2_n_0 ,\free_count_r[9]_i_3_n_0 ,\free_count_r[9]_i_4_n_0 ,\free_count_r[9]_i_5_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    got_first_v_r_i_1
       (.I0(gen_ver_i),
        .I1(got_first_v_r),
        .I2(all_lanes_v_r),
        .O(got_first_v_r_i_1_n_0));
  FDRE got_first_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(got_first_v_r_i_1_n_0),
        .Q(got_first_v_r),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b1)) 
    gtreset_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gtreset_c),
        .Q(gtrxreset_nxt),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAE00)) 
    gtreset_flop_0_i_i_1
       (.I0(\verify_watchdog_r_reg_n_0_[15] ),
        .I1(bad_v_r),
        .I2(\rxver_count_r_reg_n_0_[2] ),
        .I3(gen_ver_i),
        .O(gtreset_c));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[1]),
        .Q(gtrxreset_extend_r[0]),
        .R(START_RX_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[2]),
        .Q(gtrxreset_extend_r[1]),
        .R(START_RX_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[3]),
        .Q(gtrxreset_extend_r[2]),
        .R(START_RX_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[4]),
        .Q(gtrxreset_extend_r[3]),
        .R(START_RX_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[5]),
        .Q(gtrxreset_extend_r[4]),
        .R(START_RX_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[6]),
        .Q(gtrxreset_extend_r[5]),
        .R(START_RX_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[7]),
        .Q(gtrxreset_extend_r[6]),
        .R(START_RX_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_nxt),
        .Q(gtrxreset_extend_r[7]),
        .R(START_RX_reg_0));
  FDRE ready_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r),
        .Q(ready_r2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    ready_r_i_1__0
       (.I0(\txver_count_r_reg_n_0_[7] ),
        .I1(\rxver_count_r_reg_n_0_[2] ),
        .I2(gen_ver_i),
        .I3(ready_r),
        .O(next_ready_c));
  FDRE ready_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ready_c),
        .Q(ready_r),
        .R(wait_for_lane_up_r0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b1)) 
    reset_lanes_flop_i
       (.C(user_clk),
        .CE(1'b1),
        .D(reset_lanes_c),
        .Q(SR),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFAE)) 
    reset_lanes_flop_i_i_1
       (.I0(START_RX_reg_0),
        .I1(reset_channel_i),
        .I2(wait_for_lane_up_r),
        .I3(gtreset_c),
        .O(reset_lanes_c));
  (* srl_bus_name = "inst/\aurora_global_logic_i/channel_init_sm_i/rxver_count_r_reg " *) 
  (* srl_name = "inst/\aurora_global_logic_i/channel_init_sm_i/rxver_count_r_reg[1]_srl2 " *) 
  SRL16E \rxver_count_r_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(rxver_count_r0),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\rxver_count_r_reg[1]_srl2_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \rxver_count_r_reg[1]_srl2_i_1 
       (.I0(\v_count_r_reg_n_0_[15] ),
        .I1(all_lanes_v_r),
        .I2(gen_ver_i),
        .O(rxver_count_r0));
  FDRE \rxver_count_r_reg[2] 
       (.C(user_clk),
        .CE(rxver_count_r0),
        .D(\rxver_count_r_reg[1]_srl2_n_0 ),
        .Q(\rxver_count_r_reg_n_0_[2] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\aurora_global_logic_i/channel_init_sm_i/txver_count_r_reg " *) 
  (* srl_name = "inst/\aurora_global_logic_i/channel_init_sm_i/txver_count_r_reg[6]_srl7 " *) 
  SRL16E \txver_count_r_reg[6]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(\txver_count_r_reg[7]_0 ),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\txver_count_r_reg[6]_srl7_n_0 ));
  FDRE \txver_count_r_reg[7] 
       (.C(user_clk),
        .CE(\txver_count_r_reg[7]_0 ),
        .D(\txver_count_r_reg[6]_srl7_n_0 ),
        .Q(\txver_count_r_reg_n_0_[7] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    ufc_header_r_i_1
       (.I0(channel_up),
        .O(p_0_in));
  (* srl_bus_name = "inst/\aurora_global_logic_i/channel_init_sm_i/v_count_r_reg " *) 
  (* srl_name = "inst/\aurora_global_logic_i/channel_init_sm_i/v_count_r_reg[14]_srl15 " *) 
  SRL16E \v_count_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(p_2_out),
        .Q(\v_count_r_reg[14]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \v_count_r_reg[14]_srl15_i_1 
       (.I0(got_first_v_r),
        .I1(all_lanes_v_r),
        .I2(gen_ver_i),
        .I3(\v_count_r_reg_n_0_[15] ),
        .O(p_2_out));
  FDRE \v_count_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\v_count_r_reg[14]_srl15_n_0 ),
        .Q(\v_count_r_reg_n_0_[15] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFF2A)) 
    verify_r_i_2
       (.I0(gen_ver_i),
        .I1(\txver_count_r_reg_n_0_[7] ),
        .I2(\rxver_count_r_reg_n_0_[2] ),
        .I3(wait_for_lane_up_r),
        .O(next_verify_c));
  FDRE verify_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_verify_c),
        .Q(gen_ver_i),
        .R(wait_for_lane_up_r0));
  (* srl_bus_name = "inst/\aurora_global_logic_i/channel_init_sm_i/verify_watchdog_r_reg " *) 
  (* srl_name = "inst/\aurora_global_logic_i/channel_init_sm_i/verify_watchdog_r_reg[14]_srl15 " *) 
  SRL16E \verify_watchdog_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(verify_watchdog_r0),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\verify_watchdog_r_reg[14]_srl15_n_0 ));
  LUT5 #(
    .INIT(32'h0200FFFF)) 
    \verify_watchdog_r_reg[14]_srl15_i_1 
       (.I0(\verify_watchdog_r_reg[14]_srl15_i_2_n_0 ),
        .I1(free_count_r_reg[12]),
        .I2(free_count_r_reg[13]),
        .I3(\verify_watchdog_r_reg[14]_srl15_i_3_n_0 ),
        .I4(gen_ver_i),
        .O(verify_watchdog_r0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \verify_watchdog_r_reg[14]_srl15_i_2 
       (.I0(free_count_r_reg[9]),
        .I1(free_count_r_reg[8]),
        .I2(free_count_r_reg[11]),
        .I3(free_count_r_reg[10]),
        .I4(free_count_r_reg[6]),
        .I5(free_count_r_reg[7]),
        .O(\verify_watchdog_r_reg[14]_srl15_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \verify_watchdog_r_reg[14]_srl15_i_3 
       (.I0(free_count_r_reg[3]),
        .I1(free_count_r_reg[2]),
        .I2(free_count_r_reg[5]),
        .I3(free_count_r_reg[4]),
        .I4(free_count_r_reg[0]),
        .I5(free_count_r_reg[1]),
        .O(\verify_watchdog_r_reg[14]_srl15_i_3_n_0 ));
  FDRE \verify_watchdog_r_reg[15] 
       (.C(user_clk),
        .CE(verify_watchdog_r0),
        .D(\verify_watchdog_r_reg[14]_srl15_n_0 ),
        .Q(\verify_watchdog_r_reg_n_0_[15] ),
        .R(1'b0));
  FDRE wait_for_lane_up_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(wait_for_lane_up_r0),
        .Q(wait_for_lane_up_r),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_ERR_DETECT_4BYTE
   (ready_r_reg0,
    hard_err_i,
    \SOFT_ERR_reg[0]_0 ,
    hard_err_frm_soft_err_reg_0,
    user_clk,
    hard_err_gt0,
    SR,
    enable_err_detect_i,
    \soft_err_r_reg[0]_0 ,
    \soft_err_r_reg[1]_0 ,
    \soft_err_r_reg[2]_0 ,
    \soft_err_r_reg[3]_0 );
  output ready_r_reg0;
  output hard_err_i;
  output [1:0]\SOFT_ERR_reg[0]_0 ;
  input hard_err_frm_soft_err_reg_0;
  input user_clk;
  input hard_err_gt0;
  input [0:0]SR;
  input enable_err_detect_i;
  input \soft_err_r_reg[0]_0 ;
  input \soft_err_r_reg[1]_0 ;
  input \soft_err_r_reg[2]_0 ;
  input \soft_err_r_reg[3]_0 ;

  wire SOFT_ERR0;
  wire \SOFT_ERR[1]_i_1_n_0 ;
  wire [1:0]\SOFT_ERR_reg[0]_0 ;
  wire [0:0]SR;
  wire cnt_good_code_r;
  wire cnt_good_code_r_i_2_n_0;
  wire cnt_good_code_r_i_3_n_0;
  wire cnt_soft_err_r;
  wire enable_err_detect_i;
  wire [1:0]err_cnt_r;
  wire \err_cnt_r[0]_i_1_n_0 ;
  wire \err_cnt_r[1]_i_1_n_0 ;
  wire \err_cnt_r[2]_i_1_n_0 ;
  wire \err_cnt_r[2]_i_2_n_0 ;
  wire \good_cnt_r[3]_i_1_n_0 ;
  wire [3:0]good_cnt_r_reg;
  wire hard_err_frm_soft_err;
  wire hard_err_frm_soft_err_reg_0;
  wire hard_err_gt;
  wire hard_err_gt0;
  wire hard_err_i;
  wire next_good_code_c;
  wire next_soft_err_c;
  wire next_start_c;
  wire p_0_in;
  wire [3:0]p_0_in__0;
  wire ready_r_reg0;
  wire \soft_err_r_reg[0]_0 ;
  wire \soft_err_r_reg[1]_0 ;
  wire \soft_err_r_reg[2]_0 ;
  wire \soft_err_r_reg[3]_0 ;
  wire \soft_err_r_reg_n_0_[0] ;
  wire \soft_err_r_reg_n_0_[1] ;
  wire \soft_err_r_reg_n_0_[2] ;
  wire \soft_err_r_reg_n_0_[3] ;
  wire start_r;
  wire user_clk;

  LUT2 #(
    .INIT(4'hE)) 
    \SOFT_ERR[0]_i_1 
       (.I0(\soft_err_r_reg_n_0_[1] ),
        .I1(\soft_err_r_reg_n_0_[0] ),
        .O(SOFT_ERR0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \SOFT_ERR[1]_i_1 
       (.I0(\soft_err_r_reg_n_0_[3] ),
        .I1(\soft_err_r_reg_n_0_[2] ),
        .O(\SOFT_ERR[1]_i_1_n_0 ));
  FDRE \SOFT_ERR_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(SOFT_ERR0),
        .Q(\SOFT_ERR_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \SOFT_ERR_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SOFT_ERR[1]_i_1_n_0 ),
        .Q(\SOFT_ERR_reg[0]_0 [0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    align_r_i_1
       (.I0(hard_err_gt),
        .I1(p_0_in),
        .I2(hard_err_frm_soft_err),
        .I3(SR),
        .O(ready_r_reg0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00EA)) 
    cnt_good_code_r_i_1
       (.I0(cnt_soft_err_r),
        .I1(cnt_good_code_r_i_2_n_0),
        .I2(cnt_good_code_r),
        .I3(cnt_good_code_r_i_3_n_0),
        .O(next_good_code_c));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    cnt_good_code_r_i_2
       (.I0(good_cnt_r_reg[2]),
        .I1(good_cnt_r_reg[0]),
        .I2(good_cnt_r_reg[1]),
        .I3(good_cnt_r_reg[3]),
        .O(cnt_good_code_r_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    cnt_good_code_r_i_3
       (.I0(\soft_err_r_reg_n_0_[2] ),
        .I1(\soft_err_r_reg_n_0_[3] ),
        .I2(\soft_err_r_reg_n_0_[0] ),
        .I3(\soft_err_r_reg_n_0_[1] ),
        .O(cnt_good_code_r_i_3_n_0));
  FDRE cnt_good_code_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_good_code_c),
        .Q(cnt_good_code_r),
        .R(hard_err_frm_soft_err_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    cnt_soft_err_r_i_1
       (.I0(start_r),
        .I1(cnt_soft_err_r),
        .I2(cnt_good_code_r),
        .I3(cnt_good_code_r_i_3_n_0),
        .O(next_soft_err_c));
  FDRE cnt_soft_err_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_soft_err_c),
        .Q(cnt_soft_err_r),
        .R(hard_err_frm_soft_err_reg_0));
  LUT5 #(
    .INIT(32'hBEBE4140)) 
    \err_cnt_r[0]_i_1 
       (.I0(p_0_in),
        .I1(cnt_soft_err_r),
        .I2(\err_cnt_r[2]_i_2_n_0 ),
        .I3(err_cnt_r[1]),
        .I4(err_cnt_r[0]),
        .O(\err_cnt_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAA6AA8)) 
    \err_cnt_r[1]_i_1 
       (.I0(err_cnt_r[1]),
        .I1(err_cnt_r[0]),
        .I2(\err_cnt_r[2]_i_2_n_0 ),
        .I3(cnt_soft_err_r),
        .I4(p_0_in),
        .O(\err_cnt_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \err_cnt_r[2]_i_1 
       (.I0(err_cnt_r[1]),
        .I1(err_cnt_r[0]),
        .I2(\err_cnt_r[2]_i_2_n_0 ),
        .I3(cnt_soft_err_r),
        .I4(p_0_in),
        .O(\err_cnt_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEEEF)) 
    \err_cnt_r[2]_i_2 
       (.I0(good_cnt_r_reg[1]),
        .I1(good_cnt_r_reg[0]),
        .I2(good_cnt_r_reg[3]),
        .I3(good_cnt_r_reg[2]),
        .O(\err_cnt_r[2]_i_2_n_0 ));
  FDRE \err_cnt_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\err_cnt_r[0]_i_1_n_0 ),
        .Q(err_cnt_r[0]),
        .R(hard_err_frm_soft_err_reg_0));
  FDRE \err_cnt_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\err_cnt_r[1]_i_1_n_0 ),
        .Q(err_cnt_r[1]),
        .R(hard_err_frm_soft_err_reg_0));
  FDRE \err_cnt_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\err_cnt_r[2]_i_1_n_0 ),
        .Q(p_0_in),
        .R(hard_err_frm_soft_err_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \good_cnt_r[0]_i_1 
       (.I0(good_cnt_r_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \good_cnt_r[1]_i_1 
       (.I0(good_cnt_r_reg[0]),
        .I1(good_cnt_r_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \good_cnt_r[2]_i_1 
       (.I0(good_cnt_r_reg[1]),
        .I1(good_cnt_r_reg[0]),
        .I2(good_cnt_r_reg[2]),
        .O(p_0_in__0[2]));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \good_cnt_r[3]_i_1 
       (.I0(cnt_good_code_r),
        .I1(enable_err_detect_i),
        .I2(cnt_soft_err_r),
        .I3(start_r),
        .O(\good_cnt_r[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \good_cnt_r[3]_i_2 
       (.I0(good_cnt_r_reg[2]),
        .I1(good_cnt_r_reg[0]),
        .I2(good_cnt_r_reg[1]),
        .I3(good_cnt_r_reg[3]),
        .O(p_0_in__0[3]));
  FDRE \good_cnt_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(good_cnt_r_reg[0]),
        .R(\good_cnt_r[3]_i_1_n_0 ));
  FDRE \good_cnt_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(good_cnt_r_reg[1]),
        .R(\good_cnt_r[3]_i_1_n_0 ));
  FDRE \good_cnt_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(good_cnt_r_reg[2]),
        .R(\good_cnt_r[3]_i_1_n_0 ));
  FDRE \good_cnt_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(good_cnt_r_reg[3]),
        .R(\good_cnt_r[3]_i_1_n_0 ));
  FDRE hard_err_frm_soft_err_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(hard_err_frm_soft_err),
        .R(hard_err_frm_soft_err_reg_0));
  FDRE hard_err_gt_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_gt0),
        .Q(hard_err_gt),
        .R(hard_err_frm_soft_err_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    hard_err_r_i_1
       (.I0(hard_err_frm_soft_err),
        .I1(p_0_in),
        .I2(hard_err_gt),
        .O(hard_err_i));
  FDRE \soft_err_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\soft_err_r_reg[0]_0 ),
        .Q(\soft_err_r_reg_n_0_[0] ),
        .R(hard_err_frm_soft_err_reg_0));
  FDRE \soft_err_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\soft_err_r_reg[1]_0 ),
        .Q(\soft_err_r_reg_n_0_[1] ),
        .R(hard_err_frm_soft_err_reg_0));
  FDRE \soft_err_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\soft_err_r_reg[2]_0 ),
        .Q(\soft_err_r_reg_n_0_[2] ),
        .R(hard_err_frm_soft_err_reg_0));
  FDRE \soft_err_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\soft_err_r_reg[3]_0 ),
        .Q(\soft_err_r_reg_n_0_[3] ),
        .R(hard_err_frm_soft_err_reg_0));
  LUT4 #(
    .INIT(16'h00BA)) 
    start_r_i_1
       (.I0(start_r),
        .I1(cnt_good_code_r_i_2_n_0),
        .I2(cnt_good_code_r),
        .I3(cnt_good_code_r_i_3_n_0),
        .O(next_start_c));
  FDSE start_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_start_c),
        .Q(start_r),
        .S(hard_err_frm_soft_err_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_GLOBAL_LOGIC
   (SR,
    gen_v_flop_1_i,
    gen_a_i,
    gen_k_flop_0_i,
    gen_r_flop_0_i,
    channel_up,
    start_rx_i,
    gtrxreset_i,
    soft_err,
    hard_err,
    reset_channel_i,
    rx_ll_rst,
    p_0_in,
    user_clk,
    got_v_i,
    wait_for_lane_up_r0,
    \downcounter_r_reg[2] ,
    hard_err_i,
    lane_up,
    power_down,
    D);
  output [0:0]SR;
  output [2:0]gen_v_flop_1_i;
  output gen_a_i;
  output [3:0]gen_k_flop_0_i;
  output [3:0]gen_r_flop_0_i;
  output channel_up;
  output start_rx_i;
  output gtrxreset_i;
  output soft_err;
  output hard_err;
  output reset_channel_i;
  output rx_ll_rst;
  output p_0_in;
  input user_clk;
  input got_v_i;
  input wait_for_lane_up_r0;
  input \downcounter_r_reg[2] ;
  input hard_err_i;
  input lane_up;
  input power_down;
  input [1:0]D;

  wire [1:0]D;
  wire [0:0]SR;
  wire channel_up;
  wire \downcounter_r_reg[2] ;
  wire gen_a_i;
  wire [3:0]gen_k_flop_0_i;
  wire [3:0]gen_r_flop_0_i;
  wire [2:0]gen_v_flop_1_i;
  wire gen_ver_i;
  wire got_v_i;
  wire gtrxreset_i;
  wire hard_err;
  wire hard_err_i;
  wire idle_and_ver_gen_i_n_12;
  wire lane_up;
  wire p_0_in;
  wire power_down;
  wire reset_channel_i;
  wire rx_ll_rst;
  wire soft_err;
  wire start_rx_i;
  wire user_clk;
  wire wait_for_lane_up_r0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_CHANNEL_ERR_DETECT channel_err_detect_i
       (.D(D),
        .hard_err(hard_err),
        .hard_err_i(hard_err_i),
        .lane_up(lane_up),
        .power_down(power_down),
        .reset_channel_i(reset_channel_i),
        .soft_err(soft_err),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_CHANNEL_INIT_SM channel_init_sm_i
       (.SR(SR),
        .START_RX_reg_0(\downcounter_r_reg[2] ),
        .channel_up(channel_up),
        .gen_ver_i(gen_ver_i),
        .got_v_i(got_v_i),
        .gtrxreset_i(gtrxreset_i),
        .p_0_in(p_0_in),
        .reset_channel_i(reset_channel_i),
        .rx_ll_rst(rx_ll_rst),
        .start_rx_i(start_rx_i),
        .\txver_count_r_reg[7]_0 (idle_and_ver_gen_i_n_12),
        .user_clk(user_clk),
        .wait_for_lane_up_r0(wait_for_lane_up_r0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_IDLE_AND_VER_GEN idle_and_ver_gen_i
       (.DID_VER_reg_0(idle_and_ver_gen_i_n_12),
        .\downcounter_r_reg[2]_0 (\downcounter_r_reg[2] ),
        .gen_a_i(gen_a_i),
        .gen_k_flop_0_i_0(gen_k_flop_0_i),
        .gen_r_flop_0_i_0(gen_r_flop_0_i),
        .gen_v_flop_1_i_0(gen_v_flop_1_i),
        .gen_ver_i(gen_ver_i),
        .user_clk(user_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_GT_WRAPPER
   (tx_resetdone_out,
    tx_lock,
    drprdy_out,
    txn,
    txp,
    rx_realign_i,
    tx_out_clk,
    drpdo_out,
    RXDATA,
    D,
    RXCHARISK,
    RXDISPERR,
    RXNOTINTABLE,
    rx_resetdone_out,
    link_reset_r,
    rst_r_reg,
    init_clk_in_0,
    init_clk_in_1,
    init_clk_in_2,
    init_clk_in_3,
    \left_align_select_r_reg[1] ,
    \left_align_select_r_reg[1]_0 ,
    \left_align_select_r_reg[1]_1 ,
    \left_align_select_r_reg[1]_2 ,
    hard_err_gt0,
    s_level_out_d3_reg,
    rxfsm_rxresetdone_r3_reg_0,
    \left_align_select_r_reg[0] ,
    \left_align_select_r_reg[1]_3 ,
    init_clk_in,
    drpclk_in,
    drpen_in,
    drpwe_in,
    gt_refclk1,
    rxn,
    rxp,
    gt_qpllclk_quad1_in,
    gt_qpllrefclk_quad1_in,
    ena_comma_align_i,
    rx_polarity_i,
    sync_clk,
    user_clk,
    power_down,
    drpdi_in,
    loopback,
    TXDATA,
    TXCHARISK,
    drpaddr_in,
    gtrxreset_i,
    link_reset_out,
    AR,
    tx_reset_i,
    \left_align_select_r_reg[1]_4 ,
    \left_align_select_r_reg[0]_0 ,
    \word_aligned_data_r_reg[16] ,
    \word_aligned_control_bits_r_reg[2] ,
    \left_align_select_r_reg[0]_1 );
  output tx_resetdone_out;
  output tx_lock;
  output drprdy_out;
  output txn;
  output txp;
  output rx_realign_i;
  output tx_out_clk;
  output [15:0]drpdo_out;
  output [31:0]RXDATA;
  output [3:0]D;
  output [3:0]RXCHARISK;
  output [1:0]RXDISPERR;
  output [1:0]RXNOTINTABLE;
  output rx_resetdone_out;
  output link_reset_r;
  output rst_r_reg;
  output init_clk_in_0;
  output init_clk_in_1;
  output init_clk_in_2;
  output init_clk_in_3;
  output [7:0]\left_align_select_r_reg[1] ;
  output [7:0]\left_align_select_r_reg[1]_0 ;
  output \left_align_select_r_reg[1]_1 ;
  output \left_align_select_r_reg[1]_2 ;
  output hard_err_gt0;
  output s_level_out_d3_reg;
  output rxfsm_rxresetdone_r3_reg_0;
  output \left_align_select_r_reg[0] ;
  output \left_align_select_r_reg[1]_3 ;
  input init_clk_in;
  input drpclk_in;
  input drpen_in;
  input drpwe_in;
  input gt_refclk1;
  input rxn;
  input rxp;
  input gt_qpllclk_quad1_in;
  input gt_qpllrefclk_quad1_in;
  input ena_comma_align_i;
  input rx_polarity_i;
  input sync_clk;
  input user_clk;
  input power_down;
  input [15:0]drpdi_in;
  input [2:0]loopback;
  input [31:0]TXDATA;
  input [3:0]TXCHARISK;
  input [8:0]drpaddr_in;
  input gtrxreset_i;
  input link_reset_out;
  input [0:0]AR;
  input tx_reset_i;
  input \left_align_select_r_reg[1]_4 ;
  input \left_align_select_r_reg[0]_0 ;
  input [7:0]\word_aligned_data_r_reg[16] ;
  input [0:0]\word_aligned_control_bits_r_reg[2] ;
  input \left_align_select_r_reg[0]_1 ;

  wire [0:0]AR;
  wire [3:0]D;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire [1:0]RXDISPERR;
  wire [1:0]RXNOTINTABLE;
  wire [3:0]TXCHARISK;
  wire [31:0]TXDATA;
  wire aurora_multi_gt_i_n_5;
  wire aurora_multi_gt_i_n_7;
  wire cpll_reset_i;
  wire [31:1]data0;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire \gt0_aurora_i/ack_flag ;
  wire gt0_rxresetdone_r3_reg_srl3_n_0;
  wire gt0_txresetdone_r3_reg_srl3_n_0;
  wire gt_qpllclk_quad1_in;
  wire gt_qpllrefclk_quad1_in;
  wire gt_refclk1;
  wire gt_rx_reset_i;
  wire gt_rxdfelfhold_i;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txresetfsm_i_n_4;
  wire gt_txuserrdy_i;
  wire gtrxreset_i;
  wire gtrxreset_i_0;
  wire gtrxreset_pulse;
  wire gtrxreset_pulse_i_1_n_0;
  wire gtrxreset_r1;
  wire gtrxreset_r2;
  wire gtrxreset_r3;
  wire gtrxreset_sync;
  wire hard_err_gt0;
  wire init_clk_in;
  wire init_clk_in_0;
  wire init_clk_in_1;
  wire init_clk_in_2;
  wire init_clk_in_3;
  wire \left_align_select_r_reg[0] ;
  wire \left_align_select_r_reg[0]_0 ;
  wire \left_align_select_r_reg[0]_1 ;
  wire [7:0]\left_align_select_r_reg[1] ;
  wire [7:0]\left_align_select_r_reg[1]_0 ;
  wire \left_align_select_r_reg[1]_1 ;
  wire \left_align_select_r_reg[1]_2 ;
  wire \left_align_select_r_reg[1]_3 ;
  wire \left_align_select_r_reg[1]_4 ;
  wire link_reset_out;
  wire link_reset_r;
  wire link_reset_r2;
  wire [2:0]loopback;
  wire power_down;
  wire rst_r_reg;
  wire [31:1]rx_cdrlock_counter;
  wire rx_cdrlock_counter0_carry__0_n_0;
  wire rx_cdrlock_counter0_carry__0_n_1;
  wire rx_cdrlock_counter0_carry__0_n_2;
  wire rx_cdrlock_counter0_carry__0_n_3;
  wire rx_cdrlock_counter0_carry__1_n_0;
  wire rx_cdrlock_counter0_carry__1_n_1;
  wire rx_cdrlock_counter0_carry__1_n_2;
  wire rx_cdrlock_counter0_carry__1_n_3;
  wire rx_cdrlock_counter0_carry__2_n_0;
  wire rx_cdrlock_counter0_carry__2_n_1;
  wire rx_cdrlock_counter0_carry__2_n_2;
  wire rx_cdrlock_counter0_carry__2_n_3;
  wire rx_cdrlock_counter0_carry__3_n_0;
  wire rx_cdrlock_counter0_carry__3_n_1;
  wire rx_cdrlock_counter0_carry__3_n_2;
  wire rx_cdrlock_counter0_carry__3_n_3;
  wire rx_cdrlock_counter0_carry__4_n_0;
  wire rx_cdrlock_counter0_carry__4_n_1;
  wire rx_cdrlock_counter0_carry__4_n_2;
  wire rx_cdrlock_counter0_carry__4_n_3;
  wire rx_cdrlock_counter0_carry__5_n_0;
  wire rx_cdrlock_counter0_carry__5_n_1;
  wire rx_cdrlock_counter0_carry__5_n_2;
  wire rx_cdrlock_counter0_carry__5_n_3;
  wire rx_cdrlock_counter0_carry__6_n_2;
  wire rx_cdrlock_counter0_carry__6_n_3;
  wire rx_cdrlock_counter0_carry_n_0;
  wire rx_cdrlock_counter0_carry_n_1;
  wire rx_cdrlock_counter0_carry_n_2;
  wire rx_cdrlock_counter0_carry_n_3;
  wire \rx_cdrlock_counter[0]_i_1_n_0 ;
  wire \rx_cdrlock_counter[31]_i_2_n_0 ;
  wire \rx_cdrlock_counter[31]_i_3_n_0 ;
  wire \rx_cdrlock_counter[31]_i_4_n_0 ;
  wire \rx_cdrlock_counter[31]_i_5_n_0 ;
  wire \rx_cdrlock_counter[31]_i_6_n_0 ;
  wire \rx_cdrlock_counter[31]_i_7_n_0 ;
  wire \rx_cdrlock_counter[31]_i_8_n_0 ;
  wire \rx_cdrlock_counter[31]_i_9_n_0 ;
  wire \rx_cdrlock_counter_reg_n_0_[0] ;
  wire \rx_cdrlock_counter_reg_n_0_[10] ;
  wire \rx_cdrlock_counter_reg_n_0_[11] ;
  wire \rx_cdrlock_counter_reg_n_0_[12] ;
  wire \rx_cdrlock_counter_reg_n_0_[13] ;
  wire \rx_cdrlock_counter_reg_n_0_[14] ;
  wire \rx_cdrlock_counter_reg_n_0_[15] ;
  wire \rx_cdrlock_counter_reg_n_0_[16] ;
  wire \rx_cdrlock_counter_reg_n_0_[17] ;
  wire \rx_cdrlock_counter_reg_n_0_[18] ;
  wire \rx_cdrlock_counter_reg_n_0_[19] ;
  wire \rx_cdrlock_counter_reg_n_0_[1] ;
  wire \rx_cdrlock_counter_reg_n_0_[20] ;
  wire \rx_cdrlock_counter_reg_n_0_[21] ;
  wire \rx_cdrlock_counter_reg_n_0_[22] ;
  wire \rx_cdrlock_counter_reg_n_0_[23] ;
  wire \rx_cdrlock_counter_reg_n_0_[24] ;
  wire \rx_cdrlock_counter_reg_n_0_[25] ;
  wire \rx_cdrlock_counter_reg_n_0_[26] ;
  wire \rx_cdrlock_counter_reg_n_0_[27] ;
  wire \rx_cdrlock_counter_reg_n_0_[28] ;
  wire \rx_cdrlock_counter_reg_n_0_[29] ;
  wire \rx_cdrlock_counter_reg_n_0_[2] ;
  wire \rx_cdrlock_counter_reg_n_0_[30] ;
  wire \rx_cdrlock_counter_reg_n_0_[31] ;
  wire \rx_cdrlock_counter_reg_n_0_[3] ;
  wire \rx_cdrlock_counter_reg_n_0_[4] ;
  wire \rx_cdrlock_counter_reg_n_0_[5] ;
  wire \rx_cdrlock_counter_reg_n_0_[6] ;
  wire \rx_cdrlock_counter_reg_n_0_[7] ;
  wire \rx_cdrlock_counter_reg_n_0_[8] ;
  wire \rx_cdrlock_counter_reg_n_0_[9] ;
  wire rx_cdrlocked_i_1_n_0;
  wire rx_cdrlocked_reg_n_0;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rx_resetdone_out;
  wire rxfsm_rxresetdone_r;
  wire rxfsm_rxresetdone_r2;
  wire rxfsm_rxresetdone_r3_reg_0;
  wire rxfsm_soft_reset_r;
  wire rxfsm_soft_reset_r_i_1_n_0;
  wire rxn;
  wire rxp;
  wire s_level_out_d3_reg;
  wire sync_clk;
  wire tx_lock;
  wire tx_out_clk;
  wire tx_reset_i;
  wire tx_resetdone_out;
  wire txfsm_txresetdone_r;
  wire txn;
  wire txp;
  wire user_clk;
  wire [0:0]\word_aligned_control_bits_r_reg[2] ;
  wire [7:0]\word_aligned_data_r_reg[16] ;
  wire [3:2]NLW_rx_cdrlock_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_rx_cdrlock_counter0_carry__6_O_UNCONNECTED;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_multi_gt aurora_multi_gt_i
       (.D(D),
        .RXCHARISK(RXCHARISK),
        .RXDATA(RXDATA),
        .RXDISPERR(RXDISPERR),
        .RXNOTINTABLE(RXNOTINTABLE),
        .SR(gt_rx_reset_i),
        .TXCHARISK(TXCHARISK),
        .TXDATA(TXDATA),
        .ack_flag(\gt0_aurora_i/ack_flag ),
        .cpll_reset_i(cpll_reset_i),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .ena_comma_align_i(ena_comma_align_i),
        .flag2_reg(gt_txresetfsm_i_n_4),
        .gt_qpllclk_quad1_in(gt_qpllclk_quad1_in),
        .gt_qpllrefclk_quad1_in(gt_qpllrefclk_quad1_in),
        .gt_refclk1(gt_refclk1),
        .gt_rxdfelfhold_i(gt_rxdfelfhold_i),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .hard_err_gt0(hard_err_gt0),
        .init_clk_in(init_clk_in),
        .init_clk_in_0(aurora_multi_gt_i_n_5),
        .init_clk_in_1(aurora_multi_gt_i_n_7),
        .init_clk_in_2(init_clk_in_0),
        .init_clk_in_3(init_clk_in_1),
        .init_clk_in_4(init_clk_in_2),
        .init_clk_in_5(init_clk_in_3),
        .\left_align_select_r_reg[0] (\left_align_select_r_reg[0] ),
        .\left_align_select_r_reg[0]_0 (\left_align_select_r_reg[0]_0 ),
        .\left_align_select_r_reg[0]_1 (\left_align_select_r_reg[0]_1 ),
        .\left_align_select_r_reg[1] (\left_align_select_r_reg[1] ),
        .\left_align_select_r_reg[1]_0 (\left_align_select_r_reg[1]_0 ),
        .\left_align_select_r_reg[1]_1 (\left_align_select_r_reg[1]_1 ),
        .\left_align_select_r_reg[1]_2 (\left_align_select_r_reg[1]_2 ),
        .\left_align_select_r_reg[1]_3 (\left_align_select_r_reg[1]_3 ),
        .\left_align_select_r_reg[1]_4 (\left_align_select_r_reg[1]_4 ),
        .loopback(loopback),
        .power_down(power_down),
        .rst_r_reg(rst_r_reg),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .rxn(rxn),
        .rxp(rxp),
        .sync_clk(sync_clk),
        .tx_lock(tx_lock),
        .tx_out_clk(tx_out_clk),
        .tx_reset_i(tx_reset_i),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk),
        .\word_aligned_control_bits_r_reg[2] (\word_aligned_control_bits_r_reg[2] ),
        .\word_aligned_data_r_reg[16] (\word_aligned_data_r_reg[16] ));
  (* srl_name = "inst/\gt_wrapper_i/gt0_rxresetdone_r3_reg_srl3 " *) 
  SRL16E gt0_rxresetdone_r3_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(aurora_multi_gt_i_n_5),
        .Q(gt0_rxresetdone_r3_reg_srl3_n_0));
  (* srl_name = "inst/\gt_wrapper_i/gt0_txresetdone_r3_reg_srl3 " *) 
  SRL16E gt0_txresetdone_r3_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(aurora_multi_gt_i_n_7),
        .Q(gt0_txresetdone_r3_reg_srl3_n_0));
  FDRE gt_rx_reset_i_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_i_0),
        .Q(gt_rx_reset_i),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    gt_rxresetdone_r_i_1
       (.I0(rx_resetdone_out),
        .O(rxfsm_rxresetdone_r3_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_rx_startup_fsm gt_rxresetfsm_i
       (.AR(rxfsm_soft_reset_r),
        .\FSM_sequential_rx_state_reg[0]_0 (rx_cdrlocked_reg_n_0),
        .gt_rxdfelfhold_i(gt_rxdfelfhold_i),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .gtrxreset_i_0(gtrxreset_i_0),
        .init_clk_in(init_clk_in),
        .rxfsm_rxresetdone_r(rxfsm_rxresetdone_r),
        .tx_lock(tx_lock),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_tx_startup_fsm gt_txresetfsm_i
       (.AR(AR),
        .CPLL_RESET_reg_0(gt_txresetfsm_i_n_4),
        .ack_flag(\gt0_aurora_i/ack_flag ),
        .cpll_reset_i(cpll_reset_i),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .init_clk_in(init_clk_in),
        .out(tx_resetdone_out),
        .s_level_out_d3_reg(s_level_out_d3_reg),
        .tx_lock(tx_lock),
        .txfsm_txresetdone_r(txfsm_txresetdone_r),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0 gtrxreset_cdc_sync
       (.gtrxreset_i(gtrxreset_i),
        .init_clk_in(init_clk_in),
        .out(gtrxreset_sync),
        .user_clk(user_clk));
  LUT2 #(
    .INIT(4'h2)) 
    gtrxreset_pulse_i_1
       (.I0(gtrxreset_r2),
        .I1(gtrxreset_r3),
        .O(gtrxreset_pulse_i_1_n_0));
  FDRE gtrxreset_pulse_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_pulse_i_1_n_0),
        .Q(gtrxreset_pulse),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE gtrxreset_r1_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_sync),
        .Q(gtrxreset_r1),
        .R(1'b0));
  FDRE gtrxreset_r2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_r1),
        .Q(gtrxreset_r2),
        .R(1'b0));
  FDRE gtrxreset_r3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_r2),
        .Q(gtrxreset_r3),
        .R(1'b0));
  FDRE link_reset_r2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_r),
        .Q(link_reset_r2),
        .R(1'b0));
  FDRE link_reset_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_out),
        .Q(link_reset_r),
        .R(1'b0));
  CARRY4 rx_cdrlock_counter0_carry
       (.CI(1'b0),
        .CO({rx_cdrlock_counter0_carry_n_0,rx_cdrlock_counter0_carry_n_1,rx_cdrlock_counter0_carry_n_2,rx_cdrlock_counter0_carry_n_3}),
        .CYINIT(\rx_cdrlock_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\rx_cdrlock_counter_reg_n_0_[4] ,\rx_cdrlock_counter_reg_n_0_[3] ,\rx_cdrlock_counter_reg_n_0_[2] ,\rx_cdrlock_counter_reg_n_0_[1] }));
  CARRY4 rx_cdrlock_counter0_carry__0
       (.CI(rx_cdrlock_counter0_carry_n_0),
        .CO({rx_cdrlock_counter0_carry__0_n_0,rx_cdrlock_counter0_carry__0_n_1,rx_cdrlock_counter0_carry__0_n_2,rx_cdrlock_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\rx_cdrlock_counter_reg_n_0_[8] ,\rx_cdrlock_counter_reg_n_0_[7] ,\rx_cdrlock_counter_reg_n_0_[6] ,\rx_cdrlock_counter_reg_n_0_[5] }));
  CARRY4 rx_cdrlock_counter0_carry__1
       (.CI(rx_cdrlock_counter0_carry__0_n_0),
        .CO({rx_cdrlock_counter0_carry__1_n_0,rx_cdrlock_counter0_carry__1_n_1,rx_cdrlock_counter0_carry__1_n_2,rx_cdrlock_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\rx_cdrlock_counter_reg_n_0_[12] ,\rx_cdrlock_counter_reg_n_0_[11] ,\rx_cdrlock_counter_reg_n_0_[10] ,\rx_cdrlock_counter_reg_n_0_[9] }));
  CARRY4 rx_cdrlock_counter0_carry__2
       (.CI(rx_cdrlock_counter0_carry__1_n_0),
        .CO({rx_cdrlock_counter0_carry__2_n_0,rx_cdrlock_counter0_carry__2_n_1,rx_cdrlock_counter0_carry__2_n_2,rx_cdrlock_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\rx_cdrlock_counter_reg_n_0_[16] ,\rx_cdrlock_counter_reg_n_0_[15] ,\rx_cdrlock_counter_reg_n_0_[14] ,\rx_cdrlock_counter_reg_n_0_[13] }));
  CARRY4 rx_cdrlock_counter0_carry__3
       (.CI(rx_cdrlock_counter0_carry__2_n_0),
        .CO({rx_cdrlock_counter0_carry__3_n_0,rx_cdrlock_counter0_carry__3_n_1,rx_cdrlock_counter0_carry__3_n_2,rx_cdrlock_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\rx_cdrlock_counter_reg_n_0_[20] ,\rx_cdrlock_counter_reg_n_0_[19] ,\rx_cdrlock_counter_reg_n_0_[18] ,\rx_cdrlock_counter_reg_n_0_[17] }));
  CARRY4 rx_cdrlock_counter0_carry__4
       (.CI(rx_cdrlock_counter0_carry__3_n_0),
        .CO({rx_cdrlock_counter0_carry__4_n_0,rx_cdrlock_counter0_carry__4_n_1,rx_cdrlock_counter0_carry__4_n_2,rx_cdrlock_counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\rx_cdrlock_counter_reg_n_0_[24] ,\rx_cdrlock_counter_reg_n_0_[23] ,\rx_cdrlock_counter_reg_n_0_[22] ,\rx_cdrlock_counter_reg_n_0_[21] }));
  CARRY4 rx_cdrlock_counter0_carry__5
       (.CI(rx_cdrlock_counter0_carry__4_n_0),
        .CO({rx_cdrlock_counter0_carry__5_n_0,rx_cdrlock_counter0_carry__5_n_1,rx_cdrlock_counter0_carry__5_n_2,rx_cdrlock_counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\rx_cdrlock_counter_reg_n_0_[28] ,\rx_cdrlock_counter_reg_n_0_[27] ,\rx_cdrlock_counter_reg_n_0_[26] ,\rx_cdrlock_counter_reg_n_0_[25] }));
  CARRY4 rx_cdrlock_counter0_carry__6
       (.CI(rx_cdrlock_counter0_carry__5_n_0),
        .CO({NLW_rx_cdrlock_counter0_carry__6_CO_UNCONNECTED[3:2],rx_cdrlock_counter0_carry__6_n_2,rx_cdrlock_counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_rx_cdrlock_counter0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,\rx_cdrlock_counter_reg_n_0_[31] ,\rx_cdrlock_counter_reg_n_0_[30] ,\rx_cdrlock_counter_reg_n_0_[29] }));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \rx_cdrlock_counter[0]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\rx_cdrlock_counter_reg_n_0_[0] ),
        .O(\rx_cdrlock_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[10]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[10]),
        .O(rx_cdrlock_counter[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[11]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[11]),
        .O(rx_cdrlock_counter[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[12]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[12]),
        .O(rx_cdrlock_counter[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[13]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[13]),
        .O(rx_cdrlock_counter[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[14]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[14]),
        .O(rx_cdrlock_counter[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[15]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[15]),
        .O(rx_cdrlock_counter[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[16]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[16]),
        .O(rx_cdrlock_counter[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[17]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[17]),
        .O(rx_cdrlock_counter[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[18]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[18]),
        .O(rx_cdrlock_counter[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[19]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[19]),
        .O(rx_cdrlock_counter[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[1]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[1]),
        .O(rx_cdrlock_counter[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[20]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[20]),
        .O(rx_cdrlock_counter[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[21]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[21]),
        .O(rx_cdrlock_counter[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[22]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[22]),
        .O(rx_cdrlock_counter[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[23]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[23]),
        .O(rx_cdrlock_counter[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[24]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[24]),
        .O(rx_cdrlock_counter[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[25]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[25]),
        .O(rx_cdrlock_counter[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[26]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[26]),
        .O(rx_cdrlock_counter[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[27]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[27]),
        .O(rx_cdrlock_counter[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[28]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[28]),
        .O(rx_cdrlock_counter[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[29]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[29]),
        .O(rx_cdrlock_counter[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[2]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[2]),
        .O(rx_cdrlock_counter[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[30]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[30]),
        .O(rx_cdrlock_counter[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[31]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[31]),
        .O(rx_cdrlock_counter[31]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rx_cdrlock_counter[31]_i_2 
       (.I0(\rx_cdrlock_counter_reg_n_0_[18] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[19] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[16] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[17] ),
        .I4(\rx_cdrlock_counter[31]_i_6_n_0 ),
        .O(\rx_cdrlock_counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rx_cdrlock_counter[31]_i_3 
       (.I0(\rx_cdrlock_counter_reg_n_0_[26] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[27] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[24] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[25] ),
        .I4(\rx_cdrlock_counter[31]_i_7_n_0 ),
        .O(\rx_cdrlock_counter[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \rx_cdrlock_counter[31]_i_4 
       (.I0(\rx_cdrlock_counter_reg_n_0_[2] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[3] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[0] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[1] ),
        .I4(\rx_cdrlock_counter[31]_i_8_n_0 ),
        .O(\rx_cdrlock_counter[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \rx_cdrlock_counter[31]_i_5 
       (.I0(\rx_cdrlock_counter_reg_n_0_[10] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[11] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[8] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[9] ),
        .I4(\rx_cdrlock_counter[31]_i_9_n_0 ),
        .O(\rx_cdrlock_counter[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_cdrlock_counter[31]_i_6 
       (.I0(\rx_cdrlock_counter_reg_n_0_[21] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[20] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[23] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[22] ),
        .O(\rx_cdrlock_counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_cdrlock_counter[31]_i_7 
       (.I0(\rx_cdrlock_counter_reg_n_0_[29] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[28] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[31] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[30] ),
        .O(\rx_cdrlock_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \rx_cdrlock_counter[31]_i_8 
       (.I0(\rx_cdrlock_counter_reg_n_0_[5] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[4] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[7] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[6] ),
        .O(\rx_cdrlock_counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_cdrlock_counter[31]_i_9 
       (.I0(\rx_cdrlock_counter_reg_n_0_[13] ),
        .I1(\rx_cdrlock_counter_reg_n_0_[12] ),
        .I2(\rx_cdrlock_counter_reg_n_0_[15] ),
        .I3(\rx_cdrlock_counter_reg_n_0_[14] ),
        .O(\rx_cdrlock_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[3]_i_1 
       (.I0(data0[3]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(rx_cdrlock_counter[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[4]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[4]),
        .O(rx_cdrlock_counter[4]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[5]_i_1 
       (.I0(data0[5]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(rx_cdrlock_counter[5]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[6]_i_1 
       (.I0(data0[6]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(rx_cdrlock_counter[6]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[7]_i_1 
       (.I0(data0[7]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(rx_cdrlock_counter[7]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[8]_i_1 
       (.I0(data0[8]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(rx_cdrlock_counter[8]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[9]_i_1 
       (.I0(data0[9]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(rx_cdrlock_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[0] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\rx_cdrlock_counter[0]_i_1_n_0 ),
        .Q(\rx_cdrlock_counter_reg_n_0_[0] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[10] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[10]),
        .Q(\rx_cdrlock_counter_reg_n_0_[10] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[11] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[11]),
        .Q(\rx_cdrlock_counter_reg_n_0_[11] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[12] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[12]),
        .Q(\rx_cdrlock_counter_reg_n_0_[12] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[13] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[13]),
        .Q(\rx_cdrlock_counter_reg_n_0_[13] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[14] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[14]),
        .Q(\rx_cdrlock_counter_reg_n_0_[14] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[15] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[15]),
        .Q(\rx_cdrlock_counter_reg_n_0_[15] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[16] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[16]),
        .Q(\rx_cdrlock_counter_reg_n_0_[16] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[17] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[17]),
        .Q(\rx_cdrlock_counter_reg_n_0_[17] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[18] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[18]),
        .Q(\rx_cdrlock_counter_reg_n_0_[18] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[19] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[19]),
        .Q(\rx_cdrlock_counter_reg_n_0_[19] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[1] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[1]),
        .Q(\rx_cdrlock_counter_reg_n_0_[1] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[20] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[20]),
        .Q(\rx_cdrlock_counter_reg_n_0_[20] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[21] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[21]),
        .Q(\rx_cdrlock_counter_reg_n_0_[21] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[22] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[22]),
        .Q(\rx_cdrlock_counter_reg_n_0_[22] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[23] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[23]),
        .Q(\rx_cdrlock_counter_reg_n_0_[23] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[24] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[24]),
        .Q(\rx_cdrlock_counter_reg_n_0_[24] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[25] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[25]),
        .Q(\rx_cdrlock_counter_reg_n_0_[25] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[26] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[26]),
        .Q(\rx_cdrlock_counter_reg_n_0_[26] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[27] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[27]),
        .Q(\rx_cdrlock_counter_reg_n_0_[27] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[28] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[28]),
        .Q(\rx_cdrlock_counter_reg_n_0_[28] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[29] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[29]),
        .Q(\rx_cdrlock_counter_reg_n_0_[29] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[2] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[2]),
        .Q(\rx_cdrlock_counter_reg_n_0_[2] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[30] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[30]),
        .Q(\rx_cdrlock_counter_reg_n_0_[30] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[31] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[31]),
        .Q(\rx_cdrlock_counter_reg_n_0_[31] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[3] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[3]),
        .Q(\rx_cdrlock_counter_reg_n_0_[3] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[4] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[4]),
        .Q(\rx_cdrlock_counter_reg_n_0_[4] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[5] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[5]),
        .Q(\rx_cdrlock_counter_reg_n_0_[5] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[6] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[6]),
        .Q(\rx_cdrlock_counter_reg_n_0_[6] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[7] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[7]),
        .Q(\rx_cdrlock_counter_reg_n_0_[7] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[8] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[8]),
        .Q(\rx_cdrlock_counter_reg_n_0_[8] ),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[9] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter[9]),
        .Q(\rx_cdrlock_counter_reg_n_0_[9] ),
        .R(gt_rx_reset_i));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    rx_cdrlocked_i_1
       (.I0(rx_cdrlocked_reg_n_0),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(rx_cdrlocked_i_1_n_0));
  FDRE rx_cdrlocked_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlocked_i_1_n_0),
        .Q(rx_cdrlocked_reg_n_0),
        .R(gt_rx_reset_i));
  (* equivalent_register_removal = "no" *) 
  FDRE rxfsm_rxresetdone_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rxfsm_rxresetdone_r),
        .Q(rxfsm_rxresetdone_r2),
        .R(1'b0));
  FDRE rxfsm_rxresetdone_r3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rxfsm_rxresetdone_r2),
        .Q(rx_resetdone_out),
        .R(1'b0));
  FDRE rxfsm_rxresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gt0_rxresetdone_r3_reg_srl3_n_0),
        .Q(rxfsm_rxresetdone_r),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    rxfsm_soft_reset_r_i_1
       (.I0(AR),
        .I1(gtrxreset_pulse),
        .I2(link_reset_r2),
        .O(rxfsm_soft_reset_r_i_1_n_0));
  FDRE rxfsm_soft_reset_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rxfsm_soft_reset_r_i_1_n_0),
        .Q(rxfsm_soft_reset_r),
        .R(1'b0));
  FDRE txfsm_txresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gt0_txresetdone_r3_reg_srl3_n_0),
        .Q(txfsm_txresetdone_r),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_IDLE_AND_VER_GEN
   (gen_v_flop_1_i_0,
    gen_a_i,
    gen_k_flop_0_i_0,
    gen_r_flop_0_i_0,
    DID_VER_reg_0,
    user_clk,
    gen_ver_i,
    \downcounter_r_reg[2]_0 );
  output [2:0]gen_v_flop_1_i_0;
  output gen_a_i;
  output [3:0]gen_k_flop_0_i_0;
  output [3:0]gen_r_flop_0_i_0;
  output DID_VER_reg_0;
  input user_clk;
  input gen_ver_i;
  input \downcounter_r_reg[2]_0 ;

  wire DID_VER_reg_0;
  wire did_ver_i;
  wire [0:2]down_count_r;
  wire \down_count_r[0]_i_1_n_0 ;
  wire \down_count_r[1]_i_1_n_0 ;
  wire \downcounter_r[0]_i_1_n_0 ;
  wire \downcounter_r[1]_i_1_n_0 ;
  wire \downcounter_r[2]_i_1_n_0 ;
  wire \downcounter_r_reg[2]_0 ;
  wire \downcounter_r_reg_n_0_[0] ;
  wire \downcounter_r_reg_n_0_[1] ;
  wire \downcounter_r_reg_n_0_[2] ;
  wire gen_a_flop_c;
  wire gen_a_i;
  wire [3:0]gen_k_flop_0_i_0;
  wire gen_k_flop_c_0;
  wire gen_k_flop_c_1;
  wire gen_k_flop_c_2;
  wire gen_k_flop_c_3;
  wire [3:0]gen_r_flop_0_i_0;
  wire gen_r_flop_c_0;
  wire gen_r_flop_c_2;
  wire gen_r_flop_c_3;
  wire [2:0]gen_v_flop_1_i_0;
  wire gen_ver_i;
  wire insert_ver_c;
  wire p_1_in;
  wire p_2_in;
  wire [0:0]p_3_out;
  wire prev_cycle_gen_ver_r;
  wire recycle_gen_ver_c;
  wire user_clk;
  wire ver_counter_c;

  FDRE DID_VER_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ver_counter_c),
        .Q(did_ver_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \down_count_r[0]_i_1 
       (.I0(gen_r_flop_c_0),
        .I1(p_2_in),
        .O(\down_count_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \down_count_r[1]_i_1 
       (.I0(gen_r_flop_c_0),
        .I1(p_2_in),
        .O(\down_count_r[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \down_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\down_count_r[0]_i_1_n_0 ),
        .Q(down_count_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \down_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\down_count_r[1]_i_1_n_0 ),
        .Q(down_count_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \down_count_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_c_0),
        .Q(down_count_r[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hE1E0)) 
    \downcounter_r[0]_i_1 
       (.I0(\downcounter_r_reg_n_0_[1] ),
        .I1(\downcounter_r_reg_n_0_[2] ),
        .I2(\downcounter_r_reg_n_0_[0] ),
        .I3(down_count_r[0]),
        .O(\downcounter_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hF00E)) 
    \downcounter_r[1]_i_1 
       (.I0(down_count_r[1]),
        .I1(\downcounter_r_reg_n_0_[0] ),
        .I2(\downcounter_r_reg_n_0_[1] ),
        .I3(\downcounter_r_reg_n_0_[2] ),
        .O(\downcounter_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0F0E)) 
    \downcounter_r[2]_i_1 
       (.I0(down_count_r[2]),
        .I1(\downcounter_r_reg_n_0_[0] ),
        .I2(\downcounter_r_reg_n_0_[2] ),
        .I3(\downcounter_r_reg_n_0_[1] ),
        .O(\downcounter_r[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \downcounter_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\downcounter_r[0]_i_1_n_0 ),
        .Q(\downcounter_r_reg_n_0_[0] ),
        .R(\downcounter_r_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \downcounter_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\downcounter_r[1]_i_1_n_0 ),
        .Q(\downcounter_r_reg_n_0_[1] ),
        .R(\downcounter_r_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \downcounter_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\downcounter_r[2]_i_1_n_0 ),
        .Q(\downcounter_r_reg_n_0_[2] ),
        .R(\downcounter_r_reg[2]_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_a_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_a_flop_c),
        .Q(gen_a_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00000007)) 
    gen_a_flop_0_i_i_1
       (.I0(did_ver_i),
        .I1(gen_ver_i),
        .I2(\downcounter_r_reg_n_0_[0] ),
        .I3(\downcounter_r_reg_n_0_[2] ),
        .I4(\downcounter_r_reg_n_0_[1] ),
        .O(gen_a_flop_c));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_k_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_c_3),
        .Q(gen_k_flop_0_i_0[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF555455545554)) 
    gen_k_flop_0_i_i_1
       (.I0(p_1_in),
        .I1(\downcounter_r_reg_n_0_[1] ),
        .I2(\downcounter_r_reg_n_0_[2] ),
        .I3(\downcounter_r_reg_n_0_[0] ),
        .I4(did_ver_i),
        .I5(gen_ver_i),
        .O(gen_k_flop_c_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_k_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_c_2),
        .Q(gen_k_flop_0_i_0[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    gen_k_flop_1_i_i_1
       (.I0(gen_r_flop_c_2),
        .O(gen_k_flop_c_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_k_flop_2_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_c_1),
        .Q(gen_k_flop_0_i_0[1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    gen_k_flop_2_i_i_1
       (.I0(p_2_in),
        .O(gen_k_flop_c_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_k_flop_3_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_c_0),
        .Q(gen_k_flop_0_i_0[0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT1 #(
    .INIT(2'h1)) 
    gen_k_flop_3_i_i_1
       (.I0(gen_r_flop_c_0),
        .O(gen_k_flop_c_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_r_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_r_flop_c_3),
        .Q(gen_r_flop_0_i_0[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2A2A2A2A2A2A2A00)) 
    gen_r_flop_0_i_i_1
       (.I0(p_1_in),
        .I1(gen_ver_i),
        .I2(did_ver_i),
        .I3(\downcounter_r_reg_n_0_[0] ),
        .I4(\downcounter_r_reg_n_0_[2] ),
        .I5(\downcounter_r_reg_n_0_[1] ),
        .O(gen_r_flop_c_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_r_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_r_flop_c_2),
        .Q(gen_r_flop_0_i_0[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_r_flop_2_i
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_in),
        .Q(gen_r_flop_0_i_0[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_r_flop_3_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_r_flop_c_0),
        .Q(gen_r_flop_0_i_0[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_v_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(recycle_gen_ver_c),
        .Q(gen_v_flop_1_i_0[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gen_v_flop_1_i_i_1
       (.I0(did_ver_i),
        .I1(gen_ver_i),
        .O(recycle_gen_ver_c));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_v_flop_2_i
       (.C(user_clk),
        .CE(1'b1),
        .D(recycle_gen_ver_c),
        .Q(gen_v_flop_1_i_0[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_v_flop_3_i
       (.C(user_clk),
        .CE(1'b1),
        .D(recycle_gen_ver_c),
        .Q(gen_v_flop_1_i_0[0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0EF1)) 
    \lfsr_reg[3]_i_1 
       (.I0(p_2_in),
        .I1(gen_r_flop_c_2),
        .I2(gen_r_flop_c_0),
        .I3(p_1_in),
        .O(p_3_out));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_r_flop_c_2),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_in),
        .Q(gen_r_flop_c_2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_r_flop_c_0),
        .Q(p_2_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_3_out),
        .Q(gen_r_flop_c_0),
        .R(1'b0));
  FDRE prev_cycle_gen_ver_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_ver_i),
        .Q(prev_cycle_gen_ver_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \txver_count_r_reg[6]_srl7_i_1 
       (.I0(did_ver_i),
        .I1(gen_ver_i),
        .O(DID_VER_reg_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "SRL16" *) 
  (* srl_name = "inst/\aurora_global_logic_i/idle_and_ver_gen_i/ver_counter_i " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    ver_counter_i
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(insert_ver_c),
        .Q(ver_counter_c));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    ver_counter_i_i_1
       (.I0(prev_cycle_gen_ver_r),
        .I1(did_ver_i),
        .I2(gen_ver_i),
        .O(insert_ver_c));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_LANE_INIT_SM_4BYTE
   (lane_up,
    ready_r,
    align_r_reg_0,
    gen_spa_i,
    rst_r_reg_0,
    enable_err_detect_i,
    rx_polarity_i,
    GEN_SP,
    ENABLE_ERR_DETECT_reg_0,
    ready_r_reg_0,
    SR,
    user_clk,
    ready_r_reg0,
    counter4_r0,
    \counter3_r_reg[3]_0 ,
    gen_spa_r,
    rx_realign_i,
    RX_NEG,
    RXNOTINTABLE,
    RXDISPERR,
    reset_count_r_reg_0,
    first_v_received_r,
    D);
  output lane_up;
  output ready_r;
  output align_r_reg_0;
  output gen_spa_i;
  output rst_r_reg_0;
  output enable_err_detect_i;
  output rx_polarity_i;
  output GEN_SP;
  output ENABLE_ERR_DETECT_reg_0;
  output ready_r_reg_0;
  input [0:0]SR;
  input user_clk;
  input ready_r_reg0;
  input counter4_r0;
  input \counter3_r_reg[3]_0 ;
  input gen_spa_r;
  input rx_realign_i;
  input RX_NEG;
  input [1:0]RXNOTINTABLE;
  input [1:0]RXDISPERR;
  input reset_count_r_reg_0;
  input first_v_received_r;
  input [3:0]D;

  wire [3:0]D;
  wire ENABLE_ERR_DETECT0;
  wire ENABLE_ERR_DETECT_reg_0;
  wire GEN_SP;
  wire [1:0]RXDISPERR;
  wire [1:0]RXNOTINTABLE;
  wire \RX_CHAR_IS_COMMA_R_reg_n_0_[0] ;
  wire \RX_CHAR_IS_COMMA_R_reg_n_0_[3] ;
  wire RX_NEG;
  wire [0:0]SR;
  wire align_r_reg_0;
  wire begin_r;
  wire begin_r_i_2_n_0;
  wire consecutive_commas_r;
  wire consecutive_commas_r0;
  wire count_128d_done_r;
  wire count_32d_done_r;
  wire count_8d_done_r;
  wire counter1_r0;
  wire \counter1_r[0]_i_3_n_0 ;
  wire \counter1_r_reg_n_0_[1] ;
  wire \counter1_r_reg_n_0_[3] ;
  wire \counter1_r_reg_n_0_[5] ;
  wire \counter1_r_reg_n_0_[6] ;
  wire \counter1_r_reg_n_0_[7] ;
  wire \counter2_r_reg[14]_srl14_n_0 ;
  wire \counter2_r_reg_n_0_[15] ;
  wire \counter3_r_reg[2]_srl3_n_0 ;
  wire \counter3_r_reg[3]_0 ;
  wire \counter3_r_reg_n_0_[3] ;
  wire counter4_r0;
  wire \counter4_r_reg[14]_srl15_n_0 ;
  wire \counter4_r_reg_n_0_[15] ;
  wire \counter5_r_reg[14]_srl15_i_1_n_0 ;
  wire \counter5_r_reg[14]_srl15_n_0 ;
  wire \counter5_r_reg_n_0_[15] ;
  wire do_watchdog_count_r;
  wire do_watchdog_count_r0;
  wire enable_err_detect_i;
  wire first_v_received_r;
  wire gen_spa_i;
  wire gen_spa_r;
  wire lane_up;
  wire next_ack_c;
  wire next_align_c;
  wire next_begin_c;
  wire next_polarity_c;
  wire next_ready_c;
  wire next_realign_c;
  wire next_rst_c;
  wire [7:0]p_0_in;
  wire p_0_in2_in;
  wire p_1_in;
  wire polarity_r;
  wire prev_count_128d_done_r;
  wire ready_r;
  wire ready_r_reg0;
  wire ready_r_reg_0;
  wire realign_r;
  wire reset_count_r;
  wire reset_count_r0;
  wire reset_count_r_i_2_n_0;
  wire reset_count_r_reg_0;
  wire rst_r_reg_0;
  wire rx_polarity_i;
  wire rx_polarity_r_i_1_n_0;
  wire rx_realign_i;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    ENABLE_ERR_DETECT_i_1
       (.I0(ready_r),
        .I1(gen_spa_i),
        .O(ENABLE_ERR_DETECT0));
  FDRE ENABLE_ERR_DETECT_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ENABLE_ERR_DETECT0),
        .Q(enable_err_detect_i),
        .R(1'b0));
  FDRE \RX_CHAR_IS_COMMA_R_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\RX_CHAR_IS_COMMA_R_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \RX_CHAR_IS_COMMA_R_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \RX_CHAR_IS_COMMA_R_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE \RX_CHAR_IS_COMMA_R_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\RX_CHAR_IS_COMMA_R_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h444444444FFF4444)) 
    ack_r_i_1
       (.I0(RX_NEG),
        .I1(polarity_r),
        .I2(\counter3_r_reg_n_0_[3] ),
        .I3(\counter2_r_reg_n_0_[15] ),
        .I4(gen_spa_i),
        .I5(\counter5_r_reg_n_0_[15] ),
        .O(next_ack_c));
  FDRE ack_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ack_c),
        .Q(gen_spa_i),
        .R(ready_r_reg0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    align_r_i_2
       (.I0(count_8d_done_r),
        .I1(rst_r_reg_0),
        .I2(count_128d_done_r),
        .I3(align_r_reg_0),
        .O(next_align_c));
  FDRE align_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_align_c),
        .Q(align_r_reg_0),
        .R(ready_r_reg0));
  LUT3 #(
    .INIT(8'hF8)) 
    begin_r_i_1
       (.I0(polarity_r),
        .I1(RX_NEG),
        .I2(begin_r_i_2_n_0),
        .O(next_begin_c));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    begin_r_i_2
       (.I0(\counter4_r_reg_n_0_[15] ),
        .I1(ready_r),
        .I2(gen_spa_i),
        .I3(\counter5_r_reg_n_0_[15] ),
        .I4(rx_realign_i),
        .I5(realign_r),
        .O(begin_r_i_2_n_0));
  FDSE begin_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_begin_c),
        .Q(begin_r),
        .S(ready_r_reg0));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    consecutive_commas_r_i_1
       (.I0(\RX_CHAR_IS_COMMA_R_reg_n_0_[0] ),
        .I1(\RX_CHAR_IS_COMMA_R_reg_n_0_[3] ),
        .I2(align_r_reg_0),
        .I3(p_0_in2_in),
        .I4(p_1_in),
        .O(consecutive_commas_r0));
  FDRE consecutive_commas_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(consecutive_commas_r0),
        .Q(consecutive_commas_r),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \counter1_r[0]_i_1 
       (.I0(reset_count_r),
        .I1(ready_r),
        .O(counter1_r0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \counter1_r[0]_i_2 
       (.I0(\counter1_r_reg_n_0_[1] ),
        .I1(\counter1_r[0]_i_3_n_0 ),
        .I2(count_128d_done_r),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter1_r[0]_i_3 
       (.I0(\counter1_r_reg_n_0_[3] ),
        .I1(\counter1_r_reg_n_0_[5] ),
        .I2(\counter1_r_reg_n_0_[7] ),
        .I3(\counter1_r_reg_n_0_[6] ),
        .I4(count_8d_done_r),
        .I5(count_32d_done_r),
        .O(\counter1_r[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \counter1_r[1]_i_1 
       (.I0(\counter1_r[0]_i_3_n_0 ),
        .I1(\counter1_r_reg_n_0_[1] ),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter1_r[2]_i_1 
       (.I0(\counter1_r_reg_n_0_[3] ),
        .I1(\counter1_r_reg_n_0_[5] ),
        .I2(\counter1_r_reg_n_0_[7] ),
        .I3(\counter1_r_reg_n_0_[6] ),
        .I4(count_8d_done_r),
        .I5(count_32d_done_r),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter1_r[3]_i_1 
       (.I0(count_8d_done_r),
        .I1(\counter1_r_reg_n_0_[6] ),
        .I2(\counter1_r_reg_n_0_[7] ),
        .I3(\counter1_r_reg_n_0_[5] ),
        .I4(\counter1_r_reg_n_0_[3] ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter1_r[4]_i_1 
       (.I0(\counter1_r_reg_n_0_[5] ),
        .I1(\counter1_r_reg_n_0_[7] ),
        .I2(\counter1_r_reg_n_0_[6] ),
        .I3(count_8d_done_r),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter1_r[5]_i_1 
       (.I0(\counter1_r_reg_n_0_[6] ),
        .I1(\counter1_r_reg_n_0_[7] ),
        .I2(\counter1_r_reg_n_0_[5] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter1_r[6]_i_1 
       (.I0(\counter1_r_reg_n_0_[7] ),
        .I1(\counter1_r_reg_n_0_[6] ),
        .O(p_0_in[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1_r[7]_i_1 
       (.I0(\counter1_r_reg_n_0_[7] ),
        .O(p_0_in[0]));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[0] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[7]),
        .Q(count_128d_done_r),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[1] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[6]),
        .Q(\counter1_r_reg_n_0_[1] ),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[2] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[5]),
        .Q(count_32d_done_r),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[3] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[4]),
        .Q(\counter1_r_reg_n_0_[3] ),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[4] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[3]),
        .Q(count_8d_done_r),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[5] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[2]),
        .Q(\counter1_r_reg_n_0_[5] ),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[6] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[1]),
        .Q(\counter1_r_reg_n_0_[6] ),
        .R(counter1_r0));
  FDSE #(
    .INIT(1'b1)) 
    \counter1_r_reg[7] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[0]),
        .Q(\counter1_r_reg_n_0_[7] ),
        .S(counter1_r0));
  (* srl_bus_name = "inst/\aurora_aurora_lane_4byte_0_i/aurora_lane_init_sm_4byte_i/counter2_r_reg " *) 
  (* srl_name = "inst/\aurora_aurora_lane_4byte_0_i/aurora_lane_init_sm_4byte_i/counter2_r_reg[14]_srl14 " *) 
  SRL16E \counter2_r_reg[14]_srl14 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(gen_spa_r),
        .Q(\counter2_r_reg[14]_srl14_n_0 ));
  FDRE \counter2_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\counter2_r_reg[14]_srl14_n_0 ),
        .Q(\counter2_r_reg_n_0_[15] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\aurora_aurora_lane_4byte_0_i/aurora_lane_init_sm_4byte_i/counter3_r_reg " *) 
  (* srl_name = "inst/\aurora_aurora_lane_4byte_0_i/aurora_lane_init_sm_4byte_i/counter3_r_reg[2]_srl3 " *) 
  SRL16E \counter3_r_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\counter3_r_reg[3]_0 ),
        .CLK(user_clk),
        .D(gen_spa_i),
        .Q(\counter3_r_reg[2]_srl3_n_0 ));
  FDRE \counter3_r_reg[3] 
       (.C(user_clk),
        .CE(\counter3_r_reg[3]_0 ),
        .D(\counter3_r_reg[2]_srl3_n_0 ),
        .Q(\counter3_r_reg_n_0_[3] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\aurora_aurora_lane_4byte_0_i/aurora_lane_init_sm_4byte_i/counter4_r_reg " *) 
  (* srl_name = "inst/\aurora_aurora_lane_4byte_0_i/aurora_lane_init_sm_4byte_i/counter4_r_reg[14]_srl15 " *) 
  SRL16E \counter4_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(counter4_r0),
        .CLK(user_clk),
        .D(ready_r),
        .Q(\counter4_r_reg[14]_srl15_n_0 ));
  FDRE \counter4_r_reg[15] 
       (.C(user_clk),
        .CE(counter4_r0),
        .D(\counter4_r_reg[14]_srl15_n_0 ),
        .Q(\counter4_r_reg_n_0_[15] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\aurora_aurora_lane_4byte_0_i/aurora_lane_init_sm_4byte_i/counter5_r_reg " *) 
  (* srl_name = "inst/\aurora_aurora_lane_4byte_0_i/aurora_lane_init_sm_4byte_i/counter5_r_reg[14]_srl15 " *) 
  SRL16E \counter5_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(\counter5_r_reg[14]_srl15_i_1_n_0 ),
        .CLK(user_clk),
        .D(gen_spa_i),
        .Q(\counter5_r_reg[14]_srl15_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \counter5_r_reg[14]_srl15_i_1 
       (.I0(do_watchdog_count_r),
        .I1(gen_spa_i),
        .O(\counter5_r_reg[14]_srl15_i_1_n_0 ));
  FDRE \counter5_r_reg[15] 
       (.C(user_clk),
        .CE(\counter5_r_reg[14]_srl15_i_1_n_0 ),
        .D(\counter5_r_reg[14]_srl15_n_0 ),
        .Q(\counter5_r_reg_n_0_[15] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    do_watchdog_count_r_i_1
       (.I0(count_128d_done_r),
        .I1(prev_count_128d_done_r),
        .O(do_watchdog_count_r0));
  FDRE do_watchdog_count_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(do_watchdog_count_r0),
        .Q(do_watchdog_count_r),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    gen_sp_r_i_1
       (.I0(gen_spa_i),
        .I1(ready_r),
        .O(GEN_SP));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    lane_up_flop_i
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r),
        .Q(lane_up),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \left_align_select_r[0]_i_2 
       (.I0(ready_r),
        .I1(align_r_reg_0),
        .I2(first_v_received_r),
        .O(ready_r_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    polarity_r_i_1
       (.I0(rx_realign_i),
        .I1(count_32d_done_r),
        .I2(realign_r),
        .O(next_polarity_c));
  FDRE polarity_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_polarity_c),
        .Q(polarity_r),
        .R(ready_r_reg0));
  FDRE prev_count_128d_done_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(count_128d_done_r),
        .Q(prev_count_128d_done_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0080FFFF00800080)) 
    ready_r_i_1
       (.I0(\counter3_r_reg_n_0_[3] ),
        .I1(\counter2_r_reg_n_0_[15] ),
        .I2(gen_spa_i),
        .I3(\counter5_r_reg_n_0_[15] ),
        .I4(\counter4_r_reg_n_0_[15] ),
        .I5(ready_r),
        .O(next_ready_c));
  FDRE ready_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ready_c),
        .Q(ready_r),
        .R(ready_r_reg0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFF020202)) 
    realign_r_i_1
       (.I0(realign_r),
        .I1(rx_realign_i),
        .I2(count_32d_done_r),
        .I3(count_128d_done_r),
        .I4(align_r_reg_0),
        .O(next_realign_c));
  FDRE realign_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_realign_c),
        .Q(realign_r),
        .R(ready_r_reg0));
  LUT6 #(
    .INIT(64'hFFAAFFAAFFFEFFFF)) 
    reset_count_r_i_1
       (.I0(reset_count_r_i_2_n_0),
        .I1(RXNOTINTABLE[1]),
        .I2(RXDISPERR[1]),
        .I3(SR),
        .I4(consecutive_commas_r),
        .I5(rst_r_reg_0),
        .O(reset_count_r0));
  LUT6 #(
    .INIT(64'hFFFFFFFF77763332)) 
    reset_count_r_i_2
       (.I0(begin_r),
        .I1(rst_r_reg_0),
        .I2(RXDISPERR[0]),
        .I3(RXNOTINTABLE[0]),
        .I4(count_8d_done_r),
        .I5(reset_count_r_reg_0),
        .O(reset_count_r_i_2_n_0));
  FDRE reset_count_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(reset_count_r0),
        .Q(reset_count_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    rst_r_i_1
       (.I0(count_8d_done_r),
        .I1(rst_r_reg_0),
        .I2(begin_r),
        .O(next_rst_c));
  FDRE rst_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_rst_c),
        .Q(rst_r_reg_0),
        .R(ready_r_reg0));
  LUT3 #(
    .INIT(8'h78)) 
    rx_polarity_r_i_1
       (.I0(polarity_r),
        .I1(RX_NEG),
        .I2(rx_polarity_i),
        .O(rx_polarity_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_polarity_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_polarity_r_i_1_n_0),
        .Q(rx_polarity_i),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \soft_err_r[0]_i_1 
       (.I0(enable_err_detect_i),
        .O(ENABLE_ERR_DETECT_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_LEFT_ALIGN_CONTROL
   (MUX_SELECT,
    mux_select_c,
    user_clk);
  output [0:0]MUX_SELECT;
  input [0:0]mux_select_c;
  input user_clk;

  wire [0:0]MUX_SELECT;
  wire [0:0]mux_select_c;
  wire user_clk;

  FDRE \MUX_SELECT_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(mux_select_c),
        .Q(MUX_SELECT),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_LEFT_ALIGN_MUX
   (\MUXED_DATA_reg[0]_0 ,
    Q,
    MUX_SELECT,
    user_clk);
  output [31:0]\MUXED_DATA_reg[0]_0 ;
  input [31:0]Q;
  input [0:0]MUX_SELECT;
  input user_clk;

  wire [31:0]\MUXED_DATA_reg[0]_0 ;
  wire [0:0]MUX_SELECT;
  wire [31:0]Q;
  wire [0:15]muxed_data_c;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[0]_i_1 
       (.I0(Q[15]),
        .I1(MUX_SELECT),
        .I2(Q[31]),
        .O(muxed_data_c[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[10]_i_1 
       (.I0(Q[5]),
        .I1(MUX_SELECT),
        .I2(Q[21]),
        .O(muxed_data_c[10]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[11]_i_1 
       (.I0(Q[4]),
        .I1(MUX_SELECT),
        .I2(Q[20]),
        .O(muxed_data_c[11]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[12]_i_1 
       (.I0(Q[3]),
        .I1(MUX_SELECT),
        .I2(Q[19]),
        .O(muxed_data_c[12]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[13]_i_1 
       (.I0(Q[2]),
        .I1(MUX_SELECT),
        .I2(Q[18]),
        .O(muxed_data_c[13]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[14]_i_1 
       (.I0(Q[1]),
        .I1(MUX_SELECT),
        .I2(Q[17]),
        .O(muxed_data_c[14]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[15]_i_1 
       (.I0(Q[0]),
        .I1(MUX_SELECT),
        .I2(Q[16]),
        .O(muxed_data_c[15]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[1]_i_1 
       (.I0(Q[14]),
        .I1(MUX_SELECT),
        .I2(Q[30]),
        .O(muxed_data_c[1]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[2]_i_1 
       (.I0(Q[13]),
        .I1(MUX_SELECT),
        .I2(Q[29]),
        .O(muxed_data_c[2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[3]_i_1 
       (.I0(Q[12]),
        .I1(MUX_SELECT),
        .I2(Q[28]),
        .O(muxed_data_c[3]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[4]_i_1 
       (.I0(Q[11]),
        .I1(MUX_SELECT),
        .I2(Q[27]),
        .O(muxed_data_c[4]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[5]_i_1 
       (.I0(Q[10]),
        .I1(MUX_SELECT),
        .I2(Q[26]),
        .O(muxed_data_c[5]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[6]_i_1 
       (.I0(Q[9]),
        .I1(MUX_SELECT),
        .I2(Q[25]),
        .O(muxed_data_c[6]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[7]_i_1 
       (.I0(Q[8]),
        .I1(MUX_SELECT),
        .I2(Q[24]),
        .O(muxed_data_c[7]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[8]_i_1 
       (.I0(Q[7]),
        .I1(MUX_SELECT),
        .I2(Q[23]),
        .O(muxed_data_c[8]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[9]_i_1 
       (.I0(Q[6]),
        .I1(MUX_SELECT),
        .I2(Q[22]),
        .O(muxed_data_c[9]));
  FDRE \MUXED_DATA_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[0]),
        .Q(\MUXED_DATA_reg[0]_0 [31]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[10]),
        .Q(\MUXED_DATA_reg[0]_0 [21]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[11]),
        .Q(\MUXED_DATA_reg[0]_0 [20]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[12]),
        .Q(\MUXED_DATA_reg[0]_0 [19]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[13]),
        .Q(\MUXED_DATA_reg[0]_0 [18]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[14]),
        .Q(\MUXED_DATA_reg[0]_0 [17]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[15]),
        .Q(\MUXED_DATA_reg[0]_0 [16]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(\MUXED_DATA_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(\MUXED_DATA_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(\MUXED_DATA_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(\MUXED_DATA_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[1]),
        .Q(\MUXED_DATA_reg[0]_0 [30]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(\MUXED_DATA_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(\MUXED_DATA_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(\MUXED_DATA_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(\MUXED_DATA_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(\MUXED_DATA_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(\MUXED_DATA_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(\MUXED_DATA_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(\MUXED_DATA_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(\MUXED_DATA_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(\MUXED_DATA_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[2]),
        .Q(\MUXED_DATA_reg[0]_0 [29]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\MUXED_DATA_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\MUXED_DATA_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[3]),
        .Q(\MUXED_DATA_reg[0]_0 [28]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[4]),
        .Q(\MUXED_DATA_reg[0]_0 [27]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[5]),
        .Q(\MUXED_DATA_reg[0]_0 [26]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[6]),
        .Q(\MUXED_DATA_reg[0]_0 [25]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[7]),
        .Q(\MUXED_DATA_reg[0]_0 [24]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[8]),
        .Q(\MUXED_DATA_reg[0]_0 [23]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[9]),
        .Q(\MUXED_DATA_reg[0]_0 [22]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_LL_TO_AXI
   (m_axi_rx_tkeep,
    rx_eof,
    \m_axi_rx_tkeep[1] );
  output [2:0]m_axi_rx_tkeep;
  input rx_eof;
  input [1:0]\m_axi_rx_tkeep[1] ;

  wire [2:0]m_axi_rx_tkeep;
  wire [1:0]\m_axi_rx_tkeep[1] ;
  wire rx_eof;

  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \m_axi_rx_tkeep[1]_INST_0 
       (.I0(rx_eof),
        .I1(\m_axi_rx_tkeep[1] [0]),
        .I2(\m_axi_rx_tkeep[1] [1]),
        .O(m_axi_rx_tkeep[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axi_rx_tkeep[2]_INST_0 
       (.I0(rx_eof),
        .I1(\m_axi_rx_tkeep[1] [1]),
        .O(m_axi_rx_tkeep[1]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \m_axi_rx_tkeep[3]_INST_0 
       (.I0(rx_eof),
        .I1(\m_axi_rx_tkeep[1] [1]),
        .I2(\m_axi_rx_tkeep[1] [0]),
        .O(m_axi_rx_tkeep[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_OUTPUT_MUX
   (m_axi_rx_tdata,
    Q,
    user_clk,
    \OUTPUT_DATA_reg[16]_0 ,
    OUTPUT_SELECT);
  output [0:31]m_axi_rx_tdata;
  input [31:0]Q;
  input user_clk;
  input [15:0]\OUTPUT_DATA_reg[16]_0 ;
  input OUTPUT_SELECT;

  wire [15:0]\OUTPUT_DATA_reg[16]_0 ;
  wire OUTPUT_SELECT;
  wire [31:0]Q;
  wire [0:31]m_axi_rx_tdata;
  wire [16:31]output_data_c;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[16]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [15]),
        .I1(OUTPUT_SELECT),
        .I2(Q[15]),
        .O(output_data_c[16]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[17]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [14]),
        .I1(OUTPUT_SELECT),
        .I2(Q[14]),
        .O(output_data_c[17]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[18]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [13]),
        .I1(OUTPUT_SELECT),
        .I2(Q[13]),
        .O(output_data_c[18]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[19]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [12]),
        .I1(OUTPUT_SELECT),
        .I2(Q[12]),
        .O(output_data_c[19]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[20]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [11]),
        .I1(OUTPUT_SELECT),
        .I2(Q[11]),
        .O(output_data_c[20]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[21]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [10]),
        .I1(OUTPUT_SELECT),
        .I2(Q[10]),
        .O(output_data_c[21]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[22]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [9]),
        .I1(OUTPUT_SELECT),
        .I2(Q[9]),
        .O(output_data_c[22]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[23]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [8]),
        .I1(OUTPUT_SELECT),
        .I2(Q[8]),
        .O(output_data_c[23]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[24]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [7]),
        .I1(OUTPUT_SELECT),
        .I2(Q[7]),
        .O(output_data_c[24]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[25]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [6]),
        .I1(OUTPUT_SELECT),
        .I2(Q[6]),
        .O(output_data_c[25]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[26]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [5]),
        .I1(OUTPUT_SELECT),
        .I2(Q[5]),
        .O(output_data_c[26]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[27]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [4]),
        .I1(OUTPUT_SELECT),
        .I2(Q[4]),
        .O(output_data_c[27]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[28]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [3]),
        .I1(OUTPUT_SELECT),
        .I2(Q[3]),
        .O(output_data_c[28]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[29]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [2]),
        .I1(OUTPUT_SELECT),
        .I2(Q[2]),
        .O(output_data_c[29]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[30]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [1]),
        .I1(OUTPUT_SELECT),
        .I2(Q[1]),
        .O(output_data_c[30]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[31]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [0]),
        .I1(OUTPUT_SELECT),
        .I2(Q[0]),
        .O(output_data_c[31]));
  FDRE \OUTPUT_DATA_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[31]),
        .Q(m_axi_rx_tdata[0]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[21]),
        .Q(m_axi_rx_tdata[10]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(m_axi_rx_tdata[11]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[19]),
        .Q(m_axi_rx_tdata[12]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[18]),
        .Q(m_axi_rx_tdata[13]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[17]),
        .Q(m_axi_rx_tdata[14]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[16]),
        .Q(m_axi_rx_tdata[15]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[16]),
        .Q(m_axi_rx_tdata[16]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[17]),
        .Q(m_axi_rx_tdata[17]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[18]),
        .Q(m_axi_rx_tdata[18]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[19]),
        .Q(m_axi_rx_tdata[19]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[30]),
        .Q(m_axi_rx_tdata[1]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[20]),
        .Q(m_axi_rx_tdata[20]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[21]),
        .Q(m_axi_rx_tdata[21]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[22]),
        .Q(m_axi_rx_tdata[22]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[23]),
        .Q(m_axi_rx_tdata[23]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[24]),
        .Q(m_axi_rx_tdata[24]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[25]),
        .Q(m_axi_rx_tdata[25]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[26]),
        .Q(m_axi_rx_tdata[26]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[27]),
        .Q(m_axi_rx_tdata[27]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[28]),
        .Q(m_axi_rx_tdata[28]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[29]),
        .Q(m_axi_rx_tdata[29]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[29]),
        .Q(m_axi_rx_tdata[2]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[30]),
        .Q(m_axi_rx_tdata[30]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[31]),
        .Q(m_axi_rx_tdata[31]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[28]),
        .Q(m_axi_rx_tdata[3]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[27]),
        .Q(m_axi_rx_tdata[4]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[26]),
        .Q(m_axi_rx_tdata[5]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[25]),
        .Q(m_axi_rx_tdata[6]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[24]),
        .Q(m_axi_rx_tdata[7]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(m_axi_rx_tdata[8]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(m_axi_rx_tdata[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_OUTPUT_SWITCH_CONTROL
   (OUTPUT_SELECT,
    output_select_c,
    user_clk);
  output OUTPUT_SELECT;
  input [0:0]output_select_c;
  input user_clk;

  wire OUTPUT_SELECT;
  wire [0:0]output_select_c;
  wire user_clk;

  FDRE \OUTPUT_SELECT_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_select_c),
        .Q(OUTPUT_SELECT),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_RESET_LOGIC
   (SYSTEM_RESET_reg_0,
    wait_for_lane_up_r0,
    new_pkt_r,
    out,
    link_reset_r,
    init_clk_in,
    user_clk,
    tx_lock,
    gt_txresetdone_r2_reg_0,
    gt_rxresetdone_r2_reg_0,
    reset_channel_i,
    channel_up,
    s_axi_tx_tlast,
    s_axi_tx_tvalid,
    tx_dst_rdy,
    new_pkt_r_reg);
  output SYSTEM_RESET_reg_0;
  output wait_for_lane_up_r0;
  output new_pkt_r;
  input out;
  input link_reset_r;
  input init_clk_in;
  input user_clk;
  input tx_lock;
  input gt_txresetdone_r2_reg_0;
  input gt_rxresetdone_r2_reg_0;
  input reset_channel_i;
  input channel_up;
  input s_axi_tx_tlast;
  input s_axi_tx_tvalid;
  input tx_dst_rdy;
  input new_pkt_r_reg;

  wire SYSTEM_RESET0_n_0;
  wire SYSTEM_RESET_reg_0;
  wire channel_up;
  wire gt_rxresetdone_r;
  wire gt_rxresetdone_r2;
  wire gt_rxresetdone_r2_reg_0;
  wire gt_rxresetdone_r3;
  wire gt_txresetdone_r;
  wire gt_txresetdone_r2;
  wire gt_txresetdone_r2_reg_0;
  wire gt_txresetdone_r3;
  wire init_clk_in;
  wire link_reset_r;
  wire link_reset_sync;
  wire new_pkt_r;
  wire new_pkt_r_reg;
  wire out;
  wire reset_channel_i;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tvalid;
  wire tx_dst_rdy;
  wire tx_lock;
  wire tx_lock_comb_r;
  wire tx_lock_sync;
  wire user_clk;
  wire wait_for_lane_up_r0;

  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    SYSTEM_RESET0
       (.I0(out),
        .I1(gt_rxresetdone_r3),
        .I2(gt_txresetdone_r3),
        .I3(link_reset_sync),
        .I4(tx_lock_sync),
        .O(SYSTEM_RESET0_n_0));
  FDRE SYSTEM_RESET_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(SYSTEM_RESET0_n_0),
        .Q(SYSTEM_RESET_reg_0),
        .R(1'b0));
  FDCE gt_rxresetdone_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(gt_rxresetdone_r2_reg_0),
        .D(gt_rxresetdone_r),
        .Q(gt_rxresetdone_r2));
  FDRE gt_rxresetdone_r3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gt_rxresetdone_r2),
        .Q(gt_rxresetdone_r3),
        .R(1'b0));
  FDCE gt_rxresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(gt_rxresetdone_r2_reg_0),
        .D(1'b1),
        .Q(gt_rxresetdone_r));
  FDCE gt_txresetdone_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(gt_txresetdone_r2_reg_0),
        .D(gt_txresetdone_r),
        .Q(gt_txresetdone_r2));
  FDRE gt_txresetdone_r3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gt_txresetdone_r2),
        .Q(gt_txresetdone_r3),
        .R(1'b0));
  FDCE gt_txresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(gt_txresetdone_r2_reg_0),
        .D(1'b1),
        .Q(gt_txresetdone_r));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_16 link_reset_cdc_sync
       (.init_clk_in(init_clk_in),
        .link_reset_r(link_reset_r),
        .out(link_reset_sync),
        .user_clk(user_clk));
  LUT6 #(
    .INIT(64'h4444044400000400)) 
    new_pkt_r_i_1
       (.I0(SYSTEM_RESET_reg_0),
        .I1(channel_up),
        .I2(s_axi_tx_tlast),
        .I3(s_axi_tx_tvalid),
        .I4(tx_dst_rdy),
        .I5(new_pkt_r_reg),
        .O(new_pkt_r));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_17 tx_lock_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(tx_lock_sync),
        .tx_lock_comb_r(tx_lock_comb_r),
        .user_clk(user_clk));
  FDRE tx_lock_comb_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(tx_lock),
        .Q(tx_lock_comb_r),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    verify_r_i_1
       (.I0(SYSTEM_RESET_reg_0),
        .I1(reset_channel_i),
        .O(wait_for_lane_up_r0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_RX_LL
   (rx_eof,
    frame_err,
    m_axi_rx_tlast,
    m_axi_rx_tvalid,
    \RX_REM_reg[0] ,
    m_axi_rx_tdata,
    m_axi_ufc_rx_tdata,
    m_axi_ufc_rx_tkeep,
    m_axi_ufc_rx_tlast,
    m_axi_ufc_rx_tvalid,
    rx_ll_rst,
    load_ufc_control_code_r_reg,
    user_clk,
    Q,
    RX_SCP0,
    \PDU_SCP_reg[1] ,
    RX_ECP0,
    \PDU_ECP_reg[1] ,
    p_3_out,
    \stage_1_data_r_reg[0] ,
    rx_pe_data_striped_i,
    \stage_1_data_r_reg[11] ,
    \stage_1_data_r_reg[16] ,
    \stage_1_data_r_reg[27] ,
    start_rx_i,
    \stage_1_count_value_r_reg[0] ,
    \stage_1_count_value_r_reg[1] ,
    \stage_1_count_value_r_reg[2] ,
    \stage_1_count_value_r_reg[3] ,
    D);
  output rx_eof;
  output frame_err;
  output m_axi_rx_tlast;
  output m_axi_rx_tvalid;
  output [1:0]\RX_REM_reg[0] ;
  output [0:31]m_axi_rx_tdata;
  output [0:31]m_axi_ufc_rx_tdata;
  output [0:0]m_axi_ufc_rx_tkeep;
  output m_axi_ufc_rx_tlast;
  output m_axi_ufc_rx_tvalid;
  input rx_ll_rst;
  input load_ufc_control_code_r_reg;
  input user_clk;
  input [1:0]Q;
  input RX_SCP0;
  input \PDU_SCP_reg[1] ;
  input RX_ECP0;
  input \PDU_ECP_reg[1] ;
  input [1:0]p_3_out;
  input [7:0]\stage_1_data_r_reg[0] ;
  input [5:0]rx_pe_data_striped_i;
  input [4:0]\stage_1_data_r_reg[11] ;
  input [7:0]\stage_1_data_r_reg[16] ;
  input [4:0]\stage_1_data_r_reg[27] ;
  input start_rx_i;
  input \stage_1_count_value_r_reg[0] ;
  input \stage_1_count_value_r_reg[1] ;
  input \stage_1_count_value_r_reg[2] ;
  input \stage_1_count_value_r_reg[3] ;
  input [1:0]D;

  wire [1:0]D;
  wire \MUXED_DATA[16]_i_1_n_0 ;
  wire \MUXED_DATA[17]_i_1_n_0 ;
  wire \MUXED_DATA[18]_i_1_n_0 ;
  wire \MUXED_DATA[19]_i_1_n_0 ;
  wire \MUXED_DATA[20]_i_1_n_0 ;
  wire \MUXED_DATA[21]_i_1_n_0 ;
  wire \MUXED_DATA[22]_i_1_n_0 ;
  wire \MUXED_DATA[23]_i_1_n_0 ;
  wire \MUXED_DATA[24]_i_1_n_0 ;
  wire \MUXED_DATA[25]_i_1_n_0 ;
  wire \MUXED_DATA[26]_i_1_n_0 ;
  wire \MUXED_DATA[27]_i_1_n_0 ;
  wire \MUXED_DATA[28]_i_1_n_0 ;
  wire \MUXED_DATA[29]_i_1_n_0 ;
  wire \MUXED_DATA[30]_i_1_n_0 ;
  wire \MUXED_DATA[31]_i_1_n_0 ;
  wire \PDU_ECP_reg[1] ;
  wire \PDU_SCP_reg[1] ;
  wire [1:0]Q;
  wire RX_ECP0;
  wire [1:0]\RX_REM_reg[0] ;
  wire RX_SCP0;
  wire [0:15]SHIFTED_DATA;
  wire \STORAGE_DATA[0]_i_1_n_0 ;
  wire \STORAGE_DATA[10]_i_1_n_0 ;
  wire \STORAGE_DATA[11]_i_1_n_0 ;
  wire \STORAGE_DATA[12]_i_1_n_0 ;
  wire \STORAGE_DATA[13]_i_1_n_0 ;
  wire \STORAGE_DATA[14]_i_1_n_0 ;
  wire \STORAGE_DATA[15]_i_1_n_0 ;
  wire \STORAGE_DATA[16]_i_1_n_0 ;
  wire \STORAGE_DATA[17]_i_1_n_0 ;
  wire \STORAGE_DATA[18]_i_1_n_0 ;
  wire \STORAGE_DATA[19]_i_1_n_0 ;
  wire \STORAGE_DATA[1]_i_1_n_0 ;
  wire \STORAGE_DATA[20]_i_1_n_0 ;
  wire \STORAGE_DATA[21]_i_1_n_0 ;
  wire \STORAGE_DATA[22]_i_1_n_0 ;
  wire \STORAGE_DATA[23]_i_1_n_0 ;
  wire \STORAGE_DATA[24]_i_1_n_0 ;
  wire \STORAGE_DATA[25]_i_1_n_0 ;
  wire \STORAGE_DATA[26]_i_1_n_0 ;
  wire \STORAGE_DATA[27]_i_1_n_0 ;
  wire \STORAGE_DATA[28]_i_1_n_0 ;
  wire \STORAGE_DATA[29]_i_1_n_0 ;
  wire \STORAGE_DATA[2]_i_1_n_0 ;
  wire \STORAGE_DATA[30]_i_1_n_0 ;
  wire \STORAGE_DATA[31]_i_1_n_0 ;
  wire \STORAGE_DATA[3]_i_1_n_0 ;
  wire \STORAGE_DATA[4]_i_1_n_0 ;
  wire \STORAGE_DATA[5]_i_1_n_0 ;
  wire \STORAGE_DATA[6]_i_1_n_0 ;
  wire \STORAGE_DATA[7]_i_1_n_0 ;
  wire \STORAGE_DATA[8]_i_1_n_0 ;
  wire \STORAGE_DATA[9]_i_1_n_0 ;
  wire [4:9]STORAGE_SELECT;
  wire [0:1]UFC_DATA_V;
  wire [0:0]UFC_OUTPUT_SELECT;
  wire UFC_START;
  wire barrel_shifter_control_i;
  wire frame_err;
  wire load_ufc_control_code_r_reg;
  wire [0:31]m_axi_rx_tdata;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire [0:31]m_axi_ufc_rx_tdata;
  wire [0:0]m_axi_ufc_rx_tkeep;
  wire m_axi_ufc_rx_tlast;
  wire m_axi_ufc_rx_tvalid;
  wire [15:0]p_1_in;
  wire [1:0]p_3_out;
  wire [0:1]pdu_data_v_i;
  wire [0:1]pdu_ecp_i;
  wire [0:1]pdu_scp_i;
  wire rx_eof;
  wire rx_ll_pdu_datapath_i_n_22;
  wire rx_ll_pdu_datapath_i_n_23;
  wire rx_ll_pdu_datapath_i_n_24;
  wire rx_ll_pdu_datapath_i_n_25;
  wire rx_ll_pdu_datapath_i_n_26;
  wire rx_ll_pdu_datapath_i_n_27;
  wire rx_ll_pdu_datapath_i_n_28;
  wire rx_ll_pdu_datapath_i_n_29;
  wire rx_ll_pdu_datapath_i_n_30;
  wire rx_ll_pdu_datapath_i_n_31;
  wire rx_ll_pdu_datapath_i_n_32;
  wire rx_ll_pdu_datapath_i_n_33;
  wire rx_ll_pdu_datapath_i_n_34;
  wire rx_ll_pdu_datapath_i_n_35;
  wire rx_ll_pdu_datapath_i_n_36;
  wire rx_ll_pdu_datapath_i_n_37;
  wire rx_ll_rst;
  wire rx_ll_ufc_datapath_i_n_49;
  wire rx_ll_ufc_datapath_i_n_50;
  wire rx_ll_ufc_datapath_i_n_51;
  wire rx_ll_ufc_datapath_i_n_52;
  wire rx_ll_ufc_datapath_i_n_53;
  wire rx_ll_ufc_datapath_i_n_54;
  wire rx_ll_ufc_datapath_i_n_55;
  wire rx_ll_ufc_datapath_i_n_56;
  wire rx_ll_ufc_datapath_i_n_57;
  wire rx_ll_ufc_datapath_i_n_58;
  wire rx_ll_ufc_datapath_i_n_59;
  wire rx_ll_ufc_datapath_i_n_60;
  wire rx_ll_ufc_datapath_i_n_61;
  wire rx_ll_ufc_datapath_i_n_62;
  wire rx_ll_ufc_datapath_i_n_63;
  wire rx_ll_ufc_datapath_i_n_64;
  wire [5:0]rx_pe_data_striped_i;
  wire \stage_1_count_value_r_reg[0] ;
  wire \stage_1_count_value_r_reg[1] ;
  wire \stage_1_count_value_r_reg[2] ;
  wire \stage_1_count_value_r_reg[3] ;
  wire [0:31]stage_1_data_r;
  wire [7:0]\stage_1_data_r_reg[0] ;
  wire [4:0]\stage_1_data_r_reg[11] ;
  wire [7:0]\stage_1_data_r_reg[16] ;
  wire [4:0]\stage_1_data_r_reg[27] ;
  wire \stage_1_rx_ll_deframer_i/after_scp_select_c_0 ;
  wire \stage_1_rx_ll_deframer_i/after_scp_select_c_1 ;
  wire start_rx_i;
  wire ufc_filter_i_n_10;
  wire ufc_filter_i_n_11;
  wire ufc_filter_i_n_12;
  wire ufc_filter_i_n_13;
  wire ufc_filter_i_n_14;
  wire ufc_filter_i_n_15;
  wire ufc_filter_i_n_16;
  wire ufc_filter_i_n_17;
  wire ufc_filter_i_n_18;
  wire ufc_filter_i_n_19;
  wire ufc_filter_i_n_20;
  wire ufc_filter_i_n_21;
  wire ufc_filter_i_n_22;
  wire ufc_filter_i_n_23;
  wire ufc_filter_i_n_24;
  wire ufc_filter_i_n_25;
  wire ufc_filter_i_n_26;
  wire ufc_filter_i_n_27;
  wire ufc_filter_i_n_28;
  wire ufc_filter_i_n_29;
  wire ufc_filter_i_n_30;
  wire ufc_filter_i_n_31;
  wire ufc_filter_i_n_32;
  wire ufc_filter_i_n_33;
  wire ufc_filter_i_n_34;
  wire ufc_filter_i_n_35;
  wire ufc_filter_i_n_36;
  wire ufc_filter_i_n_37;
  wire ufc_filter_i_n_38;
  wire ufc_filter_i_n_39;
  wire ufc_filter_i_n_40;
  wire ufc_filter_i_n_6;
  wire ufc_filter_i_n_7;
  wire ufc_filter_i_n_8;
  wire ufc_filter_i_n_9;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[16]_i_1 
       (.I0(SHIFTED_DATA[0]),
        .I1(UFC_OUTPUT_SELECT),
        .I2(rx_ll_ufc_datapath_i_n_49),
        .O(\MUXED_DATA[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[17]_i_1 
       (.I0(SHIFTED_DATA[1]),
        .I1(UFC_OUTPUT_SELECT),
        .I2(rx_ll_ufc_datapath_i_n_50),
        .O(\MUXED_DATA[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[18]_i_1 
       (.I0(SHIFTED_DATA[2]),
        .I1(UFC_OUTPUT_SELECT),
        .I2(rx_ll_ufc_datapath_i_n_51),
        .O(\MUXED_DATA[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[19]_i_1 
       (.I0(SHIFTED_DATA[3]),
        .I1(UFC_OUTPUT_SELECT),
        .I2(rx_ll_ufc_datapath_i_n_52),
        .O(\MUXED_DATA[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[20]_i_1 
       (.I0(SHIFTED_DATA[4]),
        .I1(UFC_OUTPUT_SELECT),
        .I2(rx_ll_ufc_datapath_i_n_53),
        .O(\MUXED_DATA[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[21]_i_1 
       (.I0(SHIFTED_DATA[5]),
        .I1(UFC_OUTPUT_SELECT),
        .I2(rx_ll_ufc_datapath_i_n_54),
        .O(\MUXED_DATA[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[22]_i_1 
       (.I0(SHIFTED_DATA[6]),
        .I1(UFC_OUTPUT_SELECT),
        .I2(rx_ll_ufc_datapath_i_n_55),
        .O(\MUXED_DATA[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[23]_i_1 
       (.I0(SHIFTED_DATA[7]),
        .I1(UFC_OUTPUT_SELECT),
        .I2(rx_ll_ufc_datapath_i_n_56),
        .O(\MUXED_DATA[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[24]_i_1 
       (.I0(SHIFTED_DATA[8]),
        .I1(UFC_OUTPUT_SELECT),
        .I2(rx_ll_ufc_datapath_i_n_57),
        .O(\MUXED_DATA[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[25]_i_1 
       (.I0(SHIFTED_DATA[9]),
        .I1(UFC_OUTPUT_SELECT),
        .I2(rx_ll_ufc_datapath_i_n_58),
        .O(\MUXED_DATA[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[26]_i_1 
       (.I0(SHIFTED_DATA[10]),
        .I1(UFC_OUTPUT_SELECT),
        .I2(rx_ll_ufc_datapath_i_n_59),
        .O(\MUXED_DATA[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[27]_i_1 
       (.I0(SHIFTED_DATA[11]),
        .I1(UFC_OUTPUT_SELECT),
        .I2(rx_ll_ufc_datapath_i_n_60),
        .O(\MUXED_DATA[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[28]_i_1 
       (.I0(SHIFTED_DATA[12]),
        .I1(UFC_OUTPUT_SELECT),
        .I2(rx_ll_ufc_datapath_i_n_61),
        .O(\MUXED_DATA[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[29]_i_1 
       (.I0(SHIFTED_DATA[13]),
        .I1(UFC_OUTPUT_SELECT),
        .I2(rx_ll_ufc_datapath_i_n_62),
        .O(\MUXED_DATA[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[30]_i_1 
       (.I0(SHIFTED_DATA[14]),
        .I1(UFC_OUTPUT_SELECT),
        .I2(rx_ll_ufc_datapath_i_n_63),
        .O(\MUXED_DATA[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[31]_i_1 
       (.I0(SHIFTED_DATA[15]),
        .I1(UFC_OUTPUT_SELECT),
        .I2(rx_ll_ufc_datapath_i_n_64),
        .O(\MUXED_DATA[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[0]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_22),
        .I1(STORAGE_SELECT[4]),
        .I2(p_1_in[15]),
        .O(\STORAGE_DATA[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[10]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_32),
        .I1(STORAGE_SELECT[4]),
        .I2(p_1_in[5]),
        .O(\STORAGE_DATA[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[11]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_33),
        .I1(STORAGE_SELECT[4]),
        .I2(p_1_in[4]),
        .O(\STORAGE_DATA[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[12]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_34),
        .I1(STORAGE_SELECT[4]),
        .I2(p_1_in[3]),
        .O(\STORAGE_DATA[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[13]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_35),
        .I1(STORAGE_SELECT[4]),
        .I2(p_1_in[2]),
        .O(\STORAGE_DATA[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[14]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_36),
        .I1(STORAGE_SELECT[4]),
        .I2(p_1_in[1]),
        .O(\STORAGE_DATA[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[15]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_37),
        .I1(STORAGE_SELECT[4]),
        .I2(p_1_in[0]),
        .O(\STORAGE_DATA[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[16]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_22),
        .I1(STORAGE_SELECT[9]),
        .I2(p_1_in[15]),
        .O(\STORAGE_DATA[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[17]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_23),
        .I1(STORAGE_SELECT[9]),
        .I2(p_1_in[14]),
        .O(\STORAGE_DATA[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[18]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_24),
        .I1(STORAGE_SELECT[9]),
        .I2(p_1_in[13]),
        .O(\STORAGE_DATA[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[19]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_25),
        .I1(STORAGE_SELECT[9]),
        .I2(p_1_in[12]),
        .O(\STORAGE_DATA[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[1]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_23),
        .I1(STORAGE_SELECT[4]),
        .I2(p_1_in[14]),
        .O(\STORAGE_DATA[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[20]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_26),
        .I1(STORAGE_SELECT[9]),
        .I2(p_1_in[11]),
        .O(\STORAGE_DATA[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[21]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_27),
        .I1(STORAGE_SELECT[9]),
        .I2(p_1_in[10]),
        .O(\STORAGE_DATA[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[22]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_28),
        .I1(STORAGE_SELECT[9]),
        .I2(p_1_in[9]),
        .O(\STORAGE_DATA[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[23]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_29),
        .I1(STORAGE_SELECT[9]),
        .I2(p_1_in[8]),
        .O(\STORAGE_DATA[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[24]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_30),
        .I1(STORAGE_SELECT[9]),
        .I2(p_1_in[7]),
        .O(\STORAGE_DATA[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[25]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_31),
        .I1(STORAGE_SELECT[9]),
        .I2(p_1_in[6]),
        .O(\STORAGE_DATA[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[26]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_32),
        .I1(STORAGE_SELECT[9]),
        .I2(p_1_in[5]),
        .O(\STORAGE_DATA[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[27]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_33),
        .I1(STORAGE_SELECT[9]),
        .I2(p_1_in[4]),
        .O(\STORAGE_DATA[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[28]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_34),
        .I1(STORAGE_SELECT[9]),
        .I2(p_1_in[3]),
        .O(\STORAGE_DATA[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[29]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_35),
        .I1(STORAGE_SELECT[9]),
        .I2(p_1_in[2]),
        .O(\STORAGE_DATA[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[2]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_24),
        .I1(STORAGE_SELECT[4]),
        .I2(p_1_in[13]),
        .O(\STORAGE_DATA[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[30]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_36),
        .I1(STORAGE_SELECT[9]),
        .I2(p_1_in[1]),
        .O(\STORAGE_DATA[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[31]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_37),
        .I1(STORAGE_SELECT[9]),
        .I2(p_1_in[0]),
        .O(\STORAGE_DATA[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[3]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_25),
        .I1(STORAGE_SELECT[4]),
        .I2(p_1_in[12]),
        .O(\STORAGE_DATA[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[4]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_26),
        .I1(STORAGE_SELECT[4]),
        .I2(p_1_in[11]),
        .O(\STORAGE_DATA[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[5]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_27),
        .I1(STORAGE_SELECT[4]),
        .I2(p_1_in[10]),
        .O(\STORAGE_DATA[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[6]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_28),
        .I1(STORAGE_SELECT[4]),
        .I2(p_1_in[9]),
        .O(\STORAGE_DATA[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[7]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_29),
        .I1(STORAGE_SELECT[4]),
        .I2(p_1_in[8]),
        .O(\STORAGE_DATA[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[8]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_30),
        .I1(STORAGE_SELECT[4]),
        .I2(p_1_in[7]),
        .O(\STORAGE_DATA[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[9]_i_1 
       (.I0(rx_ll_pdu_datapath_i_n_31),
        .I1(STORAGE_SELECT[4]),
        .I2(p_1_in[6]),
        .O(\STORAGE_DATA[9]_i_1_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_RX_LL_PDU_DATAPATH rx_ll_pdu_datapath_i
       (.D({pdu_scp_i[0],pdu_scp_i[1]}),
        .\IN_FRAME_reg[1] (ufc_filter_i_n_40),
        .\MUXED_DATA_reg[0] ({p_1_in,rx_ll_pdu_datapath_i_n_22,rx_ll_pdu_datapath_i_n_23,rx_ll_pdu_datapath_i_n_24,rx_ll_pdu_datapath_i_n_25,rx_ll_pdu_datapath_i_n_26,rx_ll_pdu_datapath_i_n_27,rx_ll_pdu_datapath_i_n_28,rx_ll_pdu_datapath_i_n_29,rx_ll_pdu_datapath_i_n_30,rx_ll_pdu_datapath_i_n_31,rx_ll_pdu_datapath_i_n_32,rx_ll_pdu_datapath_i_n_33,rx_ll_pdu_datapath_i_n_34,rx_ll_pdu_datapath_i_n_35,rx_ll_pdu_datapath_i_n_36,rx_ll_pdu_datapath_i_n_37}),
        .Q({pdu_data_v_i[0],pdu_data_v_i[1]}),
        .\RX_REM_reg[0]_0 (\RX_REM_reg[0] ),
        .\STORAGE_DATA_reg[0] ({\STORAGE_DATA[0]_i_1_n_0 ,\STORAGE_DATA[1]_i_1_n_0 ,\STORAGE_DATA[2]_i_1_n_0 ,\STORAGE_DATA[3]_i_1_n_0 ,\STORAGE_DATA[4]_i_1_n_0 ,\STORAGE_DATA[5]_i_1_n_0 ,\STORAGE_DATA[6]_i_1_n_0 ,\STORAGE_DATA[7]_i_1_n_0 ,\STORAGE_DATA[8]_i_1_n_0 ,\STORAGE_DATA[9]_i_1_n_0 ,\STORAGE_DATA[10]_i_1_n_0 ,\STORAGE_DATA[11]_i_1_n_0 ,\STORAGE_DATA[12]_i_1_n_0 ,\STORAGE_DATA[13]_i_1_n_0 ,\STORAGE_DATA[14]_i_1_n_0 ,\STORAGE_DATA[15]_i_1_n_0 ,\STORAGE_DATA[16]_i_1_n_0 ,\STORAGE_DATA[17]_i_1_n_0 ,\STORAGE_DATA[18]_i_1_n_0 ,\STORAGE_DATA[19]_i_1_n_0 ,\STORAGE_DATA[20]_i_1_n_0 ,\STORAGE_DATA[21]_i_1_n_0 ,\STORAGE_DATA[22]_i_1_n_0 ,\STORAGE_DATA[23]_i_1_n_0 ,\STORAGE_DATA[24]_i_1_n_0 ,\STORAGE_DATA[25]_i_1_n_0 ,\STORAGE_DATA[26]_i_1_n_0 ,\STORAGE_DATA[27]_i_1_n_0 ,\STORAGE_DATA[28]_i_1_n_0 ,\STORAGE_DATA[29]_i_1_n_0 ,\STORAGE_DATA[30]_i_1_n_0 ,\STORAGE_DATA[31]_i_1_n_0 }),
        .STORAGE_SELECT({STORAGE_SELECT[4],STORAGE_SELECT[9]}),
        .after_scp_select_c_0(\stage_1_rx_ll_deframer_i/after_scp_select_c_0 ),
        .after_scp_select_c_1(\stage_1_rx_ll_deframer_i/after_scp_select_c_1 ),
        .frame_err(frame_err),
        .in_frame_r_reg(ufc_filter_i_n_39),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tlast(m_axi_rx_tlast),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .rx_eof(rx_eof),
        .rx_ll_rst(rx_ll_rst),
        .\stage_1_ecp_r_reg[0]_0 ({pdu_ecp_i[0],pdu_ecp_i[1]}),
        .stage_1_pad_r_reg_0(ufc_filter_i_n_38),
        .\stage_2_data_r_reg[0]_0 ({stage_1_data_r[0],stage_1_data_r[1],stage_1_data_r[2],stage_1_data_r[3],stage_1_data_r[4],stage_1_data_r[5],stage_1_data_r[6],stage_1_data_r[7],stage_1_data_r[8],stage_1_data_r[9],stage_1_data_r[10],stage_1_data_r[11],stage_1_data_r[12],stage_1_data_r[13],stage_1_data_r[14],stage_1_data_r[15],stage_1_data_r[16],stage_1_data_r[17],stage_1_data_r[18],stage_1_data_r[19],stage_1_data_r[20],stage_1_data_r[21],stage_1_data_r[22],stage_1_data_r[23],stage_1_data_r[24],stage_1_data_r[25],stage_1_data_r[26],stage_1_data_r[27],stage_1_data_r[28],stage_1_data_r[29],stage_1_data_r[30],stage_1_data_r[31]}),
        .start_rx_i(start_rx_i),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_RX_LL_UFC_DATAPATH rx_ll_ufc_datapath_i
       (.\MUXED_DATA_reg[16] (rx_ll_ufc_datapath_i_n_49),
        .\MUXED_DATA_reg[16]_0 (\MUXED_DATA[16]_i_1_n_0 ),
        .\MUXED_DATA_reg[17] (rx_ll_ufc_datapath_i_n_50),
        .\MUXED_DATA_reg[17]_0 (\MUXED_DATA[17]_i_1_n_0 ),
        .\MUXED_DATA_reg[18] (rx_ll_ufc_datapath_i_n_51),
        .\MUXED_DATA_reg[18]_0 (\MUXED_DATA[18]_i_1_n_0 ),
        .\MUXED_DATA_reg[19] (rx_ll_ufc_datapath_i_n_52),
        .\MUXED_DATA_reg[19]_0 (\MUXED_DATA[19]_i_1_n_0 ),
        .\MUXED_DATA_reg[20] (rx_ll_ufc_datapath_i_n_53),
        .\MUXED_DATA_reg[20]_0 (\MUXED_DATA[20]_i_1_n_0 ),
        .\MUXED_DATA_reg[21] (rx_ll_ufc_datapath_i_n_54),
        .\MUXED_DATA_reg[21]_0 (\MUXED_DATA[21]_i_1_n_0 ),
        .\MUXED_DATA_reg[22] (rx_ll_ufc_datapath_i_n_55),
        .\MUXED_DATA_reg[22]_0 (\MUXED_DATA[22]_i_1_n_0 ),
        .\MUXED_DATA_reg[23] (rx_ll_ufc_datapath_i_n_56),
        .\MUXED_DATA_reg[23]_0 (\MUXED_DATA[23]_i_1_n_0 ),
        .\MUXED_DATA_reg[24] (rx_ll_ufc_datapath_i_n_57),
        .\MUXED_DATA_reg[24]_0 (\MUXED_DATA[24]_i_1_n_0 ),
        .\MUXED_DATA_reg[25] (rx_ll_ufc_datapath_i_n_58),
        .\MUXED_DATA_reg[25]_0 (\MUXED_DATA[25]_i_1_n_0 ),
        .\MUXED_DATA_reg[26] (rx_ll_ufc_datapath_i_n_59),
        .\MUXED_DATA_reg[26]_0 (\MUXED_DATA[26]_i_1_n_0 ),
        .\MUXED_DATA_reg[27] (rx_ll_ufc_datapath_i_n_60),
        .\MUXED_DATA_reg[27]_0 (\MUXED_DATA[27]_i_1_n_0 ),
        .\MUXED_DATA_reg[28] (rx_ll_ufc_datapath_i_n_61),
        .\MUXED_DATA_reg[28]_0 (\MUXED_DATA[28]_i_1_n_0 ),
        .\MUXED_DATA_reg[29] (rx_ll_ufc_datapath_i_n_62),
        .\MUXED_DATA_reg[29]_0 (\MUXED_DATA[29]_i_1_n_0 ),
        .\MUXED_DATA_reg[30] (rx_ll_ufc_datapath_i_n_63),
        .\MUXED_DATA_reg[30]_0 (\MUXED_DATA[30]_i_1_n_0 ),
        .\MUXED_DATA_reg[31] (rx_ll_ufc_datapath_i_n_64),
        .\MUXED_DATA_reg[31]_0 (\MUXED_DATA[31]_i_1_n_0 ),
        .Q({UFC_DATA_V[0],UFC_DATA_V[1]}),
        .\SHIFTED_DATA_reg[0] ({SHIFTED_DATA[0],SHIFTED_DATA[1],SHIFTED_DATA[2],SHIFTED_DATA[3],SHIFTED_DATA[4],SHIFTED_DATA[5],SHIFTED_DATA[6],SHIFTED_DATA[7],SHIFTED_DATA[8],SHIFTED_DATA[9],SHIFTED_DATA[10],SHIFTED_DATA[11],SHIFTED_DATA[12],SHIFTED_DATA[13],SHIFTED_DATA[14],SHIFTED_DATA[15]}),
        .\UFC_OUTPUT_SELECT_reg[5] (UFC_OUTPUT_SELECT),
        .UFC_START(UFC_START),
        .barrel_shifter_control_i(barrel_shifter_control_i),
        .m_axi_ufc_rx_tdata(m_axi_ufc_rx_tdata),
        .m_axi_ufc_rx_tkeep(m_axi_ufc_rx_tkeep),
        .m_axi_ufc_rx_tlast(m_axi_ufc_rx_tlast),
        .m_axi_ufc_rx_tvalid(m_axi_ufc_rx_tvalid),
        .rx_ll_rst(rx_ll_rst),
        .\stage_1_data_r_reg[0]_0 ({stage_1_data_r[0],stage_1_data_r[1],stage_1_data_r[2],stage_1_data_r[3],stage_1_data_r[4],stage_1_data_r[5],stage_1_data_r[6],stage_1_data_r[7],stage_1_data_r[8],stage_1_data_r[9],stage_1_data_r[10],stage_1_data_r[11],stage_1_data_r[12],stage_1_data_r[13],stage_1_data_r[14],stage_1_data_r[15],stage_1_data_r[16],stage_1_data_r[17],stage_1_data_r[18],stage_1_data_r[19],stage_1_data_r[20],stage_1_data_r[21],stage_1_data_r[22],stage_1_data_r[23],stage_1_data_r[24],stage_1_data_r[25],stage_1_data_r[26],stage_1_data_r[27],stage_1_data_r[28],stage_1_data_r[29],stage_1_data_r[30],stage_1_data_r[31]}),
        .\stage_1_data_r_reg[0]_1 (ufc_filter_i_n_6),
        .\stage_1_data_r_reg[10]_0 (ufc_filter_i_n_16),
        .\stage_1_data_r_reg[11]_0 (ufc_filter_i_n_17),
        .\stage_1_data_r_reg[12]_0 (ufc_filter_i_n_18),
        .\stage_1_data_r_reg[13]_0 (ufc_filter_i_n_19),
        .\stage_1_data_r_reg[14]_0 (ufc_filter_i_n_20),
        .\stage_1_data_r_reg[15]_0 (ufc_filter_i_n_21),
        .\stage_1_data_r_reg[16]_0 (ufc_filter_i_n_22),
        .\stage_1_data_r_reg[17]_0 (ufc_filter_i_n_23),
        .\stage_1_data_r_reg[18]_0 (ufc_filter_i_n_24),
        .\stage_1_data_r_reg[19]_0 (ufc_filter_i_n_25),
        .\stage_1_data_r_reg[1]_0 (ufc_filter_i_n_7),
        .\stage_1_data_r_reg[20]_0 (ufc_filter_i_n_26),
        .\stage_1_data_r_reg[21]_0 (ufc_filter_i_n_27),
        .\stage_1_data_r_reg[22]_0 (ufc_filter_i_n_28),
        .\stage_1_data_r_reg[23]_0 (ufc_filter_i_n_29),
        .\stage_1_data_r_reg[24]_0 (ufc_filter_i_n_30),
        .\stage_1_data_r_reg[25]_0 (ufc_filter_i_n_31),
        .\stage_1_data_r_reg[26]_0 (ufc_filter_i_n_32),
        .\stage_1_data_r_reg[27]_0 (ufc_filter_i_n_33),
        .\stage_1_data_r_reg[28]_0 (ufc_filter_i_n_34),
        .\stage_1_data_r_reg[29]_0 (ufc_filter_i_n_35),
        .\stage_1_data_r_reg[2]_0 (ufc_filter_i_n_8),
        .\stage_1_data_r_reg[30]_0 (ufc_filter_i_n_36),
        .\stage_1_data_r_reg[31]_0 (ufc_filter_i_n_37),
        .\stage_1_data_r_reg[3]_0 (ufc_filter_i_n_9),
        .\stage_1_data_r_reg[4]_0 (ufc_filter_i_n_10),
        .\stage_1_data_r_reg[5]_0 (ufc_filter_i_n_11),
        .\stage_1_data_r_reg[6]_0 (ufc_filter_i_n_12),
        .\stage_1_data_r_reg[7]_0 (ufc_filter_i_n_13),
        .\stage_1_data_r_reg[8]_0 (ufc_filter_i_n_14),
        .\stage_1_data_r_reg[9]_0 (ufc_filter_i_n_15),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_UFC_FILTER ufc_filter_i
       (.D({pdu_scp_i[0],pdu_scp_i[1]}),
        .\PDU_DATA_V_reg[0]_0 ({pdu_data_v_i[0],pdu_data_v_i[1]}),
        .\PDU_ECP_reg[0]_0 ({pdu_ecp_i[0],pdu_ecp_i[1]}),
        .\PDU_ECP_reg[0]_1 (ufc_filter_i_n_40),
        .\PDU_ECP_reg[1]_0 (ufc_filter_i_n_39),
        .\PDU_ECP_reg[1]_1 (\PDU_ECP_reg[1] ),
        .\PDU_PAD_reg[1]_0 (ufc_filter_i_n_38),
        .\PDU_SCP_reg[1]_0 (\PDU_SCP_reg[1] ),
        .Q(Q),
        .RX_ECP0(RX_ECP0),
        .\RX_PE_DATA_reg[10] (ufc_filter_i_n_16),
        .\RX_PE_DATA_reg[24] (ufc_filter_i_n_30),
        .\RX_PE_DATA_reg[25] (ufc_filter_i_n_31),
        .\RX_PE_DATA_reg[26] (ufc_filter_i_n_32),
        .\RX_PE_DATA_reg[8] (ufc_filter_i_n_14),
        .\RX_PE_DATA_reg[9] (ufc_filter_i_n_15),
        .RX_SCP0(RX_SCP0),
        .\UFC_DATA_V_reg[0]_0 ({UFC_DATA_V[0],UFC_DATA_V[1]}),
        .UFC_START(UFC_START),
        .after_scp_select_c_0(\stage_1_rx_ll_deframer_i/after_scp_select_c_0 ),
        .after_scp_select_c_1(\stage_1_rx_ll_deframer_i/after_scp_select_c_1 ),
        .barrel_shifter_control_i(barrel_shifter_control_i),
        .load_ufc_control_code_r_reg_0(load_ufc_control_code_r_reg),
        .p_3_out(p_3_out),
        .\rx_data_v_r_reg[0]_0 (D),
        .rx_ll_rst(rx_ll_rst),
        .rx_pe_data_striped_i(rx_pe_data_striped_i),
        .\stage_1_count_value_r_reg[0]_0 (\stage_1_count_value_r_reg[0] ),
        .\stage_1_count_value_r_reg[1]_0 (\stage_1_count_value_r_reg[1] ),
        .\stage_1_count_value_r_reg[2]_0 (\stage_1_count_value_r_reg[2] ),
        .\stage_1_count_value_r_reg[3]_0 (\stage_1_count_value_r_reg[3] ),
        .\stage_1_data_r_reg[0] (\stage_1_data_r_reg[0] ),
        .\stage_1_data_r_reg[11] (\stage_1_data_r_reg[11] ),
        .\stage_1_data_r_reg[16] (\stage_1_data_r_reg[16] ),
        .\stage_1_data_r_reg[27] (\stage_1_data_r_reg[27] ),
        .user_clk(user_clk),
        .\word_aligned_data_r_reg[0] (ufc_filter_i_n_6),
        .\word_aligned_data_r_reg[11] (ufc_filter_i_n_17),
        .\word_aligned_data_r_reg[12] (ufc_filter_i_n_18),
        .\word_aligned_data_r_reg[13] (ufc_filter_i_n_19),
        .\word_aligned_data_r_reg[14] (ufc_filter_i_n_20),
        .\word_aligned_data_r_reg[15] (ufc_filter_i_n_21),
        .\word_aligned_data_r_reg[16] (ufc_filter_i_n_22),
        .\word_aligned_data_r_reg[17] (ufc_filter_i_n_23),
        .\word_aligned_data_r_reg[18] (ufc_filter_i_n_24),
        .\word_aligned_data_r_reg[19] (ufc_filter_i_n_25),
        .\word_aligned_data_r_reg[1] (ufc_filter_i_n_7),
        .\word_aligned_data_r_reg[20] (ufc_filter_i_n_26),
        .\word_aligned_data_r_reg[21] (ufc_filter_i_n_27),
        .\word_aligned_data_r_reg[22] (ufc_filter_i_n_28),
        .\word_aligned_data_r_reg[23] (ufc_filter_i_n_29),
        .\word_aligned_data_r_reg[27] (ufc_filter_i_n_33),
        .\word_aligned_data_r_reg[28] (ufc_filter_i_n_34),
        .\word_aligned_data_r_reg[29] (ufc_filter_i_n_35),
        .\word_aligned_data_r_reg[2] (ufc_filter_i_n_8),
        .\word_aligned_data_r_reg[30] (ufc_filter_i_n_36),
        .\word_aligned_data_r_reg[31] (ufc_filter_i_n_37),
        .\word_aligned_data_r_reg[3] (ufc_filter_i_n_9),
        .\word_aligned_data_r_reg[4] (ufc_filter_i_n_10),
        .\word_aligned_data_r_reg[5] (ufc_filter_i_n_11),
        .\word_aligned_data_r_reg[6] (ufc_filter_i_n_12),
        .\word_aligned_data_r_reg[7] (ufc_filter_i_n_13));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_RX_LL_DEFRAMER
   (mux_select_c,
    \AFTER_SCP_reg[1]_0 ,
    \AFTER_SCP_reg[1]_1 ,
    \AFTER_SCP_reg[1]_2 ,
    \DEFRAMED_DATA_V_reg[1]_0 ,
    \stage_1_ecp_r_reg[0] ,
    \IN_FRAME_reg[1]_0 ,
    D,
    in_frame_r_reg_0,
    after_scp_select_c_1,
    after_scp_select_c_0,
    rx_ll_rst,
    user_clk,
    Q,
    stage_2_frame_err_r_reg,
    \DEFRAMED_DATA_V_reg[0]_0 );
  output [0:0]mux_select_c;
  output \AFTER_SCP_reg[1]_0 ;
  output \AFTER_SCP_reg[1]_1 ;
  output \AFTER_SCP_reg[1]_2 ;
  output [1:0]\DEFRAMED_DATA_V_reg[1]_0 ;
  output \stage_1_ecp_r_reg[0] ;
  input \IN_FRAME_reg[1]_0 ;
  input [1:0]D;
  input in_frame_r_reg_0;
  input after_scp_select_c_1;
  input after_scp_select_c_0;
  input rx_ll_rst;
  input user_clk;
  input [1:0]Q;
  input [1:0]stage_2_frame_err_r_reg;
  input [1:0]\DEFRAMED_DATA_V_reg[0]_0 ;

  wire \AFTER_SCP_reg[1]_0 ;
  wire \AFTER_SCP_reg[1]_1 ;
  wire \AFTER_SCP_reg[1]_2 ;
  wire [1:0]D;
  wire \DEFRAMED_DATA_V[0]_i_1_n_0 ;
  wire \DEFRAMED_DATA_V[1]_i_1_n_0 ;
  wire [1:0]\DEFRAMED_DATA_V_reg[0]_0 ;
  wire [1:0]\DEFRAMED_DATA_V_reg[1]_0 ;
  wire \IN_FRAME_reg[1]_0 ;
  wire [1:0]Q;
  wire after_scp_c_1;
  wire after_scp_select_c_0;
  wire after_scp_select_c_1;
  wire data_after_start_muxcy_1_n_0;
  wire in_frame_c_0;
  wire in_frame_c_1;
  wire in_frame_r;
  wire in_frame_r_reg_0;
  wire [0:0]mux_select_c;
  wire rx_ll_rst;
  wire [0:1]stage_1_after_scp_r;
  wire [0:1]stage_1_data_v_r;
  wire \stage_1_ecp_r_reg[0] ;
  wire [0:1]stage_1_in_frame_r;
  wire [1:0]stage_2_frame_err_r_reg;
  wire user_clk;
  wire [3:2]NLW_data_after_start_muxcy_0_CARRY4_CO_UNCONNECTED;
  wire [3:2]NLW_data_after_start_muxcy_0_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_data_after_start_muxcy_0_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_data_after_start_muxcy_0_CARRY4_S_UNCONNECTED;
  wire [3:2]NLW_in_frame_muxcy_0_CARRY4_CO_UNCONNECTED;
  wire [3:2]NLW_in_frame_muxcy_0_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_in_frame_muxcy_0_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_in_frame_muxcy_0_CARRY4_S_UNCONNECTED;

  FDRE \AFTER_SCP_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(after_scp_c_1),
        .Q(stage_1_after_scp_r[0]),
        .R(rx_ll_rst));
  FDRE \AFTER_SCP_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(data_after_start_muxcy_1_n_0),
        .Q(stage_1_after_scp_r[1]),
        .R(rx_ll_rst));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \COUNT[0]_i_1 
       (.I0(stage_1_data_v_r[1]),
        .I1(stage_1_data_v_r[0]),
        .O(\DEFRAMED_DATA_V_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \COUNT[1]_i_1 
       (.I0(stage_1_data_v_r[0]),
        .I1(stage_1_data_v_r[1]),
        .O(\DEFRAMED_DATA_V_reg[1]_0 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \DEFRAMED_DATA_V[0]_i_1 
       (.I0(in_frame_c_1),
        .I1(\DEFRAMED_DATA_V_reg[0]_0 [1]),
        .O(\DEFRAMED_DATA_V[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \DEFRAMED_DATA_V[1]_i_1 
       (.I0(in_frame_c_0),
        .I1(\DEFRAMED_DATA_V_reg[0]_0 [0]),
        .O(\DEFRAMED_DATA_V[1]_i_1_n_0 ));
  FDRE \DEFRAMED_DATA_V_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\DEFRAMED_DATA_V[0]_i_1_n_0 ),
        .Q(stage_1_data_v_r[0]),
        .R(rx_ll_rst));
  FDRE \DEFRAMED_DATA_V_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\DEFRAMED_DATA_V[1]_i_1_n_0 ),
        .Q(stage_1_data_v_r[1]),
        .R(rx_ll_rst));
  FDRE \IN_FRAME_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(in_frame_r),
        .Q(stage_1_in_frame_r[0]),
        .R(rx_ll_rst));
  FDRE \IN_FRAME_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(in_frame_c_1),
        .Q(stage_1_in_frame_r[1]),
        .R(rx_ll_rst));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MUX_SELECT[2]_i_1 
       (.I0(stage_1_data_v_r[1]),
        .I1(stage_1_data_v_r[0]),
        .O(mux_select_c));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 data_after_start_muxcy_0_CARRY4
       (.CI(1'b0),
        .CO({NLW_data_after_start_muxcy_0_CARRY4_CO_UNCONNECTED[3:2],data_after_start_muxcy_1_n_0,after_scp_c_1}),
        .CYINIT(1'b0),
        .DI({NLW_data_after_start_muxcy_0_CARRY4_DI_UNCONNECTED[3:2],1'b1,1'b1}),
        .O(NLW_data_after_start_muxcy_0_CARRY4_O_UNCONNECTED[3:0]),
        .S({NLW_data_after_start_muxcy_0_CARRY4_S_UNCONNECTED[3:2],after_scp_select_c_0,after_scp_select_c_1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 in_frame_muxcy_0_CARRY4
       (.CI(1'b0),
        .CO({NLW_in_frame_muxcy_0_CARRY4_CO_UNCONNECTED[3:2],in_frame_c_0,in_frame_c_1}),
        .CYINIT(in_frame_r),
        .DI({NLW_in_frame_muxcy_0_CARRY4_DI_UNCONNECTED[3:2],D[0],D[1]}),
        .O(NLW_in_frame_muxcy_0_CARRY4_O_UNCONNECTED[3:0]),
        .S({NLW_in_frame_muxcy_0_CARRY4_S_UNCONNECTED[3:2],in_frame_r_reg_0,\IN_FRAME_reg[1]_0 }));
  FDRE in_frame_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(in_frame_c_0),
        .Q(in_frame_r),
        .R(rx_ll_rst));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    stage_2_end_after_start_r_i_1
       (.I0(stage_1_after_scp_r[1]),
        .I1(Q[0]),
        .I2(stage_1_after_scp_r[0]),
        .I3(Q[1]),
        .O(\AFTER_SCP_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    stage_2_end_before_start_r_i_1
       (.I0(stage_1_after_scp_r[1]),
        .I1(Q[0]),
        .I2(stage_1_after_scp_r[0]),
        .I3(Q[1]),
        .O(\AFTER_SCP_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFF0AAFCEEFCEE)) 
    stage_2_frame_err_r_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(stage_2_frame_err_r_reg[1]),
        .I3(stage_1_in_frame_r[0]),
        .I4(stage_2_frame_err_r_reg[0]),
        .I5(stage_1_in_frame_r[1]),
        .O(\stage_1_ecp_r_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    stage_2_start_with_data_r_i_1
       (.I0(stage_1_after_scp_r[1]),
        .I1(stage_1_data_v_r[1]),
        .I2(stage_1_after_scp_r[0]),
        .I3(stage_1_data_v_r[0]),
        .O(\AFTER_SCP_reg[1]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_RX_LL_PDU_DATAPATH
   (rx_eof,
    frame_err,
    m_axi_rx_tlast,
    m_axi_rx_tvalid,
    \RX_REM_reg[0]_0 ,
    \MUXED_DATA_reg[0] ,
    STORAGE_SELECT,
    m_axi_rx_tdata,
    \IN_FRAME_reg[1] ,
    D,
    in_frame_r_reg,
    after_scp_select_c_1,
    after_scp_select_c_0,
    rx_ll_rst,
    user_clk,
    stage_1_pad_r_reg_0,
    start_rx_i,
    Q,
    \stage_1_ecp_r_reg[0]_0 ,
    \stage_2_data_r_reg[0]_0 ,
    \STORAGE_DATA_reg[0] );
  output rx_eof;
  output frame_err;
  output m_axi_rx_tlast;
  output m_axi_rx_tvalid;
  output [1:0]\RX_REM_reg[0]_0 ;
  output [31:0]\MUXED_DATA_reg[0] ;
  output [1:0]STORAGE_SELECT;
  output [0:31]m_axi_rx_tdata;
  input \IN_FRAME_reg[1] ;
  input [1:0]D;
  input in_frame_r_reg;
  input after_scp_select_c_1;
  input after_scp_select_c_0;
  input rx_ll_rst;
  input user_clk;
  input stage_1_pad_r_reg_0;
  input start_rx_i;
  input [1:0]Q;
  input [1:0]\stage_1_ecp_r_reg[0]_0 ;
  input [31:0]\stage_2_data_r_reg[0]_0 ;
  input [31:0]\STORAGE_DATA_reg[0] ;

  wire [1:0]D;
  wire EOF_N;
  wire FRAME_ERR_RESULT;
  wire FRAME_ERR_RESULT0;
  wire \IN_FRAME_reg[1] ;
  wire [31:0]\MUXED_DATA_reg[0] ;
  wire [2:2]MUX_SELECT;
  wire OUTPUT_SELECT;
  wire [1:0]Q;
  wire [1:0]\RX_REM_reg[0]_0 ;
  wire SRC_RDY_N;
  wire [0:31]STORAGE_DATA;
  wire [31:0]\STORAGE_DATA_reg[0] ;
  wire [1:0]STORAGE_SELECT;
  wire after_scp_select_c_0;
  wire after_scp_select_c_1;
  wire [0:1]ce_command_c;
  wire [0:1]count_c;
  wire end_storage_r0;
  wire excess_c;
  wire frame_err;
  wire in_frame_r_reg;
  wire [0:31]m_axi_rx_tdata;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire [2:2]mux_select_c;
  wire [9:9]output_select_c;
  wire p_0_in0;
  wire rx_eof;
  wire rx_ll_rst;
  wire rx_src_rdy;
  wire sideband_output_i_n_1;
  wire sideband_output_i_n_5;
  wire sideband_output_i_n_6;
  wire sideband_output_i_n_7;
  wire [0:1]stage_1_ecp_r;
  wire [1:0]\stage_1_ecp_r_reg[0]_0 ;
  wire stage_1_pad_r;
  wire stage_1_pad_r_reg_0;
  wire stage_1_rx_ll_deframer_i_n_1;
  wire stage_1_rx_ll_deframer_i_n_2;
  wire stage_1_rx_ll_deframer_i_n_3;
  wire stage_1_rx_ll_deframer_i_n_6;
  wire [0:1]stage_1_scp_r;
  wire [0:31]stage_2_data_r;
  wire [31:0]\stage_2_data_r_reg[0]_0 ;
  wire [0:1]stage_2_data_v_count_r;
  wire stage_2_end_after_start_r;
  wire stage_2_end_before_start_r;
  wire stage_2_frame_err_r;
  wire stage_2_pad_r;
  wire stage_2_start_with_data_r;
  wire stage_2_valid_data_counter_i_n_4;
  wire stage_3_end_storage_r;
  wire stage_3_storage_ce_control_i_n_1;
  wire stage_3_storage_count_control_i_n_3;
  wire [0:1]stage_3_storage_count_r;
  wire start_rx_i;
  wire storage_not_empty_c__0;
  wire user_clk;

  FDRE FRAME_ERR_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(FRAME_ERR_RESULT),
        .Q(frame_err),
        .R(rx_ll_rst));
  FDRE RX_EOF_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(EOF_N),
        .Q(rx_eof),
        .R(1'b0));
  FDRE \RX_REM_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(sideband_output_i_n_6),
        .Q(\RX_REM_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \RX_REM_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(sideband_output_i_n_7),
        .Q(\RX_REM_reg[0]_0 [0]),
        .R(1'b0));
  FDSE RX_SRC_RDY_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(SRC_RDY_N),
        .Q(rx_src_rdy),
        .S(rx_ll_rst));
  LUT1 #(
    .INIT(2'h1)) 
    m_axi_rx_tlast_INST_0
       (.I0(rx_eof),
        .O(m_axi_rx_tlast));
  LUT1 #(
    .INIT(2'h1)) 
    m_axi_rx_tvalid_INST_0
       (.I0(rx_src_rdy),
        .O(m_axi_rx_tvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_OUTPUT_MUX output_mux_i
       (.\OUTPUT_DATA_reg[16]_0 (\MUXED_DATA_reg[0] [31:16]),
        .OUTPUT_SELECT(OUTPUT_SELECT),
        .Q({STORAGE_DATA[0],STORAGE_DATA[1],STORAGE_DATA[2],STORAGE_DATA[3],STORAGE_DATA[4],STORAGE_DATA[5],STORAGE_DATA[6],STORAGE_DATA[7],STORAGE_DATA[8],STORAGE_DATA[9],STORAGE_DATA[10],STORAGE_DATA[11],STORAGE_DATA[12],STORAGE_DATA[13],STORAGE_DATA[14],STORAGE_DATA[15],STORAGE_DATA[16],STORAGE_DATA[17],STORAGE_DATA[18],STORAGE_DATA[19],STORAGE_DATA[20],STORAGE_DATA[21],STORAGE_DATA[22],STORAGE_DATA[23],STORAGE_DATA[24],STORAGE_DATA[25],STORAGE_DATA[26],STORAGE_DATA[27],STORAGE_DATA[28],STORAGE_DATA[29],STORAGE_DATA[30],STORAGE_DATA[31]}),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_SIDEBAND_OUTPUT sideband_output_i
       (.D(sideband_output_i_n_5),
        .EOF_N(EOF_N),
        .EOF_N_reg_0(stage_3_storage_count_control_i_n_3),
        .FRAME_ERR_RESULT(FRAME_ERR_RESULT),
        .FRAME_ERR_RESULT0(FRAME_ERR_RESULT0),
        .Q(stage_2_data_v_count_r[1]),
        .\RX_REM_reg[0]_0 ({sideband_output_i_n_6,sideband_output_i_n_7}),
        .\RX_REM_reg[0]_1 (stage_3_storage_count_r[1]),
        .SR(sideband_output_i_n_1),
        .SRC_RDY_N(SRC_RDY_N),
        .end_storage_r0(end_storage_r0),
        .excess_c(excess_c),
        .stage_2_end_before_start_r(stage_2_end_before_start_r),
        .stage_2_frame_err_r(stage_2_frame_err_r),
        .stage_2_pad_r(stage_2_pad_r),
        .stage_2_start_with_data_r(stage_2_start_with_data_r),
        .stage_3_end_storage_r(stage_3_end_storage_r),
        .start_rx_i(start_rx_i),
        .user_clk(user_clk));
  FDRE \stage_1_ecp_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_ecp_r_reg[0]_0 [1]),
        .Q(stage_1_ecp_r[0]),
        .R(1'b0));
  FDRE \stage_1_ecp_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_ecp_r_reg[0]_0 [0]),
        .Q(stage_1_ecp_r[1]),
        .R(1'b0));
  FDRE stage_1_pad_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_pad_r_reg_0),
        .Q(stage_1_pad_r),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_RX_LL_DEFRAMER stage_1_rx_ll_deframer_i
       (.\AFTER_SCP_reg[1]_0 (stage_1_rx_ll_deframer_i_n_1),
        .\AFTER_SCP_reg[1]_1 (stage_1_rx_ll_deframer_i_n_2),
        .\AFTER_SCP_reg[1]_2 (stage_1_rx_ll_deframer_i_n_3),
        .D(D),
        .\DEFRAMED_DATA_V_reg[0]_0 (Q),
        .\DEFRAMED_DATA_V_reg[1]_0 ({count_c[0],count_c[1]}),
        .\IN_FRAME_reg[1]_0 (\IN_FRAME_reg[1] ),
        .Q({stage_1_ecp_r[0],stage_1_ecp_r[1]}),
        .after_scp_select_c_0(after_scp_select_c_0),
        .after_scp_select_c_1(after_scp_select_c_1),
        .in_frame_r_reg_0(in_frame_r_reg),
        .mux_select_c(mux_select_c),
        .rx_ll_rst(rx_ll_rst),
        .\stage_1_ecp_r_reg[0] (stage_1_rx_ll_deframer_i_n_6),
        .stage_2_frame_err_r_reg({stage_1_scp_r[0],stage_1_scp_r[1]}),
        .user_clk(user_clk));
  FDRE \stage_1_scp_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(stage_1_scp_r[0]),
        .R(1'b0));
  FDRE \stage_1_scp_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(stage_1_scp_r[1]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [31]),
        .Q(stage_2_data_r[0]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [21]),
        .Q(stage_2_data_r[10]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [20]),
        .Q(stage_2_data_r[11]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [19]),
        .Q(stage_2_data_r[12]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [18]),
        .Q(stage_2_data_r[13]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [17]),
        .Q(stage_2_data_r[14]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [16]),
        .Q(stage_2_data_r[15]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [15]),
        .Q(stage_2_data_r[16]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [14]),
        .Q(stage_2_data_r[17]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [13]),
        .Q(stage_2_data_r[18]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [12]),
        .Q(stage_2_data_r[19]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [30]),
        .Q(stage_2_data_r[1]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [11]),
        .Q(stage_2_data_r[20]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [10]),
        .Q(stage_2_data_r[21]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [9]),
        .Q(stage_2_data_r[22]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [8]),
        .Q(stage_2_data_r[23]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [7]),
        .Q(stage_2_data_r[24]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [6]),
        .Q(stage_2_data_r[25]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [5]),
        .Q(stage_2_data_r[26]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [4]),
        .Q(stage_2_data_r[27]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [3]),
        .Q(stage_2_data_r[28]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [2]),
        .Q(stage_2_data_r[29]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [29]),
        .Q(stage_2_data_r[2]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [1]),
        .Q(stage_2_data_r[30]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [0]),
        .Q(stage_2_data_r[31]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [28]),
        .Q(stage_2_data_r[3]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [27]),
        .Q(stage_2_data_r[4]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [26]),
        .Q(stage_2_data_r[5]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [25]),
        .Q(stage_2_data_r[6]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [24]),
        .Q(stage_2_data_r[7]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [23]),
        .Q(stage_2_data_r[8]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_data_r_reg[0]_0 [22]),
        .Q(stage_2_data_r[9]),
        .R(1'b0));
  FDRE stage_2_end_after_start_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_rx_ll_deframer_i_n_3),
        .Q(stage_2_end_after_start_r),
        .R(rx_ll_rst));
  FDRE stage_2_end_before_start_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_rx_ll_deframer_i_n_2),
        .Q(stage_2_end_before_start_r),
        .R(rx_ll_rst));
  FDRE stage_2_frame_err_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_rx_ll_deframer_i_n_6),
        .Q(stage_2_frame_err_r),
        .R(rx_ll_rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_LEFT_ALIGN_CONTROL stage_2_left_align_control_i
       (.MUX_SELECT(MUX_SELECT),
        .mux_select_c(mux_select_c),
        .user_clk(user_clk));
  FDRE stage_2_pad_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_pad_r),
        .Q(stage_2_pad_r),
        .R(1'b0));
  FDRE stage_2_start_with_data_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_rx_ll_deframer_i_n_1),
        .Q(stage_2_start_with_data_r),
        .R(rx_ll_rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_VALID_DATA_COUNTER_18 stage_2_valid_data_counter_i
       (.\COUNT_reg[0]_0 ({count_c[0],count_c[1]}),
        .D({ce_command_c[0],ce_command_c[1]}),
        .FRAME_ERR_RESULT0(FRAME_ERR_RESULT0),
        .Q({stage_2_data_v_count_r[0],stage_2_data_v_count_r[1]}),
        .\STORAGE_CE_reg[0] ({stage_3_storage_count_r[0],stage_3_storage_count_r[1]}),
        .end_storage_r0(end_storage_r0),
        .end_storage_r_reg(stage_2_valid_data_counter_i_n_4),
        .excess_c(excess_c),
        .rx_ll_rst(rx_ll_rst),
        .stage_2_end_after_start_r(stage_2_end_after_start_r),
        .stage_2_end_before_start_r(stage_2_end_before_start_r),
        .stage_2_frame_err_r(stage_2_frame_err_r),
        .stage_2_start_with_data_r(stage_2_start_with_data_r),
        .stage_3_end_storage_r(stage_3_end_storage_r),
        .storage_not_empty_c__0(storage_not_empty_c__0),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_LEFT_ALIGN_MUX stage_3_left_align_datapath_mux_i
       (.\MUXED_DATA_reg[0]_0 (\MUXED_DATA_reg[0] ),
        .MUX_SELECT(MUX_SELECT),
        .Q({stage_2_data_r[0],stage_2_data_r[1],stage_2_data_r[2],stage_2_data_r[3],stage_2_data_r[4],stage_2_data_r[5],stage_2_data_r[6],stage_2_data_r[7],stage_2_data_r[8],stage_2_data_r[9],stage_2_data_r[10],stage_2_data_r[11],stage_2_data_r[12],stage_2_data_r[13],stage_2_data_r[14],stage_2_data_r[15],stage_2_data_r[16],stage_2_data_r[17],stage_2_data_r[18],stage_2_data_r[19],stage_2_data_r[20],stage_2_data_r[21],stage_2_data_r[22],stage_2_data_r[23],stage_2_data_r[24],stage_2_data_r[25],stage_2_data_r[26],stage_2_data_r[27],stage_2_data_r[28],stage_2_data_r[29],stage_2_data_r[30],stage_2_data_r[31]}),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_OUTPUT_SWITCH_CONTROL stage_3_output_switch_control_i
       (.OUTPUT_SELECT(OUTPUT_SELECT),
        .output_select_c(output_select_c),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_STORAGE_CE_CONTROL stage_3_storage_ce_control_i
       (.D({ce_command_c[0],ce_command_c[1]}),
        .Q({p_0_in0,stage_3_storage_ce_control_i_n_1}),
        .rx_ll_rst(rx_ll_rst),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_STORAGE_COUNT_CONTROL stage_3_storage_count_control_i
       (.D({stage_2_valid_data_counter_i_n_4,sideband_output_i_n_5}),
        .\OUTPUT_SELECT_reg[9] ({stage_2_data_v_count_r[0],stage_2_data_v_count_r[1]}),
        .Q({stage_3_storage_count_r[0],stage_3_storage_count_r[1]}),
        .SR(sideband_output_i_n_1),
        .end_storage_r_reg(stage_3_storage_count_control_i_n_3),
        .output_select_c(output_select_c),
        .stage_2_end_before_start_r(stage_2_end_before_start_r),
        .stage_2_start_with_data_r(stage_2_start_with_data_r),
        .stage_3_end_storage_r(stage_3_end_storage_r),
        .storage_not_empty_c__0(storage_not_empty_c__0),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_STORAGE_SWITCH_CONTROL stage_3_storage_switch_control_i
       (.Q({stage_3_storage_count_r[0],stage_3_storage_count_r[1]}),
        .STORAGE_SELECT(STORAGE_SELECT),
        .\STORAGE_SELECT_reg[9]_0 ({stage_2_data_v_count_r[0],stage_2_data_v_count_r[1]}),
        .stage_2_start_with_data_r(stage_2_start_with_data_r),
        .stage_3_end_storage_r(stage_3_end_storage_r),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_STORAGE_MUX stage_4_storage_mux_i
       (.E({p_0_in0,stage_3_storage_ce_control_i_n_1}),
        .Q({STORAGE_DATA[0],STORAGE_DATA[1],STORAGE_DATA[2],STORAGE_DATA[3],STORAGE_DATA[4],STORAGE_DATA[5],STORAGE_DATA[6],STORAGE_DATA[7],STORAGE_DATA[8],STORAGE_DATA[9],STORAGE_DATA[10],STORAGE_DATA[11],STORAGE_DATA[12],STORAGE_DATA[13],STORAGE_DATA[14],STORAGE_DATA[15],STORAGE_DATA[16],STORAGE_DATA[17],STORAGE_DATA[18],STORAGE_DATA[19],STORAGE_DATA[20],STORAGE_DATA[21],STORAGE_DATA[22],STORAGE_DATA[23],STORAGE_DATA[24],STORAGE_DATA[25],STORAGE_DATA[26],STORAGE_DATA[27],STORAGE_DATA[28],STORAGE_DATA[29],STORAGE_DATA[30],STORAGE_DATA[31]}),
        .\STORAGE_DATA_reg[0]_0 (\STORAGE_DATA_reg[0] ),
        .user_clk(user_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_RX_LL_UFC_DATAPATH
   (\stage_1_data_r_reg[0]_0 ,
    \UFC_OUTPUT_SELECT_reg[5] ,
    \SHIFTED_DATA_reg[0] ,
    \MUXED_DATA_reg[16] ,
    \MUXED_DATA_reg[17] ,
    \MUXED_DATA_reg[18] ,
    \MUXED_DATA_reg[19] ,
    \MUXED_DATA_reg[20] ,
    \MUXED_DATA_reg[21] ,
    \MUXED_DATA_reg[22] ,
    \MUXED_DATA_reg[23] ,
    \MUXED_DATA_reg[24] ,
    \MUXED_DATA_reg[25] ,
    \MUXED_DATA_reg[26] ,
    \MUXED_DATA_reg[27] ,
    \MUXED_DATA_reg[28] ,
    \MUXED_DATA_reg[29] ,
    \MUXED_DATA_reg[30] ,
    \MUXED_DATA_reg[31] ,
    m_axi_ufc_rx_tdata,
    m_axi_ufc_rx_tkeep,
    m_axi_ufc_rx_tlast,
    m_axi_ufc_rx_tvalid,
    rx_ll_rst,
    UFC_START,
    user_clk,
    barrel_shifter_control_i,
    \stage_1_data_r_reg[0]_1 ,
    \stage_1_data_r_reg[1]_0 ,
    \stage_1_data_r_reg[2]_0 ,
    \stage_1_data_r_reg[3]_0 ,
    \stage_1_data_r_reg[4]_0 ,
    \stage_1_data_r_reg[5]_0 ,
    \stage_1_data_r_reg[6]_0 ,
    \stage_1_data_r_reg[7]_0 ,
    \stage_1_data_r_reg[8]_0 ,
    \stage_1_data_r_reg[9]_0 ,
    \stage_1_data_r_reg[10]_0 ,
    \stage_1_data_r_reg[11]_0 ,
    \stage_1_data_r_reg[12]_0 ,
    \stage_1_data_r_reg[13]_0 ,
    \stage_1_data_r_reg[14]_0 ,
    \stage_1_data_r_reg[15]_0 ,
    \stage_1_data_r_reg[16]_0 ,
    \stage_1_data_r_reg[17]_0 ,
    \stage_1_data_r_reg[18]_0 ,
    \stage_1_data_r_reg[19]_0 ,
    \stage_1_data_r_reg[20]_0 ,
    \stage_1_data_r_reg[21]_0 ,
    \stage_1_data_r_reg[22]_0 ,
    \stage_1_data_r_reg[23]_0 ,
    \stage_1_data_r_reg[24]_0 ,
    \stage_1_data_r_reg[25]_0 ,
    \stage_1_data_r_reg[26]_0 ,
    \stage_1_data_r_reg[27]_0 ,
    \stage_1_data_r_reg[28]_0 ,
    \stage_1_data_r_reg[29]_0 ,
    \stage_1_data_r_reg[30]_0 ,
    \stage_1_data_r_reg[31]_0 ,
    Q,
    \MUXED_DATA_reg[16]_0 ,
    \MUXED_DATA_reg[17]_0 ,
    \MUXED_DATA_reg[18]_0 ,
    \MUXED_DATA_reg[19]_0 ,
    \MUXED_DATA_reg[20]_0 ,
    \MUXED_DATA_reg[21]_0 ,
    \MUXED_DATA_reg[22]_0 ,
    \MUXED_DATA_reg[23]_0 ,
    \MUXED_DATA_reg[24]_0 ,
    \MUXED_DATA_reg[25]_0 ,
    \MUXED_DATA_reg[26]_0 ,
    \MUXED_DATA_reg[27]_0 ,
    \MUXED_DATA_reg[28]_0 ,
    \MUXED_DATA_reg[29]_0 ,
    \MUXED_DATA_reg[30]_0 ,
    \MUXED_DATA_reg[31]_0 );
  output [31:0]\stage_1_data_r_reg[0]_0 ;
  output [0:0]\UFC_OUTPUT_SELECT_reg[5] ;
  output [15:0]\SHIFTED_DATA_reg[0] ;
  output \MUXED_DATA_reg[16] ;
  output \MUXED_DATA_reg[17] ;
  output \MUXED_DATA_reg[18] ;
  output \MUXED_DATA_reg[19] ;
  output \MUXED_DATA_reg[20] ;
  output \MUXED_DATA_reg[21] ;
  output \MUXED_DATA_reg[22] ;
  output \MUXED_DATA_reg[23] ;
  output \MUXED_DATA_reg[24] ;
  output \MUXED_DATA_reg[25] ;
  output \MUXED_DATA_reg[26] ;
  output \MUXED_DATA_reg[27] ;
  output \MUXED_DATA_reg[28] ;
  output \MUXED_DATA_reg[29] ;
  output \MUXED_DATA_reg[30] ;
  output \MUXED_DATA_reg[31] ;
  output [0:31]m_axi_ufc_rx_tdata;
  output [0:0]m_axi_ufc_rx_tkeep;
  output m_axi_ufc_rx_tlast;
  output m_axi_ufc_rx_tvalid;
  input rx_ll_rst;
  input UFC_START;
  input user_clk;
  input barrel_shifter_control_i;
  input \stage_1_data_r_reg[0]_1 ;
  input \stage_1_data_r_reg[1]_0 ;
  input \stage_1_data_r_reg[2]_0 ;
  input \stage_1_data_r_reg[3]_0 ;
  input \stage_1_data_r_reg[4]_0 ;
  input \stage_1_data_r_reg[5]_0 ;
  input \stage_1_data_r_reg[6]_0 ;
  input \stage_1_data_r_reg[7]_0 ;
  input \stage_1_data_r_reg[8]_0 ;
  input \stage_1_data_r_reg[9]_0 ;
  input \stage_1_data_r_reg[10]_0 ;
  input \stage_1_data_r_reg[11]_0 ;
  input \stage_1_data_r_reg[12]_0 ;
  input \stage_1_data_r_reg[13]_0 ;
  input \stage_1_data_r_reg[14]_0 ;
  input \stage_1_data_r_reg[15]_0 ;
  input \stage_1_data_r_reg[16]_0 ;
  input \stage_1_data_r_reg[17]_0 ;
  input \stage_1_data_r_reg[18]_0 ;
  input \stage_1_data_r_reg[19]_0 ;
  input \stage_1_data_r_reg[20]_0 ;
  input \stage_1_data_r_reg[21]_0 ;
  input \stage_1_data_r_reg[22]_0 ;
  input \stage_1_data_r_reg[23]_0 ;
  input \stage_1_data_r_reg[24]_0 ;
  input \stage_1_data_r_reg[25]_0 ;
  input \stage_1_data_r_reg[26]_0 ;
  input \stage_1_data_r_reg[27]_0 ;
  input \stage_1_data_r_reg[28]_0 ;
  input \stage_1_data_r_reg[29]_0 ;
  input \stage_1_data_r_reg[30]_0 ;
  input \stage_1_data_r_reg[31]_0 ;
  input [1:0]Q;
  input \MUXED_DATA_reg[16]_0 ;
  input \MUXED_DATA_reg[17]_0 ;
  input \MUXED_DATA_reg[18]_0 ;
  input \MUXED_DATA_reg[19]_0 ;
  input \MUXED_DATA_reg[20]_0 ;
  input \MUXED_DATA_reg[21]_0 ;
  input \MUXED_DATA_reg[22]_0 ;
  input \MUXED_DATA_reg[23]_0 ;
  input \MUXED_DATA_reg[24]_0 ;
  input \MUXED_DATA_reg[25]_0 ;
  input \MUXED_DATA_reg[26]_0 ;
  input \MUXED_DATA_reg[27]_0 ;
  input \MUXED_DATA_reg[28]_0 ;
  input \MUXED_DATA_reg[29]_0 ;
  input \MUXED_DATA_reg[30]_0 ;
  input \MUXED_DATA_reg[31]_0 ;

  wire BARREL_SHIFTER_CONTROL;
  wire \MUXED_DATA_reg[16] ;
  wire \MUXED_DATA_reg[16]_0 ;
  wire \MUXED_DATA_reg[17] ;
  wire \MUXED_DATA_reg[17]_0 ;
  wire \MUXED_DATA_reg[18] ;
  wire \MUXED_DATA_reg[18]_0 ;
  wire \MUXED_DATA_reg[19] ;
  wire \MUXED_DATA_reg[19]_0 ;
  wire \MUXED_DATA_reg[20] ;
  wire \MUXED_DATA_reg[20]_0 ;
  wire \MUXED_DATA_reg[21] ;
  wire \MUXED_DATA_reg[21]_0 ;
  wire \MUXED_DATA_reg[22] ;
  wire \MUXED_DATA_reg[22]_0 ;
  wire \MUXED_DATA_reg[23] ;
  wire \MUXED_DATA_reg[23]_0 ;
  wire \MUXED_DATA_reg[24] ;
  wire \MUXED_DATA_reg[24]_0 ;
  wire \MUXED_DATA_reg[25] ;
  wire \MUXED_DATA_reg[25]_0 ;
  wire \MUXED_DATA_reg[26] ;
  wire \MUXED_DATA_reg[26]_0 ;
  wire \MUXED_DATA_reg[27] ;
  wire \MUXED_DATA_reg[27]_0 ;
  wire \MUXED_DATA_reg[28] ;
  wire \MUXED_DATA_reg[28]_0 ;
  wire \MUXED_DATA_reg[29] ;
  wire \MUXED_DATA_reg[29]_0 ;
  wire \MUXED_DATA_reg[30] ;
  wire \MUXED_DATA_reg[30]_0 ;
  wire \MUXED_DATA_reg[31] ;
  wire \MUXED_DATA_reg[31]_0 ;
  wire [1:0]Q;
  wire [16:31]SHIFTED_DATA;
  wire [15:0]\SHIFTED_DATA_reg[0] ;
  wire UFC_EOF_N;
  wire [1:1]UFC_OUTPUT_SELECT;
  wire [0:0]\UFC_OUTPUT_SELECT_reg[5] ;
  wire UFC_SRC_RDY_N;
  wire UFC_START;
  wire [2:5]UFC_STORAGE_SELECT;
  wire [0:1]barrel_shifted_count_r;
  wire barrel_shifter_control_i;
  wire [0:31]m_axi_ufc_rx_tdata;
  wire [0:0]m_axi_ufc_rx_tkeep;
  wire m_axi_ufc_rx_tlast;
  wire m_axi_ufc_rx_tvalid;
  wire rx_ll_rst;
  wire rx_ufc_eof;
  wire [0:0]rx_ufc_rem;
  wire rx_ufc_src_rdy;
  wire [31:0]\stage_1_data_r_reg[0]_0 ;
  wire \stage_1_data_r_reg[0]_1 ;
  wire \stage_1_data_r_reg[10]_0 ;
  wire \stage_1_data_r_reg[11]_0 ;
  wire \stage_1_data_r_reg[12]_0 ;
  wire \stage_1_data_r_reg[13]_0 ;
  wire \stage_1_data_r_reg[14]_0 ;
  wire \stage_1_data_r_reg[15]_0 ;
  wire \stage_1_data_r_reg[16]_0 ;
  wire \stage_1_data_r_reg[17]_0 ;
  wire \stage_1_data_r_reg[18]_0 ;
  wire \stage_1_data_r_reg[19]_0 ;
  wire \stage_1_data_r_reg[1]_0 ;
  wire \stage_1_data_r_reg[20]_0 ;
  wire \stage_1_data_r_reg[21]_0 ;
  wire \stage_1_data_r_reg[22]_0 ;
  wire \stage_1_data_r_reg[23]_0 ;
  wire \stage_1_data_r_reg[24]_0 ;
  wire \stage_1_data_r_reg[25]_0 ;
  wire \stage_1_data_r_reg[26]_0 ;
  wire \stage_1_data_r_reg[27]_0 ;
  wire \stage_1_data_r_reg[28]_0 ;
  wire \stage_1_data_r_reg[29]_0 ;
  wire \stage_1_data_r_reg[2]_0 ;
  wire \stage_1_data_r_reg[30]_0 ;
  wire \stage_1_data_r_reg[31]_0 ;
  wire \stage_1_data_r_reg[3]_0 ;
  wire \stage_1_data_r_reg[4]_0 ;
  wire \stage_1_data_r_reg[5]_0 ;
  wire \stage_1_data_r_reg[6]_0 ;
  wire \stage_1_data_r_reg[7]_0 ;
  wire \stage_1_data_r_reg[8]_0 ;
  wire \stage_1_data_r_reg[9]_0 ;
  wire stage_1_ufc_start_r;
  wire [1:1]storage_count_2x_c;
  wire ufc_sideband_output_i_n_0;
  wire ufc_storage_count_control_i_n_0;
  wire ufc_storage_count_control_i_n_1;
  wire ufc_storage_count_control_i_n_3;
  wire ufc_storage_count_control_i_n_4;
  wire ufc_storage_count_control_i_n_5;
  wire ufc_storage_count_control_i_n_6;
  wire ufc_storage_mux_i_n_0;
  wire ufc_storage_mux_i_n_1;
  wire ufc_storage_mux_i_n_10;
  wire ufc_storage_mux_i_n_11;
  wire ufc_storage_mux_i_n_12;
  wire ufc_storage_mux_i_n_13;
  wire ufc_storage_mux_i_n_14;
  wire ufc_storage_mux_i_n_15;
  wire ufc_storage_mux_i_n_2;
  wire ufc_storage_mux_i_n_3;
  wire ufc_storage_mux_i_n_4;
  wire ufc_storage_mux_i_n_5;
  wire ufc_storage_mux_i_n_6;
  wire ufc_storage_mux_i_n_7;
  wire ufc_storage_mux_i_n_8;
  wire ufc_storage_mux_i_n_9;
  wire \ufc_storage_switch_control_i/_n_0 ;
  wire ufc_storage_switch_control_i_n_0;
  wire user_clk;

  FDRE UFC_RX_EOF_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(UFC_EOF_N),
        .Q(rx_ufc_eof),
        .R(1'b0));
  FDRE \UFC_RX_REM_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(ufc_sideband_output_i_n_0),
        .Q(rx_ufc_rem),
        .R(1'b0));
  FDSE UFC_RX_SRC_RDY_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(UFC_SRC_RDY_N),
        .Q(rx_ufc_src_rdy),
        .S(rx_ll_rst));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axi_ufc_rx_tkeep[3]_INST_0 
       (.I0(rx_ufc_eof),
        .I1(rx_ufc_rem),
        .O(m_axi_ufc_rx_tkeep));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT1 #(
    .INIT(2'h1)) 
    m_axi_ufc_rx_tlast_INST_0
       (.I0(rx_ufc_eof),
        .O(m_axi_ufc_rx_tlast));
  LUT1 #(
    .INIT(2'h1)) 
    m_axi_ufc_rx_tvalid_INST_0
       (.I0(rx_ufc_src_rdy),
        .O(m_axi_ufc_rx_tvalid));
  FDRE \stage_1_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_1 ),
        .Q(\stage_1_data_r_reg[0]_0 [31]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[10]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [21]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[11]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [20]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[12]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [19]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[13]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [18]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[14]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [17]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[15]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [16]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[16]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[17]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[18]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[19]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[1]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [30]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[20]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[21]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[22]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[23]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[24]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[25]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[26]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[27]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[28]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[29]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[2]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [29]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[30]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[31]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[3]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [28]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[4]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [27]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[5]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [26]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[6]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [25]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[7]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [24]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[8]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [23]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[9]_0 ),
        .Q(\stage_1_data_r_reg[0]_0 [22]),
        .R(1'b0));
  FDRE stage_1_ufc_start_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(UFC_START),
        .Q(stage_1_ufc_start_r),
        .R(rx_ll_rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_UFC_BARREL_SHIFTER_CONTROL ufc_barrel_shifter_control_i
       (.BARREL_SHIFTER_CONTROL(BARREL_SHIFTER_CONTROL),
        .barrel_shifter_control_i(barrel_shifter_control_i),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_UFC_BARREL_SHIFTER ufc_barrel_shifter_i
       (.BARREL_SHIFTER_CONTROL(BARREL_SHIFTER_CONTROL),
        .SHIFTED_DATA({SHIFTED_DATA[16],SHIFTED_DATA[17],SHIFTED_DATA[18],SHIFTED_DATA[19],SHIFTED_DATA[20],SHIFTED_DATA[21],SHIFTED_DATA[22],SHIFTED_DATA[23],SHIFTED_DATA[24],SHIFTED_DATA[25],SHIFTED_DATA[26],SHIFTED_DATA[27],SHIFTED_DATA[28],SHIFTED_DATA[29],SHIFTED_DATA[30],SHIFTED_DATA[31]}),
        .\SHIFTED_DATA_reg[0]_0 (\SHIFTED_DATA_reg[0] ),
        .\SHIFTED_DATA_reg[0]_1 (\stage_1_data_r_reg[0]_0 ),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_UFC_OUTPUT_MUX ufc_output_mux_i
       (.D({ufc_storage_mux_i_n_0,ufc_storage_mux_i_n_1,ufc_storage_mux_i_n_2,ufc_storage_mux_i_n_3,ufc_storage_mux_i_n_4,ufc_storage_mux_i_n_5,ufc_storage_mux_i_n_6,ufc_storage_mux_i_n_7,ufc_storage_mux_i_n_8,ufc_storage_mux_i_n_9,ufc_storage_mux_i_n_10,ufc_storage_mux_i_n_11,ufc_storage_mux_i_n_12,ufc_storage_mux_i_n_13,ufc_storage_mux_i_n_14,ufc_storage_mux_i_n_15}),
        .\MUXED_DATA_reg[16]_0 (\MUXED_DATA_reg[16]_0 ),
        .\MUXED_DATA_reg[17]_0 (\MUXED_DATA_reg[17]_0 ),
        .\MUXED_DATA_reg[18]_0 (\MUXED_DATA_reg[18]_0 ),
        .\MUXED_DATA_reg[19]_0 (\MUXED_DATA_reg[19]_0 ),
        .\MUXED_DATA_reg[20]_0 (\MUXED_DATA_reg[20]_0 ),
        .\MUXED_DATA_reg[21]_0 (\MUXED_DATA_reg[21]_0 ),
        .\MUXED_DATA_reg[22]_0 (\MUXED_DATA_reg[22]_0 ),
        .\MUXED_DATA_reg[23]_0 (\MUXED_DATA_reg[23]_0 ),
        .\MUXED_DATA_reg[24]_0 (\MUXED_DATA_reg[24]_0 ),
        .\MUXED_DATA_reg[25]_0 (\MUXED_DATA_reg[25]_0 ),
        .\MUXED_DATA_reg[26]_0 (\MUXED_DATA_reg[26]_0 ),
        .\MUXED_DATA_reg[27]_0 (\MUXED_DATA_reg[27]_0 ),
        .\MUXED_DATA_reg[28]_0 (\MUXED_DATA_reg[28]_0 ),
        .\MUXED_DATA_reg[29]_0 (\MUXED_DATA_reg[29]_0 ),
        .\MUXED_DATA_reg[30]_0 (\MUXED_DATA_reg[30]_0 ),
        .\MUXED_DATA_reg[31]_0 (\MUXED_DATA_reg[31]_0 ),
        .UFC_OUTPUT_SELECT(UFC_OUTPUT_SELECT),
        .m_axi_ufc_rx_tdata(m_axi_ufc_rx_tdata),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_UFC_OUTPUT_SWITCH_CONTROL ufc_output_switch_control_i
       (.Q({ufc_storage_count_control_i_n_1,storage_count_2x_c}),
        .UFC_OUTPUT_SELECT(UFC_OUTPUT_SELECT),
        .\UFC_OUTPUT_SELECT_reg[5]_0 (\UFC_OUTPUT_SELECT_reg[5] ),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_UFC_SIDEBAND_OUTPUT ufc_sideband_output_i
       (.Q({ufc_storage_count_control_i_n_1,storage_count_2x_c}),
        .UFC_EOF_N(UFC_EOF_N),
        .UFC_EOF_N_reg_0({barrel_shifted_count_r[0],barrel_shifted_count_r[1]}),
        .\UFC_REM_reg[0]_0 (ufc_sideband_output_i_n_0),
        .\UFC_REM_reg[0]_1 (ufc_storage_count_control_i_n_5),
        .UFC_SRC_RDY_N(UFC_SRC_RDY_N),
        .UFC_SRC_RDY_N_reg_0(ufc_storage_count_control_i_n_6),
        .rx_ll_rst(rx_ll_rst),
        .stage_1_ufc_start_r(stage_1_ufc_start_r),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_UFC_STORAGE_COUNT_CONTROL ufc_storage_count_control_i
       (.D(ufc_storage_count_control_i_n_4),
        .Q({ufc_storage_count_control_i_n_1,storage_count_2x_c}),
        .rx_ll_rst(rx_ll_rst),
        .stage_1_ufc_start_r(stage_1_ufc_start_r),
        .\storage_count_r_reg[1]_0 (ufc_storage_count_control_i_n_0),
        .\storage_count_r_reg[1]_1 (ufc_storage_count_control_i_n_3),
        .\storage_count_r_reg[1]_2 (ufc_storage_count_control_i_n_5),
        .\storage_count_r_reg[1]_3 (ufc_storage_count_control_i_n_6),
        .\storage_count_r_reg[1]_4 ({barrel_shifted_count_r[0],barrel_shifted_count_r[1]}),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_UFC_STORAGE_MUX ufc_storage_mux_i
       (.D({ufc_storage_mux_i_n_0,ufc_storage_mux_i_n_1,ufc_storage_mux_i_n_2,ufc_storage_mux_i_n_3,ufc_storage_mux_i_n_4,ufc_storage_mux_i_n_5,ufc_storage_mux_i_n_6,ufc_storage_mux_i_n_7,ufc_storage_mux_i_n_8,ufc_storage_mux_i_n_9,ufc_storage_mux_i_n_10,ufc_storage_mux_i_n_11,ufc_storage_mux_i_n_12,ufc_storage_mux_i_n_13,ufc_storage_mux_i_n_14,ufc_storage_mux_i_n_15}),
        .\MUXED_DATA_reg[0]_0 (ufc_storage_switch_control_i_n_0),
        .\MUXED_DATA_reg[0]_1 (\SHIFTED_DATA_reg[0] ),
        .\MUXED_DATA_reg[16]_0 (\MUXED_DATA_reg[16] ),
        .\MUXED_DATA_reg[17]_0 (\MUXED_DATA_reg[17] ),
        .\MUXED_DATA_reg[18]_0 (\MUXED_DATA_reg[18] ),
        .\MUXED_DATA_reg[19]_0 (\MUXED_DATA_reg[19] ),
        .\MUXED_DATA_reg[20]_0 (\MUXED_DATA_reg[20] ),
        .\MUXED_DATA_reg[21]_0 (\MUXED_DATA_reg[21] ),
        .\MUXED_DATA_reg[22]_0 (\MUXED_DATA_reg[22] ),
        .\MUXED_DATA_reg[23]_0 (\MUXED_DATA_reg[23] ),
        .\MUXED_DATA_reg[24]_0 (\MUXED_DATA_reg[24] ),
        .\MUXED_DATA_reg[25]_0 (\MUXED_DATA_reg[25] ),
        .\MUXED_DATA_reg[26]_0 (\MUXED_DATA_reg[26] ),
        .\MUXED_DATA_reg[27]_0 (\MUXED_DATA_reg[27] ),
        .\MUXED_DATA_reg[28]_0 (\MUXED_DATA_reg[28] ),
        .\MUXED_DATA_reg[29]_0 (\MUXED_DATA_reg[29] ),
        .\MUXED_DATA_reg[30]_0 (\MUXED_DATA_reg[30] ),
        .\MUXED_DATA_reg[31]_0 (\MUXED_DATA_reg[31] ),
        .SHIFTED_DATA({SHIFTED_DATA[16],SHIFTED_DATA[17],SHIFTED_DATA[18],SHIFTED_DATA[19],SHIFTED_DATA[20],SHIFTED_DATA[21],SHIFTED_DATA[22],SHIFTED_DATA[23],SHIFTED_DATA[24],SHIFTED_DATA[25],SHIFTED_DATA[26],SHIFTED_DATA[27],SHIFTED_DATA[28],SHIFTED_DATA[29],SHIFTED_DATA[30],SHIFTED_DATA[31]}),
        .UFC_STORAGE_SELECT({UFC_STORAGE_SELECT[2],UFC_STORAGE_SELECT[4],UFC_STORAGE_SELECT[5]}),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_UFC_STORAGE_SWITCH_CONTROL ufc_storage_switch_control_i
       (.D(ufc_storage_count_control_i_n_4),
        .Q({ufc_storage_count_control_i_n_1,storage_count_2x_c}),
        .\UFC_STORAGE_SELECT_reg[0]_0 (ufc_storage_switch_control_i_n_0),
        .\UFC_STORAGE_SELECT_reg[0]_1 (ufc_storage_count_control_i_n_0),
        .\UFC_STORAGE_SELECT_reg[1]_0 (ufc_storage_count_control_i_n_3),
        .\UFC_STORAGE_SELECT_reg[2]_0 ({UFC_STORAGE_SELECT[2],UFC_STORAGE_SELECT[4],UFC_STORAGE_SELECT[5]}),
        .\UFC_STORAGE_SELECT_reg[4]_0 (\ufc_storage_switch_control_i/_n_0 ),
        .\UFC_STORAGE_SELECT_reg[4]_1 ({barrel_shifted_count_r[0],barrel_shifted_count_r[1]}),
        .stage_1_ufc_start_r(stage_1_ufc_start_r),
        .user_clk(user_clk));
  LUT1 #(
    .INIT(2'h1)) 
    \ufc_storage_switch_control_i/ 
       (.I0(ufc_storage_count_control_i_n_1),
        .O(\ufc_storage_switch_control_i/_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_VALID_DATA_COUNTER ufc_valid_data_counter
       (.\COUNT_reg[0]_0 ({barrel_shifted_count_r[0],barrel_shifted_count_r[1]}),
        .Q(Q),
        .rx_ll_rst(rx_ll_rst),
        .user_clk(user_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_SIDEBAND_OUTPUT
   (stage_3_end_storage_r,
    SR,
    SRC_RDY_N,
    EOF_N,
    FRAME_ERR_RESULT,
    D,
    \RX_REM_reg[0]_0 ,
    end_storage_r0,
    user_clk,
    EOF_N_reg_0,
    FRAME_ERR_RESULT0,
    stage_2_start_with_data_r,
    stage_2_pad_r,
    excess_c,
    stage_2_end_before_start_r,
    Q,
    \RX_REM_reg[0]_1 ,
    stage_2_frame_err_r,
    start_rx_i);
  output stage_3_end_storage_r;
  output [0:0]SR;
  output SRC_RDY_N;
  output EOF_N;
  output FRAME_ERR_RESULT;
  output [0:0]D;
  output [1:0]\RX_REM_reg[0]_0 ;
  input end_storage_r0;
  input user_clk;
  input EOF_N_reg_0;
  input FRAME_ERR_RESULT0;
  input stage_2_start_with_data_r;
  input stage_2_pad_r;
  input excess_c;
  input stage_2_end_before_start_r;
  input [0:0]Q;
  input [0:0]\RX_REM_reg[0]_1 ;
  input stage_2_frame_err_r;
  input start_rx_i;

  wire [0:0]D;
  wire EOF_N;
  wire EOF_N_reg_0;
  wire FRAME_ERR_RESULT;
  wire FRAME_ERR_RESULT0;
  wire [0:0]Q;
  wire [1:0]\RX_REM_reg[0]_0 ;
  wire [0:0]\RX_REM_reg[0]_1 ;
  wire [0:0]SR;
  wire SRC_RDY_N;
  wire SRC_RDY_N_i_1_n_0;
  wire end_storage_r0;
  wire excess_c;
  wire pad_storage_r;
  wire pad_storage_r_i_1_n_0;
  wire [1:0]rx_rem_c;
  wire stage_2_end_before_start_r;
  wire stage_2_frame_err_r;
  wire stage_2_pad_r;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire start_rx_i;
  wire user_clk;

  FDRE EOF_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(EOF_N_reg_0),
        .Q(EOF_N),
        .R(1'b0));
  FDRE FRAME_ERR_RESULT_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(FRAME_ERR_RESULT0),
        .Q(FRAME_ERR_RESULT),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \RX_REM[0]_i_1 
       (.I0(stage_3_end_storage_r),
        .I1(stage_2_start_with_data_r),
        .I2(Q),
        .I3(\RX_REM_reg[0]_1 ),
        .O(rx_rem_c[1]));
  LUT4 #(
    .INIT(16'h0E0F)) 
    \RX_REM[1]_i_1 
       (.I0(stage_3_end_storage_r),
        .I1(stage_2_start_with_data_r),
        .I2(pad_storage_r),
        .I3(stage_2_pad_r),
        .O(rx_rem_c[0]));
  FDRE \RX_REM_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_rem_c[1]),
        .Q(\RX_REM_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \RX_REM_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_rem_c[0]),
        .Q(\RX_REM_reg[0]_0 [0]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0145)) 
    SRC_RDY_N_i_1
       (.I0(stage_3_end_storage_r),
        .I1(stage_2_start_with_data_r),
        .I2(excess_c),
        .I3(stage_2_end_before_start_r),
        .O(SRC_RDY_N_i_1_n_0));
  FDSE SRC_RDY_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(SRC_RDY_N_i_1_n_0),
        .Q(SRC_RDY_N),
        .S(SR));
  FDRE end_storage_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(end_storage_r0),
        .Q(stage_3_end_storage_r),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAABBABBAAAAAAAA)) 
    pad_storage_r_i_1
       (.I0(stage_2_pad_r),
        .I1(stage_3_end_storage_r),
        .I2(stage_2_start_with_data_r),
        .I3(excess_c),
        .I4(stage_2_end_before_start_r),
        .I5(pad_storage_r),
        .O(pad_storage_r_i_1_n_0));
  FDRE pad_storage_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(pad_storage_r_i_1_n_0),
        .Q(pad_storage_r),
        .R(SR));
  LUT2 #(
    .INIT(4'hB)) 
    \storage_count_r[0]_i_1 
       (.I0(stage_2_frame_err_r),
        .I1(start_rx_i),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hE1F0)) 
    \storage_count_r[1]_i_1 
       (.I0(stage_3_end_storage_r),
        .I1(stage_2_start_with_data_r),
        .I2(Q),
        .I3(\RX_REM_reg[0]_1 ),
        .O(D));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_STANDARD_CC_MODULE
   (warn_cc,
    next_ufc_idle_c,
    Q,
    \cc_count_r_reg[5]_0 ,
    user_clk,
    ufc_idle_r_reg,
    s_axi_ufc_tx_req);
  output warn_cc;
  output next_ufc_idle_c;
  output Q;
  input \cc_count_r_reg[5]_0 ;
  input user_clk;
  input ufc_idle_r_reg;
  input s_axi_ufc_tx_req;

  wire DO_CC_i_1_n_0;
  wire Q;
  wire WARN_CC_i_1_n_0;
  wire \cc_count_r_reg[5]_0 ;
  wire \cc_count_r_reg_n_0_[5] ;
  wire cc_idle_count_done_c;
  wire count_13d_flop_r_reg_r_n_0;
  wire \count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0 ;
  wire \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0 ;
  wire \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0 ;
  wire count_13d_srl_r_reg_gate_n_0;
  wire count_13d_srl_r_reg_r_0_n_0;
  wire count_13d_srl_r_reg_r_1_n_0;
  wire count_13d_srl_r_reg_r_2_n_0;
  wire count_13d_srl_r_reg_r_3_n_0;
  wire count_13d_srl_r_reg_r_4_n_0;
  wire count_13d_srl_r_reg_r_5_n_0;
  wire count_13d_srl_r_reg_r_6_n_0;
  wire count_13d_srl_r_reg_r_7_n_0;
  wire count_13d_srl_r_reg_r_8_n_0;
  wire count_13d_srl_r_reg_r_9_n_0;
  wire count_13d_srl_r_reg_r_n_0;
  wire count_16d_flop_r;
  wire count_16d_flop_r_i_1_n_0;
  wire count_16d_srl_r0;
  wire \count_16d_srl_r_reg_n_0_[0] ;
  wire \count_16d_srl_r_reg_n_0_[10] ;
  wire \count_16d_srl_r_reg_n_0_[11] ;
  wire \count_16d_srl_r_reg_n_0_[12] ;
  wire \count_16d_srl_r_reg_n_0_[13] ;
  wire \count_16d_srl_r_reg_n_0_[14] ;
  wire \count_16d_srl_r_reg_n_0_[1] ;
  wire \count_16d_srl_r_reg_n_0_[2] ;
  wire \count_16d_srl_r_reg_n_0_[3] ;
  wire \count_16d_srl_r_reg_n_0_[4] ;
  wire \count_16d_srl_r_reg_n_0_[5] ;
  wire \count_16d_srl_r_reg_n_0_[6] ;
  wire \count_16d_srl_r_reg_n_0_[7] ;
  wire \count_16d_srl_r_reg_n_0_[8] ;
  wire \count_16d_srl_r_reg_n_0_[9] ;
  wire count_24d_flop_r;
  wire count_24d_flop_r_i_1_n_0;
  wire count_24d_srl_r0;
  wire \count_24d_srl_r_reg_n_0_[0] ;
  wire \count_24d_srl_r_reg_n_0_[10] ;
  wire \count_24d_srl_r_reg_n_0_[1] ;
  wire \count_24d_srl_r_reg_n_0_[2] ;
  wire \count_24d_srl_r_reg_n_0_[3] ;
  wire \count_24d_srl_r_reg_n_0_[4] ;
  wire \count_24d_srl_r_reg_n_0_[5] ;
  wire \count_24d_srl_r_reg_n_0_[6] ;
  wire \count_24d_srl_r_reg_n_0_[7] ;
  wire \count_24d_srl_r_reg_n_0_[8] ;
  wire \count_24d_srl_r_reg_n_0_[9] ;
  wire next_ufc_idle_c;
  wire [1:0]p_2_in;
  wire [2:2]p_3_out;
  wire \prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1_n_0 ;
  wire \prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_2_n_0 ;
  wire prepare_count_r_reg_gate_n_0;
  wire reset_r;
  wire s_axi_ufc_tx_req;
  wire ufc_idle_r_reg;
  wire user_clk;
  wire warn_cc;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    DO_CC_i_1
       (.I0(p_2_in[1]),
        .I1(\cc_count_r_reg_n_0_[5] ),
        .I2(p_2_in[0]),
        .I3(p_3_out),
        .I4(reset_r),
        .O(DO_CC_i_1_n_0));
  FDRE DO_CC_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(DO_CC_i_1_n_0),
        .Q(Q),
        .R(\cc_count_r_reg[5]_0 ));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    WARN_CC_i_1
       (.I0(\count_24d_srl_r_reg_n_0_[10] ),
        .I1(\count_16d_srl_r_reg_n_0_[14] ),
        .I2(count_16d_srl_r0),
        .I3(p_3_out),
        .I4(warn_cc),
        .O(WARN_CC_i_1_n_0));
  FDRE WARN_CC_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(WARN_CC_i_1_n_0),
        .Q(warn_cc),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_3_out),
        .Q(p_2_in[1]),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_in[1]),
        .Q(p_2_in[0]),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_in[0]),
        .Q(\cc_count_r_reg_n_0_[5] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_flop_r_reg_r
       (.C(user_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(count_13d_flop_r_reg_r_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9 
       (.C(user_clk),
        .CE(1'b1),
        .D(\count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0 ),
        .Q(\count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0 ),
        .R(1'b0));
  FDRE \count_13d_srl_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_gate_n_0),
        .Q(count_16d_srl_r0),
        .R(\cc_count_r_reg[5]_0 ));
  (* srl_bus_name = "inst/\standard_cc_module_i/count_13d_srl_r_reg " *) 
  (* srl_name = "inst/\standard_cc_module_i/count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8 " *) 
  SRL16E \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0 ),
        .Q(\count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1 
       (.I0(count_16d_srl_r0),
        .I1(reset_r),
        .O(\count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    count_13d_srl_r_reg_gate
       (.I0(\count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0 ),
        .I1(count_13d_srl_r_reg_r_9_n_0),
        .O(count_13d_srl_r_reg_gate_n_0));
  FDRE count_13d_srl_r_reg_r
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_flop_r_reg_r_n_0),
        .Q(count_13d_srl_r_reg_r_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_srl_r_reg_r_0
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_n_0),
        .Q(count_13d_srl_r_reg_r_0_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_srl_r_reg_r_1
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_0_n_0),
        .Q(count_13d_srl_r_reg_r_1_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_srl_r_reg_r_2
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_1_n_0),
        .Q(count_13d_srl_r_reg_r_2_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_srl_r_reg_r_3
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_2_n_0),
        .Q(count_13d_srl_r_reg_r_3_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_srl_r_reg_r_4
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_3_n_0),
        .Q(count_13d_srl_r_reg_r_4_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_srl_r_reg_r_5
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_4_n_0),
        .Q(count_13d_srl_r_reg_r_5_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_srl_r_reg_r_6
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_5_n_0),
        .Q(count_13d_srl_r_reg_r_6_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_srl_r_reg_r_7
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_6_n_0),
        .Q(count_13d_srl_r_reg_r_7_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_srl_r_reg_r_8
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_7_n_0),
        .Q(count_13d_srl_r_reg_r_8_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE count_13d_srl_r_reg_r_9
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_8_n_0),
        .Q(count_13d_srl_r_reg_r_9_n_0),
        .R(\cc_count_r_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    count_16d_flop_r_i_1
       (.I0(\count_16d_srl_r_reg_n_0_[14] ),
        .I1(count_16d_srl_r0),
        .I2(reset_r),
        .I3(count_16d_flop_r),
        .O(count_16d_flop_r_i_1_n_0));
  FDRE count_16d_flop_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(count_16d_flop_r_i_1_n_0),
        .Q(count_16d_flop_r),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[0] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(count_16d_flop_r),
        .Q(\count_16d_srl_r_reg_n_0_[0] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[10] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[9] ),
        .Q(\count_16d_srl_r_reg_n_0_[10] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[11] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[10] ),
        .Q(\count_16d_srl_r_reg_n_0_[11] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[12] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[11] ),
        .Q(\count_16d_srl_r_reg_n_0_[12] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[13] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[12] ),
        .Q(\count_16d_srl_r_reg_n_0_[13] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[14] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[13] ),
        .Q(\count_16d_srl_r_reg_n_0_[14] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[1] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[0] ),
        .Q(\count_16d_srl_r_reg_n_0_[1] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[2] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[1] ),
        .Q(\count_16d_srl_r_reg_n_0_[2] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[3] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[2] ),
        .Q(\count_16d_srl_r_reg_n_0_[3] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[4] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[3] ),
        .Q(\count_16d_srl_r_reg_n_0_[4] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[5] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[4] ),
        .Q(\count_16d_srl_r_reg_n_0_[5] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[6] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[5] ),
        .Q(\count_16d_srl_r_reg_n_0_[6] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[7] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[6] ),
        .Q(\count_16d_srl_r_reg_n_0_[7] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[8] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[7] ),
        .Q(\count_16d_srl_r_reg_n_0_[8] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_16d_srl_r_reg[9] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[8] ),
        .Q(\count_16d_srl_r_reg_n_0_[9] ),
        .R(\cc_count_r_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT5 #(
    .INIT(32'hFFBFFF80)) 
    count_24d_flop_r_i_1
       (.I0(\count_24d_srl_r_reg_n_0_[10] ),
        .I1(count_16d_srl_r0),
        .I2(\count_16d_srl_r_reg_n_0_[14] ),
        .I3(reset_r),
        .I4(count_24d_flop_r),
        .O(count_24d_flop_r_i_1_n_0));
  FDRE count_24d_flop_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(count_24d_flop_r_i_1_n_0),
        .Q(count_24d_flop_r),
        .R(\cc_count_r_reg[5]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_24d_srl_r[0]_i_1 
       (.I0(count_16d_srl_r0),
        .I1(\count_16d_srl_r_reg_n_0_[14] ),
        .O(count_24d_srl_r0));
  FDRE \count_24d_srl_r_reg[0] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(count_24d_flop_r),
        .Q(\count_24d_srl_r_reg_n_0_[0] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[10] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[9] ),
        .Q(\count_24d_srl_r_reg_n_0_[10] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[1] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[0] ),
        .Q(\count_24d_srl_r_reg_n_0_[1] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[2] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[1] ),
        .Q(\count_24d_srl_r_reg_n_0_[2] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[3] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[2] ),
        .Q(\count_24d_srl_r_reg_n_0_[3] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[4] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[3] ),
        .Q(\count_24d_srl_r_reg_n_0_[4] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[5] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[4] ),
        .Q(\count_24d_srl_r_reg_n_0_[5] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[6] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[5] ),
        .Q(\count_24d_srl_r_reg_n_0_[6] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[7] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[6] ),
        .Q(\count_24d_srl_r_reg_n_0_[7] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[8] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[7] ),
        .Q(\count_24d_srl_r_reg_n_0_[8] ),
        .R(\cc_count_r_reg[5]_0 ));
  FDRE \count_24d_srl_r_reg[9] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[8] ),
        .Q(\count_24d_srl_r_reg_n_0_[9] ),
        .R(\cc_count_r_reg[5]_0 ));
  (* srl_bus_name = "inst/\standard_cc_module_i/prepare_count_r_reg " *) 
  (* srl_name = "inst/\standard_cc_module_i/prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(cc_idle_count_done_c),
        .Q(\prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1_i_1 
       (.I0(count_16d_srl_r0),
        .I1(\count_16d_srl_r_reg_n_0_[14] ),
        .I2(\count_24d_srl_r_reg_n_0_[10] ),
        .O(cc_idle_count_done_c));
  FDRE \prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_2 
       (.C(user_clk),
        .CE(1'b1),
        .D(\prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1_n_0 ),
        .Q(\prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_2_n_0 ),
        .R(1'b0));
  FDRE \prepare_count_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(prepare_count_r_reg_gate_n_0),
        .Q(p_3_out),
        .R(\cc_count_r_reg[5]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    prepare_count_r_reg_gate
       (.I0(\prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_2_n_0 ),
        .I1(count_13d_srl_r_reg_r_2_n_0),
        .O(prepare_count_r_reg_gate_n_0));
  FDRE reset_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(\cc_count_r_reg[5]_0 ),
        .Q(reset_r),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hA8AA)) 
    ufc_idle_r_i_1
       (.I0(ufc_idle_r_reg),
        .I1(Q),
        .I2(warn_cc),
        .I3(s_axi_ufc_tx_req),
        .O(next_ufc_idle_c));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_STORAGE_CE_CONTROL
   (Q,
    rx_ll_rst,
    D,
    user_clk);
  output [1:0]Q;
  input rx_ll_rst;
  input [1:0]D;
  input user_clk;

  wire [1:0]D;
  wire [1:0]Q;
  wire rx_ll_rst;
  wire user_clk;

  FDRE \STORAGE_CE_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(rx_ll_rst));
  FDRE \STORAGE_CE_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(rx_ll_rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_STORAGE_COUNT_CONTROL
   (output_select_c,
    Q,
    end_storage_r_reg,
    storage_not_empty_c__0,
    stage_3_end_storage_r,
    stage_2_start_with_data_r,
    \OUTPUT_SELECT_reg[9] ,
    stage_2_end_before_start_r,
    SR,
    D,
    user_clk);
  output [0:0]output_select_c;
  output [1:0]Q;
  output end_storage_r_reg;
  output storage_not_empty_c__0;
  input stage_3_end_storage_r;
  input stage_2_start_with_data_r;
  input [1:0]\OUTPUT_SELECT_reg[9] ;
  input stage_2_end_before_start_r;
  input [0:0]SR;
  input [1:0]D;
  input user_clk;

  wire [1:0]D;
  wire [1:0]\OUTPUT_SELECT_reg[9] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire end_storage_r_reg;
  wire [0:0]output_select_c;
  wire stage_2_end_before_start_r;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire storage_not_empty_c__0;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h01555555)) 
    EOF_N_i_1
       (.I0(stage_3_end_storage_r),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(stage_2_end_before_start_r),
        .I4(stage_2_start_with_data_r),
        .O(end_storage_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'hE)) 
    FRAME_ERR_RESULT_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(storage_not_empty_c__0));
  LUT6 #(
    .INIT(64'h0000010001000100)) 
    \OUTPUT_SELECT[9]_i_1 
       (.I0(stage_3_end_storage_r),
        .I1(stage_2_start_with_data_r),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\OUTPUT_SELECT_reg[9] [0]),
        .I5(\OUTPUT_SELECT_reg[9] [1]),
        .O(output_select_c));
  FDRE \storage_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \storage_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_STORAGE_MUX
   (Q,
    E,
    \STORAGE_DATA_reg[0]_0 ,
    user_clk);
  output [31:0]Q;
  input [1:0]E;
  input [31:0]\STORAGE_DATA_reg[0]_0 ;
  input user_clk;

  wire [1:0]E;
  wire [31:0]Q;
  wire [31:0]\STORAGE_DATA_reg[0]_0 ;
  wire user_clk;

  FDRE \STORAGE_DATA_reg[0] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_reg[0]_0 [31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[10] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_reg[0]_0 [21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[11] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_reg[0]_0 [20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[12] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_reg[0]_0 [19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[13] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_reg[0]_0 [18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[14] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_reg[0]_0 [17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[15] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_reg[0]_0 [16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[16] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_reg[0]_0 [15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[17] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_reg[0]_0 [14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[18] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_reg[0]_0 [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[19] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_reg[0]_0 [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[1] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_reg[0]_0 [30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[20] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_reg[0]_0 [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[21] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_reg[0]_0 [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[22] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_reg[0]_0 [9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[23] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_reg[0]_0 [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[24] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_reg[0]_0 [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[25] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_reg[0]_0 [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[26] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_reg[0]_0 [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[27] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_reg[0]_0 [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[28] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_reg[0]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[29] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_reg[0]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[2] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_reg[0]_0 [29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[30] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_reg[0]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[31] 
       (.C(user_clk),
        .CE(E[0]),
        .D(\STORAGE_DATA_reg[0]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[3] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_reg[0]_0 [28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[4] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_reg[0]_0 [27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[5] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_reg[0]_0 [26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[6] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_reg[0]_0 [25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[7] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_reg[0]_0 [24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[8] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_reg[0]_0 [23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[9] 
       (.C(user_clk),
        .CE(E[1]),
        .D(\STORAGE_DATA_reg[0]_0 [22]),
        .Q(Q[22]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_STORAGE_SWITCH_CONTROL
   (STORAGE_SELECT,
    Q,
    \STORAGE_SELECT_reg[9]_0 ,
    stage_2_start_with_data_r,
    stage_3_end_storage_r,
    user_clk);
  output [1:0]STORAGE_SELECT;
  input [1:0]Q;
  input [1:0]\STORAGE_SELECT_reg[9]_0 ;
  input stage_2_start_with_data_r;
  input stage_3_end_storage_r;
  input user_clk;

  wire [1:0]Q;
  wire [1:0]STORAGE_SELECT;
  wire \STORAGE_SELECT[4]_i_1_n_0 ;
  wire \STORAGE_SELECT[9]_i_1_n_0 ;
  wire [1:0]\STORAGE_SELECT_reg[9]_0 ;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire user_clk;

  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \STORAGE_SELECT[4]_i_1 
       (.I0(Q[0]),
        .I1(\STORAGE_SELECT_reg[9]_0 [1]),
        .I2(Q[1]),
        .I3(\STORAGE_SELECT_reg[9]_0 [0]),
        .I4(stage_2_start_with_data_r),
        .I5(stage_3_end_storage_r),
        .O(\STORAGE_SELECT[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF14)) 
    \STORAGE_SELECT[9]_i_1 
       (.I0(Q[0]),
        .I1(\STORAGE_SELECT_reg[9]_0 [0]),
        .I2(\STORAGE_SELECT_reg[9]_0 [1]),
        .I3(stage_2_start_with_data_r),
        .I4(stage_3_end_storage_r),
        .O(\STORAGE_SELECT[9]_i_1_n_0 ));
  FDRE \STORAGE_SELECT_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\STORAGE_SELECT[4]_i_1_n_0 ),
        .Q(STORAGE_SELECT[1]),
        .R(1'b0));
  FDRE \STORAGE_SELECT_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\STORAGE_SELECT[9]_i_1_n_0 ),
        .Q(STORAGE_SELECT[0]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_SYM_DEC_4BYTE
   (RX_NEG,
    \left_align_select_r_reg[0]_0 ,
    \left_align_select_r_reg[1]_0 ,
    got_v_i,
    D,
    rx_pe_data_striped_i,
    first_v_received_r,
    \RX_SUF_reg[1]_0 ,
    Q,
    \RX_PE_DATA_reg[26]_0 ,
    \RX_PE_DATA_reg[26]_1 ,
    \RX_PE_DATA_reg[25]_0 ,
    counter4_r0,
    \previous_cycle_data_r_reg[7]_0 ,
    \previous_cycle_control_r_reg[0]_0 ,
    \RX_SUF_reg[1]_1 ,
    RX_SPA_reg_0,
    \word_aligned_data_r_reg[27]_0 ,
    \word_aligned_data_r_reg[16]_0 ,
    \word_aligned_data_r_reg[11]_0 ,
    \word_aligned_data_r_reg[0]_0 ,
    \RX_PE_DATA_V_reg[0]_0 ,
    RX_SCP0,
    RX_ECP0,
    \rx_ecp_d_r_reg[6]_0 ,
    \rx_ecp_d_r_reg[6]_1 ,
    p_3_out,
    user_clk,
    \left_align_select_r_reg[0]_1 ,
    \left_align_select_r_reg[1]_1 ,
    \word_aligned_control_bits_r_reg[3]_0 ,
    \word_aligned_control_bits_r_reg[2]_0 ,
    ready_r,
    RXDATA,
    RXCHARISK,
    lane_up,
    gen_spa_i,
    \word_aligned_data_r_reg[24]_0 ,
    \word_aligned_data_r_reg[16]_1 );
  output RX_NEG;
  output \left_align_select_r_reg[0]_0 ;
  output \left_align_select_r_reg[1]_0 ;
  output got_v_i;
  output [0:0]D;
  output [5:0]rx_pe_data_striped_i;
  output first_v_received_r;
  output \RX_SUF_reg[1]_0 ;
  output [1:0]Q;
  output \RX_PE_DATA_reg[26]_0 ;
  output \RX_PE_DATA_reg[26]_1 ;
  output \RX_PE_DATA_reg[25]_0 ;
  output counter4_r0;
  output [7:0]\previous_cycle_data_r_reg[7]_0 ;
  output [0:0]\previous_cycle_control_r_reg[0]_0 ;
  output \RX_SUF_reg[1]_1 ;
  output RX_SPA_reg_0;
  output [4:0]\word_aligned_data_r_reg[27]_0 ;
  output [7:0]\word_aligned_data_r_reg[16]_0 ;
  output [4:0]\word_aligned_data_r_reg[11]_0 ;
  output [7:0]\word_aligned_data_r_reg[0]_0 ;
  output [1:0]\RX_PE_DATA_V_reg[0]_0 ;
  output RX_SCP0;
  output RX_ECP0;
  output \rx_ecp_d_r_reg[6]_0 ;
  output \rx_ecp_d_r_reg[6]_1 ;
  output [1:0]p_3_out;
  input user_clk;
  input \left_align_select_r_reg[0]_1 ;
  input \left_align_select_r_reg[1]_1 ;
  input \word_aligned_control_bits_r_reg[3]_0 ;
  input \word_aligned_control_bits_r_reg[2]_0 ;
  input ready_r;
  input [31:0]RXDATA;
  input [3:0]RXCHARISK;
  input lane_up;
  input gen_spa_i;
  input [7:0]\word_aligned_data_r_reg[24]_0 ;
  input [7:0]\word_aligned_data_r_reg[16]_1 ;

  wire [0:0]D;
  wire GOT_V_i_2_n_0;
  wire [1:0]Q;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire RX_CC0;
  wire RX_CC_i_2_n_0;
  wire RX_CC_i_3_n_0;
  wire RX_ECP0;
  wire RX_NEG;
  wire RX_NEG0;
  wire [1:0]\RX_PE_DATA_V_reg[0]_0 ;
  wire \RX_PE_DATA_reg[25]_0 ;
  wire \RX_PE_DATA_reg[26]_0 ;
  wire \RX_PE_DATA_reg[26]_1 ;
  wire RX_SCP0;
  wire RX_SP0;
  wire RX_SPA0;
  wire RX_SPA_i_2_n_0;
  wire RX_SPA_reg_0;
  wire RX_SP_i_2_n_0;
  wire RX_SP_i_3_n_0;
  wire RX_SUF0;
  wire \RX_SUF[1]_i_1_n_0 ;
  wire \RX_SUF_reg[1]_0 ;
  wire \RX_SUF_reg[1]_1 ;
  wire counter4_r0;
  wire first_v_received_r;
  wire first_v_received_r_i_1_n_0;
  wire gen_spa_i;
  wire got_v_c;
  wire got_v_i;
  wire lane_up;
  wire \left_align_select_r_reg[0]_0 ;
  wire \left_align_select_r_reg[0]_1 ;
  wire \left_align_select_r_reg[1]_0 ;
  wire \left_align_select_r_reg[1]_1 ;
  wire [3:1]p_0_in;
  wire p_1_in;
  wire [7:0]p_2_in;
  wire [1:0]p_2_out;
  wire [1:0]p_3_out;
  wire [5:0]p_8_out;
  wire [2:1]previous_cycle_control_r;
  wire [0:0]\previous_cycle_control_r_reg[0]_0 ;
  wire [7:0]\previous_cycle_data_r_reg[7]_0 ;
  wire \previous_cycle_data_r_reg_n_0_[16] ;
  wire \previous_cycle_data_r_reg_n_0_[17] ;
  wire \previous_cycle_data_r_reg_n_0_[18] ;
  wire \previous_cycle_data_r_reg_n_0_[19] ;
  wire \previous_cycle_data_r_reg_n_0_[20] ;
  wire \previous_cycle_data_r_reg_n_0_[21] ;
  wire \previous_cycle_data_r_reg_n_0_[22] ;
  wire \previous_cycle_data_r_reg_n_0_[23] ;
  wire ready_r;
  wire [1:7]rx_cc_r;
  wire rx_cc_r0__0;
  wire \rx_cc_r0_inferred__0/i__n_0 ;
  wire \rx_cc_r0_inferred__1/i__n_0 ;
  wire rx_cc_r0_n_0;
  wire [0:7]rx_ecp_d_r;
  wire rx_ecp_d_r0__0;
  wire \rx_ecp_d_r0_inferred__0/i__n_0 ;
  wire \rx_ecp_d_r0_inferred__1/i__n_0 ;
  wire \rx_ecp_d_r0_inferred__2/i__n_0 ;
  wire \rx_ecp_d_r0_inferred__3/i__n_0 ;
  wire rx_ecp_d_r0_n_0;
  wire \rx_ecp_d_r_reg[6]_0 ;
  wire \rx_ecp_d_r_reg[6]_1 ;
  wire [0:2]rx_pad_d_r;
  wire rx_pad_d_r0__0;
  wire \rx_pad_d_r0_inferred__0/i__n_0 ;
  wire \rx_pad_d_r0_inferred__1/i__n_0 ;
  wire rx_pad_d_r0_n_0;
  wire \rx_pe_control_r_reg_n_0_[1] ;
  wire \rx_pe_control_r_reg_n_0_[2] ;
  wire \rx_pe_control_r_reg_n_0_[3] ;
  wire [8:26]rx_pe_data_r;
  wire [5:0]rx_pe_data_striped_i;
  wire [0:7]rx_scp_d_r;
  wire rx_scp_d_r0__0;
  wire \rx_scp_d_r0_inferred__0/i__n_0 ;
  wire \rx_scp_d_r0_inferred__1/i__n_0 ;
  wire \rx_scp_d_r0_inferred__2/i__n_0 ;
  wire \rx_scp_d_r0_inferred__3/i__n_0 ;
  wire \rx_scp_d_r0_inferred__4/i__n_0 ;
  wire \rx_scp_d_r0_inferred__5/i__n_0 ;
  wire rx_scp_d_r0_n_0;
  wire rx_sp_i;
  wire [0:1]rx_sp_neg_d_r;
  wire [0:7]rx_sp_r;
  wire rx_sp_r0_n_0;
  wire rx_sp_r111_in;
  wire rx_sp_r114_in;
  wire rx_spa_i;
  wire [0:1]rx_spa_neg_d_r;
  wire rx_spa_neg_d_r0__0;
  wire rx_spa_neg_d_r0_n_0;
  wire [2:7]rx_spa_r;
  wire rx_spa_r0__0;
  wire \rx_spa_r0_inferred__0/i__n_0 ;
  wire rx_spa_r0_n_0;
  wire [0:2]rx_suf_d_r;
  wire rx_suf_d_r0__0;
  wire rx_suf_d_r0_n_0;
  wire [2:7]rx_v_d_r;
  wire rx_v_d_r0__0;
  wire \rx_v_d_r0_inferred__0/i__n_0 ;
  wire \rx_v_d_r0_inferred__1/i__n_0 ;
  wire \rx_v_d_r0_inferred__2/i__n_0 ;
  wire \rx_v_d_r0_inferred__3/i__n_0 ;
  wire rx_v_d_r0_n_0;
  wire user_clk;
  wire [0:3]word_aligned_control_bits_r;
  wire \word_aligned_control_bits_r[0]_i_1_n_0 ;
  wire \word_aligned_control_bits_r[1]_i_1_n_0 ;
  wire \word_aligned_control_bits_r_reg[2]_0 ;
  wire \word_aligned_control_bits_r_reg[3]_0 ;
  wire \word_aligned_data_r[0]_i_1_n_0 ;
  wire \word_aligned_data_r[10]_i_1_n_0 ;
  wire \word_aligned_data_r[11]_i_1_n_0 ;
  wire \word_aligned_data_r[12]_i_1_n_0 ;
  wire \word_aligned_data_r[13]_i_1_n_0 ;
  wire \word_aligned_data_r[14]_i_1_n_0 ;
  wire \word_aligned_data_r[15]_i_1_n_0 ;
  wire \word_aligned_data_r[1]_i_1_n_0 ;
  wire \word_aligned_data_r[2]_i_1_n_0 ;
  wire \word_aligned_data_r[3]_i_1_n_0 ;
  wire \word_aligned_data_r[4]_i_1_n_0 ;
  wire \word_aligned_data_r[5]_i_1_n_0 ;
  wire \word_aligned_data_r[6]_i_1_n_0 ;
  wire \word_aligned_data_r[7]_i_1_n_0 ;
  wire \word_aligned_data_r[8]_i_1_n_0 ;
  wire \word_aligned_data_r[9]_i_1_n_0 ;
  wire [7:0]\word_aligned_data_r_reg[0]_0 ;
  wire [4:0]\word_aligned_data_r_reg[11]_0 ;
  wire [7:0]\word_aligned_data_r_reg[16]_0 ;
  wire [7:0]\word_aligned_data_r_reg[16]_1 ;
  wire [7:0]\word_aligned_data_r_reg[24]_0 ;
  wire [4:0]\word_aligned_data_r_reg[27]_0 ;
  wire \word_aligned_data_r_reg_n_0_[24] ;
  wire \word_aligned_data_r_reg_n_0_[25] ;
  wire \word_aligned_data_r_reg_n_0_[26] ;

  LUT6 #(
    .INIT(64'h2000000000000000)) 
    GOT_V_i_1
       (.I0(RX_SP_i_2_n_0),
        .I1(GOT_V_i_2_n_0),
        .I2(rx_sp_r[0]),
        .I3(rx_sp_r[1]),
        .I4(rx_v_d_r[3]),
        .I5(rx_v_d_r[2]),
        .O(got_v_c));
  LUT4 #(
    .INIT(16'h7FFF)) 
    GOT_V_i_2
       (.I0(rx_v_d_r[5]),
        .I1(rx_v_d_r[4]),
        .I2(rx_v_d_r[7]),
        .I3(rx_v_d_r[6]),
        .O(GOT_V_i_2_n_0));
  FDRE GOT_V_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(got_v_c),
        .Q(got_v_i),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    RX_CC_i_1
       (.I0(\rx_pe_control_r_reg_n_0_[2] ),
        .I1(\rx_pe_control_r_reg_n_0_[3] ),
        .I2(\rx_pe_control_r_reg_n_0_[1] ),
        .I3(p_1_in),
        .I4(RX_CC_i_2_n_0),
        .I5(RX_CC_i_3_n_0),
        .O(RX_CC0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    RX_CC_i_2
       (.I0(rx_cc_r[5]),
        .I1(rx_ecp_d_r[4]),
        .I2(rx_cc_r[7]),
        .I3(rx_ecp_d_r[6]),
        .O(RX_CC_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    RX_CC_i_3
       (.I0(rx_ecp_d_r[0]),
        .I1(rx_cc_r[1]),
        .I2(rx_cc_r[3]),
        .I3(rx_ecp_d_r[2]),
        .O(RX_CC_i_3_n_0));
  FDRE RX_CC_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_CC0),
        .Q(D),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000F888)) 
    RX_NEG_i_1
       (.I0(rx_spa_neg_d_r[1]),
        .I1(rx_spa_neg_d_r[0]),
        .I2(rx_sp_neg_d_r[1]),
        .I3(rx_sp_neg_d_r[0]),
        .I4(\rx_pe_control_r_reg_n_0_[1] ),
        .O(RX_NEG0));
  FDRE RX_NEG_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_NEG0),
        .Q(RX_NEG),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \RX_PE_DATA_V[0]_i_1 
       (.I0(p_1_in),
        .O(p_2_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \RX_PE_DATA_V[1]_i_1 
       (.I0(\rx_pe_control_r_reg_n_0_[2] ),
        .O(p_2_out[0]));
  FDRE \RX_PE_DATA_V_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_out[1]),
        .Q(\RX_PE_DATA_V_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \RX_PE_DATA_V_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_out[0]),
        .Q(\RX_PE_DATA_V_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[10]),
        .Q(rx_pe_data_striped_i[3]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[24]),
        .Q(rx_pe_data_striped_i[2]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[25]),
        .Q(rx_pe_data_striped_i[1]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[26]),
        .Q(rx_pe_data_striped_i[0]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[8]),
        .Q(rx_pe_data_striped_i[5]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[9]),
        .Q(rx_pe_data_striped_i[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    RX_SPA_i_1
       (.I0(RX_SP_i_2_n_0),
        .I1(RX_SPA_i_2_n_0),
        .I2(rx_sp_r[0]),
        .I3(rx_sp_r[1]),
        .I4(rx_spa_r[3]),
        .I5(rx_spa_r[2]),
        .O(RX_SPA0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    RX_SPA_i_2
       (.I0(rx_spa_r[5]),
        .I1(rx_spa_r[4]),
        .I2(rx_spa_r[7]),
        .I3(rx_spa_r[6]),
        .O(RX_SPA_i_2_n_0));
  FDRE RX_SPA_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_SPA0),
        .Q(rx_spa_i),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    RX_SP_i_1
       (.I0(RX_SP_i_2_n_0),
        .I1(RX_SP_i_3_n_0),
        .I2(rx_sp_r[0]),
        .I3(rx_sp_r[1]),
        .I4(rx_sp_r[3]),
        .I5(rx_sp_r[2]),
        .O(RX_SP0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    RX_SP_i_2
       (.I0(\rx_pe_control_r_reg_n_0_[3] ),
        .I1(\rx_pe_control_r_reg_n_0_[1] ),
        .I2(p_1_in),
        .I3(\rx_pe_control_r_reg_n_0_[2] ),
        .O(RX_SP_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    RX_SP_i_3
       (.I0(rx_sp_r[5]),
        .I1(rx_sp_r[4]),
        .I2(rx_sp_r[7]),
        .I3(rx_sp_r[6]),
        .O(RX_SP_i_3_n_0));
  FDRE RX_SP_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_SP0),
        .Q(rx_sp_i),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \RX_SUF[0]_i_1 
       (.I0(rx_sp_r[1]),
        .I1(p_1_in),
        .I2(rx_suf_d_r[0]),
        .O(RX_SUF0));
  LUT3 #(
    .INIT(8'h80)) 
    \RX_SUF[1]_i_1 
       (.I0(rx_spa_r[5]),
        .I1(\rx_pe_control_r_reg_n_0_[2] ),
        .I2(rx_suf_d_r[2]),
        .O(\RX_SUF[1]_i_1_n_0 ));
  FDRE \RX_SUF_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_SUF0),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \RX_SUF_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_SUF[1]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \counter3_r_reg[2]_srl3_i_1 
       (.I0(rx_spa_i),
        .I1(gen_spa_i),
        .O(RX_SPA_reg_0));
  LUT2 #(
    .INIT(4'hB)) 
    \counter4_r_reg[14]_srl15_i_1 
       (.I0(rx_sp_i),
        .I1(ready_r),
        .O(counter4_r0));
  LUT3 #(
    .INIT(8'hA8)) 
    first_v_received_r_i_1
       (.I0(lane_up),
        .I1(first_v_received_r),
        .I2(got_v_c),
        .O(first_v_received_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    first_v_received_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(first_v_received_r_i_1_n_0),
        .Q(first_v_received_r),
        .R(1'b0));
  FDRE \left_align_select_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\left_align_select_r_reg[0]_1 ),
        .Q(\left_align_select_r_reg[0]_0 ),
        .R(1'b0));
  FDRE \left_align_select_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\left_align_select_r_reg[1]_1 ),
        .Q(\left_align_select_r_reg[1]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    load_ufc_control_code_r_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\RX_SUF_reg[1]_0 ));
  FDRE \previous_cycle_control_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXCHARISK[3]),
        .Q(\previous_cycle_control_r_reg[0]_0 ),
        .R(1'b0));
  FDRE \previous_cycle_control_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXCHARISK[2]),
        .Q(previous_cycle_control_r[1]),
        .R(1'b0));
  FDRE \previous_cycle_control_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXCHARISK[1]),
        .Q(previous_cycle_control_r[2]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[24]),
        .Q(\previous_cycle_data_r_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[18]),
        .Q(p_2_in[2]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[19]),
        .Q(p_2_in[3]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[20]),
        .Q(p_2_in[4]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[21]),
        .Q(p_2_in[5]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[22]),
        .Q(p_2_in[6]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[23]),
        .Q(p_2_in[7]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[8]),
        .Q(\previous_cycle_data_r_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[9]),
        .Q(\previous_cycle_data_r_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[10]),
        .Q(\previous_cycle_data_r_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[11]),
        .Q(\previous_cycle_data_r_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[25]),
        .Q(\previous_cycle_data_r_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[12]),
        .Q(\previous_cycle_data_r_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[13]),
        .Q(\previous_cycle_data_r_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[14]),
        .Q(\previous_cycle_data_r_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[15]),
        .Q(\previous_cycle_data_r_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[26]),
        .Q(\previous_cycle_data_r_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[27]),
        .Q(\previous_cycle_data_r_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[28]),
        .Q(\previous_cycle_data_r_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[29]),
        .Q(\previous_cycle_data_r_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[30]),
        .Q(\previous_cycle_data_r_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[31]),
        .Q(\previous_cycle_data_r_reg[7]_0 [7]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[16]),
        .Q(p_2_in[0]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[17]),
        .Q(p_2_in[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    rx_cc_r0
       (.I0(\word_aligned_data_r_reg[27]_0 [3]),
        .I1(\word_aligned_data_r_reg[27]_0 [2]),
        .I2(\word_aligned_data_r_reg[27]_0 [1]),
        .I3(\word_aligned_data_r_reg[27]_0 [0]),
        .O(rx_cc_r0_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_cc_r0_inferred__0/i_ 
       (.I0(\word_aligned_data_r_reg[16]_0 [3]),
        .I1(\word_aligned_data_r_reg[16]_0 [2]),
        .I2(\word_aligned_data_r_reg[16]_0 [1]),
        .I3(\word_aligned_data_r_reg[16]_0 [0]),
        .O(\rx_cc_r0_inferred__0/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_cc_r0_inferred__1/i_ 
       (.I0(\word_aligned_data_r_reg[11]_0 [3]),
        .I1(\word_aligned_data_r_reg[11]_0 [2]),
        .I2(\word_aligned_data_r_reg[11]_0 [1]),
        .I3(\word_aligned_data_r_reg[11]_0 [0]),
        .O(\rx_cc_r0_inferred__1/i__n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_cc_r0_inferred__2/i_ 
       (.I0(\word_aligned_data_r_reg[0]_0 [3]),
        .I1(\word_aligned_data_r_reg[0]_0 [2]),
        .I2(\word_aligned_data_r_reg[0]_0 [1]),
        .I3(\word_aligned_data_r_reg[0]_0 [0]),
        .O(rx_cc_r0__0));
  FDRE \rx_cc_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_r0__0),
        .Q(rx_cc_r[1]),
        .R(1'b0));
  FDRE \rx_cc_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_cc_r0_inferred__1/i__n_0 ),
        .Q(rx_cc_r[3]),
        .R(1'b0));
  FDRE \rx_cc_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_cc_r0_inferred__0/i__n_0 ),
        .Q(rx_cc_r[5]),
        .R(1'b0));
  FDRE \rx_cc_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_r0_n_0),
        .Q(rx_cc_r[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    rx_ecp_d_r0
       (.I0(\word_aligned_data_r_reg[27]_0 [0]),
        .I1(\word_aligned_data_r_reg[27]_0 [2]),
        .I2(\word_aligned_data_r_reg[27]_0 [3]),
        .I3(\word_aligned_data_r_reg[27]_0 [1]),
        .O(rx_ecp_d_r0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_ecp_d_r0_inferred__0/i_ 
       (.I0(\word_aligned_data_r_reg[16]_0 [1]),
        .I1(\word_aligned_data_r_reg[16]_0 [2]),
        .I2(\word_aligned_data_r_reg[16]_0 [3]),
        .I3(\word_aligned_data_r_reg[16]_0 [0]),
        .O(\rx_ecp_d_r0_inferred__0/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \rx_ecp_d_r0_inferred__1/i_ 
       (.I0(\word_aligned_data_r_reg[16]_0 [5]),
        .I1(\word_aligned_data_r_reg[16]_0 [4]),
        .I2(\word_aligned_data_r_reg[16]_0 [6]),
        .I3(\word_aligned_data_r_reg[16]_0 [7]),
        .O(\rx_ecp_d_r0_inferred__1/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_ecp_d_r0_inferred__2/i_ 
       (.I0(\word_aligned_data_r_reg[11]_0 [0]),
        .I1(\word_aligned_data_r_reg[11]_0 [2]),
        .I2(\word_aligned_data_r_reg[11]_0 [3]),
        .I3(\word_aligned_data_r_reg[11]_0 [1]),
        .O(\rx_ecp_d_r0_inferred__2/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_ecp_d_r0_inferred__3/i_ 
       (.I0(\word_aligned_data_r_reg[0]_0 [1]),
        .I1(\word_aligned_data_r_reg[0]_0 [2]),
        .I2(\word_aligned_data_r_reg[0]_0 [3]),
        .I3(\word_aligned_data_r_reg[0]_0 [0]),
        .O(\rx_ecp_d_r0_inferred__3/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \rx_ecp_d_r0_inferred__4/i_ 
       (.I0(\word_aligned_data_r_reg[0]_0 [5]),
        .I1(\word_aligned_data_r_reg[0]_0 [4]),
        .I2(\word_aligned_data_r_reg[0]_0 [6]),
        .I3(\word_aligned_data_r_reg[0]_0 [7]),
        .O(rx_ecp_d_r0__0));
  FDRE \rx_ecp_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_ecp_d_r0__0),
        .Q(rx_ecp_d_r[0]),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_ecp_d_r0_inferred__3/i__n_0 ),
        .Q(rx_ecp_d_r[1]),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_scp_d_r0_inferred__5/i__n_0 ),
        .Q(rx_ecp_d_r[2]),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_ecp_d_r0_inferred__2/i__n_0 ),
        .Q(rx_ecp_d_r[3]),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_ecp_d_r0_inferred__1/i__n_0 ),
        .Q(rx_ecp_d_r[4]),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_ecp_d_r0_inferred__0/i__n_0 ),
        .Q(rx_ecp_d_r[5]),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_scp_d_r0_inferred__1/i__n_0 ),
        .Q(rx_ecp_d_r[6]),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_ecp_d_r0_n_0),
        .Q(rx_ecp_d_r[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rx_ecp_r_reg[0]_srl2_i_1 
       (.I0(rx_ecp_d_r[2]),
        .I1(rx_ecp_d_r[3]),
        .I2(\rx_pe_control_r_reg_n_0_[1] ),
        .I3(p_1_in),
        .I4(rx_ecp_d_r[1]),
        .I5(rx_ecp_d_r[0]),
        .O(RX_ECP0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rx_ecp_r_reg[1]_srl2_i_1 
       (.I0(rx_ecp_d_r[6]),
        .I1(rx_ecp_d_r[7]),
        .I2(\rx_pe_control_r_reg_n_0_[3] ),
        .I3(\rx_pe_control_r_reg_n_0_[2] ),
        .I4(rx_ecp_d_r[5]),
        .I5(rx_ecp_d_r[4]),
        .O(\rx_ecp_d_r_reg[6]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    rx_pad_d_r0
       (.I0(\word_aligned_data_r_reg[27]_0 [1]),
        .I1(\word_aligned_data_r_reg[27]_0 [0]),
        .I2(\word_aligned_data_r_reg[27]_0 [2]),
        .I3(\word_aligned_data_r_reg[27]_0 [3]),
        .O(rx_pad_d_r0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_pad_d_r0_inferred__0/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[25] ),
        .I1(\word_aligned_data_r_reg_n_0_[26] ),
        .I2(\word_aligned_data_r_reg_n_0_[24] ),
        .I3(\word_aligned_data_r_reg[27]_0 [4]),
        .O(\rx_pad_d_r0_inferred__0/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_pad_d_r0_inferred__1/i_ 
       (.I0(\word_aligned_data_r_reg[11]_0 [1]),
        .I1(\word_aligned_data_r_reg[11]_0 [0]),
        .I2(\word_aligned_data_r_reg[11]_0 [2]),
        .I3(\word_aligned_data_r_reg[11]_0 [3]),
        .O(\rx_pad_d_r0_inferred__1/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_pad_d_r0_inferred__2/i_ 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(\word_aligned_data_r_reg[11]_0 [4]),
        .O(rx_pad_d_r0__0));
  FDRE \rx_pad_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pad_d_r0__0),
        .Q(rx_pad_d_r[0]),
        .R(1'b0));
  FDRE \rx_pad_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_pad_d_r0_inferred__0/i__n_0 ),
        .Q(rx_pad_d_r[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0800)) 
    \rx_pad_r_reg[0]_srl2_i_1 
       (.I0(rx_pad_d_r[0]),
        .I1(rx_spa_r[3]),
        .I2(p_1_in),
        .I3(\rx_pe_control_r_reg_n_0_[1] ),
        .O(p_3_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \rx_pad_r_reg[1]_srl2_i_1 
       (.I0(rx_pad_d_r[2]),
        .I1(rx_spa_r[7]),
        .I2(\rx_pe_control_r_reg_n_0_[2] ),
        .I3(\rx_pe_control_r_reg_n_0_[3] ),
        .O(p_3_out[0]));
  FDRE \rx_pe_control_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(word_aligned_control_bits_r[0]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \rx_pe_control_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(word_aligned_control_bits_r[1]),
        .Q(\rx_pe_control_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rx_pe_control_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(word_aligned_control_bits_r[2]),
        .Q(\rx_pe_control_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \rx_pe_control_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(word_aligned_control_bits_r[3]),
        .Q(\rx_pe_control_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(rx_pe_data_r[10]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[24] ),
        .Q(rx_pe_data_r[24]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[25] ),
        .Q(rx_pe_data_r[25]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[26] ),
        .Q(rx_pe_data_r[26]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(rx_pe_data_r[8]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(rx_pe_data_r[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    rx_scp_d_r0
       (.I0(\word_aligned_data_r_reg[0]_0 [1]),
        .I1(\word_aligned_data_r_reg[0]_0 [0]),
        .I2(\word_aligned_data_r_reg[0]_0 [2]),
        .I3(\word_aligned_data_r_reg[0]_0 [3]),
        .O(rx_scp_d_r0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_scp_d_r0_inferred__0/i_ 
       (.I0(\word_aligned_data_r_reg[27]_0 [2]),
        .I1(\word_aligned_data_r_reg[27]_0 [3]),
        .I2(\word_aligned_data_r_reg[27]_0 [1]),
        .I3(\word_aligned_data_r_reg[27]_0 [0]),
        .O(\rx_scp_d_r0_inferred__0/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \rx_scp_d_r0_inferred__1/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[26] ),
        .I1(\word_aligned_data_r_reg[27]_0 [4]),
        .I2(\word_aligned_data_r_reg_n_0_[25] ),
        .I3(\word_aligned_data_r_reg_n_0_[24] ),
        .O(\rx_scp_d_r0_inferred__1/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_scp_d_r0_inferred__2/i_ 
       (.I0(\word_aligned_data_r_reg[16]_0 [1]),
        .I1(\word_aligned_data_r_reg[16]_0 [0]),
        .I2(\word_aligned_data_r_reg[16]_0 [2]),
        .I3(\word_aligned_data_r_reg[16]_0 [3]),
        .O(\rx_scp_d_r0_inferred__2/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_scp_d_r0_inferred__3/i_ 
       (.I0(\word_aligned_data_r_reg[16]_0 [7]),
        .I1(\word_aligned_data_r_reg[16]_0 [5]),
        .I2(\word_aligned_data_r_reg[16]_0 [6]),
        .I3(\word_aligned_data_r_reg[16]_0 [4]),
        .O(\rx_scp_d_r0_inferred__3/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_scp_d_r0_inferred__4/i_ 
       (.I0(\word_aligned_data_r_reg[11]_0 [2]),
        .I1(\word_aligned_data_r_reg[11]_0 [3]),
        .I2(\word_aligned_data_r_reg[11]_0 [1]),
        .I3(\word_aligned_data_r_reg[11]_0 [0]),
        .O(\rx_scp_d_r0_inferred__4/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \rx_scp_d_r0_inferred__5/i_ 
       (.I0(p_0_in[1]),
        .I1(\word_aligned_data_r_reg[11]_0 [4]),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .O(\rx_scp_d_r0_inferred__5/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_scp_d_r0_inferred__6/i_ 
       (.I0(\word_aligned_data_r_reg[0]_0 [7]),
        .I1(\word_aligned_data_r_reg[0]_0 [5]),
        .I2(\word_aligned_data_r_reg[0]_0 [6]),
        .I3(\word_aligned_data_r_reg[0]_0 [4]),
        .O(rx_scp_d_r0__0));
  FDRE \rx_scp_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_scp_d_r0__0),
        .Q(rx_scp_d_r[0]),
        .R(1'b0));
  FDRE \rx_scp_d_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_scp_d_r0_inferred__4/i__n_0 ),
        .Q(rx_scp_d_r[3]),
        .R(1'b0));
  FDRE \rx_scp_d_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_scp_d_r0_inferred__3/i__n_0 ),
        .Q(rx_scp_d_r[4]),
        .R(1'b0));
  FDRE \rx_scp_d_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_scp_d_r0_inferred__0/i__n_0 ),
        .Q(rx_scp_d_r[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rx_scp_r_reg[0]_srl2_i_1 
       (.I0(rx_ecp_d_r[2]),
        .I1(rx_scp_d_r[3]),
        .I2(\rx_pe_control_r_reg_n_0_[1] ),
        .I3(p_1_in),
        .I4(rx_sp_r[1]),
        .I5(rx_scp_d_r[0]),
        .O(RX_SCP0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rx_scp_r_reg[1]_srl2_i_1 
       (.I0(rx_ecp_d_r[6]),
        .I1(rx_scp_d_r[7]),
        .I2(\rx_pe_control_r_reg_n_0_[3] ),
        .I3(\rx_pe_control_r_reg_n_0_[2] ),
        .I4(rx_spa_r[5]),
        .I5(rx_scp_d_r[4]),
        .O(\rx_ecp_d_r_reg[6]_0 ));
  FDRE \rx_sp_neg_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_sp_r114_in),
        .Q(rx_sp_neg_d_r[0]),
        .R(1'b0));
  FDRE \rx_sp_neg_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_sp_r111_in),
        .Q(rx_sp_neg_d_r[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    rx_sp_r0
       (.I0(\word_aligned_data_r_reg[0]_0 [6]),
        .I1(\word_aligned_data_r_reg[0]_0 [7]),
        .I2(\word_aligned_data_r_reg[0]_0 [5]),
        .I3(\word_aligned_data_r_reg[0]_0 [4]),
        .O(rx_sp_r0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    rx_sp_r1
       (.I0(\word_aligned_data_r_reg[11]_0 [3]),
        .I1(\word_aligned_data_r_reg[11]_0 [1]),
        .I2(\word_aligned_data_r_reg[11]_0 [2]),
        .I3(\word_aligned_data_r_reg[11]_0 [0]),
        .O(rx_sp_r111_in));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_sp_r1_inferred__0/i_ 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(\word_aligned_data_r_reg[11]_0 [4]),
        .O(rx_sp_r114_in));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0180)) 
    \rx_sp_r[2]_i_1 
       (.I0(\word_aligned_data_r_reg[11]_0 [4]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .O(p_8_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h1008)) 
    \rx_sp_r[3]_i_1 
       (.I0(\word_aligned_data_r_reg[11]_0 [0]),
        .I1(\word_aligned_data_r_reg[11]_0 [2]),
        .I2(\word_aligned_data_r_reg[11]_0 [1]),
        .I3(\word_aligned_data_r_reg[11]_0 [3]),
        .O(p_8_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0810)) 
    \rx_sp_r[4]_i_1 
       (.I0(\word_aligned_data_r_reg[16]_0 [5]),
        .I1(\word_aligned_data_r_reg[16]_0 [4]),
        .I2(\word_aligned_data_r_reg[16]_0 [6]),
        .I3(\word_aligned_data_r_reg[16]_0 [7]),
        .O(p_8_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1008)) 
    \rx_sp_r[5]_i_1 
       (.I0(\word_aligned_data_r_reg[16]_0 [2]),
        .I1(\word_aligned_data_r_reg[16]_0 [0]),
        .I2(\word_aligned_data_r_reg[16]_0 [1]),
        .I3(\word_aligned_data_r_reg[16]_0 [3]),
        .O(p_8_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0810)) 
    \rx_sp_r[6]_i_1 
       (.I0(\word_aligned_data_r_reg_n_0_[26] ),
        .I1(\word_aligned_data_r_reg[27]_0 [4]),
        .I2(\word_aligned_data_r_reg_n_0_[25] ),
        .I3(\word_aligned_data_r_reg_n_0_[24] ),
        .O(p_8_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1008)) 
    \rx_sp_r[7]_i_1 
       (.I0(\word_aligned_data_r_reg[27]_0 [2]),
        .I1(\word_aligned_data_r_reg[27]_0 [0]),
        .I2(\word_aligned_data_r_reg[27]_0 [1]),
        .I3(\word_aligned_data_r_reg[27]_0 [3]),
        .O(p_8_out[0]));
  FDRE \rx_sp_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_sp_r0_n_0),
        .Q(rx_sp_r[0]),
        .R(1'b0));
  FDRE \rx_sp_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_scp_d_r0_n_0),
        .Q(rx_sp_r[1]),
        .R(1'b0));
  FDRE \rx_sp_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_8_out[5]),
        .Q(rx_sp_r[2]),
        .R(1'b0));
  FDRE \rx_sp_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_8_out[4]),
        .Q(rx_sp_r[3]),
        .R(1'b0));
  FDRE \rx_sp_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_8_out[3]),
        .Q(rx_sp_r[4]),
        .R(1'b0));
  FDRE \rx_sp_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_8_out[2]),
        .Q(rx_sp_r[5]),
        .R(1'b0));
  FDRE \rx_sp_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_8_out[1]),
        .Q(rx_sp_r[6]),
        .R(1'b0));
  FDRE \rx_sp_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_8_out[0]),
        .Q(rx_sp_r[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    rx_spa_neg_d_r0
       (.I0(\word_aligned_data_r_reg[11]_0 [2]),
        .I1(\word_aligned_data_r_reg[11]_0 [3]),
        .I2(\word_aligned_data_r_reg[11]_0 [1]),
        .I3(\word_aligned_data_r_reg[11]_0 [0]),
        .O(rx_spa_neg_d_r0_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_spa_neg_d_r0_inferred__0/i_ 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\word_aligned_data_r_reg[11]_0 [4]),
        .O(rx_spa_neg_d_r0__0));
  FDRE \rx_spa_neg_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_spa_neg_d_r0__0),
        .Q(rx_spa_neg_d_r[0]),
        .R(1'b0));
  FDRE \rx_spa_neg_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_spa_neg_d_r0_n_0),
        .Q(rx_spa_neg_d_r[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0010)) 
    rx_spa_r0
       (.I0(\word_aligned_data_r_reg_n_0_[25] ),
        .I1(\word_aligned_data_r_reg_n_0_[24] ),
        .I2(\word_aligned_data_r_reg_n_0_[26] ),
        .I3(\word_aligned_data_r_reg[27]_0 [4]),
        .O(rx_spa_r0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \rx_spa_r0_inferred__0/i_ 
       (.I0(\word_aligned_data_r_reg[16]_0 [6]),
        .I1(\word_aligned_data_r_reg[16]_0 [7]),
        .I2(\word_aligned_data_r_reg[16]_0 [5]),
        .I3(\word_aligned_data_r_reg[16]_0 [4]),
        .O(\rx_spa_r0_inferred__0/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \rx_spa_r0_inferred__1/i_ 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(\word_aligned_data_r_reg[11]_0 [4]),
        .O(rx_spa_r0__0));
  FDRE \rx_spa_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_spa_r0__0),
        .Q(rx_spa_r[2]),
        .R(1'b0));
  FDRE \rx_spa_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_pad_d_r0_inferred__1/i__n_0 ),
        .Q(rx_spa_r[3]),
        .R(1'b0));
  FDRE \rx_spa_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_spa_r0_inferred__0/i__n_0 ),
        .Q(rx_spa_r[4]),
        .R(1'b0));
  FDRE \rx_spa_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_scp_d_r0_inferred__2/i__n_0 ),
        .Q(rx_spa_r[5]),
        .R(1'b0));
  FDRE \rx_spa_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_spa_r0_n_0),
        .Q(rx_spa_r[6]),
        .R(1'b0));
  FDRE \rx_spa_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pad_d_r0_n_0),
        .Q(rx_spa_r[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    rx_suf_d_r0
       (.I0(\word_aligned_data_r_reg[16]_0 [6]),
        .I1(\word_aligned_data_r_reg[16]_0 [5]),
        .I2(\word_aligned_data_r_reg[16]_0 [7]),
        .I3(\word_aligned_data_r_reg[16]_0 [4]),
        .O(rx_suf_d_r0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_suf_d_r0_inferred__0/i_ 
       (.I0(\word_aligned_data_r_reg[0]_0 [6]),
        .I1(\word_aligned_data_r_reg[0]_0 [5]),
        .I2(\word_aligned_data_r_reg[0]_0 [7]),
        .I3(\word_aligned_data_r_reg[0]_0 [4]),
        .O(rx_suf_d_r0__0));
  FDRE \rx_suf_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_suf_d_r0__0),
        .Q(rx_suf_d_r[0]),
        .R(1'b0));
  FDRE \rx_suf_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_suf_d_r0_n_0),
        .Q(rx_suf_d_r[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    rx_v_d_r0
       (.I0(\word_aligned_data_r_reg[27]_0 [2]),
        .I1(\word_aligned_data_r_reg[27]_0 [1]),
        .I2(\word_aligned_data_r_reg[27]_0 [3]),
        .I3(\word_aligned_data_r_reg[27]_0 [0]),
        .O(rx_v_d_r0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_v_d_r0_inferred__0/i_ 
       (.I0(\word_aligned_data_r_reg[27]_0 [4]),
        .I1(\word_aligned_data_r_reg_n_0_[25] ),
        .I2(\word_aligned_data_r_reg_n_0_[24] ),
        .I3(\word_aligned_data_r_reg_n_0_[26] ),
        .O(\rx_v_d_r0_inferred__0/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \rx_v_d_r0_inferred__1/i_ 
       (.I0(\word_aligned_data_r_reg[16]_0 [2]),
        .I1(\word_aligned_data_r_reg[16]_0 [1]),
        .I2(\word_aligned_data_r_reg[16]_0 [3]),
        .I3(\word_aligned_data_r_reg[16]_0 [0]),
        .O(\rx_v_d_r0_inferred__1/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_v_d_r0_inferred__2/i_ 
       (.I0(\word_aligned_data_r_reg[16]_0 [4]),
        .I1(\word_aligned_data_r_reg[16]_0 [6]),
        .I2(\word_aligned_data_r_reg[16]_0 [7]),
        .I3(\word_aligned_data_r_reg[16]_0 [5]),
        .O(\rx_v_d_r0_inferred__2/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \rx_v_d_r0_inferred__3/i_ 
       (.I0(\word_aligned_data_r_reg[11]_0 [2]),
        .I1(\word_aligned_data_r_reg[11]_0 [1]),
        .I2(\word_aligned_data_r_reg[11]_0 [3]),
        .I3(\word_aligned_data_r_reg[11]_0 [0]),
        .O(\rx_v_d_r0_inferred__3/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_v_d_r0_inferred__4/i_ 
       (.I0(\word_aligned_data_r_reg[11]_0 [4]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .O(rx_v_d_r0__0));
  FDRE \rx_v_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_v_d_r0__0),
        .Q(rx_v_d_r[2]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_v_d_r0_inferred__3/i__n_0 ),
        .Q(rx_v_d_r[3]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_v_d_r0_inferred__2/i__n_0 ),
        .Q(rx_v_d_r[4]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_v_d_r0_inferred__1/i__n_0 ),
        .Q(rx_v_d_r[5]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_v_d_r0_inferred__0/i__n_0 ),
        .Q(rx_v_d_r[6]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_v_d_r0_n_0),
        .Q(rx_v_d_r[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \stage_1_count_value_r[0]_i_1 
       (.I0(Q[0]),
        .I1(rx_pe_data_striped_i[2]),
        .I2(rx_pe_data_striped_i[0]),
        .I3(rx_pe_data_striped_i[1]),
        .O(\RX_SUF_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h78FF780078007800)) 
    \stage_1_count_value_r[1]_i_1 
       (.I0(rx_pe_data_striped_i[1]),
        .I1(rx_pe_data_striped_i[0]),
        .I2(rx_pe_data_striped_i[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rx_pe_data_striped_i[5]),
        .O(\RX_PE_DATA_reg[25]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h6F606060)) 
    \stage_1_count_value_r[2]_i_1 
       (.I0(rx_pe_data_striped_i[0]),
        .I1(rx_pe_data_striped_i[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(rx_pe_data_striped_i[4]),
        .O(\RX_PE_DATA_reg[26]_1 ));
  LUT4 #(
    .INIT(16'h7444)) 
    \stage_1_count_value_r[3]_i_1 
       (.I0(rx_pe_data_striped_i[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(rx_pe_data_striped_i[3]),
        .O(\RX_PE_DATA_reg[26]_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_control_bits_r[0]_i_1 
       (.I0(\previous_cycle_control_r_reg[0]_0 ),
        .I1(\left_align_select_r_reg[1]_0 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(previous_cycle_control_r[1]),
        .I4(previous_cycle_control_r[2]),
        .I5(RXCHARISK[0]),
        .O(\word_aligned_control_bits_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_control_bits_r[1]_i_1 
       (.I0(RXCHARISK[0]),
        .I1(\left_align_select_r_reg[1]_0 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(\previous_cycle_control_r_reg[0]_0 ),
        .I4(previous_cycle_control_r[1]),
        .I5(RXCHARISK[1]),
        .O(\word_aligned_control_bits_r[1]_i_1_n_0 ));
  FDRE \word_aligned_control_bits_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_control_bits_r[0]_i_1_n_0 ),
        .Q(word_aligned_control_bits_r[0]),
        .R(1'b0));
  FDRE \word_aligned_control_bits_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_control_bits_r[1]_i_1_n_0 ),
        .Q(word_aligned_control_bits_r[1]),
        .R(1'b0));
  FDRE \word_aligned_control_bits_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_control_bits_r_reg[2]_0 ),
        .Q(word_aligned_control_bits_r[2]),
        .R(1'b0));
  FDRE \word_aligned_control_bits_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_control_bits_r_reg[3]_0 ),
        .Q(word_aligned_control_bits_r[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[0]_i_1 
       (.I0(\previous_cycle_data_r_reg[7]_0 [7]),
        .I1(\left_align_select_r_reg[1]_0 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(p_2_in[7]),
        .I4(\previous_cycle_data_r_reg_n_0_[23] ),
        .I5(RXDATA[7]),
        .O(\word_aligned_data_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[10]_i_1 
       (.I0(RXDATA[5]),
        .I1(\left_align_select_r_reg[1]_0 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(\previous_cycle_data_r_reg[7]_0 [5]),
        .I4(p_2_in[5]),
        .I5(RXDATA[13]),
        .O(\word_aligned_data_r[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[11]_i_1 
       (.I0(RXDATA[4]),
        .I1(\left_align_select_r_reg[1]_0 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(\previous_cycle_data_r_reg[7]_0 [4]),
        .I4(p_2_in[4]),
        .I5(RXDATA[12]),
        .O(\word_aligned_data_r[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[12]_i_1 
       (.I0(RXDATA[3]),
        .I1(\left_align_select_r_reg[1]_0 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(\previous_cycle_data_r_reg[7]_0 [3]),
        .I4(p_2_in[3]),
        .I5(RXDATA[11]),
        .O(\word_aligned_data_r[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[13]_i_1 
       (.I0(RXDATA[2]),
        .I1(\left_align_select_r_reg[1]_0 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(\previous_cycle_data_r_reg[7]_0 [2]),
        .I4(p_2_in[2]),
        .I5(RXDATA[10]),
        .O(\word_aligned_data_r[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[14]_i_1 
       (.I0(RXDATA[1]),
        .I1(\left_align_select_r_reg[1]_0 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(\previous_cycle_data_r_reg[7]_0 [1]),
        .I4(p_2_in[1]),
        .I5(RXDATA[9]),
        .O(\word_aligned_data_r[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[15]_i_1 
       (.I0(RXDATA[0]),
        .I1(\left_align_select_r_reg[1]_0 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(\previous_cycle_data_r_reg[7]_0 [0]),
        .I4(p_2_in[0]),
        .I5(RXDATA[8]),
        .O(\word_aligned_data_r[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[1]_i_1 
       (.I0(\previous_cycle_data_r_reg[7]_0 [6]),
        .I1(\left_align_select_r_reg[1]_0 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(p_2_in[6]),
        .I4(\previous_cycle_data_r_reg_n_0_[22] ),
        .I5(RXDATA[6]),
        .O(\word_aligned_data_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[2]_i_1 
       (.I0(\previous_cycle_data_r_reg[7]_0 [5]),
        .I1(\left_align_select_r_reg[1]_0 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(p_2_in[5]),
        .I4(\previous_cycle_data_r_reg_n_0_[21] ),
        .I5(RXDATA[5]),
        .O(\word_aligned_data_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[3]_i_1 
       (.I0(\previous_cycle_data_r_reg[7]_0 [4]),
        .I1(\left_align_select_r_reg[1]_0 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(p_2_in[4]),
        .I4(\previous_cycle_data_r_reg_n_0_[20] ),
        .I5(RXDATA[4]),
        .O(\word_aligned_data_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[4]_i_1 
       (.I0(\previous_cycle_data_r_reg[7]_0 [3]),
        .I1(\left_align_select_r_reg[1]_0 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(p_2_in[3]),
        .I4(\previous_cycle_data_r_reg_n_0_[19] ),
        .I5(RXDATA[3]),
        .O(\word_aligned_data_r[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[5]_i_1 
       (.I0(\previous_cycle_data_r_reg[7]_0 [2]),
        .I1(\left_align_select_r_reg[1]_0 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(p_2_in[2]),
        .I4(\previous_cycle_data_r_reg_n_0_[18] ),
        .I5(RXDATA[2]),
        .O(\word_aligned_data_r[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[6]_i_1 
       (.I0(\previous_cycle_data_r_reg[7]_0 [1]),
        .I1(\left_align_select_r_reg[1]_0 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(p_2_in[1]),
        .I4(\previous_cycle_data_r_reg_n_0_[17] ),
        .I5(RXDATA[1]),
        .O(\word_aligned_data_r[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[7]_i_1 
       (.I0(\previous_cycle_data_r_reg[7]_0 [0]),
        .I1(\left_align_select_r_reg[1]_0 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(p_2_in[0]),
        .I4(\previous_cycle_data_r_reg_n_0_[16] ),
        .I5(RXDATA[0]),
        .O(\word_aligned_data_r[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[8]_i_1 
       (.I0(RXDATA[7]),
        .I1(\left_align_select_r_reg[1]_0 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(\previous_cycle_data_r_reg[7]_0 [7]),
        .I4(p_2_in[7]),
        .I5(RXDATA[15]),
        .O(\word_aligned_data_r[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[9]_i_1 
       (.I0(RXDATA[6]),
        .I1(\left_align_select_r_reg[1]_0 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(\previous_cycle_data_r_reg[7]_0 [6]),
        .I4(p_2_in[6]),
        .I5(RXDATA[14]),
        .O(\word_aligned_data_r[9]_i_1_n_0 ));
  FDRE \word_aligned_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[0]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[10]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[11]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg[11]_0 [4]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[12]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg[11]_0 [3]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[13]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg[11]_0 [2]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[14]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg[11]_0 [1]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[15]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg[11]_0 [0]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[16]_1 [7]),
        .Q(\word_aligned_data_r_reg[16]_0 [7]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[16]_1 [6]),
        .Q(\word_aligned_data_r_reg[16]_0 [6]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[16]_1 [5]),
        .Q(\word_aligned_data_r_reg[16]_0 [5]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[16]_1 [4]),
        .Q(\word_aligned_data_r_reg[16]_0 [4]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[1]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[16]_1 [3]),
        .Q(\word_aligned_data_r_reg[16]_0 [3]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[16]_1 [2]),
        .Q(\word_aligned_data_r_reg[16]_0 [2]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[16]_1 [1]),
        .Q(\word_aligned_data_r_reg[16]_0 [1]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[16]_1 [0]),
        .Q(\word_aligned_data_r_reg[16]_0 [0]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [7]),
        .Q(\word_aligned_data_r_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [6]),
        .Q(\word_aligned_data_r_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [5]),
        .Q(\word_aligned_data_r_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [4]),
        .Q(\word_aligned_data_r_reg[27]_0 [4]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [3]),
        .Q(\word_aligned_data_r_reg[27]_0 [3]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [2]),
        .Q(\word_aligned_data_r_reg[27]_0 [2]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[2]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [1]),
        .Q(\word_aligned_data_r_reg[27]_0 [1]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [0]),
        .Q(\word_aligned_data_r_reg[27]_0 [0]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[3]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[4]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[5]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[6]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[7]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[8]_i_1_n_0 ),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[9]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_SYM_GEN_4BYTE
   (gen_spa_r,
    TXCHARISK,
    TXDATA,
    gen_spa_i,
    user_clk,
    GEN_SP,
    gen_cc_i,
    gen_suf_striped_i,
    gen_ecp_i,
    gen_scp_striped_i,
    gen_a_i,
    \fc_nb_r_reg[0]_0 ,
    \fc_nb_r_reg[1]_0 ,
    \fc_nb_r_reg[2]_0 ,
    \gen_v_r_reg[1]_0 ,
    \gen_pad_r_reg[0]_0 ,
    \tx_pe_data_v_r_reg[0]_0 ,
    \gen_r_r_reg[0]_0 ,
    \gen_k_r_reg[0]_0 ,
    \tx_pe_data_r_reg[0]_0 );
  output gen_spa_r;
  output [3:0]TXCHARISK;
  output [31:0]TXDATA;
  input gen_spa_i;
  input user_clk;
  input GEN_SP;
  input gen_cc_i;
  input [0:0]gen_suf_striped_i;
  input gen_ecp_i;
  input [0:0]gen_scp_striped_i;
  input gen_a_i;
  input \fc_nb_r_reg[0]_0 ;
  input \fc_nb_r_reg[1]_0 ;
  input \fc_nb_r_reg[2]_0 ;
  input [2:0]\gen_v_r_reg[1]_0 ;
  input [1:0]\gen_pad_r_reg[0]_0 ;
  input [1:0]\tx_pe_data_v_r_reg[0]_0 ;
  input [3:0]\gen_r_r_reg[0]_0 ;
  input [3:0]\gen_k_r_reg[0]_0 ;
  input [31:0]\tx_pe_data_r_reg[0]_0 ;

  wire GEN_SP;
  wire [3:0]TXCHARISK;
  wire [31:0]TXDATA;
  wire \TX_CHAR_IS_K[2]_i_2_n_0 ;
  wire \TX_CHAR_IS_K[3]_i_1_n_0 ;
  wire TX_CHAR_IS_K_reg0;
  wire TX_CHAR_IS_K_reg03_out;
  wire TX_CHAR_IS_K_reg08_out;
  wire \TX_DATA[0]_i_1_n_0 ;
  wire \TX_DATA[0]_i_2_n_0 ;
  wire \TX_DATA[10]_i_1_n_0 ;
  wire \TX_DATA[10]_i_2_n_0 ;
  wire \TX_DATA[10]_i_3_n_0 ;
  wire \TX_DATA[11]_i_1_n_0 ;
  wire \TX_DATA[12]_i_1_n_0 ;
  wire \TX_DATA[12]_i_2_n_0 ;
  wire \TX_DATA[13]_i_1_n_0 ;
  wire \TX_DATA[13]_i_2_n_0 ;
  wire \TX_DATA[14]_i_1_n_0 ;
  wire \TX_DATA[14]_i_2_n_0 ;
  wire \TX_DATA[14]_i_3_n_0 ;
  wire \TX_DATA[14]_i_4_n_0 ;
  wire \TX_DATA[15]_i_1_n_0 ;
  wire \TX_DATA[15]_i_2_n_0 ;
  wire \TX_DATA[15]_i_3_n_0 ;
  wire \TX_DATA[15]_i_4_n_0 ;
  wire \TX_DATA[16]_i_1_n_0 ;
  wire \TX_DATA[17]_i_1_n_0 ;
  wire \TX_DATA[18]_i_1_n_0 ;
  wire \TX_DATA[18]_i_2_n_0 ;
  wire \TX_DATA[18]_i_3_n_0 ;
  wire \TX_DATA[19]_i_1_n_0 ;
  wire \TX_DATA[1]_i_1_n_0 ;
  wire \TX_DATA[20]_i_1_n_0 ;
  wire \TX_DATA[20]_i_2_n_0 ;
  wire \TX_DATA[21]_i_1_n_0 ;
  wire \TX_DATA[21]_i_2_n_0 ;
  wire \TX_DATA[22]_i_1_n_0 ;
  wire \TX_DATA[22]_i_2_n_0 ;
  wire \TX_DATA[23]_i_1_n_0 ;
  wire \TX_DATA[23]_i_2_n_0 ;
  wire \TX_DATA[23]_i_3_n_0 ;
  wire \TX_DATA[23]_i_4_n_0 ;
  wire \TX_DATA[24]_i_1_n_0 ;
  wire \TX_DATA[25]_i_1_n_0 ;
  wire \TX_DATA[26]_i_1_n_0 ;
  wire \TX_DATA[27]_i_1_n_0 ;
  wire \TX_DATA[28]_i_1_n_0 ;
  wire \TX_DATA[29]_i_1_n_0 ;
  wire \TX_DATA[29]_i_2_n_0 ;
  wire \TX_DATA[2]_i_1_n_0 ;
  wire \TX_DATA[2]_i_2_n_0 ;
  wire \TX_DATA[30]_i_1_n_0 ;
  wire \TX_DATA[30]_i_2_n_0 ;
  wire \TX_DATA[31]_i_1_n_0 ;
  wire \TX_DATA[31]_i_2_n_0 ;
  wire \TX_DATA[31]_i_3_n_0 ;
  wire \TX_DATA[31]_i_4_n_0 ;
  wire \TX_DATA[3]_i_1_n_0 ;
  wire \TX_DATA[4]_i_1_n_0 ;
  wire \TX_DATA[4]_i_2_n_0 ;
  wire \TX_DATA[5]_i_1_n_0 ;
  wire \TX_DATA[5]_i_2_n_0 ;
  wire \TX_DATA[6]_i_1_n_0 ;
  wire \TX_DATA[6]_i_2_n_0 ;
  wire \TX_DATA[7]_i_2_n_0 ;
  wire \TX_DATA[7]_i_3_n_0 ;
  wire \TX_DATA[8]_i_1_n_0 ;
  wire \TX_DATA[9]_i_1_n_0 ;
  wire \TX_DATA[9]_i_2_n_0 ;
  wire TX_DATA_reg0;
  wire [7:0]data0;
  wire [7:0]data1;
  wire [0:2]fc_nb_r;
  wire \fc_nb_r_reg[0]_0 ;
  wire \fc_nb_r_reg[1]_0 ;
  wire \fc_nb_r_reg[2]_0 ;
  wire gen_a_i;
  wire gen_a_r;
  wire gen_cc_i;
  wire gen_cc_r;
  wire gen_ecp_i;
  wire \gen_ecp_r_reg_n_0_[1] ;
  wire [3:0]\gen_k_r_reg[0]_0 ;
  wire \gen_k_r_reg_n_0_[3] ;
  wire [1:0]\gen_pad_r_reg[0]_0 ;
  wire \gen_pad_r_reg_n_0_[1] ;
  wire [3:0]\gen_r_r_reg[0]_0 ;
  wire \gen_r_r_reg_n_0_[3] ;
  wire [0:0]gen_scp_striped_i;
  wire gen_sp_r;
  wire gen_spa_i;
  wire gen_spa_r;
  wire [0:0]gen_suf_striped_i;
  wire [2:0]\gen_v_r_reg[1]_0 ;
  wire \gen_v_r_reg_n_0_[3] ;
  wire p_0_in;
  wire p_0_in12_in;
  wire p_0_in14_in;
  wire p_0_in16_in;
  wire p_0_in4_in;
  wire p_0_in5_in;
  wire p_0_in6_in;
  wire p_0_in8_in;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in16_in;
  wire p_2_in;
  wire [31:0]\tx_pe_data_r_reg[0]_0 ;
  wire \tx_pe_data_r_reg_n_0_[0] ;
  wire \tx_pe_data_r_reg_n_0_[1] ;
  wire \tx_pe_data_r_reg_n_0_[24] ;
  wire \tx_pe_data_r_reg_n_0_[25] ;
  wire \tx_pe_data_r_reg_n_0_[26] ;
  wire \tx_pe_data_r_reg_n_0_[27] ;
  wire \tx_pe_data_r_reg_n_0_[28] ;
  wire \tx_pe_data_r_reg_n_0_[29] ;
  wire \tx_pe_data_r_reg_n_0_[2] ;
  wire \tx_pe_data_r_reg_n_0_[30] ;
  wire \tx_pe_data_r_reg_n_0_[31] ;
  wire \tx_pe_data_r_reg_n_0_[3] ;
  wire \tx_pe_data_r_reg_n_0_[4] ;
  wire \tx_pe_data_r_reg_n_0_[5] ;
  wire \tx_pe_data_r_reg_n_0_[6] ;
  wire \tx_pe_data_r_reg_n_0_[7] ;
  wire [1:0]\tx_pe_data_v_r_reg[0]_0 ;
  wire \tx_pe_data_v_r_reg_n_0_[1] ;
  wire user_clk;

  LUT6 #(
    .INIT(64'hFFFFFFFF0000000B)) 
    \TX_CHAR_IS_K[0]_i_1 
       (.I0(\gen_pad_r_reg_n_0_[1] ),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(\gen_v_r_reg_n_0_[3] ),
        .I3(gen_spa_r),
        .I4(gen_sp_r),
        .I5(gen_cc_r),
        .O(TX_CHAR_IS_K_reg0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \TX_CHAR_IS_K[1]_i_1 
       (.I0(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I1(p_1_in),
        .I2(gen_spa_r),
        .I3(gen_sp_r),
        .I4(gen_cc_r),
        .O(TX_CHAR_IS_K_reg03_out));
  LUT6 #(
    .INIT(64'hFF00FF45FF00BA00)) 
    \TX_CHAR_IS_K[2]_i_1 
       (.I0(p_0_in5_in),
        .I1(p_0_in12_in),
        .I2(p_1_in11_in),
        .I3(gen_cc_r),
        .I4(p_2_in),
        .I5(\TX_CHAR_IS_K[2]_i_2_n_0 ),
        .O(TX_CHAR_IS_K_reg08_out));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \TX_CHAR_IS_K[2]_i_2 
       (.I0(gen_spa_r),
        .I1(gen_sp_r),
        .I2(gen_cc_r),
        .O(\TX_CHAR_IS_K[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \TX_CHAR_IS_K[3]_i_1 
       (.I0(gen_cc_r),
        .I1(p_1_in11_in),
        .O(\TX_CHAR_IS_K[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CHAR_IS_K_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_CHAR_IS_K_reg0),
        .Q(TXCHARISK[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CHAR_IS_K_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_CHAR_IS_K_reg03_out),
        .Q(TXCHARISK[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CHAR_IS_K_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_CHAR_IS_K_reg08_out),
        .Q(TXCHARISK[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CHAR_IS_K_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\TX_CHAR_IS_K[3]_i_1_n_0 ),
        .Q(TXCHARISK[0]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \TX_DATA[0]_i_1 
       (.I0(\TX_DATA[0]_i_2_n_0 ),
        .I1(TX_DATA_reg0),
        .I2(TXDATA[24]),
        .O(\TX_DATA[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000044E4)) 
    \TX_DATA[0]_i_2 
       (.I0(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I1(gen_cc_r),
        .I2(\tx_pe_data_r_reg_n_0_[31] ),
        .I3(\gen_pad_r_reg_n_0_[1] ),
        .I4(\gen_ecp_r_reg_n_0_[1] ),
        .O(\TX_DATA[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \TX_DATA[10]_i_1 
       (.I0(data0[2]),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(p_0_in4_in),
        .I3(\TX_DATA[10]_i_2_n_0 ),
        .I4(p_0_in),
        .I5(\TX_DATA[10]_i_3_n_0 ),
        .O(\TX_DATA[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hF0FB)) 
    \TX_DATA[10]_i_2 
       (.I0(gen_spa_r),
        .I1(p_1_in),
        .I2(gen_cc_r),
        .I3(gen_sp_r),
        .O(\TX_DATA[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \TX_DATA[10]_i_3 
       (.I0(gen_sp_r),
        .I1(gen_spa_r),
        .I2(gen_cc_r),
        .O(\TX_DATA[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hEAEF)) 
    \TX_DATA[11]_i_1 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(data0[3]),
        .I2(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I3(gen_cc_r),
        .O(\TX_DATA[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \TX_DATA[12]_i_1 
       (.I0(data0[4]),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(p_0_in4_in),
        .I3(\TX_DATA[12]_i_2_n_0 ),
        .I4(p_0_in),
        .I5(gen_cc_r),
        .O(\TX_DATA[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFF01)) 
    \TX_DATA[12]_i_2 
       (.I0(p_1_in),
        .I1(gen_spa_r),
        .I2(gen_sp_r),
        .I3(gen_cc_r),
        .O(\TX_DATA[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEFEA)) 
    \TX_DATA[13]_i_1 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(data0[5]),
        .I2(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I3(\TX_DATA[13]_i_2_n_0 ),
        .O(\TX_DATA[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFFFEFF)) 
    \TX_DATA[13]_i_2 
       (.I0(p_0_in4_in),
        .I1(p_1_in),
        .I2(gen_spa_r),
        .I3(p_0_in),
        .I4(gen_cc_r),
        .I5(gen_sp_r),
        .O(\TX_DATA[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \TX_DATA[14]_i_1 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(\TX_DATA[15]_i_1_n_0 ),
        .O(\TX_DATA[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \TX_DATA[14]_i_2 
       (.I0(data0[6]),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(p_0_in4_in),
        .I3(\TX_DATA[14]_i_3_n_0 ),
        .I4(p_0_in),
        .I5(\TX_DATA[14]_i_4_n_0 ),
        .O(\TX_DATA[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    \TX_DATA[14]_i_3 
       (.I0(gen_spa_r),
        .I1(p_1_in),
        .I2(gen_sp_r),
        .I3(gen_cc_r),
        .O(\TX_DATA[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \TX_DATA[14]_i_4 
       (.I0(gen_spa_r),
        .I1(gen_sp_r),
        .I2(gen_cc_r),
        .O(\TX_DATA[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \TX_DATA[15]_i_1 
       (.I0(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I1(p_0_in),
        .I2(\TX_DATA[15]_i_3_n_0 ),
        .I3(p_1_in),
        .I4(p_0_in4_in),
        .I5(\gen_ecp_r_reg_n_0_[1] ),
        .O(\TX_DATA[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFEA)) 
    \TX_DATA[15]_i_2 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(data0[7]),
        .I2(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I3(\TX_DATA[15]_i_4_n_0 ),
        .O(\TX_DATA[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \TX_DATA[15]_i_3 
       (.I0(gen_sp_r),
        .I1(gen_spa_r),
        .I2(gen_cc_r),
        .O(\TX_DATA[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000000EF)) 
    \TX_DATA[15]_i_4 
       (.I0(p_0_in4_in),
        .I1(p_1_in),
        .I2(p_0_in),
        .I3(gen_spa_r),
        .I4(gen_sp_r),
        .I5(gen_cc_r),
        .O(\TX_DATA[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h000044E4)) 
    \TX_DATA[16]_i_1 
       (.I0(p_1_in11_in),
        .I1(gen_cc_r),
        .I2(data1[0]),
        .I3(p_0_in12_in),
        .I4(p_0_in5_in),
        .O(\TX_DATA[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EFE0E0E)) 
    \TX_DATA[17]_i_1 
       (.I0(gen_cc_r),
        .I1(gen_sp_r),
        .I2(p_1_in11_in),
        .I3(p_0_in12_in),
        .I4(data1[1]),
        .I5(p_0_in5_in),
        .O(\TX_DATA[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0001FFFE0000)) 
    \TX_DATA[18]_i_1 
       (.I0(p_0_in5_in),
        .I1(\TX_DATA[23]_i_3_n_0 ),
        .I2(p_1_in11_in),
        .I3(p_1_in16_in),
        .I4(\TX_DATA[18]_i_2_n_0 ),
        .I5(TXDATA[10]),
        .O(\TX_DATA[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000054555400)) 
    \TX_DATA[18]_i_2 
       (.I0(p_0_in5_in),
        .I1(data1[2]),
        .I2(p_0_in12_in),
        .I3(p_1_in11_in),
        .I4(\TX_DATA[18]_i_3_n_0 ),
        .I5(p_1_in16_in),
        .O(\TX_DATA[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00FF0032)) 
    \TX_DATA[18]_i_3 
       (.I0(p_0_in8_in),
        .I1(p_2_in),
        .I2(p_0_in6_in),
        .I3(gen_sp_r),
        .I4(gen_spa_r),
        .I5(gen_cc_r),
        .O(\TX_DATA[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000DDD1)) 
    \TX_DATA[19]_i_1 
       (.I0(gen_cc_r),
        .I1(p_1_in11_in),
        .I2(p_0_in12_in),
        .I3(data1[3]),
        .I4(p_0_in5_in),
        .O(\TX_DATA[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEFFAEFFAEFFAEAA)) 
    \TX_DATA[1]_i_1 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(\tx_pe_data_r_reg_n_0_[30] ),
        .I2(\gen_pad_r_reg_n_0_[1] ),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I4(gen_sp_r),
        .I5(gen_cc_r),
        .O(\TX_DATA[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEEE2)) 
    \TX_DATA[20]_i_1 
       (.I0(\TX_DATA[20]_i_2_n_0 ),
        .I1(p_1_in11_in),
        .I2(p_0_in12_in),
        .I3(data1[4]),
        .I4(p_0_in5_in),
        .O(\TX_DATA[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00030002)) 
    \TX_DATA[20]_i_2 
       (.I0(p_0_in8_in),
        .I1(p_2_in),
        .I2(gen_spa_r),
        .I3(gen_sp_r),
        .I4(p_0_in6_in),
        .I5(gen_cc_r),
        .O(\TX_DATA[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \TX_DATA[21]_i_1 
       (.I0(fc_nb_r[2]),
        .I1(p_0_in5_in),
        .I2(data1[5]),
        .I3(p_0_in12_in),
        .I4(p_1_in11_in),
        .I5(\TX_DATA[21]_i_2_n_0 ),
        .O(\TX_DATA[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFFFEFF)) 
    \TX_DATA[21]_i_2 
       (.I0(p_0_in8_in),
        .I1(p_2_in),
        .I2(gen_spa_r),
        .I3(p_0_in6_in),
        .I4(gen_cc_r),
        .I5(gen_sp_r),
        .O(\TX_DATA[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \TX_DATA[22]_i_1 
       (.I0(fc_nb_r[1]),
        .I1(p_0_in5_in),
        .I2(data1[6]),
        .I3(p_0_in12_in),
        .I4(p_1_in11_in),
        .I5(\TX_DATA[22]_i_2_n_0 ),
        .O(\TX_DATA[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00CD)) 
    \TX_DATA[22]_i_2 
       (.I0(p_0_in8_in),
        .I1(p_2_in),
        .I2(p_0_in6_in),
        .I3(gen_spa_r),
        .I4(gen_sp_r),
        .I5(gen_cc_r),
        .O(\TX_DATA[22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \TX_DATA[23]_i_1 
       (.I0(p_0_in5_in),
        .I1(\TX_DATA[23]_i_3_n_0 ),
        .I2(p_1_in11_in),
        .I3(p_1_in16_in),
        .O(\TX_DATA[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB88888)) 
    \TX_DATA[23]_i_2 
       (.I0(fc_nb_r[0]),
        .I1(p_0_in5_in),
        .I2(data1[7]),
        .I3(p_0_in12_in),
        .I4(p_1_in11_in),
        .I5(\TX_DATA[23]_i_4_n_0 ),
        .O(\TX_DATA[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \TX_DATA[23]_i_3 
       (.I0(p_0_in6_in),
        .I1(gen_cc_r),
        .I2(gen_spa_r),
        .I3(gen_sp_r),
        .I4(p_2_in),
        .I5(p_0_in8_in),
        .O(\TX_DATA[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000000EF)) 
    \TX_DATA[23]_i_4 
       (.I0(p_0_in8_in),
        .I1(p_2_in),
        .I2(p_0_in6_in),
        .I3(gen_spa_r),
        .I4(gen_sp_r),
        .I5(gen_cc_r),
        .O(\TX_DATA[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \TX_DATA[24]_i_1 
       (.I0(gen_cc_r),
        .I1(p_1_in11_in),
        .I2(\tx_pe_data_r_reg_n_0_[7] ),
        .I3(p_0_in5_in),
        .O(\TX_DATA[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \TX_DATA[25]_i_1 
       (.I0(gen_cc_r),
        .I1(p_1_in11_in),
        .I2(\tx_pe_data_r_reg_n_0_[6] ),
        .I3(p_0_in5_in),
        .O(\TX_DATA[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFFE2)) 
    \TX_DATA[26]_i_1 
       (.I0(\TX_DATA[31]_i_3_n_0 ),
        .I1(p_1_in11_in),
        .I2(\tx_pe_data_r_reg_n_0_[5] ),
        .I3(p_0_in5_in),
        .O(\TX_DATA[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFFD1)) 
    \TX_DATA[27]_i_1 
       (.I0(gen_cc_r),
        .I1(p_1_in11_in),
        .I2(\tx_pe_data_r_reg_n_0_[4] ),
        .I3(p_0_in5_in),
        .O(\TX_DATA[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFFE2)) 
    \TX_DATA[28]_i_1 
       (.I0(\TX_DATA[31]_i_3_n_0 ),
        .I1(p_1_in11_in),
        .I2(\tx_pe_data_r_reg_n_0_[3] ),
        .I3(p_0_in5_in),
        .O(\TX_DATA[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FD0D)) 
    \TX_DATA[29]_i_1 
       (.I0(p_0_in14_in),
        .I1(\TX_DATA[29]_i_2_n_0 ),
        .I2(p_1_in11_in),
        .I3(\tx_pe_data_r_reg_n_0_[2] ),
        .I4(p_0_in5_in),
        .O(\TX_DATA[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \TX_DATA[29]_i_2 
       (.I0(gen_a_r),
        .I1(gen_sp_r),
        .I2(gen_spa_r),
        .I3(gen_cc_r),
        .I4(p_0_in16_in),
        .O(\TX_DATA[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFEAA)) 
    \TX_DATA[2]_i_1 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(\tx_pe_data_r_reg_n_0_[29] ),
        .I2(\gen_pad_r_reg_n_0_[1] ),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I4(\TX_DATA[2]_i_2_n_0 ),
        .O(\TX_DATA[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00FF0032)) 
    \TX_DATA[2]_i_2 
       (.I0(\gen_k_r_reg_n_0_[3] ),
        .I1(\gen_v_r_reg_n_0_[3] ),
        .I2(\gen_r_r_reg_n_0_[3] ),
        .I3(gen_sp_r),
        .I4(gen_spa_r),
        .I5(gen_cc_r),
        .O(\TX_DATA[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \TX_DATA[30]_i_1 
       (.I0(\TX_DATA[30]_i_2_n_0 ),
        .I1(p_1_in11_in),
        .I2(\tx_pe_data_r_reg_n_0_[1] ),
        .I3(p_0_in5_in),
        .O(\TX_DATA[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000000CD)) 
    \TX_DATA[30]_i_2 
       (.I0(p_0_in14_in),
        .I1(gen_a_r),
        .I2(p_0_in16_in),
        .I3(gen_spa_r),
        .I4(gen_sp_r),
        .I5(gen_cc_r),
        .O(\TX_DATA[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \TX_DATA[31]_i_1 
       (.I0(p_0_in5_in),
        .I1(\TX_DATA[31]_i_3_n_0 ),
        .I2(p_1_in11_in),
        .I3(p_1_in16_in),
        .O(\TX_DATA[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFE2)) 
    \TX_DATA[31]_i_2 
       (.I0(\TX_DATA[31]_i_4_n_0 ),
        .I1(p_1_in11_in),
        .I2(\tx_pe_data_r_reg_n_0_[0] ),
        .I3(p_0_in5_in),
        .O(\TX_DATA[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \TX_DATA[31]_i_3 
       (.I0(p_0_in16_in),
        .I1(gen_cc_r),
        .I2(gen_spa_r),
        .I3(gen_sp_r),
        .I4(gen_a_r),
        .I5(p_0_in14_in),
        .O(\TX_DATA[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF0FFFFFFFB)) 
    \TX_DATA[31]_i_4 
       (.I0(p_0_in16_in),
        .I1(p_0_in14_in),
        .I2(gen_cc_r),
        .I3(gen_spa_r),
        .I4(gen_sp_r),
        .I5(gen_a_r),
        .O(\TX_DATA[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFEAAFEFF)) 
    \TX_DATA[3]_i_1 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(\tx_pe_data_r_reg_n_0_[28] ),
        .I2(\gen_pad_r_reg_n_0_[1] ),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I4(gen_cc_r),
        .O(\TX_DATA[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFEAA)) 
    \TX_DATA[4]_i_1 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(\tx_pe_data_r_reg_n_0_[27] ),
        .I2(\gen_pad_r_reg_n_0_[1] ),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I4(\TX_DATA[4]_i_2_n_0 ),
        .O(\TX_DATA[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00030002)) 
    \TX_DATA[4]_i_2 
       (.I0(\gen_k_r_reg_n_0_[3] ),
        .I1(\gen_v_r_reg_n_0_[3] ),
        .I2(gen_spa_r),
        .I3(gen_sp_r),
        .I4(\gen_r_r_reg_n_0_[3] ),
        .I5(gen_cc_r),
        .O(\TX_DATA[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEFFAEAA)) 
    \TX_DATA[5]_i_1 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(\tx_pe_data_r_reg_n_0_[26] ),
        .I2(\gen_pad_r_reg_n_0_[1] ),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I4(\TX_DATA[5]_i_2_n_0 ),
        .O(\TX_DATA[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFFFEFF)) 
    \TX_DATA[5]_i_2 
       (.I0(\gen_k_r_reg_n_0_[3] ),
        .I1(\gen_v_r_reg_n_0_[3] ),
        .I2(gen_spa_r),
        .I3(\gen_r_r_reg_n_0_[3] ),
        .I4(gen_cc_r),
        .I5(gen_sp_r),
        .O(\TX_DATA[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEFFAEAA)) 
    \TX_DATA[6]_i_1 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(\tx_pe_data_r_reg_n_0_[25] ),
        .I2(\gen_pad_r_reg_n_0_[1] ),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I4(\TX_DATA[6]_i_2_n_0 ),
        .O(\TX_DATA[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00CD)) 
    \TX_DATA[6]_i_2 
       (.I0(\gen_k_r_reg_n_0_[3] ),
        .I1(\gen_v_r_reg_n_0_[3] ),
        .I2(\gen_r_r_reg_n_0_[3] ),
        .I3(gen_spa_r),
        .I4(gen_sp_r),
        .I5(gen_cc_r),
        .O(\TX_DATA[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \TX_DATA[7]_i_1 
       (.I0(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I1(\gen_r_r_reg_n_0_[3] ),
        .I2(\TX_DATA[15]_i_3_n_0 ),
        .I3(\gen_v_r_reg_n_0_[3] ),
        .I4(\gen_k_r_reg_n_0_[3] ),
        .I5(\gen_ecp_r_reg_n_0_[1] ),
        .O(TX_DATA_reg0));
  LUT5 #(
    .INIT(32'hFEFFFEAA)) 
    \TX_DATA[7]_i_2 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(\tx_pe_data_r_reg_n_0_[24] ),
        .I2(\gen_pad_r_reg_n_0_[1] ),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I4(\TX_DATA[7]_i_3_n_0 ),
        .O(\TX_DATA[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000000EF)) 
    \TX_DATA[7]_i_3 
       (.I0(\gen_k_r_reg_n_0_[3] ),
        .I1(\gen_v_r_reg_n_0_[3] ),
        .I2(\gen_r_r_reg_n_0_[3] ),
        .I3(gen_spa_r),
        .I4(gen_sp_r),
        .I5(gen_cc_r),
        .O(\TX_DATA[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hEFEA)) 
    \TX_DATA[8]_i_1 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(data0[0]),
        .I2(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I3(gen_cc_r),
        .O(\TX_DATA[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \TX_DATA[9]_i_1 
       (.I0(\TX_DATA[9]_i_2_n_0 ),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(data0[1]),
        .I3(\gen_ecp_r_reg_n_0_[1] ),
        .I4(\TX_DATA[15]_i_1_n_0 ),
        .I5(TXDATA[17]),
        .O(\TX_DATA[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \TX_DATA[9]_i_2 
       (.I0(gen_sp_r),
        .I1(gen_cc_r),
        .O(\TX_DATA[9]_i_2_n_0 ));
  FDRE \TX_DATA_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\TX_DATA[0]_i_1_n_0 ),
        .Q(TXDATA[24]),
        .R(1'b0));
  FDSE \TX_DATA_reg[10] 
       (.C(user_clk),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[10]_i_1_n_0 ),
        .Q(TXDATA[18]),
        .S(\TX_DATA[14]_i_1_n_0 ));
  FDSE \TX_DATA_reg[11] 
       (.C(user_clk),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[11]_i_1_n_0 ),
        .Q(TXDATA[19]),
        .S(1'b0));
  FDSE \TX_DATA_reg[12] 
       (.C(user_clk),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[12]_i_1_n_0 ),
        .Q(TXDATA[20]),
        .S(\TX_DATA[14]_i_1_n_0 ));
  FDSE \TX_DATA_reg[13] 
       (.C(user_clk),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[13]_i_1_n_0 ),
        .Q(TXDATA[21]),
        .S(1'b0));
  FDSE \TX_DATA_reg[14] 
       (.C(user_clk),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[14]_i_2_n_0 ),
        .Q(TXDATA[22]),
        .S(\TX_DATA[14]_i_1_n_0 ));
  FDSE \TX_DATA_reg[15] 
       (.C(user_clk),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[15]_i_2_n_0 ),
        .Q(TXDATA[23]),
        .S(1'b0));
  FDSE \TX_DATA_reg[16] 
       (.C(user_clk),
        .CE(\TX_DATA[23]_i_1_n_0 ),
        .D(\TX_DATA[16]_i_1_n_0 ),
        .Q(TXDATA[8]),
        .S(p_1_in16_in));
  FDSE \TX_DATA_reg[17] 
       (.C(user_clk),
        .CE(\TX_DATA[23]_i_1_n_0 ),
        .D(\TX_DATA[17]_i_1_n_0 ),
        .Q(TXDATA[9]),
        .S(p_1_in16_in));
  FDRE \TX_DATA_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\TX_DATA[18]_i_1_n_0 ),
        .Q(TXDATA[10]),
        .R(1'b0));
  FDSE \TX_DATA_reg[19] 
       (.C(user_clk),
        .CE(\TX_DATA[23]_i_1_n_0 ),
        .D(\TX_DATA[19]_i_1_n_0 ),
        .Q(TXDATA[11]),
        .S(p_1_in16_in));
  FDSE \TX_DATA_reg[1] 
       (.C(user_clk),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[1]_i_1_n_0 ),
        .Q(TXDATA[25]),
        .S(1'b0));
  FDSE \TX_DATA_reg[20] 
       (.C(user_clk),
        .CE(\TX_DATA[23]_i_1_n_0 ),
        .D(\TX_DATA[20]_i_1_n_0 ),
        .Q(TXDATA[12]),
        .S(p_1_in16_in));
  FDSE \TX_DATA_reg[21] 
       (.C(user_clk),
        .CE(\TX_DATA[23]_i_1_n_0 ),
        .D(\TX_DATA[21]_i_1_n_0 ),
        .Q(TXDATA[13]),
        .S(p_1_in16_in));
  FDSE \TX_DATA_reg[22] 
       (.C(user_clk),
        .CE(\TX_DATA[23]_i_1_n_0 ),
        .D(\TX_DATA[22]_i_1_n_0 ),
        .Q(TXDATA[14]),
        .S(p_1_in16_in));
  FDSE \TX_DATA_reg[23] 
       (.C(user_clk),
        .CE(\TX_DATA[23]_i_1_n_0 ),
        .D(\TX_DATA[23]_i_2_n_0 ),
        .Q(TXDATA[15]),
        .S(p_1_in16_in));
  FDRE \TX_DATA_reg[24] 
       (.C(user_clk),
        .CE(\TX_DATA[31]_i_1_n_0 ),
        .D(\TX_DATA[24]_i_1_n_0 ),
        .Q(TXDATA[0]),
        .R(p_1_in16_in));
  FDRE \TX_DATA_reg[25] 
       (.C(user_clk),
        .CE(\TX_DATA[31]_i_1_n_0 ),
        .D(\TX_DATA[25]_i_1_n_0 ),
        .Q(TXDATA[1]),
        .R(p_1_in16_in));
  FDSE \TX_DATA_reg[26] 
       (.C(user_clk),
        .CE(\TX_DATA[31]_i_1_n_0 ),
        .D(\TX_DATA[26]_i_1_n_0 ),
        .Q(TXDATA[2]),
        .S(p_1_in16_in));
  FDSE \TX_DATA_reg[27] 
       (.C(user_clk),
        .CE(\TX_DATA[31]_i_1_n_0 ),
        .D(\TX_DATA[27]_i_1_n_0 ),
        .Q(TXDATA[3]),
        .S(p_1_in16_in));
  FDSE \TX_DATA_reg[28] 
       (.C(user_clk),
        .CE(\TX_DATA[31]_i_1_n_0 ),
        .D(\TX_DATA[28]_i_1_n_0 ),
        .Q(TXDATA[4]),
        .S(p_1_in16_in));
  FDRE \TX_DATA_reg[29] 
       (.C(user_clk),
        .CE(\TX_DATA[31]_i_1_n_0 ),
        .D(\TX_DATA[29]_i_1_n_0 ),
        .Q(TXDATA[5]),
        .R(p_1_in16_in));
  FDSE \TX_DATA_reg[2] 
       (.C(user_clk),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[2]_i_1_n_0 ),
        .Q(TXDATA[26]),
        .S(1'b0));
  FDSE \TX_DATA_reg[30] 
       (.C(user_clk),
        .CE(\TX_DATA[31]_i_1_n_0 ),
        .D(\TX_DATA[30]_i_1_n_0 ),
        .Q(TXDATA[6]),
        .S(p_1_in16_in));
  FDRE \TX_DATA_reg[31] 
       (.C(user_clk),
        .CE(\TX_DATA[31]_i_1_n_0 ),
        .D(\TX_DATA[31]_i_2_n_0 ),
        .Q(TXDATA[7]),
        .R(p_1_in16_in));
  FDSE \TX_DATA_reg[3] 
       (.C(user_clk),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[3]_i_1_n_0 ),
        .Q(TXDATA[27]),
        .S(1'b0));
  FDSE \TX_DATA_reg[4] 
       (.C(user_clk),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[4]_i_1_n_0 ),
        .Q(TXDATA[28]),
        .S(1'b0));
  FDSE \TX_DATA_reg[5] 
       (.C(user_clk),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[5]_i_1_n_0 ),
        .Q(TXDATA[29]),
        .S(1'b0));
  FDSE \TX_DATA_reg[6] 
       (.C(user_clk),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[6]_i_1_n_0 ),
        .Q(TXDATA[30]),
        .S(1'b0));
  FDSE \TX_DATA_reg[7] 
       (.C(user_clk),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[7]_i_2_n_0 ),
        .Q(TXDATA[31]),
        .S(1'b0));
  FDSE \TX_DATA_reg[8] 
       (.C(user_clk),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[8]_i_1_n_0 ),
        .Q(TXDATA[16]),
        .S(1'b0));
  FDRE \TX_DATA_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\TX_DATA[9]_i_1_n_0 ),
        .Q(TXDATA[17]),
        .R(1'b0));
  FDRE \fc_nb_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\fc_nb_r_reg[0]_0 ),
        .Q(fc_nb_r[0]),
        .R(1'b0));
  FDRE \fc_nb_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\fc_nb_r_reg[1]_0 ),
        .Q(fc_nb_r[1]),
        .R(1'b0));
  FDRE \fc_nb_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\fc_nb_r_reg[2]_0 ),
        .Q(fc_nb_r[2]),
        .R(1'b0));
  FDRE gen_a_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_a_i),
        .Q(gen_a_r),
        .R(1'b0));
  FDRE gen_cc_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_cc_i),
        .Q(gen_cc_r),
        .R(1'b0));
  FDRE \gen_ecp_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_ecp_i),
        .Q(\gen_ecp_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_k_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_k_r_reg[0]_0 [3]),
        .Q(p_0_in16_in),
        .R(1'b0));
  FDRE \gen_k_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_k_r_reg[0]_0 [2]),
        .Q(p_0_in8_in),
        .R(1'b0));
  FDRE \gen_k_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_k_r_reg[0]_0 [1]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \gen_k_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_k_r_reg[0]_0 [0]),
        .Q(\gen_k_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_pad_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_pad_r_reg[0]_0 [1]),
        .Q(p_0_in12_in),
        .R(1'b0));
  FDRE \gen_pad_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_pad_r_reg[0]_0 [0]),
        .Q(\gen_pad_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_r_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_r_r_reg[0]_0 [3]),
        .Q(p_0_in14_in),
        .R(1'b0));
  FDRE \gen_r_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_r_r_reg[0]_0 [2]),
        .Q(p_0_in6_in),
        .R(1'b0));
  FDRE \gen_r_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_r_r_reg[0]_0 [1]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \gen_r_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_r_r_reg[0]_0 [0]),
        .Q(\gen_r_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_scp_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_scp_striped_i),
        .Q(p_1_in16_in),
        .R(1'b0));
  FDRE gen_sp_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_SP),
        .Q(gen_sp_r),
        .R(1'b0));
  FDRE gen_spa_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_spa_i),
        .Q(gen_spa_r),
        .R(1'b0));
  FDRE \gen_suf_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_suf_striped_i),
        .Q(p_0_in5_in),
        .R(1'b0));
  FDRE \gen_v_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_v_r_reg[1]_0 [2]),
        .Q(p_2_in),
        .R(1'b0));
  FDRE \gen_v_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_v_r_reg[1]_0 [1]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \gen_v_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_v_r_reg[1]_0 [0]),
        .Q(\gen_v_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [31]),
        .Q(\tx_pe_data_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [21]),
        .Q(data1[5]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [20]),
        .Q(data1[4]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [19]),
        .Q(data1[3]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [18]),
        .Q(data1[2]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [17]),
        .Q(data1[1]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [16]),
        .Q(data1[0]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [15]),
        .Q(data0[7]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [14]),
        .Q(data0[6]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [13]),
        .Q(data0[5]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [12]),
        .Q(data0[4]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [30]),
        .Q(\tx_pe_data_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [11]),
        .Q(data0[3]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [10]),
        .Q(data0[2]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [9]),
        .Q(data0[1]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [8]),
        .Q(data0[0]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [7]),
        .Q(\tx_pe_data_r_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [6]),
        .Q(\tx_pe_data_r_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [5]),
        .Q(\tx_pe_data_r_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [4]),
        .Q(\tx_pe_data_r_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [3]),
        .Q(\tx_pe_data_r_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [2]),
        .Q(\tx_pe_data_r_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [29]),
        .Q(\tx_pe_data_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [1]),
        .Q(\tx_pe_data_r_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [0]),
        .Q(\tx_pe_data_r_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [28]),
        .Q(\tx_pe_data_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [27]),
        .Q(\tx_pe_data_r_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [26]),
        .Q(\tx_pe_data_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [25]),
        .Q(\tx_pe_data_r_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [24]),
        .Q(\tx_pe_data_r_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [23]),
        .Q(data1[7]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [22]),
        .Q(data1[6]),
        .R(1'b0));
  FDRE \tx_pe_data_v_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_v_r_reg[0]_0 [1]),
        .Q(p_1_in11_in),
        .R(1'b0));
  FDRE \tx_pe_data_v_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_v_r_reg[0]_0 [0]),
        .Q(\tx_pe_data_v_r_reg_n_0_[1] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_TX_LL
   (gen_cc_i,
    ufc_header_r_reg,
    tx_dst_rdy,
    gen_scp_striped_i,
    gen_ecp_i,
    gen_suf_striped_i,
    \s_axi_ufc_tx_tdata[0] ,
    \s_axi_ufc_tx_tdata[1] ,
    \s_axi_ufc_tx_tdata[2] ,
    s_axi_tx_tready,
    \ufc_message_count_r_reg[2] ,
    \TX_PE_DATA_V_reg[0] ,
    \GEN_PAD_reg[0] ,
    \TX_PE_DATA_reg[0] ,
    user_clk,
    Q,
    p_0_in,
    next_ufc_idle_c,
    s_axi_ufc_tx_ms,
    s_axi_tx_tlast,
    s_axi_tx_tkeep,
    \tx_pe_data_v_r_reg[1] ,
    s_axi_tx_tvalid,
    warn_cc,
    s_axi_ufc_tx_req,
    s_axi_tx_tdata);
  output gen_cc_i;
  output ufc_header_r_reg;
  output tx_dst_rdy;
  output [0:0]gen_scp_striped_i;
  output gen_ecp_i;
  output [0:0]gen_suf_striped_i;
  output \s_axi_ufc_tx_tdata[0] ;
  output \s_axi_ufc_tx_tdata[1] ;
  output \s_axi_ufc_tx_tdata[2] ;
  output s_axi_tx_tready;
  output \ufc_message_count_r_reg[2] ;
  output [1:0]\TX_PE_DATA_V_reg[0] ;
  output [1:0]\GEN_PAD_reg[0] ;
  output [31:0]\TX_PE_DATA_reg[0] ;
  input user_clk;
  input Q;
  input p_0_in;
  input next_ufc_idle_c;
  input [0:2]s_axi_ufc_tx_ms;
  input s_axi_tx_tlast;
  input [0:3]s_axi_tx_tkeep;
  input \tx_pe_data_v_r_reg[1] ;
  input s_axi_tx_tvalid;
  input warn_cc;
  input s_axi_ufc_tx_req;
  input [0:31]s_axi_tx_tdata;

  wire [1:0]\GEN_PAD_reg[0] ;
  wire Q;
  wire [1:0]\TX_PE_DATA_V_reg[0] ;
  wire [31:0]\TX_PE_DATA_reg[0] ;
  wire create_gap_for_scp_c041_out;
  wire do_cc_r;
  wire gen_cc_i;
  wire gen_ecp_i;
  wire [0:0]gen_scp_striped_i;
  wire [0:0]gen_suf_striped_i;
  wire next_ufc_idle_c;
  wire p_0_in;
  wire pdu_ok_c;
  wire [0:31]s_axi_tx_tdata;
  wire [0:3]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire [0:2]s_axi_ufc_tx_ms;
  wire s_axi_ufc_tx_req;
  wire \s_axi_ufc_tx_tdata[0] ;
  wire \s_axi_ufc_tx_tdata[1] ;
  wire \s_axi_ufc_tx_tdata[2] ;
  wire tx_dst_rdy;
  wire tx_ll_control_i_n_15;
  wire tx_ll_datapath_i_n_0;
  wire \tx_pe_data_v_r_reg[1] ;
  wire ufc_header_r_reg;
  wire \ufc_message_count_r_reg[2] ;
  wire [1:1]ufc_message_i;
  wire user_clk;
  wire warn_cc;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_TX_LL_CONTROL tx_ll_control_i
       (.D(create_gap_for_scp_c041_out),
        .E(pdu_ok_c),
        .Q(Q),
        .TX_DST_RDY_N_reg_0(tx_dst_rdy),
        .do_cc_r(do_cc_r),
        .gen_cc_i(gen_cc_i),
        .gen_ecp_i(gen_ecp_i),
        .gen_scp_striped_i(gen_scp_striped_i),
        .gen_suf_striped_i(gen_suf_striped_i),
        .in_frame_r_reg(tx_ll_datapath_i_n_0),
        .new_pkt_r_reg(tx_ll_control_i_n_15),
        .next_ufc_idle_c(next_ufc_idle_c),
        .p_0_in(p_0_in),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tready(s_axi_tx_tready),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .s_axi_ufc_tx_ms(s_axi_ufc_tx_ms),
        .s_axi_ufc_tx_req(s_axi_ufc_tx_req),
        .\s_axi_ufc_tx_tdata[0] (\s_axi_ufc_tx_tdata[0] ),
        .\s_axi_ufc_tx_tdata[1] (\s_axi_ufc_tx_tdata[1] ),
        .\s_axi_ufc_tx_tdata[2] (\s_axi_ufc_tx_tdata[2] ),
        .sof_to_eof_1_r_reg_0(\tx_pe_data_v_r_reg[1] ),
        .ufc_header_r_reg_0(ufc_header_r_reg),
        .\ufc_message_count_r_reg[2]_0 (\ufc_message_count_r_reg[2] ),
        .ufc_message_i(ufc_message_i),
        .user_clk(user_clk),
        .warn_cc(warn_cc));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_TX_LL_DATAPATH tx_ll_datapath_i
       (.D(create_gap_for_scp_c041_out),
        .E(pdu_ok_c),
        .\GEN_PAD_reg[0]_0 (\GEN_PAD_reg[0] ),
        .\TX_PE_DATA_V_reg[0]_0 (\TX_PE_DATA_V_reg[0] ),
        .\TX_PE_DATA_reg[0]_0 (\TX_PE_DATA_reg[0] ),
        .do_cc_r(do_cc_r),
        .in_frame_r_reg_0(tx_ll_datapath_i_n_0),
        .in_frame_r_reg_1(tx_ll_control_i_n_15),
        .p_0_in(p_0_in),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .s_axi_tx_tkeep(s_axi_tx_tkeep),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .tx_dst_rdy(tx_dst_rdy),
        .\tx_pe_data_v_r_reg[1]_0 (\tx_pe_data_v_r_reg[1] ),
        .ufc_message_i(ufc_message_i),
        .user_clk(user_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_TX_LL_CONTROL
   (gen_cc_i,
    do_cc_r,
    ufc_header_r_reg_0,
    E,
    TX_DST_RDY_N_reg_0,
    gen_scp_striped_i,
    gen_ecp_i,
    gen_suf_striped_i,
    \s_axi_ufc_tx_tdata[0] ,
    \s_axi_ufc_tx_tdata[1] ,
    \s_axi_ufc_tx_tdata[2] ,
    s_axi_tx_tready,
    \ufc_message_count_r_reg[2]_0 ,
    D,
    ufc_message_i,
    new_pkt_r_reg,
    user_clk,
    Q,
    p_0_in,
    next_ufc_idle_c,
    s_axi_ufc_tx_ms,
    s_axi_tx_tlast,
    s_axi_tx_tvalid,
    sof_to_eof_1_r_reg_0,
    warn_cc,
    s_axi_ufc_tx_req,
    in_frame_r_reg);
  output gen_cc_i;
  output do_cc_r;
  output ufc_header_r_reg_0;
  output [0:0]E;
  output TX_DST_RDY_N_reg_0;
  output [0:0]gen_scp_striped_i;
  output gen_ecp_i;
  output [0:0]gen_suf_striped_i;
  output \s_axi_ufc_tx_tdata[0] ;
  output \s_axi_ufc_tx_tdata[1] ;
  output \s_axi_ufc_tx_tdata[2] ;
  output s_axi_tx_tready;
  output \ufc_message_count_r_reg[2]_0 ;
  output [0:0]D;
  output [0:0]ufc_message_i;
  output new_pkt_r_reg;
  input user_clk;
  input Q;
  input p_0_in;
  input next_ufc_idle_c;
  input [0:2]s_axi_ufc_tx_ms;
  input s_axi_tx_tlast;
  input s_axi_tx_tvalid;
  input sof_to_eof_1_r_reg_0;
  input warn_cc;
  input s_axi_ufc_tx_req;
  input in_frame_r_reg;

  wire [0:0]D;
  wire [0:0]E;
  wire GEN_ECP0;
  wire GEN_SCP0;
  wire Q;
  wire TX_DST_RDY_N_i_2_n_0;
  wire TX_DST_RDY_N_i_3_n_0;
  wire TX_DST_RDY_N_i_4_n_0;
  wire TX_DST_RDY_N_reg_0;
  wire data_r;
  wire data_to_eof_1_r;
  wire data_to_eof_2_r;
  wire do_cc_r;
  wire gen_cc_i;
  wire gen_ecp_i;
  wire [0:0]gen_scp_striped_i;
  wire [0:0]gen_suf_striped_i;
  wire idle_r;
  wire in_frame_r_reg;
  wire new_pkt_r_reg;
  wire next_data_c;
  wire next_data_to_eof_1_c;
  wire next_idle_c;
  wire next_sof_to_data_c;
  wire next_sof_to_eof_1_c;
  wire next_ufc_header_c;
  wire next_ufc_idle_c;
  wire next_ufc_message1_c;
  wire next_ufc_message2_c;
  wire next_ufc_message3_c;
  wire next_ufc_message4_c;
  wire next_ufc_message5_c;
  wire next_ufc_message6_c;
  wire next_ufc_message7_c;
  wire next_ufc_message8_c;
  wire p_0_in;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire [0:2]s_axi_ufc_tx_ms;
  wire s_axi_ufc_tx_req;
  wire \s_axi_ufc_tx_tdata[0] ;
  wire \s_axi_ufc_tx_tdata[1] ;
  wire \s_axi_ufc_tx_tdata[2] ;
  wire sof_to_data_r;
  wire sof_to_data_r_i_2_n_0;
  wire sof_to_eof_1_r;
  wire sof_to_eof_1_r_i_2_n_0;
  wire sof_to_eof_1_r_reg_0;
  wire sof_to_eof_2_r;
  wire suf_delay_1_r;
  wire suf_delay_2_r;
  wire tx_dst_rdy_n_c;
  wire ufc_header_r_i_3_n_0;
  wire ufc_header_r_i_4_n_0;
  wire ufc_header_r_reg_0;
  wire ufc_idle_r;
  wire ufc_message1_r;
  wire ufc_message2_r;
  wire ufc_message3_r;
  wire ufc_message4_r;
  wire ufc_message5_r;
  wire ufc_message6_r;
  wire ufc_message7_r;
  wire ufc_message8_r;
  wire [0:2]ufc_message_count_r;
  wire \ufc_message_count_r[0]_i_1_n_0 ;
  wire \ufc_message_count_r[1]_i_1_n_0 ;
  wire \ufc_message_count_r[2]_i_1_n_0 ;
  wire \ufc_message_count_r_reg[2]_0 ;
  wire [0:0]ufc_message_i;
  wire user_clk;
  wire warn_cc;

  (* srl_bus_name = "inst/\aurora_tx_ll_i/tx_ll_control_i/FC_NB_reg " *) 
  (* srl_name = "inst/\aurora_tx_ll_i/tx_ll_control_i/FC_NB_reg[0]_srl3 " *) 
  SRL16E \FC_NB_reg[0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(s_axi_ufc_tx_ms[0]),
        .Q(\s_axi_ufc_tx_tdata[0] ));
  (* srl_bus_name = "inst/\aurora_tx_ll_i/tx_ll_control_i/FC_NB_reg " *) 
  (* srl_name = "inst/\aurora_tx_ll_i/tx_ll_control_i/FC_NB_reg[1]_srl3 " *) 
  SRL16E \FC_NB_reg[1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(s_axi_ufc_tx_ms[1]),
        .Q(\s_axi_ufc_tx_tdata[1] ));
  (* srl_bus_name = "inst/\aurora_tx_ll_i/tx_ll_control_i/FC_NB_reg " *) 
  (* srl_name = "inst/\aurora_tx_ll_i/tx_ll_control_i/FC_NB_reg[2]_srl3 " *) 
  SRL16E \FC_NB_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(s_axi_ufc_tx_ms[2]),
        .Q(\s_axi_ufc_tx_tdata[2] ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    GEN_ECP_i_1
       (.I0(data_to_eof_2_r),
        .I1(sof_to_eof_2_r),
        .I2(do_cc_r),
        .O(GEN_ECP0));
  FDRE GEN_ECP_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_ECP0),
        .Q(gen_ecp_i),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h32)) 
    GEN_SCP_i_1
       (.I0(sof_to_data_r),
        .I1(do_cc_r),
        .I2(sof_to_eof_1_r),
        .O(GEN_SCP0));
  FDRE GEN_SCP_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_SCP0),
        .Q(gen_scp_striped_i),
        .R(p_0_in));
  FDRE GEN_SUF_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(suf_delay_2_r),
        .Q(gen_suf_striped_i),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFABAAFFFF)) 
    TX_DST_RDY_N_i_1
       (.I0(TX_DST_RDY_N_i_2_n_0),
        .I1(do_cc_r),
        .I2(sof_to_eof_1_r_i_2_n_0),
        .I3(TX_DST_RDY_N_i_3_n_0),
        .I4(\ufc_message_count_r_reg[2]_0 ),
        .I5(Q),
        .O(tx_dst_rdy_n_c));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4F4F444)) 
    TX_DST_RDY_N_i_2
       (.I0(warn_cc),
        .I1(s_axi_ufc_tx_req),
        .I2(do_cc_r),
        .I3(sof_to_eof_1_r),
        .I4(data_to_eof_1_r),
        .I5(TX_DST_RDY_N_i_4_n_0),
        .O(TX_DST_RDY_N_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF5554)) 
    TX_DST_RDY_N_i_3
       (.I0(sof_to_eof_1_r_reg_0),
        .I1(data_to_eof_2_r),
        .I2(sof_to_eof_2_r),
        .I3(idle_r),
        .I4(sof_to_data_r),
        .I5(data_r),
        .O(TX_DST_RDY_N_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    TX_DST_RDY_N_i_4
       (.I0(data_r),
        .I1(sof_to_data_r),
        .I2(ufc_idle_r),
        .I3(ufc_header_r_reg_0),
        .I4(sof_to_eof_1_r),
        .I5(data_to_eof_1_r),
        .O(TX_DST_RDY_N_i_4_n_0));
  FDSE TX_DST_RDY_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_dst_rdy_n_c),
        .Q(TX_DST_RDY_N_reg_0),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'hEE0EEEEE)) 
    data_r_i_1
       (.I0(sof_to_data_r),
        .I1(data_r),
        .I2(s_axi_tx_tlast),
        .I3(TX_DST_RDY_N_reg_0),
        .I4(s_axi_tx_tvalid),
        .O(next_data_c));
  FDRE data_r_reg
       (.C(user_clk),
        .CE(E),
        .D(next_data_c),
        .Q(data_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'h00E00000)) 
    data_to_eof_1_r_i_1
       (.I0(sof_to_data_r),
        .I1(data_r),
        .I2(s_axi_tx_tlast),
        .I3(TX_DST_RDY_N_reg_0),
        .I4(s_axi_tx_tvalid),
        .O(next_data_to_eof_1_c));
  FDRE data_to_eof_1_r_reg
       (.C(user_clk),
        .CE(E),
        .D(next_data_to_eof_1_c),
        .Q(data_to_eof_1_r),
        .R(p_0_in));
  FDRE data_to_eof_2_r_reg
       (.C(user_clk),
        .CE(E),
        .D(data_to_eof_1_r),
        .Q(data_to_eof_2_r),
        .R(p_0_in));
  FDRE do_cc_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(Q),
        .Q(do_cc_r),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_cc_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(do_cc_r),
        .Q(gen_cc_i),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFEFEFEFEFEFEF00)) 
    idle_r_i_1
       (.I0(sof_to_eof_1_r_reg_0),
        .I1(TX_DST_RDY_N_reg_0),
        .I2(s_axi_tx_tvalid),
        .I3(idle_r),
        .I4(sof_to_eof_2_r),
        .I5(data_to_eof_2_r),
        .O(next_idle_c));
  FDSE idle_r_reg
       (.C(user_clk),
        .CE(E),
        .D(next_idle_c),
        .Q(idle_r),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'hF3FF0100)) 
    in_frame_r_i_1
       (.I0(sof_to_eof_1_r_reg_0),
        .I1(s_axi_tx_tlast),
        .I2(TX_DST_RDY_N_reg_0),
        .I3(s_axi_tx_tvalid),
        .I4(in_frame_r_reg),
        .O(new_pkt_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_tx_tready_INST_0
       (.I0(TX_DST_RDY_N_reg_0),
        .O(s_axi_tx_tready));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    sof_to_data_r_i_1
       (.I0(s_axi_tx_tlast),
        .I1(s_axi_tx_tvalid),
        .I2(TX_DST_RDY_N_reg_0),
        .I3(sof_to_eof_1_r_reg_0),
        .I4(sof_to_data_r_i_2_n_0),
        .O(next_sof_to_data_c));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    sof_to_data_r_i_2
       (.I0(data_to_eof_2_r),
        .I1(sof_to_eof_2_r),
        .I2(idle_r),
        .O(sof_to_data_r_i_2_n_0));
  FDRE sof_to_data_r_reg
       (.C(user_clk),
        .CE(E),
        .D(next_sof_to_data_c),
        .Q(sof_to_data_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'h11111110)) 
    sof_to_eof_1_r_i_1
       (.I0(sof_to_eof_1_r_reg_0),
        .I1(sof_to_eof_1_r_i_2_n_0),
        .I2(idle_r),
        .I3(sof_to_eof_2_r),
        .I4(data_to_eof_2_r),
        .O(next_sof_to_eof_1_c));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    sof_to_eof_1_r_i_2
       (.I0(s_axi_tx_tvalid),
        .I1(TX_DST_RDY_N_reg_0),
        .I2(s_axi_tx_tlast),
        .O(sof_to_eof_1_r_i_2_n_0));
  FDRE sof_to_eof_1_r_reg
       (.C(user_clk),
        .CE(E),
        .D(next_sof_to_eof_1_c),
        .Q(sof_to_eof_1_r),
        .R(p_0_in));
  FDRE sof_to_eof_2_r_reg
       (.C(user_clk),
        .CE(E),
        .D(sof_to_eof_1_r),
        .Q(sof_to_eof_2_r),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hFFFE)) 
    storage_ufc_v_r_i_1
       (.I0(ufc_message2_r),
        .I1(ufc_message8_r),
        .I2(ufc_message6_r),
        .I3(ufc_message4_r),
        .O(ufc_message_i));
  LUT1 #(
    .INIT(2'h1)) 
    storage_v_r_i_1
       (.I0(do_cc_r),
        .O(E));
  FDRE suf_delay_1_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ufc_header_r_reg_0),
        .Q(suf_delay_1_r),
        .R(p_0_in));
  FDRE suf_delay_2_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(suf_delay_1_r),
        .Q(suf_delay_2_r),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h1)) 
    \tx_pe_ufc_v_r[1]_i_1 
       (.I0(ufc_idle_r),
        .I1(ufc_header_r_reg_0),
        .O(D));
  LUT6 #(
    .INIT(64'h0008000C00080008)) 
    ufc_header_r_i_2
       (.I0(ufc_header_r_i_3_n_0),
        .I1(s_axi_ufc_tx_req),
        .I2(warn_cc),
        .I3(Q),
        .I4(ufc_header_r_i_4_n_0),
        .I5(ufc_message_count_r[2]),
        .O(next_ufc_header_c));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    ufc_header_r_i_3
       (.I0(ufc_message1_r),
        .I1(ufc_message7_r),
        .I2(ufc_idle_r),
        .I3(ufc_message5_r),
        .I4(ufc_message3_r),
        .O(ufc_header_r_i_3_n_0));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    ufc_header_r_i_4
       (.I0(ufc_message4_r),
        .I1(ufc_message8_r),
        .I2(ufc_message_count_r[1]),
        .I3(ufc_message2_r),
        .I4(ufc_message_count_r[0]),
        .I5(ufc_message6_r),
        .O(ufc_header_r_i_4_n_0));
  FDRE ufc_header_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ufc_header_c),
        .Q(ufc_header_r_reg_0),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    ufc_idle_r_i_2
       (.I0(ufc_header_r_i_3_n_0),
        .I1(ufc_message_count_r[2]),
        .I2(ufc_header_r_i_4_n_0),
        .O(\ufc_message_count_r_reg[2]_0 ));
  FDSE ufc_idle_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ufc_idle_c),
        .Q(ufc_idle_r),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    ufc_message1_r_i_1
       (.I0(ufc_header_r_reg_0),
        .I1(ufc_message_count_r[0]),
        .I2(ufc_message_count_r[2]),
        .I3(ufc_message_count_r[1]),
        .O(next_ufc_message1_c));
  FDRE ufc_message1_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ufc_message1_c),
        .Q(ufc_message1_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    ufc_message2_r_i_1
       (.I0(ufc_message_count_r[0]),
        .I1(ufc_message_count_r[2]),
        .I2(ufc_message_count_r[1]),
        .I3(ufc_header_r_reg_0),
        .O(next_ufc_message2_c));
  FDRE ufc_message2_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ufc_message2_c),
        .Q(ufc_message2_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    ufc_message3_r_i_1
       (.I0(ufc_message_count_r[2]),
        .I1(ufc_message_count_r[1]),
        .I2(ufc_message_count_r[0]),
        .I3(ufc_message2_r),
        .O(next_ufc_message3_c));
  FDRE ufc_message3_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ufc_message3_c),
        .Q(ufc_message3_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'hF080)) 
    ufc_message4_r_i_1
       (.I0(ufc_message_count_r[2]),
        .I1(ufc_message_count_r[1]),
        .I2(ufc_message2_r),
        .I3(ufc_message_count_r[0]),
        .O(next_ufc_message4_c));
  FDRE ufc_message4_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ufc_message4_c),
        .Q(ufc_message4_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    ufc_message5_r_i_1
       (.I0(ufc_message4_r),
        .I1(ufc_message_count_r[0]),
        .I2(ufc_message_count_r[1]),
        .I3(ufc_message_count_r[2]),
        .O(next_ufc_message5_c));
  FDRE ufc_message5_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ufc_message5_c),
        .Q(ufc_message5_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    ufc_message6_r_i_1
       (.I0(ufc_message4_r),
        .I1(ufc_message_count_r[0]),
        .I2(ufc_message_count_r[1]),
        .I3(ufc_message_count_r[2]),
        .O(next_ufc_message6_c));
  FDRE ufc_message6_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ufc_message6_c),
        .Q(ufc_message6_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    ufc_message7_r_i_1
       (.I0(ufc_message_count_r[2]),
        .I1(ufc_message_count_r[1]),
        .I2(ufc_message6_r),
        .I3(ufc_message_count_r[0]),
        .O(next_ufc_message7_c));
  FDRE ufc_message7_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ufc_message7_c),
        .Q(ufc_message7_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    ufc_message8_r_i_1
       (.I0(ufc_message_count_r[1]),
        .I1(ufc_message_count_r[2]),
        .I2(ufc_message6_r),
        .I3(ufc_message_count_r[0]),
        .O(next_ufc_message8_c));
  FDRE ufc_message8_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ufc_message8_c),
        .Q(ufc_message8_r),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ufc_message_count_r[0]_i_1 
       (.I0(s_axi_ufc_tx_ms[0]),
        .I1(next_ufc_header_c),
        .I2(ufc_message_count_r[0]),
        .O(\ufc_message_count_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ufc_message_count_r[1]_i_1 
       (.I0(s_axi_ufc_tx_ms[1]),
        .I1(next_ufc_header_c),
        .I2(ufc_message_count_r[1]),
        .O(\ufc_message_count_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ufc_message_count_r[2]_i_1 
       (.I0(s_axi_ufc_tx_ms[2]),
        .I1(next_ufc_header_c),
        .I2(ufc_message_count_r[2]),
        .O(\ufc_message_count_r[2]_i_1_n_0 ));
  FDRE \ufc_message_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\ufc_message_count_r[0]_i_1_n_0 ),
        .Q(ufc_message_count_r[0]),
        .R(1'b0));
  FDRE \ufc_message_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\ufc_message_count_r[1]_i_1_n_0 ),
        .Q(ufc_message_count_r[1]),
        .R(1'b0));
  FDRE \ufc_message_count_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\ufc_message_count_r[2]_i_1_n_0 ),
        .Q(ufc_message_count_r[2]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_TX_LL_DATAPATH
   (in_frame_r_reg_0,
    \TX_PE_DATA_V_reg[0]_0 ,
    \GEN_PAD_reg[0]_0 ,
    \TX_PE_DATA_reg[0]_0 ,
    E,
    user_clk,
    ufc_message_i,
    p_0_in,
    in_frame_r_reg_1,
    s_axi_tx_tlast,
    s_axi_tx_tkeep,
    \tx_pe_data_v_r_reg[1]_0 ,
    s_axi_tx_tvalid,
    tx_dst_rdy,
    do_cc_r,
    D,
    s_axi_tx_tdata);
  output in_frame_r_reg_0;
  output [1:0]\TX_PE_DATA_V_reg[0]_0 ;
  output [1:0]\GEN_PAD_reg[0]_0 ;
  output [31:0]\TX_PE_DATA_reg[0]_0 ;
  input [0:0]E;
  input user_clk;
  input [0:0]ufc_message_i;
  input p_0_in;
  input in_frame_r_reg_1;
  input s_axi_tx_tlast;
  input [0:3]s_axi_tx_tkeep;
  input \tx_pe_data_v_r_reg[1]_0 ;
  input s_axi_tx_tvalid;
  input tx_dst_rdy;
  input do_cc_r;
  input [0:0]D;
  input [0:31]s_axi_tx_tdata;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]\GEN_PAD_reg[0]_0 ;
  wire [1:0]\TX_PE_DATA_V_reg[0]_0 ;
  wire [31:0]\TX_PE_DATA_reg[0]_0 ;
  wire do_cc_r;
  wire \gen_pad_r[1]_i_1_n_0 ;
  wire \gen_pad_r_reg_n_0_[0] ;
  wire \gen_pad_r_reg_n_0_[1] ;
  wire in_frame_r_reg_0;
  wire in_frame_r_reg_1;
  wire p_0_in;
  wire p_13_in;
  wire [31:16]p_1_in;
  wire p_3_in;
  wire [1:0]p_3_out;
  wire [1:0]p_4_out;
  wire [0:31]s_axi_tx_tdata;
  wire [0:3]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tvalid;
  wire storage_pad_r;
  wire storage_pad_r0;
  wire storage_pad_r_i_2_n_0;
  wire storage_ufc_v_r;
  wire storage_v_r;
  wire storage_v_r0;
  wire tx_dst_rdy;
  wire [0:31]tx_pe_data_r;
  wire \tx_pe_data_v_r_reg[1]_0 ;
  wire \tx_pe_data_v_r_reg_n_0_[0] ;
  wire \tx_pe_data_v_r_reg_n_0_[1] ;
  wire \tx_pe_ufc_v_r_reg_n_0_[1] ;
  wire [0:0]ufc_message_i;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \GEN_PAD[0]_i_1 
       (.I0(do_cc_r),
        .I1(p_3_in),
        .I2(\gen_pad_r_reg_n_0_[0] ),
        .O(p_4_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \GEN_PAD[1]_i_1 
       (.I0(do_cc_r),
        .I1(\tx_pe_ufc_v_r_reg_n_0_[1] ),
        .I2(\gen_pad_r_reg_n_0_[1] ),
        .O(p_4_out[0]));
  FDRE \GEN_PAD_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_4_out[1]),
        .Q(\GEN_PAD_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \GEN_PAD_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_4_out[0]),
        .Q(\GEN_PAD_reg[0]_0 [0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \TX_PE_DATA_V[0]_i_1 
       (.I0(do_cc_r),
        .I1(\tx_pe_data_v_r_reg_n_0_[0] ),
        .I2(p_3_in),
        .O(p_3_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \TX_PE_DATA_V[1]_i_1 
       (.I0(do_cc_r),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(\tx_pe_ufc_v_r_reg_n_0_[1] ),
        .O(p_3_out[0]));
  FDRE \TX_PE_DATA_V_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_3_out[1]),
        .Q(\TX_PE_DATA_V_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \TX_PE_DATA_V_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_3_out[0]),
        .Q(\TX_PE_DATA_V_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[0]),
        .Q(\TX_PE_DATA_reg[0]_0 [31]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[10]),
        .Q(\TX_PE_DATA_reg[0]_0 [21]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[11]),
        .Q(\TX_PE_DATA_reg[0]_0 [20]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[12]),
        .Q(\TX_PE_DATA_reg[0]_0 [19]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[13]),
        .Q(\TX_PE_DATA_reg[0]_0 [18]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[14]),
        .Q(\TX_PE_DATA_reg[0]_0 [17]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[15]),
        .Q(\TX_PE_DATA_reg[0]_0 [16]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[16]),
        .Q(\TX_PE_DATA_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[17]),
        .Q(\TX_PE_DATA_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[18]),
        .Q(\TX_PE_DATA_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[19]),
        .Q(\TX_PE_DATA_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[1]),
        .Q(\TX_PE_DATA_reg[0]_0 [30]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[20]),
        .Q(\TX_PE_DATA_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[21]),
        .Q(\TX_PE_DATA_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[22]),
        .Q(\TX_PE_DATA_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[23]),
        .Q(\TX_PE_DATA_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[24]),
        .Q(\TX_PE_DATA_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[25]),
        .Q(\TX_PE_DATA_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[26]),
        .Q(\TX_PE_DATA_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[27]),
        .Q(\TX_PE_DATA_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[28]),
        .Q(\TX_PE_DATA_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[29]),
        .Q(\TX_PE_DATA_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[2]),
        .Q(\TX_PE_DATA_reg[0]_0 [29]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[30]),
        .Q(\TX_PE_DATA_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[31]),
        .Q(\TX_PE_DATA_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[3]),
        .Q(\TX_PE_DATA_reg[0]_0 [28]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[4]),
        .Q(\TX_PE_DATA_reg[0]_0 [27]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[5]),
        .Q(\TX_PE_DATA_reg[0]_0 [26]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[6]),
        .Q(\TX_PE_DATA_reg[0]_0 [25]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[7]),
        .Q(\TX_PE_DATA_reg[0]_0 [24]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[8]),
        .Q(\TX_PE_DATA_reg[0]_0 [23]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[9]),
        .Q(\TX_PE_DATA_reg[0]_0 [22]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT5 #(
    .INIT(32'h00020228)) 
    \gen_pad_r[1]_i_1 
       (.I0(storage_pad_r_i_2_n_0),
        .I1(s_axi_tx_tkeep[2]),
        .I2(s_axi_tx_tkeep[3]),
        .I3(s_axi_tx_tkeep[0]),
        .I4(s_axi_tx_tkeep[1]),
        .O(\gen_pad_r[1]_i_1_n_0 ));
  FDRE \gen_pad_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(storage_pad_r),
        .Q(\gen_pad_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_pad_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(\gen_pad_r[1]_i_1_n_0 ),
        .Q(\gen_pad_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE in_frame_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(in_frame_r_reg_1),
        .Q(in_frame_r_reg_0),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT5 #(
    .INIT(32'h28808000)) 
    storage_pad_r_i_1
       (.I0(storage_pad_r_i_2_n_0),
        .I1(s_axi_tx_tkeep[2]),
        .I2(s_axi_tx_tkeep[3]),
        .I3(s_axi_tx_tkeep[0]),
        .I4(s_axi_tx_tkeep[1]),
        .O(storage_pad_r0));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT5 #(
    .INIT(32'h00D00000)) 
    storage_pad_r_i_2
       (.I0(\tx_pe_data_v_r_reg[1]_0 ),
        .I1(in_frame_r_reg_0),
        .I2(s_axi_tx_tlast),
        .I3(tx_dst_rdy),
        .I4(s_axi_tx_tvalid),
        .O(storage_pad_r_i_2_n_0));
  FDRE storage_pad_r_reg
       (.C(user_clk),
        .CE(E),
        .D(storage_pad_r0),
        .Q(storage_pad_r),
        .R(1'b0));
  FDRE \storage_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[16]),
        .Q(p_1_in[31]),
        .R(1'b0));
  FDRE \storage_r_reg[10] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[26]),
        .Q(p_1_in[21]),
        .R(1'b0));
  FDRE \storage_r_reg[11] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[27]),
        .Q(p_1_in[20]),
        .R(1'b0));
  FDRE \storage_r_reg[12] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[28]),
        .Q(p_1_in[19]),
        .R(1'b0));
  FDRE \storage_r_reg[13] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[29]),
        .Q(p_1_in[18]),
        .R(1'b0));
  FDRE \storage_r_reg[14] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[30]),
        .Q(p_1_in[17]),
        .R(1'b0));
  FDRE \storage_r_reg[15] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[31]),
        .Q(p_1_in[16]),
        .R(1'b0));
  FDRE \storage_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[17]),
        .Q(p_1_in[30]),
        .R(1'b0));
  FDRE \storage_r_reg[2] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[18]),
        .Q(p_1_in[29]),
        .R(1'b0));
  FDRE \storage_r_reg[3] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[19]),
        .Q(p_1_in[28]),
        .R(1'b0));
  FDRE \storage_r_reg[4] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[20]),
        .Q(p_1_in[27]),
        .R(1'b0));
  FDRE \storage_r_reg[5] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[21]),
        .Q(p_1_in[26]),
        .R(1'b0));
  FDRE \storage_r_reg[6] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[22]),
        .Q(p_1_in[25]),
        .R(1'b0));
  FDRE \storage_r_reg[7] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[23]),
        .Q(p_1_in[24]),
        .R(1'b0));
  FDRE \storage_r_reg[8] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[24]),
        .Q(p_1_in[23]),
        .R(1'b0));
  FDRE \storage_r_reg[9] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[25]),
        .Q(p_1_in[22]),
        .R(1'b0));
  FDRE storage_ufc_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ufc_message_i),
        .Q(storage_ufc_v_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAA2A222A222222A)) 
    storage_v_r_i_2
       (.I0(p_13_in),
        .I1(s_axi_tx_tlast),
        .I2(s_axi_tx_tkeep[0]),
        .I3(s_axi_tx_tkeep[1]),
        .I4(s_axi_tx_tkeep[2]),
        .I5(s_axi_tx_tkeep[3]),
        .O(storage_v_r0));
  FDRE storage_v_r_reg
       (.C(user_clk),
        .CE(E),
        .D(storage_v_r0),
        .Q(storage_v_r),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(p_1_in[31]),
        .Q(tx_pe_data_r[0]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[10] 
       (.C(user_clk),
        .CE(E),
        .D(p_1_in[21]),
        .Q(tx_pe_data_r[10]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[11] 
       (.C(user_clk),
        .CE(E),
        .D(p_1_in[20]),
        .Q(tx_pe_data_r[11]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[12] 
       (.C(user_clk),
        .CE(E),
        .D(p_1_in[19]),
        .Q(tx_pe_data_r[12]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[13] 
       (.C(user_clk),
        .CE(E),
        .D(p_1_in[18]),
        .Q(tx_pe_data_r[13]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[14] 
       (.C(user_clk),
        .CE(E),
        .D(p_1_in[17]),
        .Q(tx_pe_data_r[14]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[15] 
       (.C(user_clk),
        .CE(E),
        .D(p_1_in[16]),
        .Q(tx_pe_data_r[15]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[16] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[0]),
        .Q(tx_pe_data_r[16]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[17] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[1]),
        .Q(tx_pe_data_r[17]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[18] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[2]),
        .Q(tx_pe_data_r[18]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[19] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[3]),
        .Q(tx_pe_data_r[19]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(p_1_in[30]),
        .Q(tx_pe_data_r[1]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[20] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[4]),
        .Q(tx_pe_data_r[20]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[21] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[5]),
        .Q(tx_pe_data_r[21]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[22] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[6]),
        .Q(tx_pe_data_r[22]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[23] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[7]),
        .Q(tx_pe_data_r[23]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[24] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[8]),
        .Q(tx_pe_data_r[24]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[25] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[9]),
        .Q(tx_pe_data_r[25]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[26] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[10]),
        .Q(tx_pe_data_r[26]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[27] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[11]),
        .Q(tx_pe_data_r[27]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[28] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[12]),
        .Q(tx_pe_data_r[28]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[29] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[13]),
        .Q(tx_pe_data_r[29]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[2] 
       (.C(user_clk),
        .CE(E),
        .D(p_1_in[29]),
        .Q(tx_pe_data_r[2]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[30] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[14]),
        .Q(tx_pe_data_r[30]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[31] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[15]),
        .Q(tx_pe_data_r[31]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[3] 
       (.C(user_clk),
        .CE(E),
        .D(p_1_in[28]),
        .Q(tx_pe_data_r[3]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[4] 
       (.C(user_clk),
        .CE(E),
        .D(p_1_in[27]),
        .Q(tx_pe_data_r[4]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[5] 
       (.C(user_clk),
        .CE(E),
        .D(p_1_in[26]),
        .Q(tx_pe_data_r[5]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[6] 
       (.C(user_clk),
        .CE(E),
        .D(p_1_in[25]),
        .Q(tx_pe_data_r[6]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[7] 
       (.C(user_clk),
        .CE(E),
        .D(p_1_in[24]),
        .Q(tx_pe_data_r[7]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[8] 
       (.C(user_clk),
        .CE(E),
        .D(p_1_in[23]),
        .Q(tx_pe_data_r[8]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[9] 
       (.C(user_clk),
        .CE(E),
        .D(p_1_in[22]),
        .Q(tx_pe_data_r[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \tx_pe_data_v_r[1]_i_1 
       (.I0(\tx_pe_data_v_r_reg[1]_0 ),
        .I1(in_frame_r_reg_0),
        .I2(s_axi_tx_tvalid),
        .I3(tx_dst_rdy),
        .O(p_13_in));
  FDRE \tx_pe_data_v_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(storage_v_r),
        .Q(\tx_pe_data_v_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_pe_data_v_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(p_13_in),
        .Q(\tx_pe_data_v_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \tx_pe_ufc_v_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_ufc_v_r),
        .Q(p_3_in),
        .R(1'b0));
  FDRE \tx_pe_ufc_v_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D),
        .Q(\tx_pe_ufc_v_r_reg_n_0_[1] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_UFC_BARREL_SHIFTER
   (\SHIFTED_DATA_reg[0]_0 ,
    SHIFTED_DATA,
    \SHIFTED_DATA_reg[0]_1 ,
    BARREL_SHIFTER_CONTROL,
    user_clk);
  output [15:0]\SHIFTED_DATA_reg[0]_0 ;
  output [15:0]SHIFTED_DATA;
  input [31:0]\SHIFTED_DATA_reg[0]_1 ;
  input BARREL_SHIFTER_CONTROL;
  input user_clk;

  wire BARREL_SHIFTER_CONTROL;
  wire [15:0]SHIFTED_DATA;
  wire [15:0]\SHIFTED_DATA_reg[0]_0 ;
  wire [31:0]\SHIFTED_DATA_reg[0]_1 ;
  wire [0:15]shifted_data_c;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA[0]_i_1 
       (.I0(\SHIFTED_DATA_reg[0]_1 [15]),
        .I1(BARREL_SHIFTER_CONTROL),
        .I2(\SHIFTED_DATA_reg[0]_1 [31]),
        .O(shifted_data_c[0]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA[10]_i_1 
       (.I0(\SHIFTED_DATA_reg[0]_1 [5]),
        .I1(BARREL_SHIFTER_CONTROL),
        .I2(\SHIFTED_DATA_reg[0]_1 [21]),
        .O(shifted_data_c[10]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA[11]_i_1 
       (.I0(\SHIFTED_DATA_reg[0]_1 [4]),
        .I1(BARREL_SHIFTER_CONTROL),
        .I2(\SHIFTED_DATA_reg[0]_1 [20]),
        .O(shifted_data_c[11]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA[12]_i_1 
       (.I0(\SHIFTED_DATA_reg[0]_1 [3]),
        .I1(BARREL_SHIFTER_CONTROL),
        .I2(\SHIFTED_DATA_reg[0]_1 [19]),
        .O(shifted_data_c[12]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA[13]_i_1 
       (.I0(\SHIFTED_DATA_reg[0]_1 [2]),
        .I1(BARREL_SHIFTER_CONTROL),
        .I2(\SHIFTED_DATA_reg[0]_1 [18]),
        .O(shifted_data_c[13]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA[14]_i_1 
       (.I0(\SHIFTED_DATA_reg[0]_1 [1]),
        .I1(BARREL_SHIFTER_CONTROL),
        .I2(\SHIFTED_DATA_reg[0]_1 [17]),
        .O(shifted_data_c[14]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA[15]_i_1 
       (.I0(\SHIFTED_DATA_reg[0]_1 [0]),
        .I1(BARREL_SHIFTER_CONTROL),
        .I2(\SHIFTED_DATA_reg[0]_1 [16]),
        .O(shifted_data_c[15]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA[1]_i_1 
       (.I0(\SHIFTED_DATA_reg[0]_1 [14]),
        .I1(BARREL_SHIFTER_CONTROL),
        .I2(\SHIFTED_DATA_reg[0]_1 [30]),
        .O(shifted_data_c[1]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA[2]_i_1 
       (.I0(\SHIFTED_DATA_reg[0]_1 [13]),
        .I1(BARREL_SHIFTER_CONTROL),
        .I2(\SHIFTED_DATA_reg[0]_1 [29]),
        .O(shifted_data_c[2]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA[3]_i_1 
       (.I0(\SHIFTED_DATA_reg[0]_1 [12]),
        .I1(BARREL_SHIFTER_CONTROL),
        .I2(\SHIFTED_DATA_reg[0]_1 [28]),
        .O(shifted_data_c[3]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA[4]_i_1 
       (.I0(\SHIFTED_DATA_reg[0]_1 [11]),
        .I1(BARREL_SHIFTER_CONTROL),
        .I2(\SHIFTED_DATA_reg[0]_1 [27]),
        .O(shifted_data_c[4]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA[5]_i_1 
       (.I0(\SHIFTED_DATA_reg[0]_1 [10]),
        .I1(BARREL_SHIFTER_CONTROL),
        .I2(\SHIFTED_DATA_reg[0]_1 [26]),
        .O(shifted_data_c[5]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA[6]_i_1 
       (.I0(\SHIFTED_DATA_reg[0]_1 [9]),
        .I1(BARREL_SHIFTER_CONTROL),
        .I2(\SHIFTED_DATA_reg[0]_1 [25]),
        .O(shifted_data_c[6]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA[7]_i_1 
       (.I0(\SHIFTED_DATA_reg[0]_1 [8]),
        .I1(BARREL_SHIFTER_CONTROL),
        .I2(\SHIFTED_DATA_reg[0]_1 [24]),
        .O(shifted_data_c[7]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA[8]_i_1 
       (.I0(\SHIFTED_DATA_reg[0]_1 [7]),
        .I1(BARREL_SHIFTER_CONTROL),
        .I2(\SHIFTED_DATA_reg[0]_1 [23]),
        .O(shifted_data_c[8]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \SHIFTED_DATA[9]_i_1 
       (.I0(\SHIFTED_DATA_reg[0]_1 [6]),
        .I1(BARREL_SHIFTER_CONTROL),
        .I2(\SHIFTED_DATA_reg[0]_1 [22]),
        .O(shifted_data_c[9]));
  FDRE \SHIFTED_DATA_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[0]),
        .Q(\SHIFTED_DATA_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[10]),
        .Q(\SHIFTED_DATA_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[11]),
        .Q(\SHIFTED_DATA_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[12]),
        .Q(\SHIFTED_DATA_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[13]),
        .Q(\SHIFTED_DATA_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[14]),
        .Q(\SHIFTED_DATA_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[15]),
        .Q(\SHIFTED_DATA_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_reg[0]_1 [15]),
        .Q(SHIFTED_DATA[15]),
        .R(BARREL_SHIFTER_CONTROL));
  FDRE \SHIFTED_DATA_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_reg[0]_1 [14]),
        .Q(SHIFTED_DATA[14]),
        .R(BARREL_SHIFTER_CONTROL));
  FDRE \SHIFTED_DATA_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_reg[0]_1 [13]),
        .Q(SHIFTED_DATA[13]),
        .R(BARREL_SHIFTER_CONTROL));
  FDRE \SHIFTED_DATA_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_reg[0]_1 [12]),
        .Q(SHIFTED_DATA[12]),
        .R(BARREL_SHIFTER_CONTROL));
  FDRE \SHIFTED_DATA_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[1]),
        .Q(\SHIFTED_DATA_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_reg[0]_1 [11]),
        .Q(SHIFTED_DATA[11]),
        .R(BARREL_SHIFTER_CONTROL));
  FDRE \SHIFTED_DATA_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_reg[0]_1 [10]),
        .Q(SHIFTED_DATA[10]),
        .R(BARREL_SHIFTER_CONTROL));
  FDRE \SHIFTED_DATA_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_reg[0]_1 [9]),
        .Q(SHIFTED_DATA[9]),
        .R(BARREL_SHIFTER_CONTROL));
  FDRE \SHIFTED_DATA_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_reg[0]_1 [8]),
        .Q(SHIFTED_DATA[8]),
        .R(BARREL_SHIFTER_CONTROL));
  FDRE \SHIFTED_DATA_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_reg[0]_1 [7]),
        .Q(SHIFTED_DATA[7]),
        .R(BARREL_SHIFTER_CONTROL));
  FDRE \SHIFTED_DATA_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_reg[0]_1 [6]),
        .Q(SHIFTED_DATA[6]),
        .R(BARREL_SHIFTER_CONTROL));
  FDRE \SHIFTED_DATA_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_reg[0]_1 [5]),
        .Q(SHIFTED_DATA[5]),
        .R(BARREL_SHIFTER_CONTROL));
  FDRE \SHIFTED_DATA_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_reg[0]_1 [4]),
        .Q(SHIFTED_DATA[4]),
        .R(BARREL_SHIFTER_CONTROL));
  FDRE \SHIFTED_DATA_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_reg[0]_1 [3]),
        .Q(SHIFTED_DATA[3]),
        .R(BARREL_SHIFTER_CONTROL));
  FDRE \SHIFTED_DATA_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_reg[0]_1 [2]),
        .Q(SHIFTED_DATA[2]),
        .R(BARREL_SHIFTER_CONTROL));
  FDRE \SHIFTED_DATA_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[2]),
        .Q(\SHIFTED_DATA_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_reg[0]_1 [1]),
        .Q(SHIFTED_DATA[1]),
        .R(BARREL_SHIFTER_CONTROL));
  FDRE \SHIFTED_DATA_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SHIFTED_DATA_reg[0]_1 [0]),
        .Q(SHIFTED_DATA[0]),
        .R(BARREL_SHIFTER_CONTROL));
  FDRE \SHIFTED_DATA_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[3]),
        .Q(\SHIFTED_DATA_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[4]),
        .Q(\SHIFTED_DATA_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[5]),
        .Q(\SHIFTED_DATA_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[6]),
        .Q(\SHIFTED_DATA_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[7]),
        .Q(\SHIFTED_DATA_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[8]),
        .Q(\SHIFTED_DATA_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \SHIFTED_DATA_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(shifted_data_c[9]),
        .Q(\SHIFTED_DATA_reg[0]_0 [6]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_UFC_BARREL_SHIFTER_CONTROL
   (BARREL_SHIFTER_CONTROL,
    barrel_shifter_control_i,
    user_clk);
  output BARREL_SHIFTER_CONTROL;
  input barrel_shifter_control_i;
  input user_clk;

  wire BARREL_SHIFTER_CONTROL;
  wire barrel_shifter_control_i;
  wire user_clk;

  FDRE \BARREL_SHIFTER_CONTROL_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(barrel_shifter_control_i),
        .Q(BARREL_SHIFTER_CONTROL),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_UFC_FILTER
   (UFC_START,
    barrel_shifter_control_i,
    D,
    \PDU_ECP_reg[0]_0 ,
    \word_aligned_data_r_reg[0] ,
    \word_aligned_data_r_reg[1] ,
    \word_aligned_data_r_reg[2] ,
    \word_aligned_data_r_reg[3] ,
    \word_aligned_data_r_reg[4] ,
    \word_aligned_data_r_reg[5] ,
    \word_aligned_data_r_reg[6] ,
    \word_aligned_data_r_reg[7] ,
    \RX_PE_DATA_reg[8] ,
    \RX_PE_DATA_reg[9] ,
    \RX_PE_DATA_reg[10] ,
    \word_aligned_data_r_reg[11] ,
    \word_aligned_data_r_reg[12] ,
    \word_aligned_data_r_reg[13] ,
    \word_aligned_data_r_reg[14] ,
    \word_aligned_data_r_reg[15] ,
    \word_aligned_data_r_reg[16] ,
    \word_aligned_data_r_reg[17] ,
    \word_aligned_data_r_reg[18] ,
    \word_aligned_data_r_reg[19] ,
    \word_aligned_data_r_reg[20] ,
    \word_aligned_data_r_reg[21] ,
    \word_aligned_data_r_reg[22] ,
    \word_aligned_data_r_reg[23] ,
    \RX_PE_DATA_reg[24] ,
    \RX_PE_DATA_reg[25] ,
    \RX_PE_DATA_reg[26] ,
    \word_aligned_data_r_reg[27] ,
    \word_aligned_data_r_reg[28] ,
    \word_aligned_data_r_reg[29] ,
    \word_aligned_data_r_reg[30] ,
    \word_aligned_data_r_reg[31] ,
    \PDU_PAD_reg[1]_0 ,
    \PDU_ECP_reg[1]_0 ,
    \PDU_ECP_reg[0]_1 ,
    \PDU_DATA_V_reg[0]_0 ,
    \UFC_DATA_V_reg[0]_0 ,
    after_scp_select_c_0,
    after_scp_select_c_1,
    rx_ll_rst,
    load_ufc_control_code_r_reg_0,
    user_clk,
    Q,
    RX_SCP0,
    \PDU_SCP_reg[1]_0 ,
    RX_ECP0,
    \PDU_ECP_reg[1]_1 ,
    p_3_out,
    \stage_1_data_r_reg[0] ,
    rx_pe_data_striped_i,
    \stage_1_data_r_reg[11] ,
    \stage_1_data_r_reg[16] ,
    \stage_1_data_r_reg[27] ,
    \stage_1_count_value_r_reg[0]_0 ,
    \stage_1_count_value_r_reg[1]_0 ,
    \stage_1_count_value_r_reg[2]_0 ,
    \stage_1_count_value_r_reg[3]_0 ,
    \rx_data_v_r_reg[0]_0 );
  output UFC_START;
  output barrel_shifter_control_i;
  output [1:0]D;
  output [1:0]\PDU_ECP_reg[0]_0 ;
  output \word_aligned_data_r_reg[0] ;
  output \word_aligned_data_r_reg[1] ;
  output \word_aligned_data_r_reg[2] ;
  output \word_aligned_data_r_reg[3] ;
  output \word_aligned_data_r_reg[4] ;
  output \word_aligned_data_r_reg[5] ;
  output \word_aligned_data_r_reg[6] ;
  output \word_aligned_data_r_reg[7] ;
  output \RX_PE_DATA_reg[8] ;
  output \RX_PE_DATA_reg[9] ;
  output \RX_PE_DATA_reg[10] ;
  output \word_aligned_data_r_reg[11] ;
  output \word_aligned_data_r_reg[12] ;
  output \word_aligned_data_r_reg[13] ;
  output \word_aligned_data_r_reg[14] ;
  output \word_aligned_data_r_reg[15] ;
  output \word_aligned_data_r_reg[16] ;
  output \word_aligned_data_r_reg[17] ;
  output \word_aligned_data_r_reg[18] ;
  output \word_aligned_data_r_reg[19] ;
  output \word_aligned_data_r_reg[20] ;
  output \word_aligned_data_r_reg[21] ;
  output \word_aligned_data_r_reg[22] ;
  output \word_aligned_data_r_reg[23] ;
  output \RX_PE_DATA_reg[24] ;
  output \RX_PE_DATA_reg[25] ;
  output \RX_PE_DATA_reg[26] ;
  output \word_aligned_data_r_reg[27] ;
  output \word_aligned_data_r_reg[28] ;
  output \word_aligned_data_r_reg[29] ;
  output \word_aligned_data_r_reg[30] ;
  output \word_aligned_data_r_reg[31] ;
  output \PDU_PAD_reg[1]_0 ;
  output \PDU_ECP_reg[1]_0 ;
  output \PDU_ECP_reg[0]_1 ;
  output [1:0]\PDU_DATA_V_reg[0]_0 ;
  output [1:0]\UFC_DATA_V_reg[0]_0 ;
  output after_scp_select_c_0;
  output after_scp_select_c_1;
  input rx_ll_rst;
  input load_ufc_control_code_r_reg_0;
  input user_clk;
  input [1:0]Q;
  input RX_SCP0;
  input \PDU_SCP_reg[1]_0 ;
  input RX_ECP0;
  input \PDU_ECP_reg[1]_1 ;
  input [1:0]p_3_out;
  input [7:0]\stage_1_data_r_reg[0] ;
  input [5:0]rx_pe_data_striped_i;
  input [4:0]\stage_1_data_r_reg[11] ;
  input [7:0]\stage_1_data_r_reg[16] ;
  input [4:0]\stage_1_data_r_reg[27] ;
  input \stage_1_count_value_r_reg[0]_0 ;
  input \stage_1_count_value_r_reg[1]_0 ;
  input \stage_1_count_value_r_reg[2]_0 ;
  input \stage_1_count_value_r_reg[3]_0 ;
  input [1:0]\rx_data_v_r_reg[0]_0 ;

  wire [1:0]D;
  wire \PDU_DATA_V[0]_i_1_n_0 ;
  wire \PDU_DATA_V[1]_i_1_n_0 ;
  wire [1:0]\PDU_DATA_V_reg[0]_0 ;
  wire [1:0]\PDU_ECP_reg[0]_0 ;
  wire \PDU_ECP_reg[0]_1 ;
  wire \PDU_ECP_reg[1]_0 ;
  wire \PDU_ECP_reg[1]_1 ;
  wire [0:1]PDU_PAD;
  wire \PDU_PAD_reg[1]_0 ;
  wire \PDU_SCP_reg[1]_0 ;
  wire [1:0]Q;
  wire RX_ECP0;
  wire \RX_PE_DATA_reg[10] ;
  wire \RX_PE_DATA_reg[24] ;
  wire \RX_PE_DATA_reg[25] ;
  wire \RX_PE_DATA_reg[26] ;
  wire \RX_PE_DATA_reg[8] ;
  wire \RX_PE_DATA_reg[9] ;
  wire RX_SCP0;
  wire \UFC_DATA_V[1]_i_1_n_0 ;
  wire [1:0]\UFC_DATA_V_reg[0]_0 ;
  wire UFC_START;
  wire UFC_START_i_1_n_0;
  wire after_scp_select_c_0;
  wire after_scp_select_c_1;
  wire barrel_shifter_control_i;
  wire load_ufc_control_code_r;
  wire load_ufc_control_code_r_reg_0;
  wire [1:0]p_3_out;
  wire [0:1]rx_data_v_r;
  wire [1:0]\rx_data_v_r_reg[0]_0 ;
  wire \rx_ecp_r_reg[0]_srl2_n_0 ;
  wire \rx_ecp_r_reg[1]_srl2_n_0 ;
  wire rx_ll_rst;
  wire \rx_pad_r_reg[0]_srl2_n_0 ;
  wire \rx_pad_r_reg[1]_srl2_n_0 ;
  wire [5:0]rx_pe_data_striped_i;
  wire \rx_scp_r_reg[0]_srl2_n_0 ;
  wire \rx_scp_r_reg[1]_srl2_n_0 ;
  wire \rx_suf_r_reg_n_0_[0] ;
  wire \rx_suf_r_reg_n_0_[1] ;
  wire save_start_r;
  wire [0:3]stage_1_count_value_r;
  wire \stage_1_count_value_r_reg[0]_0 ;
  wire \stage_1_count_value_r_reg[1]_0 ;
  wire \stage_1_count_value_r_reg[2]_0 ;
  wire \stage_1_count_value_r_reg[3]_0 ;
  wire [7:0]\stage_1_data_r_reg[0] ;
  wire [4:0]\stage_1_data_r_reg[11] ;
  wire [7:0]\stage_1_data_r_reg[16] ;
  wire [4:0]\stage_1_data_r_reg[27] ;
  wire [0:3]stage_2_count_value_r;
  wire \stage_2_count_value_r[0]_i_1_n_0 ;
  wire \stage_2_count_value_r[1]_i_1_n_0 ;
  wire \stage_2_count_value_r[2]_i_1_n_0 ;
  wire \stage_2_count_value_r[3]_i_1_n_0 ;
  wire [0:0]stage_2_lane_mask_c__0;
  wire user_clk;
  wire \word_aligned_data_r_reg[0] ;
  wire \word_aligned_data_r_reg[11] ;
  wire \word_aligned_data_r_reg[12] ;
  wire \word_aligned_data_r_reg[13] ;
  wire \word_aligned_data_r_reg[14] ;
  wire \word_aligned_data_r_reg[15] ;
  wire \word_aligned_data_r_reg[16] ;
  wire \word_aligned_data_r_reg[17] ;
  wire \word_aligned_data_r_reg[18] ;
  wire \word_aligned_data_r_reg[19] ;
  wire \word_aligned_data_r_reg[1] ;
  wire \word_aligned_data_r_reg[20] ;
  wire \word_aligned_data_r_reg[21] ;
  wire \word_aligned_data_r_reg[22] ;
  wire \word_aligned_data_r_reg[23] ;
  wire \word_aligned_data_r_reg[27] ;
  wire \word_aligned_data_r_reg[28] ;
  wire \word_aligned_data_r_reg[29] ;
  wire \word_aligned_data_r_reg[2] ;
  wire \word_aligned_data_r_reg[30] ;
  wire \word_aligned_data_r_reg[31] ;
  wire \word_aligned_data_r_reg[3] ;
  wire \word_aligned_data_r_reg[4] ;
  wire \word_aligned_data_r_reg[5] ;
  wire \word_aligned_data_r_reg[6] ;
  wire \word_aligned_data_r_reg[7] ;

  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h88888882)) 
    \PDU_DATA_V[0]_i_1 
       (.I0(rx_data_v_r[0]),
        .I1(stage_2_count_value_r[0]),
        .I2(stage_2_count_value_r[1]),
        .I3(stage_2_count_value_r[2]),
        .I4(stage_2_count_value_r[3]),
        .O(\PDU_DATA_V[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA02A802)) 
    \PDU_DATA_V[1]_i_1 
       (.I0(rx_data_v_r[1]),
        .I1(stage_2_count_value_r[2]),
        .I2(stage_2_count_value_r[1]),
        .I3(stage_2_count_value_r[0]),
        .I4(stage_2_count_value_r[3]),
        .I5(\rx_suf_r_reg_n_0_[0] ),
        .O(\PDU_DATA_V[1]_i_1_n_0 ));
  FDRE \PDU_DATA_V_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\PDU_DATA_V[0]_i_1_n_0 ),
        .Q(\PDU_DATA_V_reg[0]_0 [1]),
        .R(rx_ll_rst));
  FDRE \PDU_DATA_V_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\PDU_DATA_V[1]_i_1_n_0 ),
        .Q(\PDU_DATA_V_reg[0]_0 [0]),
        .R(rx_ll_rst));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[0]_srl4 " *) 
  SRL16E \PDU_DATA_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[0] [7]),
        .Q(\word_aligned_data_r_reg[0] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[10]_srl2 " *) 
  SRL16E \PDU_DATA_reg[10]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[3]),
        .Q(\RX_PE_DATA_reg[10] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[11]_srl4 " *) 
  SRL16E \PDU_DATA_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[11] [4]),
        .Q(\word_aligned_data_r_reg[11] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[12]_srl4 " *) 
  SRL16E \PDU_DATA_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[11] [3]),
        .Q(\word_aligned_data_r_reg[12] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[13]_srl4 " *) 
  SRL16E \PDU_DATA_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[11] [2]),
        .Q(\word_aligned_data_r_reg[13] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[14]_srl4 " *) 
  SRL16E \PDU_DATA_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[11] [1]),
        .Q(\word_aligned_data_r_reg[14] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[15]_srl4 " *) 
  SRL16E \PDU_DATA_reg[15]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[11] [0]),
        .Q(\word_aligned_data_r_reg[15] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[16]_srl4 " *) 
  SRL16E \PDU_DATA_reg[16]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[16] [7]),
        .Q(\word_aligned_data_r_reg[16] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[17]_srl4 " *) 
  SRL16E \PDU_DATA_reg[17]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[16] [6]),
        .Q(\word_aligned_data_r_reg[17] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[18]_srl4 " *) 
  SRL16E \PDU_DATA_reg[18]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[16] [5]),
        .Q(\word_aligned_data_r_reg[18] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[19]_srl4 " *) 
  SRL16E \PDU_DATA_reg[19]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[16] [4]),
        .Q(\word_aligned_data_r_reg[19] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[1]_srl4 " *) 
  SRL16E \PDU_DATA_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[0] [6]),
        .Q(\word_aligned_data_r_reg[1] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[20]_srl4 " *) 
  SRL16E \PDU_DATA_reg[20]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[16] [3]),
        .Q(\word_aligned_data_r_reg[20] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[21]_srl4 " *) 
  SRL16E \PDU_DATA_reg[21]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[16] [2]),
        .Q(\word_aligned_data_r_reg[21] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[22]_srl4 " *) 
  SRL16E \PDU_DATA_reg[22]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[16] [1]),
        .Q(\word_aligned_data_r_reg[22] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[23]_srl4 " *) 
  SRL16E \PDU_DATA_reg[23]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[16] [0]),
        .Q(\word_aligned_data_r_reg[23] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[24]_srl2 " *) 
  SRL16E \PDU_DATA_reg[24]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[2]),
        .Q(\RX_PE_DATA_reg[24] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[25]_srl2 " *) 
  SRL16E \PDU_DATA_reg[25]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[1]),
        .Q(\RX_PE_DATA_reg[25] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[26]_srl2 " *) 
  SRL16E \PDU_DATA_reg[26]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[0]),
        .Q(\RX_PE_DATA_reg[26] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[27]_srl4 " *) 
  SRL16E \PDU_DATA_reg[27]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[27] [4]),
        .Q(\word_aligned_data_r_reg[27] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[28]_srl4 " *) 
  SRL16E \PDU_DATA_reg[28]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[27] [3]),
        .Q(\word_aligned_data_r_reg[28] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[29]_srl4 " *) 
  SRL16E \PDU_DATA_reg[29]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[27] [2]),
        .Q(\word_aligned_data_r_reg[29] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[2]_srl4 " *) 
  SRL16E \PDU_DATA_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[0] [5]),
        .Q(\word_aligned_data_r_reg[2] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[30]_srl4 " *) 
  SRL16E \PDU_DATA_reg[30]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[27] [1]),
        .Q(\word_aligned_data_r_reg[30] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[31]_srl4 " *) 
  SRL16E \PDU_DATA_reg[31]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[27] [0]),
        .Q(\word_aligned_data_r_reg[31] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[3]_srl4 " *) 
  SRL16E \PDU_DATA_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[0] [4]),
        .Q(\word_aligned_data_r_reg[3] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[4]_srl4 " *) 
  SRL16E \PDU_DATA_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[0] [3]),
        .Q(\word_aligned_data_r_reg[4] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[5]_srl4 " *) 
  SRL16E \PDU_DATA_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[0] [2]),
        .Q(\word_aligned_data_r_reg[5] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[6]_srl4 " *) 
  SRL16E \PDU_DATA_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[0] [1]),
        .Q(\word_aligned_data_r_reg[6] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[7]_srl4 " *) 
  SRL16E \PDU_DATA_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\stage_1_data_r_reg[0] [0]),
        .Q(\word_aligned_data_r_reg[7] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[8]_srl2 " *) 
  SRL16E \PDU_DATA_reg[8]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[5]),
        .Q(\RX_PE_DATA_reg[8] ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/PDU_DATA_reg[9]_srl2 " *) 
  SRL16E \PDU_DATA_reg[9]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(rx_pe_data_striped_i[4]),
        .Q(\RX_PE_DATA_reg[9] ));
  FDRE \PDU_ECP_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_ecp_r_reg[0]_srl2_n_0 ),
        .Q(\PDU_ECP_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \PDU_ECP_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_ecp_r_reg[1]_srl2_n_0 ),
        .Q(\PDU_ECP_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \PDU_PAD_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_pad_r_reg[0]_srl2_n_0 ),
        .Q(PDU_PAD[0]),
        .R(1'b0));
  FDRE \PDU_PAD_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_pad_r_reg[1]_srl2_n_0 ),
        .Q(PDU_PAD[1]),
        .R(1'b0));
  FDRE \PDU_SCP_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_scp_r_reg[0]_srl2_n_0 ),
        .Q(D[1]),
        .R(1'b0));
  FDRE \PDU_SCP_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_scp_r_reg[1]_srl2_n_0 ),
        .Q(D[0]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAFAFAFBA)) 
    \UFC_DATA_V[1]_i_1 
       (.I0(\rx_suf_r_reg_n_0_[0] ),
        .I1(stage_2_count_value_r[3]),
        .I2(stage_2_count_value_r[0]),
        .I3(stage_2_count_value_r[1]),
        .I4(stage_2_count_value_r[2]),
        .O(\UFC_DATA_V[1]_i_1_n_0 ));
  FDRE \UFC_DATA_V_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_2_lane_mask_c__0),
        .Q(\UFC_DATA_V_reg[0]_0 [1]),
        .R(rx_ll_rst));
  FDRE \UFC_DATA_V_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\UFC_DATA_V[1]_i_1_n_0 ),
        .Q(\UFC_DATA_V_reg[0]_0 [0]),
        .R(rx_ll_rst));
  FDRE \UFC_MESSAGE_START_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_suf_r_reg_n_0_[0] ),
        .Q(barrel_shifter_control_i),
        .R(rx_ll_rst));
  LUT2 #(
    .INIT(4'hE)) 
    UFC_START_i_1
       (.I0(save_start_r),
        .I1(\rx_suf_r_reg_n_0_[0] ),
        .O(UFC_START_i_1_n_0));
  FDRE UFC_START_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(UFC_START_i_1_n_0),
        .Q(UFC_START),
        .R(rx_ll_rst));
  LUT1 #(
    .INIT(2'h1)) 
    data_after_start_muxcy_0_i_1
       (.I0(D[1]),
        .O(after_scp_select_c_1));
  LUT1 #(
    .INIT(2'h1)) 
    data_after_start_muxcy_1_i_1
       (.I0(D[0]),
        .O(after_scp_select_c_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_frame_muxcy_0_i_1
       (.I0(\PDU_ECP_reg[0]_0 [1]),
        .I1(D[1]),
        .O(\PDU_ECP_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    in_frame_muxcy_1_i_1
       (.I0(\PDU_ECP_reg[0]_0 [0]),
        .I1(D[0]),
        .O(\PDU_ECP_reg[1]_0 ));
  FDRE load_ufc_control_code_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(load_ufc_control_code_r_reg_0),
        .Q(load_ufc_control_code_r),
        .R(rx_ll_rst));
  FDRE \rx_data_v_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_data_v_r_reg[0]_0 [1]),
        .Q(rx_data_v_r[0]),
        .R(rx_ll_rst));
  FDRE \rx_data_v_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_data_v_r_reg[0]_0 [0]),
        .Q(rx_data_v_r[1]),
        .R(rx_ll_rst));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/rx_ecp_r_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/rx_ecp_r_reg[0]_srl2 " *) 
  SRL16E \rx_ecp_r_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(RX_ECP0),
        .Q(\rx_ecp_r_reg[0]_srl2_n_0 ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/rx_ecp_r_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/rx_ecp_r_reg[1]_srl2 " *) 
  SRL16E \rx_ecp_r_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\PDU_ECP_reg[1]_1 ),
        .Q(\rx_ecp_r_reg[1]_srl2_n_0 ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/rx_pad_r_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/rx_pad_r_reg[0]_srl2 " *) 
  SRL16E \rx_pad_r_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(p_3_out[1]),
        .Q(\rx_pad_r_reg[0]_srl2_n_0 ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/rx_pad_r_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/rx_pad_r_reg[1]_srl2 " *) 
  SRL16E \rx_pad_r_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(p_3_out[0]),
        .Q(\rx_pad_r_reg[1]_srl2_n_0 ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/rx_scp_r_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/rx_scp_r_reg[0]_srl2 " *) 
  SRL16E \rx_scp_r_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(RX_SCP0),
        .Q(\rx_scp_r_reg[0]_srl2_n_0 ));
  (* srl_bus_name = "inst/\aurora_rx_ll_i/ufc_filter_i/rx_scp_r_reg " *) 
  (* srl_name = "inst/\aurora_rx_ll_i/ufc_filter_i/rx_scp_r_reg[1]_srl2 " *) 
  SRL16E \rx_scp_r_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\PDU_SCP_reg[1]_0 ),
        .Q(\rx_scp_r_reg[1]_srl2_n_0 ));
  FDRE \rx_suf_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\rx_suf_r_reg_n_0_[0] ),
        .R(rx_ll_rst));
  FDRE \rx_suf_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\rx_suf_r_reg_n_0_[1] ),
        .R(rx_ll_rst));
  FDRE save_start_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_suf_r_reg_n_0_[1] ),
        .Q(save_start_r),
        .R(rx_ll_rst));
  FDRE \stage_1_count_value_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_count_value_r_reg[0]_0 ),
        .Q(stage_1_count_value_r[0]),
        .R(rx_ll_rst));
  FDRE \stage_1_count_value_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_count_value_r_reg[1]_0 ),
        .Q(stage_1_count_value_r[1]),
        .R(rx_ll_rst));
  FDRE \stage_1_count_value_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_count_value_r_reg[2]_0 ),
        .Q(stage_1_count_value_r[2]),
        .R(rx_ll_rst));
  FDRE \stage_1_count_value_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_count_value_r_reg[3]_0 ),
        .Q(stage_1_count_value_r[3]),
        .R(rx_ll_rst));
  LUT2 #(
    .INIT(4'hE)) 
    stage_1_pad_r_i_1
       (.I0(PDU_PAD[1]),
        .I1(PDU_PAD[0]),
        .O(\PDU_PAD_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \stage_2_count_value_r[0]_i_1 
       (.I0(load_ufc_control_code_r),
        .I1(stage_1_count_value_r[0]),
        .O(\stage_2_count_value_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B888B88888888B8)) 
    \stage_2_count_value_r[1]_i_1 
       (.I0(stage_1_count_value_r[1]),
        .I1(load_ufc_control_code_r),
        .I2(stage_2_count_value_r[0]),
        .I3(stage_2_count_value_r[1]),
        .I4(stage_2_count_value_r[3]),
        .I5(stage_2_count_value_r[2]),
        .O(\stage_2_count_value_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888B888B88888B88)) 
    \stage_2_count_value_r[2]_i_1 
       (.I0(stage_1_count_value_r[2]),
        .I1(load_ufc_control_code_r),
        .I2(stage_2_count_value_r[2]),
        .I3(stage_2_count_value_r[0]),
        .I4(stage_2_count_value_r[3]),
        .I5(stage_2_count_value_r[1]),
        .O(\stage_2_count_value_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B8888888888)) 
    \stage_2_count_value_r[3]_i_1 
       (.I0(stage_1_count_value_r[3]),
        .I1(load_ufc_control_code_r),
        .I2(stage_2_count_value_r[0]),
        .I3(stage_2_count_value_r[2]),
        .I4(stage_2_count_value_r[1]),
        .I5(stage_2_count_value_r[3]),
        .O(\stage_2_count_value_r[3]_i_1_n_0 ));
  FDRE \stage_2_count_value_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_count_value_r[0]_i_1_n_0 ),
        .Q(stage_2_count_value_r[0]),
        .R(rx_ll_rst));
  FDRE \stage_2_count_value_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_count_value_r[1]_i_1_n_0 ),
        .Q(stage_2_count_value_r[1]),
        .R(rx_ll_rst));
  FDRE \stage_2_count_value_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_count_value_r[2]_i_1_n_0 ),
        .Q(stage_2_count_value_r[2]),
        .R(rx_ll_rst));
  FDRE \stage_2_count_value_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_2_count_value_r[3]_i_1_n_0 ),
        .Q(stage_2_count_value_r[3]),
        .R(rx_ll_rst));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    stage_2_lane_mask_c
       (.I0(stage_2_count_value_r[3]),
        .I1(stage_2_count_value_r[2]),
        .I2(stage_2_count_value_r[1]),
        .I3(stage_2_count_value_r[0]),
        .O(stage_2_lane_mask_c__0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_UFC_OUTPUT_MUX
   (m_axi_ufc_rx_tdata,
    D,
    user_clk,
    UFC_OUTPUT_SELECT,
    \MUXED_DATA_reg[16]_0 ,
    \MUXED_DATA_reg[17]_0 ,
    \MUXED_DATA_reg[18]_0 ,
    \MUXED_DATA_reg[19]_0 ,
    \MUXED_DATA_reg[20]_0 ,
    \MUXED_DATA_reg[21]_0 ,
    \MUXED_DATA_reg[22]_0 ,
    \MUXED_DATA_reg[23]_0 ,
    \MUXED_DATA_reg[24]_0 ,
    \MUXED_DATA_reg[25]_0 ,
    \MUXED_DATA_reg[26]_0 ,
    \MUXED_DATA_reg[27]_0 ,
    \MUXED_DATA_reg[28]_0 ,
    \MUXED_DATA_reg[29]_0 ,
    \MUXED_DATA_reg[30]_0 ,
    \MUXED_DATA_reg[31]_0 );
  output [0:31]m_axi_ufc_rx_tdata;
  input [15:0]D;
  input user_clk;
  input [0:0]UFC_OUTPUT_SELECT;
  input \MUXED_DATA_reg[16]_0 ;
  input \MUXED_DATA_reg[17]_0 ;
  input \MUXED_DATA_reg[18]_0 ;
  input \MUXED_DATA_reg[19]_0 ;
  input \MUXED_DATA_reg[20]_0 ;
  input \MUXED_DATA_reg[21]_0 ;
  input \MUXED_DATA_reg[22]_0 ;
  input \MUXED_DATA_reg[23]_0 ;
  input \MUXED_DATA_reg[24]_0 ;
  input \MUXED_DATA_reg[25]_0 ;
  input \MUXED_DATA_reg[26]_0 ;
  input \MUXED_DATA_reg[27]_0 ;
  input \MUXED_DATA_reg[28]_0 ;
  input \MUXED_DATA_reg[29]_0 ;
  input \MUXED_DATA_reg[30]_0 ;
  input \MUXED_DATA_reg[31]_0 ;

  wire [15:0]D;
  wire \MUXED_DATA_reg[16]_0 ;
  wire \MUXED_DATA_reg[17]_0 ;
  wire \MUXED_DATA_reg[18]_0 ;
  wire \MUXED_DATA_reg[19]_0 ;
  wire \MUXED_DATA_reg[20]_0 ;
  wire \MUXED_DATA_reg[21]_0 ;
  wire \MUXED_DATA_reg[22]_0 ;
  wire \MUXED_DATA_reg[23]_0 ;
  wire \MUXED_DATA_reg[24]_0 ;
  wire \MUXED_DATA_reg[25]_0 ;
  wire \MUXED_DATA_reg[26]_0 ;
  wire \MUXED_DATA_reg[27]_0 ;
  wire \MUXED_DATA_reg[28]_0 ;
  wire \MUXED_DATA_reg[29]_0 ;
  wire \MUXED_DATA_reg[30]_0 ;
  wire \MUXED_DATA_reg[31]_0 ;
  wire [0:0]UFC_OUTPUT_SELECT;
  wire [0:31]m_axi_ufc_rx_tdata;
  wire user_clk;

  FDRE \MUXED_DATA_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[15]),
        .Q(m_axi_ufc_rx_tdata[0]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(m_axi_ufc_rx_tdata[10]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(m_axi_ufc_rx_tdata[11]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(m_axi_ufc_rx_tdata[12]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(m_axi_ufc_rx_tdata[13]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(m_axi_ufc_rx_tdata[14]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(m_axi_ufc_rx_tdata[15]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_reg[16]_0 ),
        .Q(m_axi_ufc_rx_tdata[16]),
        .R(UFC_OUTPUT_SELECT));
  FDRE \MUXED_DATA_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_reg[17]_0 ),
        .Q(m_axi_ufc_rx_tdata[17]),
        .R(UFC_OUTPUT_SELECT));
  FDRE \MUXED_DATA_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_reg[18]_0 ),
        .Q(m_axi_ufc_rx_tdata[18]),
        .R(UFC_OUTPUT_SELECT));
  FDRE \MUXED_DATA_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_reg[19]_0 ),
        .Q(m_axi_ufc_rx_tdata[19]),
        .R(UFC_OUTPUT_SELECT));
  FDRE \MUXED_DATA_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[14]),
        .Q(m_axi_ufc_rx_tdata[1]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_reg[20]_0 ),
        .Q(m_axi_ufc_rx_tdata[20]),
        .R(UFC_OUTPUT_SELECT));
  FDRE \MUXED_DATA_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_reg[21]_0 ),
        .Q(m_axi_ufc_rx_tdata[21]),
        .R(UFC_OUTPUT_SELECT));
  FDRE \MUXED_DATA_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_reg[22]_0 ),
        .Q(m_axi_ufc_rx_tdata[22]),
        .R(UFC_OUTPUT_SELECT));
  FDRE \MUXED_DATA_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_reg[23]_0 ),
        .Q(m_axi_ufc_rx_tdata[23]),
        .R(UFC_OUTPUT_SELECT));
  FDRE \MUXED_DATA_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_reg[24]_0 ),
        .Q(m_axi_ufc_rx_tdata[24]),
        .R(UFC_OUTPUT_SELECT));
  FDRE \MUXED_DATA_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_reg[25]_0 ),
        .Q(m_axi_ufc_rx_tdata[25]),
        .R(UFC_OUTPUT_SELECT));
  FDRE \MUXED_DATA_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_reg[26]_0 ),
        .Q(m_axi_ufc_rx_tdata[26]),
        .R(UFC_OUTPUT_SELECT));
  FDRE \MUXED_DATA_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_reg[27]_0 ),
        .Q(m_axi_ufc_rx_tdata[27]),
        .R(UFC_OUTPUT_SELECT));
  FDRE \MUXED_DATA_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_reg[28]_0 ),
        .Q(m_axi_ufc_rx_tdata[28]),
        .R(UFC_OUTPUT_SELECT));
  FDRE \MUXED_DATA_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_reg[29]_0 ),
        .Q(m_axi_ufc_rx_tdata[29]),
        .R(UFC_OUTPUT_SELECT));
  FDRE \MUXED_DATA_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[13]),
        .Q(m_axi_ufc_rx_tdata[2]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_reg[30]_0 ),
        .Q(m_axi_ufc_rx_tdata[30]),
        .R(UFC_OUTPUT_SELECT));
  FDRE \MUXED_DATA_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA_reg[31]_0 ),
        .Q(m_axi_ufc_rx_tdata[31]),
        .R(UFC_OUTPUT_SELECT));
  FDRE \MUXED_DATA_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[12]),
        .Q(m_axi_ufc_rx_tdata[3]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[11]),
        .Q(m_axi_ufc_rx_tdata[4]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[10]),
        .Q(m_axi_ufc_rx_tdata[5]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(m_axi_ufc_rx_tdata[6]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(m_axi_ufc_rx_tdata[7]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(m_axi_ufc_rx_tdata[8]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(m_axi_ufc_rx_tdata[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_UFC_OUTPUT_SWITCH_CONTROL
   (UFC_OUTPUT_SELECT,
    \UFC_OUTPUT_SELECT_reg[5]_0 ,
    Q,
    user_clk);
  output [0:0]UFC_OUTPUT_SELECT;
  output [0:0]\UFC_OUTPUT_SELECT_reg[5]_0 ;
  input [1:0]Q;
  input user_clk;

  wire [1:0]Q;
  wire [0:0]UFC_OUTPUT_SELECT;
  wire \UFC_OUTPUT_SELECT[4]_i_1_n_0 ;
  wire \UFC_OUTPUT_SELECT[5]_i_1_n_0 ;
  wire [0:0]\UFC_OUTPUT_SELECT_reg[5]_0 ;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \UFC_OUTPUT_SELECT[4]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\UFC_OUTPUT_SELECT[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \UFC_OUTPUT_SELECT[5]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\UFC_OUTPUT_SELECT[5]_i_1_n_0 ));
  FDRE \UFC_OUTPUT_SELECT_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\UFC_OUTPUT_SELECT[4]_i_1_n_0 ),
        .Q(UFC_OUTPUT_SELECT),
        .R(1'b0));
  FDRE \UFC_OUTPUT_SELECT_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\UFC_OUTPUT_SELECT[5]_i_1_n_0 ),
        .Q(\UFC_OUTPUT_SELECT_reg[5]_0 ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_UFC_SIDEBAND_OUTPUT
   (\UFC_REM_reg[0]_0 ,
    UFC_SRC_RDY_N,
    UFC_EOF_N,
    \UFC_REM_reg[0]_1 ,
    user_clk,
    rx_ll_rst,
    UFC_SRC_RDY_N_reg_0,
    stage_1_ufc_start_r,
    Q,
    UFC_EOF_N_reg_0);
  output \UFC_REM_reg[0]_0 ;
  output UFC_SRC_RDY_N;
  output UFC_EOF_N;
  input \UFC_REM_reg[0]_1 ;
  input user_clk;
  input rx_ll_rst;
  input UFC_SRC_RDY_N_reg_0;
  input stage_1_ufc_start_r;
  input [1:0]Q;
  input [1:0]UFC_EOF_N_reg_0;

  wire [1:0]Q;
  wire UFC_EOF_N;
  wire UFC_EOF_N0_n_0;
  wire [1:0]UFC_EOF_N_reg_0;
  wire \UFC_REM_reg[0]_0 ;
  wire \UFC_REM_reg[0]_1 ;
  wire UFC_SRC_RDY_N;
  wire UFC_SRC_RDY_N_reg_0;
  wire rx_ll_rst;
  wire stage_1_ufc_start_r;
  wire user_clk;

  LUT5 #(
    .INIT(32'h55547733)) 
    UFC_EOF_N0
       (.I0(stage_1_ufc_start_r),
        .I1(Q[0]),
        .I2(UFC_EOF_N_reg_0[0]),
        .I3(UFC_EOF_N_reg_0[1]),
        .I4(Q[1]),
        .O(UFC_EOF_N0_n_0));
  FDRE UFC_EOF_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(UFC_EOF_N0_n_0),
        .Q(UFC_EOF_N),
        .R(1'b0));
  FDRE \UFC_REM_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\UFC_REM_reg[0]_1 ),
        .Q(\UFC_REM_reg[0]_0 ),
        .R(1'b0));
  FDSE UFC_SRC_RDY_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(UFC_SRC_RDY_N_reg_0),
        .Q(UFC_SRC_RDY_N),
        .S(rx_ll_rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_UFC_STORAGE_COUNT_CONTROL
   (\storage_count_r_reg[1]_0 ,
    Q,
    \storage_count_r_reg[1]_1 ,
    D,
    \storage_count_r_reg[1]_2 ,
    \storage_count_r_reg[1]_3 ,
    stage_1_ufc_start_r,
    \storage_count_r_reg[1]_4 ,
    rx_ll_rst,
    user_clk);
  output \storage_count_r_reg[1]_0 ;
  output [1:0]Q;
  output \storage_count_r_reg[1]_1 ;
  output [0:0]D;
  output \storage_count_r_reg[1]_2 ;
  output \storage_count_r_reg[1]_3 ;
  input stage_1_ufc_start_r;
  input [1:0]\storage_count_r_reg[1]_4 ;
  input rx_ll_rst;
  input user_clk;

  wire [0:0]D;
  wire [1:0]Q;
  wire rx_ll_rst;
  wire stage_1_ufc_start_r;
  wire [0:1]storage_count_c;
  wire \storage_count_r_reg[1]_0 ;
  wire \storage_count_r_reg[1]_1 ;
  wire \storage_count_r_reg[1]_2 ;
  wire \storage_count_r_reg[1]_3 ;
  wire [1:0]\storage_count_r_reg[1]_4 ;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h4A55)) 
    \UFC_REM[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(stage_1_ufc_start_r),
        .I3(\storage_count_r_reg[1]_4 [0]),
        .O(\storage_count_r_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h1)) 
    UFC_SRC_RDY_N_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\storage_count_r_reg[1]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \UFC_STORAGE_SELECT[0]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\storage_count_r_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \UFC_STORAGE_SELECT[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\storage_count_r_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hABFF)) 
    \UFC_STORAGE_SELECT[5]_i_1 
       (.I0(stage_1_ufc_start_r),
        .I1(Q[1]),
        .I2(\storage_count_r_reg[1]_4 [1]),
        .I3(Q[0]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h9CC8C8C8)) 
    \storage_count_r[0]_i_1 
       (.I0(stage_1_ufc_start_r),
        .I1(\storage_count_r_reg[1]_4 [1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\storage_count_r_reg[1]_4 [0]),
        .O(storage_count_c[0]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'hAAFE5400)) 
    \storage_count_r[1]_i_1 
       (.I0(stage_1_ufc_start_r),
        .I1(\storage_count_r_reg[1]_4 [1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\storage_count_r_reg[1]_4 [0]),
        .O(storage_count_c[1]));
  FDRE \storage_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_count_c[0]),
        .Q(Q[1]),
        .R(rx_ll_rst));
  FDRE \storage_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(storage_count_c[1]),
        .Q(Q[0]),
        .R(rx_ll_rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_UFC_STORAGE_MUX
   (D,
    \MUXED_DATA_reg[16]_0 ,
    \MUXED_DATA_reg[17]_0 ,
    \MUXED_DATA_reg[18]_0 ,
    \MUXED_DATA_reg[19]_0 ,
    \MUXED_DATA_reg[20]_0 ,
    \MUXED_DATA_reg[21]_0 ,
    \MUXED_DATA_reg[22]_0 ,
    \MUXED_DATA_reg[23]_0 ,
    \MUXED_DATA_reg[24]_0 ,
    \MUXED_DATA_reg[25]_0 ,
    \MUXED_DATA_reg[26]_0 ,
    \MUXED_DATA_reg[27]_0 ,
    \MUXED_DATA_reg[28]_0 ,
    \MUXED_DATA_reg[29]_0 ,
    \MUXED_DATA_reg[30]_0 ,
    \MUXED_DATA_reg[31]_0 ,
    \MUXED_DATA_reg[0]_0 ,
    user_clk,
    UFC_STORAGE_SELECT,
    SHIFTED_DATA,
    \MUXED_DATA_reg[0]_1 );
  output [15:0]D;
  output \MUXED_DATA_reg[16]_0 ;
  output \MUXED_DATA_reg[17]_0 ;
  output \MUXED_DATA_reg[18]_0 ;
  output \MUXED_DATA_reg[19]_0 ;
  output \MUXED_DATA_reg[20]_0 ;
  output \MUXED_DATA_reg[21]_0 ;
  output \MUXED_DATA_reg[22]_0 ;
  output \MUXED_DATA_reg[23]_0 ;
  output \MUXED_DATA_reg[24]_0 ;
  output \MUXED_DATA_reg[25]_0 ;
  output \MUXED_DATA_reg[26]_0 ;
  output \MUXED_DATA_reg[27]_0 ;
  output \MUXED_DATA_reg[28]_0 ;
  output \MUXED_DATA_reg[29]_0 ;
  output \MUXED_DATA_reg[30]_0 ;
  output \MUXED_DATA_reg[31]_0 ;
  input \MUXED_DATA_reg[0]_0 ;
  input user_clk;
  input [2:0]UFC_STORAGE_SELECT;
  input [15:0]SHIFTED_DATA;
  input [15:0]\MUXED_DATA_reg[0]_1 ;

  wire [15:0]D;
  wire \MUXED_DATA[0]_i_2_n_0 ;
  wire \MUXED_DATA[10]_i_1_n_0 ;
  wire \MUXED_DATA[11]_i_1_n_0 ;
  wire \MUXED_DATA[12]_i_1_n_0 ;
  wire \MUXED_DATA[13]_i_1_n_0 ;
  wire \MUXED_DATA[14]_i_1_n_0 ;
  wire \MUXED_DATA[15]_i_1_n_0 ;
  wire \MUXED_DATA[16]_i_1_n_0 ;
  wire \MUXED_DATA[17]_i_1_n_0 ;
  wire \MUXED_DATA[18]_i_1_n_0 ;
  wire \MUXED_DATA[19]_i_1_n_0 ;
  wire \MUXED_DATA[1]_i_1_n_0 ;
  wire \MUXED_DATA[20]_i_1_n_0 ;
  wire \MUXED_DATA[21]_i_1_n_0 ;
  wire \MUXED_DATA[22]_i_1_n_0 ;
  wire \MUXED_DATA[23]_i_1_n_0 ;
  wire \MUXED_DATA[24]_i_1_n_0 ;
  wire \MUXED_DATA[25]_i_1_n_0 ;
  wire \MUXED_DATA[26]_i_1_n_0 ;
  wire \MUXED_DATA[27]_i_1_n_0 ;
  wire \MUXED_DATA[28]_i_1_n_0 ;
  wire \MUXED_DATA[29]_i_1_n_0 ;
  wire \MUXED_DATA[2]_i_1_n_0 ;
  wire \MUXED_DATA[30]_i_1_n_0 ;
  wire \MUXED_DATA[31]_i_1_n_0 ;
  wire \MUXED_DATA[3]_i_1_n_0 ;
  wire \MUXED_DATA[4]_i_1_n_0 ;
  wire \MUXED_DATA[5]_i_1_n_0 ;
  wire \MUXED_DATA[6]_i_1_n_0 ;
  wire \MUXED_DATA[7]_i_1_n_0 ;
  wire \MUXED_DATA[8]_i_1_n_0 ;
  wire \MUXED_DATA[9]_i_1_n_0 ;
  wire \MUXED_DATA_reg[0]_0 ;
  wire [15:0]\MUXED_DATA_reg[0]_1 ;
  wire \MUXED_DATA_reg[16]_0 ;
  wire \MUXED_DATA_reg[17]_0 ;
  wire \MUXED_DATA_reg[18]_0 ;
  wire \MUXED_DATA_reg[19]_0 ;
  wire \MUXED_DATA_reg[20]_0 ;
  wire \MUXED_DATA_reg[21]_0 ;
  wire \MUXED_DATA_reg[22]_0 ;
  wire \MUXED_DATA_reg[23]_0 ;
  wire \MUXED_DATA_reg[24]_0 ;
  wire \MUXED_DATA_reg[25]_0 ;
  wire \MUXED_DATA_reg[26]_0 ;
  wire \MUXED_DATA_reg[27]_0 ;
  wire \MUXED_DATA_reg[28]_0 ;
  wire \MUXED_DATA_reg[29]_0 ;
  wire \MUXED_DATA_reg[30]_0 ;
  wire \MUXED_DATA_reg[31]_0 ;
  wire [15:0]SHIFTED_DATA;
  wire [2:0]UFC_STORAGE_SELECT;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[0]_i_2 
       (.I0(SHIFTED_DATA[15]),
        .I1(UFC_STORAGE_SELECT[2]),
        .I2(\MUXED_DATA_reg[0]_1 [15]),
        .O(\MUXED_DATA[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[10]_i_1 
       (.I0(SHIFTED_DATA[5]),
        .I1(UFC_STORAGE_SELECT[2]),
        .I2(\MUXED_DATA_reg[0]_1 [5]),
        .O(\MUXED_DATA[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[11]_i_1 
       (.I0(SHIFTED_DATA[4]),
        .I1(UFC_STORAGE_SELECT[2]),
        .I2(\MUXED_DATA_reg[0]_1 [4]),
        .O(\MUXED_DATA[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[12]_i_1 
       (.I0(SHIFTED_DATA[3]),
        .I1(UFC_STORAGE_SELECT[2]),
        .I2(\MUXED_DATA_reg[0]_1 [3]),
        .O(\MUXED_DATA[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[13]_i_1 
       (.I0(SHIFTED_DATA[2]),
        .I1(UFC_STORAGE_SELECT[2]),
        .I2(\MUXED_DATA_reg[0]_1 [2]),
        .O(\MUXED_DATA[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[14]_i_1 
       (.I0(SHIFTED_DATA[1]),
        .I1(UFC_STORAGE_SELECT[2]),
        .I2(\MUXED_DATA_reg[0]_1 [1]),
        .O(\MUXED_DATA[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[15]_i_1 
       (.I0(SHIFTED_DATA[0]),
        .I1(UFC_STORAGE_SELECT[2]),
        .I2(\MUXED_DATA_reg[0]_1 [0]),
        .O(\MUXED_DATA[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[16]_i_1 
       (.I0(SHIFTED_DATA[15]),
        .I1(UFC_STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_1 [15]),
        .O(\MUXED_DATA[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[17]_i_1 
       (.I0(SHIFTED_DATA[14]),
        .I1(UFC_STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_1 [14]),
        .O(\MUXED_DATA[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[18]_i_1 
       (.I0(SHIFTED_DATA[13]),
        .I1(UFC_STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_1 [13]),
        .O(\MUXED_DATA[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[19]_i_1 
       (.I0(SHIFTED_DATA[12]),
        .I1(UFC_STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_1 [12]),
        .O(\MUXED_DATA[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[1]_i_1 
       (.I0(SHIFTED_DATA[14]),
        .I1(UFC_STORAGE_SELECT[2]),
        .I2(\MUXED_DATA_reg[0]_1 [14]),
        .O(\MUXED_DATA[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[20]_i_1 
       (.I0(SHIFTED_DATA[11]),
        .I1(UFC_STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_1 [11]),
        .O(\MUXED_DATA[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[21]_i_1 
       (.I0(SHIFTED_DATA[10]),
        .I1(UFC_STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_1 [10]),
        .O(\MUXED_DATA[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[22]_i_1 
       (.I0(SHIFTED_DATA[9]),
        .I1(UFC_STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_1 [9]),
        .O(\MUXED_DATA[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[23]_i_1 
       (.I0(SHIFTED_DATA[8]),
        .I1(UFC_STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_1 [8]),
        .O(\MUXED_DATA[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[24]_i_1 
       (.I0(SHIFTED_DATA[7]),
        .I1(UFC_STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_1 [7]),
        .O(\MUXED_DATA[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[25]_i_1 
       (.I0(SHIFTED_DATA[6]),
        .I1(UFC_STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_1 [6]),
        .O(\MUXED_DATA[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[26]_i_1 
       (.I0(SHIFTED_DATA[5]),
        .I1(UFC_STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_1 [5]),
        .O(\MUXED_DATA[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[27]_i_1 
       (.I0(SHIFTED_DATA[4]),
        .I1(UFC_STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_1 [4]),
        .O(\MUXED_DATA[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[28]_i_1 
       (.I0(SHIFTED_DATA[3]),
        .I1(UFC_STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_1 [3]),
        .O(\MUXED_DATA[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[29]_i_1 
       (.I0(SHIFTED_DATA[2]),
        .I1(UFC_STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_1 [2]),
        .O(\MUXED_DATA[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[2]_i_1 
       (.I0(SHIFTED_DATA[13]),
        .I1(UFC_STORAGE_SELECT[2]),
        .I2(\MUXED_DATA_reg[0]_1 [13]),
        .O(\MUXED_DATA[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[30]_i_1 
       (.I0(SHIFTED_DATA[1]),
        .I1(UFC_STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_1 [1]),
        .O(\MUXED_DATA[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[31]_i_1 
       (.I0(SHIFTED_DATA[0]),
        .I1(UFC_STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_1 [0]),
        .O(\MUXED_DATA[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[3]_i_1 
       (.I0(SHIFTED_DATA[12]),
        .I1(UFC_STORAGE_SELECT[2]),
        .I2(\MUXED_DATA_reg[0]_1 [12]),
        .O(\MUXED_DATA[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[4]_i_1 
       (.I0(SHIFTED_DATA[11]),
        .I1(UFC_STORAGE_SELECT[2]),
        .I2(\MUXED_DATA_reg[0]_1 [11]),
        .O(\MUXED_DATA[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[5]_i_1 
       (.I0(SHIFTED_DATA[10]),
        .I1(UFC_STORAGE_SELECT[2]),
        .I2(\MUXED_DATA_reg[0]_1 [10]),
        .O(\MUXED_DATA[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[6]_i_1 
       (.I0(SHIFTED_DATA[9]),
        .I1(UFC_STORAGE_SELECT[2]),
        .I2(\MUXED_DATA_reg[0]_1 [9]),
        .O(\MUXED_DATA[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[7]_i_1 
       (.I0(SHIFTED_DATA[8]),
        .I1(UFC_STORAGE_SELECT[2]),
        .I2(\MUXED_DATA_reg[0]_1 [8]),
        .O(\MUXED_DATA[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[8]_i_1 
       (.I0(SHIFTED_DATA[7]),
        .I1(UFC_STORAGE_SELECT[2]),
        .I2(\MUXED_DATA_reg[0]_1 [7]),
        .O(\MUXED_DATA[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[9]_i_1 
       (.I0(SHIFTED_DATA[6]),
        .I1(UFC_STORAGE_SELECT[2]),
        .I2(\MUXED_DATA_reg[0]_1 [6]),
        .O(\MUXED_DATA[9]_i_1_n_0 ));
  FDRE \MUXED_DATA_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[0]_i_2_n_0 ),
        .Q(D[15]),
        .R(\MUXED_DATA_reg[0]_0 ));
  FDRE \MUXED_DATA_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[10]_i_1_n_0 ),
        .Q(D[5]),
        .R(\MUXED_DATA_reg[0]_0 ));
  FDRE \MUXED_DATA_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[11]_i_1_n_0 ),
        .Q(D[4]),
        .R(\MUXED_DATA_reg[0]_0 ));
  FDRE \MUXED_DATA_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[12]_i_1_n_0 ),
        .Q(D[3]),
        .R(\MUXED_DATA_reg[0]_0 ));
  FDRE \MUXED_DATA_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[13]_i_1_n_0 ),
        .Q(D[2]),
        .R(\MUXED_DATA_reg[0]_0 ));
  FDRE \MUXED_DATA_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[14]_i_1_n_0 ),
        .Q(D[1]),
        .R(\MUXED_DATA_reg[0]_0 ));
  FDRE \MUXED_DATA_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[15]_i_1_n_0 ),
        .Q(D[0]),
        .R(\MUXED_DATA_reg[0]_0 ));
  FDRE \MUXED_DATA_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[16]_i_1_n_0 ),
        .Q(\MUXED_DATA_reg[16]_0 ),
        .R(UFC_STORAGE_SELECT[1]));
  FDRE \MUXED_DATA_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[17]_i_1_n_0 ),
        .Q(\MUXED_DATA_reg[17]_0 ),
        .R(UFC_STORAGE_SELECT[1]));
  FDRE \MUXED_DATA_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[18]_i_1_n_0 ),
        .Q(\MUXED_DATA_reg[18]_0 ),
        .R(UFC_STORAGE_SELECT[1]));
  FDRE \MUXED_DATA_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[19]_i_1_n_0 ),
        .Q(\MUXED_DATA_reg[19]_0 ),
        .R(UFC_STORAGE_SELECT[1]));
  FDRE \MUXED_DATA_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[1]_i_1_n_0 ),
        .Q(D[14]),
        .R(\MUXED_DATA_reg[0]_0 ));
  FDRE \MUXED_DATA_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[20]_i_1_n_0 ),
        .Q(\MUXED_DATA_reg[20]_0 ),
        .R(UFC_STORAGE_SELECT[1]));
  FDRE \MUXED_DATA_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[21]_i_1_n_0 ),
        .Q(\MUXED_DATA_reg[21]_0 ),
        .R(UFC_STORAGE_SELECT[1]));
  FDRE \MUXED_DATA_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[22]_i_1_n_0 ),
        .Q(\MUXED_DATA_reg[22]_0 ),
        .R(UFC_STORAGE_SELECT[1]));
  FDRE \MUXED_DATA_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[23]_i_1_n_0 ),
        .Q(\MUXED_DATA_reg[23]_0 ),
        .R(UFC_STORAGE_SELECT[1]));
  FDRE \MUXED_DATA_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[24]_i_1_n_0 ),
        .Q(\MUXED_DATA_reg[24]_0 ),
        .R(UFC_STORAGE_SELECT[1]));
  FDRE \MUXED_DATA_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[25]_i_1_n_0 ),
        .Q(\MUXED_DATA_reg[25]_0 ),
        .R(UFC_STORAGE_SELECT[1]));
  FDRE \MUXED_DATA_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[26]_i_1_n_0 ),
        .Q(\MUXED_DATA_reg[26]_0 ),
        .R(UFC_STORAGE_SELECT[1]));
  FDRE \MUXED_DATA_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[27]_i_1_n_0 ),
        .Q(\MUXED_DATA_reg[27]_0 ),
        .R(UFC_STORAGE_SELECT[1]));
  FDRE \MUXED_DATA_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[28]_i_1_n_0 ),
        .Q(\MUXED_DATA_reg[28]_0 ),
        .R(UFC_STORAGE_SELECT[1]));
  FDRE \MUXED_DATA_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[29]_i_1_n_0 ),
        .Q(\MUXED_DATA_reg[29]_0 ),
        .R(UFC_STORAGE_SELECT[1]));
  FDRE \MUXED_DATA_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[2]_i_1_n_0 ),
        .Q(D[13]),
        .R(\MUXED_DATA_reg[0]_0 ));
  FDRE \MUXED_DATA_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[30]_i_1_n_0 ),
        .Q(\MUXED_DATA_reg[30]_0 ),
        .R(UFC_STORAGE_SELECT[1]));
  FDRE \MUXED_DATA_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[31]_i_1_n_0 ),
        .Q(\MUXED_DATA_reg[31]_0 ),
        .R(UFC_STORAGE_SELECT[1]));
  FDRE \MUXED_DATA_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[3]_i_1_n_0 ),
        .Q(D[12]),
        .R(\MUXED_DATA_reg[0]_0 ));
  FDRE \MUXED_DATA_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[4]_i_1_n_0 ),
        .Q(D[11]),
        .R(\MUXED_DATA_reg[0]_0 ));
  FDRE \MUXED_DATA_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[5]_i_1_n_0 ),
        .Q(D[10]),
        .R(\MUXED_DATA_reg[0]_0 ));
  FDRE \MUXED_DATA_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[6]_i_1_n_0 ),
        .Q(D[9]),
        .R(\MUXED_DATA_reg[0]_0 ));
  FDRE \MUXED_DATA_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[7]_i_1_n_0 ),
        .Q(D[8]),
        .R(\MUXED_DATA_reg[0]_0 ));
  FDRE \MUXED_DATA_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[8]_i_1_n_0 ),
        .Q(D[7]),
        .R(\MUXED_DATA_reg[0]_0 ));
  FDRE \MUXED_DATA_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\MUXED_DATA[9]_i_1_n_0 ),
        .Q(D[6]),
        .R(\MUXED_DATA_reg[0]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_UFC_STORAGE_SWITCH_CONTROL
   (\UFC_STORAGE_SELECT_reg[0]_0 ,
    \UFC_STORAGE_SELECT_reg[2]_0 ,
    D,
    user_clk,
    \UFC_STORAGE_SELECT_reg[0]_1 ,
    \UFC_STORAGE_SELECT_reg[1]_0 ,
    Q,
    \UFC_STORAGE_SELECT_reg[4]_0 ,
    stage_1_ufc_start_r,
    \UFC_STORAGE_SELECT_reg[4]_1 );
  output \UFC_STORAGE_SELECT_reg[0]_0 ;
  output [2:0]\UFC_STORAGE_SELECT_reg[2]_0 ;
  input [0:0]D;
  input user_clk;
  input \UFC_STORAGE_SELECT_reg[0]_1 ;
  input \UFC_STORAGE_SELECT_reg[1]_0 ;
  input [1:0]Q;
  input \UFC_STORAGE_SELECT_reg[4]_0 ;
  input stage_1_ufc_start_r;
  input [1:0]\UFC_STORAGE_SELECT_reg[4]_1 ;

  wire [0:0]D;
  wire [1:0]Q;
  wire [0:1]UFC_STORAGE_SELECT;
  wire \UFC_STORAGE_SELECT[0]_i_1_n_0 ;
  wire \UFC_STORAGE_SELECT_reg[0]_0 ;
  wire \UFC_STORAGE_SELECT_reg[0]_1 ;
  wire \UFC_STORAGE_SELECT_reg[1]_0 ;
  wire [2:0]\UFC_STORAGE_SELECT_reg[2]_0 ;
  wire \UFC_STORAGE_SELECT_reg[4]_0 ;
  wire [1:0]\UFC_STORAGE_SELECT_reg[4]_1 ;
  wire stage_1_ufc_start_r;
  wire user_clk;

  LUT2 #(
    .INIT(4'hE)) 
    \MUXED_DATA[0]_i_1 
       (.I0(UFC_STORAGE_SELECT[0]),
        .I1(UFC_STORAGE_SELECT[1]),
        .O(\UFC_STORAGE_SELECT_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hABABABBF)) 
    \UFC_STORAGE_SELECT[0]_i_1 
       (.I0(stage_1_ufc_start_r),
        .I1(Q[1]),
        .I2(\UFC_STORAGE_SELECT_reg[4]_1 [1]),
        .I3(\UFC_STORAGE_SELECT_reg[4]_1 [0]),
        .I4(Q[0]),
        .O(\UFC_STORAGE_SELECT[0]_i_1_n_0 ));
  FDRE \UFC_STORAGE_SELECT_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\UFC_STORAGE_SELECT_reg[0]_1 ),
        .Q(UFC_STORAGE_SELECT[0]),
        .R(\UFC_STORAGE_SELECT[0]_i_1_n_0 ));
  FDRE \UFC_STORAGE_SELECT_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\UFC_STORAGE_SELECT_reg[1]_0 ),
        .Q(UFC_STORAGE_SELECT[1]),
        .R(\UFC_STORAGE_SELECT[0]_i_1_n_0 ));
  FDRE \UFC_STORAGE_SELECT_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\UFC_STORAGE_SELECT_reg[2]_0 [2]),
        .R(\UFC_STORAGE_SELECT[0]_i_1_n_0 ));
  FDRE \UFC_STORAGE_SELECT_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\UFC_STORAGE_SELECT_reg[4]_0 ),
        .Q(\UFC_STORAGE_SELECT_reg[2]_0 [1]),
        .R(\UFC_STORAGE_SELECT[0]_i_1_n_0 ));
  FDRE \UFC_STORAGE_SELECT_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D),
        .Q(\UFC_STORAGE_SELECT_reg[2]_0 [0]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_VALID_DATA_COUNTER
   (\COUNT_reg[0]_0 ,
    Q,
    rx_ll_rst,
    user_clk);
  output [1:0]\COUNT_reg[0]_0 ;
  input [1:0]Q;
  input rx_ll_rst;
  input user_clk;

  wire \COUNT[0]_i_1_n_0 ;
  wire \COUNT[1]_i_1_n_0 ;
  wire [1:0]\COUNT_reg[0]_0 ;
  wire [1:0]Q;
  wire rx_ll_rst;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \COUNT[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\COUNT[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \COUNT[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\COUNT[1]_i_1_n_0 ));
  FDRE \COUNT_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\COUNT[0]_i_1_n_0 ),
        .Q(\COUNT_reg[0]_0 [1]),
        .R(rx_ll_rst));
  FDRE \COUNT_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\COUNT[1]_i_1_n_0 ),
        .Q(\COUNT_reg[0]_0 [0]),
        .R(rx_ll_rst));
endmodule

(* ORIG_REF_NAME = "aurora_VALID_DATA_COUNTER" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_VALID_DATA_COUNTER_18
   (D,
    Q,
    end_storage_r_reg,
    FRAME_ERR_RESULT0,
    excess_c,
    end_storage_r0,
    \STORAGE_CE_reg[0] ,
    stage_3_end_storage_r,
    stage_2_start_with_data_r,
    stage_2_frame_err_r,
    stage_2_end_after_start_r,
    stage_2_end_before_start_r,
    storage_not_empty_c__0,
    rx_ll_rst,
    \COUNT_reg[0]_0 ,
    user_clk);
  output [1:0]D;
  output [1:0]Q;
  output [0:0]end_storage_r_reg;
  output FRAME_ERR_RESULT0;
  output excess_c;
  output end_storage_r0;
  input [1:0]\STORAGE_CE_reg[0] ;
  input stage_3_end_storage_r;
  input stage_2_start_with_data_r;
  input stage_2_frame_err_r;
  input stage_2_end_after_start_r;
  input stage_2_end_before_start_r;
  input storage_not_empty_c__0;
  input rx_ll_rst;
  input [1:0]\COUNT_reg[0]_0 ;
  input user_clk;

  wire [1:0]\COUNT_reg[0]_0 ;
  wire [1:0]D;
  wire FRAME_ERR_RESULT0;
  wire FRAME_ERR_RESULT2;
  wire [1:0]Q;
  wire [1:0]\STORAGE_CE_reg[0] ;
  wire end_storage_r0;
  wire [0:0]end_storage_r_reg;
  wire excess_c;
  wire rx_ll_rst;
  wire stage_2_end_after_start_r;
  wire stage_2_end_before_start_r;
  wire stage_2_frame_err_r;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire storage_not_empty_c__0;
  wire user_clk;

  FDRE \COUNT_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\COUNT_reg[0]_0 [1]),
        .Q(Q[1]),
        .R(rx_ll_rst));
  FDRE \COUNT_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\COUNT_reg[0]_0 [0]),
        .Q(Q[0]),
        .R(rx_ll_rst));
  LUT6 #(
    .INIT(64'hCCFECCFCFFFECCFC)) 
    FRAME_ERR_RESULT_i_1
       (.I0(FRAME_ERR_RESULT2),
        .I1(stage_2_frame_err_r),
        .I2(stage_2_end_after_start_r),
        .I3(stage_2_start_with_data_r),
        .I4(stage_2_end_before_start_r),
        .I5(storage_not_empty_c__0),
        .O(FRAME_ERR_RESULT0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFEE0)) 
    SRC_RDY_N_i_2
       (.I0(Q[0]),
        .I1(\STORAGE_CE_reg[0] [0]),
        .I2(\STORAGE_CE_reg[0] [1]),
        .I3(Q[1]),
        .O(excess_c));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFAEF)) 
    \STORAGE_CE[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\STORAGE_CE_reg[0] [1]),
        .I3(\STORAGE_CE_reg[0] [0]),
        .I4(stage_3_end_storage_r),
        .I5(stage_2_start_with_data_r),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \STORAGE_CE[1]_i_1 
       (.I0(Q[1]),
        .I1(\STORAGE_CE_reg[0] [0]),
        .I2(Q[0]),
        .I3(\STORAGE_CE_reg[0] [1]),
        .I4(stage_3_end_storage_r),
        .I5(stage_2_start_with_data_r),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hF404)) 
    end_storage_r_i_1
       (.I0(FRAME_ERR_RESULT2),
        .I1(stage_2_end_before_start_r),
        .I2(stage_2_start_with_data_r),
        .I3(stage_2_end_after_start_r),
        .O(end_storage_r0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    end_storage_r_i_2
       (.I0(Q[0]),
        .I1(\STORAGE_CE_reg[0] [0]),
        .I2(\STORAGE_CE_reg[0] [1]),
        .I3(Q[1]),
        .O(FRAME_ERR_RESULT2));
  LUT6 #(
    .INIT(64'hEFFFFEEF10011000)) 
    \storage_count_r[0]_i_2 
       (.I0(stage_3_end_storage_r),
        .I1(stage_2_start_with_data_r),
        .I2(Q[0]),
        .I3(\STORAGE_CE_reg[0] [0]),
        .I4(\STORAGE_CE_reg[0] [1]),
        .I5(Q[1]),
        .O(end_storage_r_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync
   (AR,
    gt_reset,
    init_clk_in);
  output [0:0]AR;
  input gt_reset;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign AR[0] = s_level_out_d3;
  assign p_level_in_int = gt_reset;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync_0
   (reset,
    init_clk_in);
  input reset;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign p_level_in_int = reset;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync_1
   (out,
    reset,
    user_clk);
  output out;
  input reset;
  input user_clk;

  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  assign p_level_in_int = reset;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync_10
   (E,
    \FSM_sequential_rx_state_reg[1] ,
    s_level_out_d3_reg_0,
    tx_lock,
    init_clk_in,
    \FSM_sequential_rx_state_reg[0] ,
    \FSM_sequential_rx_state_reg[0]_0 ,
    Q,
    \FSM_sequential_rx_state_reg[0]_1 ,
    \FSM_sequential_rx_state_reg[0]_2 ,
    \FSM_sequential_rx_state_reg[0]_3 ,
    \FSM_sequential_rx_state_reg[0]_4 ,
    rxresetdone_s3,
    reset_time_out_reg,
    gtrxreset_i,
    reset_time_out_reg_0,
    reset_time_out_reg_1,
    recclk_mon_count_reset);
  output [0:0]E;
  output \FSM_sequential_rx_state_reg[1] ;
  output s_level_out_d3_reg_0;
  input tx_lock;
  input init_clk_in;
  input \FSM_sequential_rx_state_reg[0] ;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input [3:0]Q;
  input \FSM_sequential_rx_state_reg[0]_1 ;
  input \FSM_sequential_rx_state_reg[0]_2 ;
  input \FSM_sequential_rx_state_reg[0]_3 ;
  input \FSM_sequential_rx_state_reg[0]_4 ;
  input rxresetdone_s3;
  input reset_time_out_reg;
  input gtrxreset_i;
  input reset_time_out_reg_0;
  input reset_time_out_reg_1;
  input recclk_mon_count_reset;

  wire [0:0]E;
  wire \FSM_sequential_rx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[0]_1 ;
  wire \FSM_sequential_rx_state_reg[0]_2 ;
  wire \FSM_sequential_rx_state_reg[0]_3 ;
  wire \FSM_sequential_rx_state_reg[0]_4 ;
  wire \FSM_sequential_rx_state_reg[1] ;
  wire [3:0]Q;
  wire gtrxreset_i;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire recclk_mon_count_reset;
  wire reset_time_out_i_3_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  wire rxresetdone_s3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  wire s_level_out_d3_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign p_level_in_int = tx_lock;
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF08)) 
    \FSM_sequential_rx_state[3]_i_1 
       (.I0(\FSM_sequential_rx_state_reg[0] ),
        .I1(\FSM_sequential_rx_state_reg[0]_0 ),
        .I2(Q[2]),
        .I3(\FSM_sequential_rx_state_reg[0]_1 ),
        .I4(\FSM_sequential_rx_state[3]_i_5_n_0 ),
        .I5(\FSM_sequential_rx_state_reg[0]_2 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFAAEAAAAAAAEA)) 
    \FSM_sequential_rx_state[3]_i_5 
       (.I0(\FSM_sequential_rx_state_reg[0]_3 ),
        .I1(Q[2]),
        .I2(\FSM_sequential_rx_state_reg[0]_4 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(reset_time_out_i_3_n_0),
        .O(\FSM_sequential_rx_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000030)) 
    adapt_count_reset_i_1
       (.I0(s_level_out_d3),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(recclk_mon_count_reset),
        .O(s_level_out_d3_reg_0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  LUT6 #(
    .INIT(64'hEEFEFFFFEEFE0000)) 
    reset_time_out_i_1__0
       (.I0(reset_time_out_reg),
        .I1(reset_time_out_i_3_n_0),
        .I2(gtrxreset_i),
        .I3(Q[1]),
        .I4(reset_time_out_reg_0),
        .I5(reset_time_out_reg_1),
        .O(\FSM_sequential_rx_state_reg[1] ));
  LUT5 #(
    .INIT(32'h000088F0)) 
    reset_time_out_i_3
       (.I0(Q[1]),
        .I1(rxresetdone_s3),
        .I2(s_level_out_d3),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(reset_time_out_i_3_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync_11
   (SR,
    mmcm_lock_reclocked_reg,
    init_clk_in,
    mmcm_lock_reclocked,
    mmcm_lock_reclocked_reg_0);
  output [0:0]SR;
  output mmcm_lock_reclocked_reg;
  input init_clk_in;
  input mmcm_lock_reclocked;
  input mmcm_lock_reclocked_reg_0;

  wire [0:0]SR;
  wire init_clk_in;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_reg;
  wire mmcm_lock_reclocked_reg_0;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[9]_i_1__0 
       (.I0(s_level_out_d3),
        .O(SR));
  LUT3 #(
    .INIT(8'hE0)) 
    mmcm_lock_reclocked_i_1__0
       (.I0(mmcm_lock_reclocked),
        .I1(mmcm_lock_reclocked_reg_0),
        .I2(s_level_out_d3),
        .O(mmcm_lock_reclocked_reg));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync_12
   (init_clk_in);
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync_3
   (E,
    \FSM_sequential_tx_state_reg[0] ,
    tx_lock,
    init_clk_in,
    Q,
    txresetdone_s3,
    \FSM_sequential_tx_state_reg[0]_0 ,
    \FSM_sequential_tx_state_reg[0]_1 ,
    \FSM_sequential_tx_state_reg[0]_2 ,
    \FSM_sequential_tx_state_reg[0]_3 ,
    \FSM_sequential_tx_state_reg[0]_4 ,
    \FSM_sequential_tx_state_reg[0]_5 ,
    \FSM_sequential_tx_state_reg[0]_6 ,
    mmcm_lock_reclocked,
    reset_time_out);
  output [0:0]E;
  output \FSM_sequential_tx_state_reg[0] ;
  input tx_lock;
  input init_clk_in;
  input [3:0]Q;
  input txresetdone_s3;
  input \FSM_sequential_tx_state_reg[0]_0 ;
  input \FSM_sequential_tx_state_reg[0]_1 ;
  input \FSM_sequential_tx_state_reg[0]_2 ;
  input \FSM_sequential_tx_state_reg[0]_3 ;
  input \FSM_sequential_tx_state_reg[0]_4 ;
  input \FSM_sequential_tx_state_reg[0]_5 ;
  input \FSM_sequential_tx_state_reg[0]_6 ;
  input mmcm_lock_reclocked;
  input reset_time_out;

  wire [0:0]E;
  wire \FSM_sequential_tx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_tx_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0]_0 ;
  wire \FSM_sequential_tx_state_reg[0]_1 ;
  wire \FSM_sequential_tx_state_reg[0]_2 ;
  wire \FSM_sequential_tx_state_reg[0]_3 ;
  wire \FSM_sequential_tx_state_reg[0]_4 ;
  wire \FSM_sequential_tx_state_reg[0]_5 ;
  wire \FSM_sequential_tx_state_reg[0]_6 ;
  wire [3:0]Q;
  wire init_clk_in;
  wire mmcm_lock_reclocked;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire reset_time_out;
  wire reset_time_out_0;
  wire reset_time_out_i_3__0_n_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire txresetdone_s3;

  assign p_level_in_int = tx_lock;
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \FSM_sequential_tx_state[3]_i_1 
       (.I0(\FSM_sequential_tx_state[3]_i_3_n_0 ),
        .I1(\FSM_sequential_tx_state_reg[0]_0 ),
        .I2(\FSM_sequential_tx_state_reg[0]_1 ),
        .I3(\FSM_sequential_tx_state_reg[0]_2 ),
        .I4(\FSM_sequential_tx_state_reg[0]_3 ),
        .I5(txresetdone_s3),
        .O(E));
  LUT6 #(
    .INIT(64'h00000000AAAAEEBA)) 
    \FSM_sequential_tx_state[3]_i_3 
       (.I0(\FSM_sequential_tx_state_reg[0]_4 ),
        .I1(s_level_out_d3),
        .I2(\FSM_sequential_tx_state_reg[0]_5 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\FSM_sequential_tx_state_reg[0]_6 ),
        .O(\FSM_sequential_tx_state[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  LUT6 #(
    .INIT(64'hFBFBFBAA080808AA)) 
    reset_time_out_i_1
       (.I0(reset_time_out_0),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(reset_time_out),
        .O(\FSM_sequential_tx_state_reg[0] ));
  LUT6 #(
    .INIT(64'hBAAAAAFFBAAAAAAA)) 
    reset_time_out_i_2__0
       (.I0(reset_time_out_i_3__0_n_0),
        .I1(Q[3]),
        .I2(txresetdone_s3),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(reset_time_out_0));
  LUT6 #(
    .INIT(64'h0075007500FF0075)) 
    reset_time_out_i_3__0
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(s_level_out_d3),
        .I3(Q[3]),
        .I4(mmcm_lock_reclocked),
        .I5(Q[1]),
        .O(reset_time_out_i_3__0_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync_4
   (SR,
    mmcm_lock_reclocked_reg,
    init_clk_in,
    mmcm_lock_reclocked,
    p_0_in_1);
  output [0:0]SR;
  output mmcm_lock_reclocked_reg;
  input init_clk_in;
  input mmcm_lock_reclocked;
  input p_0_in_1;

  wire [0:0]SR;
  wire init_clk_in;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_reg;
  wire p_0_in_1;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[9]_i_1 
       (.I0(s_level_out_d3),
        .O(SR));
  LUT3 #(
    .INIT(8'hE0)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(p_0_in_1),
        .I2(s_level_out_d3),
        .O(mmcm_lock_reclocked_reg));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync_5
   (init_clk_in);
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0
   (out,
    gtrxreset_i,
    user_clk,
    init_clk_in);
  output out;
  input gtrxreset_i;
  input user_clk;
  input init_clk_in;

  wire gtrxreset_i;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_i),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_13
   (out,
    p_level_in_d1_cdc_from_reg_0,
    init_clk_in,
    user_clk);
  output out;
  input p_level_in_d1_cdc_from_reg_0;
  input init_clk_in;
  input user_clk;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_d1_cdc_from_reg_0;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_d1_cdc_from_reg_0),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_14
   (out,
    rx_fsm_reset_done_int,
    init_clk_in,
    user_clk);
  output out;
  input rx_fsm_reset_done_int;
  input init_clk_in;
  input user_clk;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire rx_fsm_reset_done_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_15
   (out,
    p_level_in_d1_cdc_from_reg_0,
    user_clk,
    init_clk_in);
  output out;
  input p_level_in_d1_cdc_from_reg_0;
  input user_clk;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_d1_cdc_from_reg_0;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_d1_cdc_from_reg_0),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_16
   (out,
    link_reset_r,
    init_clk_in,
    user_clk);
  output out;
  input link_reset_r;
  input init_clk_in;
  input user_clk;

  wire init_clk_in;
  wire link_reset_r;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_r),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_17
   (out,
    tx_lock_comb_r,
    init_clk_in,
    user_clk);
  output out;
  input tx_lock_comb_r;
  input init_clk_in;
  input user_clk;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire tx_lock_comb_r;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(tx_lock_comb_r),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_19
   (out,
    rx_cc_extend_r2,
    user_clk,
    init_clk_in);
  output out;
  input rx_cc_extend_r2;
  input user_clk;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire rx_cc_extend_r2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r2),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_2
   (out,
    txfsm_txresetdone_r,
    user_clk,
    init_clk_in);
  output out;
  input txfsm_txresetdone_r;
  input user_clk;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire txfsm_txresetdone_r;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(txfsm_txresetdone_r),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_6
   (out,
    run_phase_alignment_int,
    init_clk_in,
    user_clk);
  output out;
  input run_phase_alignment_int;
  input init_clk_in;
  input user_clk;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire run_phase_alignment_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_7
   (out,
    time_out_wait_bypass,
    user_clk,
    init_clk_in);
  output out;
  input time_out_wait_bypass;
  input user_clk;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire time_out_wait_bypass;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(time_out_wait_bypass),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_8
   (out,
    s_level_out_d3_reg_0,
    tx_fsm_reset_done_int,
    init_clk_in,
    user_clk);
  output out;
  output s_level_out_d3_reg_0;
  input tx_fsm_reset_done_int;
  input init_clk_in;
  input user_clk;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  wire s_level_out_d3_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire tx_fsm_reset_done_int;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h1)) 
    gt_txresetdone_r_i_1
       (.I0(s_level_out_d3),
        .O(s_level_out_d3_reg_0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_9
   (out,
    rxfsm_rxresetdone_r,
    user_clk,
    init_clk_in);
  output out;
  input rxfsm_rxresetdone_r;
  input user_clk;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire rxfsm_rxresetdone_r;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rxfsm_rxresetdone_r),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* CC_FREQ_FACTOR = "5'b01100" *) (* EXAMPLE_SIMULATION = "0" *) (* SIM_GTRESET_SPEEDUP = "TRUE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_core
   (s_axi_tx_tdata,
    s_axi_tx_tkeep,
    s_axi_tx_tvalid,
    s_axi_tx_tlast,
    s_axi_tx_tready,
    m_axi_rx_tdata,
    m_axi_rx_tkeep,
    m_axi_rx_tvalid,
    m_axi_rx_tlast,
    s_axi_ufc_tx_req,
    s_axi_ufc_tx_ms,
    s_axi_ufc_tx_ack,
    m_axi_ufc_rx_tdata,
    m_axi_ufc_rx_tkeep,
    m_axi_ufc_rx_tvalid,
    m_axi_ufc_rx_tlast,
    rxp,
    rxn,
    txp,
    txn,
    gt_refclk1,
    hard_err,
    soft_err,
    frame_err,
    channel_up,
    lane_up,
    user_clk,
    sync_clk,
    reset,
    power_down,
    loopback,
    gt_reset,
    init_clk_in,
    pll_not_locked,
    tx_resetdone_out,
    rx_resetdone_out,
    link_reset_out,
    drpclk_in,
    drpaddr_in,
    drpdi_in,
    drpdo_out,
    drpen_in,
    drprdy_out,
    drpwe_in,
    tx_out_clk,
    gt0_qplllock_in,
    gt0_qpllrefclklost_in,
    gt0_qpllreset_out,
    gt_qpllclk_quad1_in,
    gt_qpllrefclk_quad1_in,
    sys_reset_out,
    tx_lock);
  input [0:31]s_axi_tx_tdata;
  input [0:3]s_axi_tx_tkeep;
  input s_axi_tx_tvalid;
  input s_axi_tx_tlast;
  output s_axi_tx_tready;
  output [0:31]m_axi_rx_tdata;
  output [0:3]m_axi_rx_tkeep;
  output m_axi_rx_tvalid;
  output m_axi_rx_tlast;
  input s_axi_ufc_tx_req;
  input [0:2]s_axi_ufc_tx_ms;
  output s_axi_ufc_tx_ack;
  output [0:31]m_axi_ufc_rx_tdata;
  output [0:3]m_axi_ufc_rx_tkeep;
  output m_axi_ufc_rx_tvalid;
  output m_axi_ufc_rx_tlast;
  input rxp;
  input rxn;
  output txp;
  output txn;
  input gt_refclk1;
  output hard_err;
  output soft_err;
  output frame_err;
  output channel_up;
  output lane_up;
  input user_clk;
  input sync_clk;
  input reset;
  input power_down;
  input [2:0]loopback;
  input gt_reset;
  input init_clk_in;
  input pll_not_locked;
  output tx_resetdone_out;
  output rx_resetdone_out;
  output link_reset_out;
  input drpclk_in;
  input [8:0]drpaddr_in;
  input [15:0]drpdi_in;
  output [15:0]drpdo_out;
  input drpen_in;
  output drprdy_out;
  input drpwe_in;
  output tx_out_clk;
  input gt0_qplllock_in;
  input gt0_qpllrefclklost_in;
  output gt0_qpllreset_out;
  input gt_qpllclk_quad1_in;
  input gt_qpllrefclk_quad1_in;
  output sys_reset_out;
  output tx_lock;

  wire \<const0> ;
  wire \<const1> ;
  wire RX_ECP0;
  wire RX_SCP0;
  wire aurora_aurora_lane_4byte_0_i_n_100;
  wire aurora_aurora_lane_4byte_0_i_n_101;
  wire aurora_aurora_lane_4byte_0_i_n_18;
  wire aurora_aurora_lane_4byte_0_i_n_21;
  wire aurora_aurora_lane_4byte_0_i_n_22;
  wire aurora_aurora_lane_4byte_0_i_n_23;
  wire aurora_aurora_lane_4byte_0_i_n_25;
  wire aurora_aurora_lane_4byte_0_i_n_26;
  wire aurora_aurora_lane_4byte_0_i_n_27;
  wire aurora_aurora_lane_4byte_0_i_n_28;
  wire aurora_aurora_lane_4byte_0_i_n_29;
  wire aurora_aurora_lane_4byte_0_i_n_30;
  wire aurora_aurora_lane_4byte_0_i_n_31;
  wire aurora_aurora_lane_4byte_0_i_n_32;
  wire aurora_aurora_lane_4byte_0_i_n_33;
  wire aurora_aurora_lane_4byte_0_i_n_35;
  wire aurora_aurora_lane_4byte_0_i_n_68;
  wire aurora_aurora_lane_4byte_0_i_n_69;
  wire aurora_aurora_lane_4byte_0_i_n_7;
  wire aurora_aurora_lane_4byte_0_i_n_70;
  wire aurora_aurora_lane_4byte_0_i_n_71;
  wire aurora_aurora_lane_4byte_0_i_n_72;
  wire aurora_aurora_lane_4byte_0_i_n_73;
  wire aurora_aurora_lane_4byte_0_i_n_74;
  wire aurora_aurora_lane_4byte_0_i_n_75;
  wire aurora_aurora_lane_4byte_0_i_n_76;
  wire aurora_aurora_lane_4byte_0_i_n_77;
  wire aurora_aurora_lane_4byte_0_i_n_78;
  wire aurora_aurora_lane_4byte_0_i_n_79;
  wire aurora_aurora_lane_4byte_0_i_n_8;
  wire aurora_aurora_lane_4byte_0_i_n_80;
  wire aurora_aurora_lane_4byte_0_i_n_82;
  wire aurora_aurora_lane_4byte_0_i_n_83;
  wire aurora_aurora_lane_4byte_0_i_n_84;
  wire aurora_aurora_lane_4byte_0_i_n_85;
  wire aurora_aurora_lane_4byte_0_i_n_86;
  wire aurora_aurora_lane_4byte_0_i_n_87;
  wire aurora_aurora_lane_4byte_0_i_n_88;
  wire aurora_aurora_lane_4byte_0_i_n_89;
  wire aurora_aurora_lane_4byte_0_i_n_90;
  wire aurora_aurora_lane_4byte_0_i_n_91;
  wire aurora_aurora_lane_4byte_0_i_n_92;
  wire aurora_aurora_lane_4byte_0_i_n_93;
  wire \aurora_err_detect_4byte_i/hard_err_gt0 ;
  wire [0:0]\aurora_sym_dec_4byte_i/p_0_in ;
  wire [1:0]\aurora_sym_dec_4byte_i/p_3_out ;
  wire [0:0]\aurora_sym_dec_4byte_i/previous_cycle_control_r ;
  wire aurora_tx_ll_i_n_10;
  wire aurora_tx_ll_i_n_6;
  wire aurora_tx_ll_i_n_7;
  wire aurora_tx_ll_i_n_8;
  wire axi_to_ll_pdu_i_n_0;
  wire \channel_init_sm_i/wait_for_lane_up_r0 ;
  wire channel_up;
  wire do_cc_i;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire frame_err;
  wire gen_a_i;
  wire gen_cc_i;
  wire gen_ecp_i;
  wire [0:3]gen_k_i;
  wire [0:1]gen_pad_i;
  wire [0:3]gen_r_i;
  wire [0:0]gen_scp_striped_i;
  wire [0:0]gen_suf_striped_i;
  wire [1:3]gen_v_i;
  wire got_v_i;
  wire gt_qpllclk_quad1_in;
  wire gt_qpllrefclk_quad1_in;
  wire gt_refclk1;
  wire gt_reset;
  wire gt_reset_sync_init_clk;
  wire gt_wrapper_i_n_69;
  wire gt_wrapper_i_n_70;
  wire gt_wrapper_i_n_71;
  wire gt_wrapper_i_n_72;
  wire gt_wrapper_i_n_73;
  wire gt_wrapper_i_n_74;
  wire gt_wrapper_i_n_75;
  wire gt_wrapper_i_n_76;
  wire gt_wrapper_i_n_77;
  wire gt_wrapper_i_n_78;
  wire gt_wrapper_i_n_79;
  wire gt_wrapper_i_n_80;
  wire gt_wrapper_i_n_81;
  wire gt_wrapper_i_n_82;
  wire gt_wrapper_i_n_83;
  wire gt_wrapper_i_n_84;
  wire gt_wrapper_i_n_85;
  wire gt_wrapper_i_n_86;
  wire gt_wrapper_i_n_87;
  wire gt_wrapper_i_n_88;
  wire gt_wrapper_i_n_89;
  wire gt_wrapper_i_n_90;
  wire gt_wrapper_i_n_91;
  wire gt_wrapper_i_n_93;
  wire gt_wrapper_i_n_94;
  wire gt_wrapper_i_n_95;
  wire gt_wrapper_i_n_96;
  wire gtrxreset_i;
  wire hard_err;
  wire hard_err_i;
  wire init_clk_in;
  wire lane_up;
  wire link_reset_out;
  wire link_reset_r;
  wire [2:0]loopback;
  wire [0:31]m_axi_rx_tdata;
  wire [1:3]\^m_axi_rx_tkeep ;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire [0:31]m_axi_ufc_rx_tdata;
  wire [2:2]\^m_axi_ufc_rx_tkeep ;
  wire m_axi_ufc_rx_tlast;
  wire m_axi_ufc_rx_tvalid;
  wire new_pkt_r;
  wire p_0_in;
  wire power_down;
  wire reset;
  wire reset_channel_i;
  wire reset_lanes_i;
  wire reset_sync_user_clk;
  wire [3:0]rx_char_is_comma_i;
  wire [3:0]rx_char_is_k_i;
  wire [31:0]rx_data_i;
  wire [3:0]rx_disp_err_i;
  wire rx_eof;
  wire rx_ll_rst;
  wire [3:0]rx_not_in_table_i;
  wire [8:26]rx_pe_data_striped_i;
  wire [0:1]rx_pe_data_v_striped_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire [0:1]rx_rem_int;
  wire rx_resetdone_out;
  wire [0:1]rx_suf_striped_i;
  wire rxn;
  wire rxp;
  wire [0:31]s_axi_tx_tdata;
  wire [0:3]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire s_axi_ufc_tx_ack;
  wire [0:2]s_axi_ufc_tx_ms;
  wire s_axi_ufc_tx_req;
  wire soft_err;
  wire [0:1]soft_err_i;
  wire start_rx_i;
  wire sync_clk;
  wire sys_reset_out;
  wire [3:0]tx_char_is_k_i;
  wire [31:0]tx_data_i;
  wire tx_dst_rdy;
  wire \tx_ll_control_i/next_ufc_idle_c ;
  wire tx_lock;
  wire tx_out_clk;
  wire [0:31]tx_pe_data_i;
  wire [0:1]tx_pe_data_v_i;
  wire tx_reset_i;
  wire tx_resetdone_out;
  wire txn;
  wire txp;
  wire user_clk;
  wire warn_cc;

  assign gt0_qpllreset_out = \<const0> ;
  assign m_axi_rx_tkeep[0] = \<const1> ;
  assign m_axi_rx_tkeep[1:3] = \^m_axi_rx_tkeep [1:3];
  assign m_axi_ufc_rx_tkeep[0] = \<const1> ;
  assign m_axi_ufc_rx_tkeep[1] = \<const1> ;
  assign m_axi_ufc_rx_tkeep[2] = \^m_axi_ufc_rx_tkeep [2];
  assign m_axi_ufc_rx_tkeep[3] = \^m_axi_ufc_rx_tkeep [2];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_AURORA_LANE_4BYTE aurora_aurora_lane_4byte_0_i
       (.D(rx_char_is_comma_i),
        .Q({rx_suf_striped_i[0],rx_suf_striped_i[1]}),
        .RXCHARISK(rx_char_is_k_i),
        .RXDATA(rx_data_i),
        .RXDISPERR({rx_disp_err_i[3],rx_disp_err_i[0]}),
        .RXNOTINTABLE({rx_not_in_table_i[3],rx_not_in_table_i[0]}),
        .RX_ECP0(RX_ECP0),
        .\RX_PE_DATA_V_reg[0] ({rx_pe_data_v_striped_i[0],rx_pe_data_v_striped_i[1]}),
        .\RX_PE_DATA_reg[25] (aurora_aurora_lane_4byte_0_i_n_23),
        .\RX_PE_DATA_reg[26] (aurora_aurora_lane_4byte_0_i_n_21),
        .\RX_PE_DATA_reg[26]_0 (aurora_aurora_lane_4byte_0_i_n_22),
        .RX_SCP0(RX_SCP0),
        .\RX_SUF_reg[1] (aurora_aurora_lane_4byte_0_i_n_18),
        .\RX_SUF_reg[1]_0 (aurora_aurora_lane_4byte_0_i_n_35),
        .\SOFT_ERR_reg[0] ({soft_err_i[0],soft_err_i[1]}),
        .SR(reset_lanes_i),
        .TXCHARISK(tx_char_is_k_i),
        .TXDATA(tx_data_i),
        .ena_comma_align_i(ena_comma_align_i),
        .\fc_nb_r_reg[0] (aurora_tx_ll_i_n_6),
        .\fc_nb_r_reg[1] (aurora_tx_ll_i_n_7),
        .\fc_nb_r_reg[2] (aurora_tx_ll_i_n_8),
        .gen_a_i(gen_a_i),
        .gen_cc_i(gen_cc_i),
        .gen_ecp_i(gen_ecp_i),
        .\gen_k_r_reg[0] ({gen_k_i[0],gen_k_i[1],gen_k_i[2],gen_k_i[3]}),
        .\gen_pad_r_reg[0] ({gen_pad_i[0],gen_pad_i[1]}),
        .\gen_r_r_reg[0] ({gen_r_i[0],gen_r_i[1],gen_r_i[2],gen_r_i[3]}),
        .gen_scp_striped_i(gen_scp_striped_i),
        .gen_suf_striped_i(gen_suf_striped_i),
        .\gen_v_r_reg[1] ({gen_v_i[1],gen_v_i[2],gen_v_i[3]}),
        .got_v_i(got_v_i),
        .hard_err_gt0(\aurora_err_detect_4byte_i/hard_err_gt0 ),
        .hard_err_i(hard_err_i),
        .init_clk_in(init_clk_in),
        .lane_up(lane_up),
        .\left_align_select_r_reg[0] (aurora_aurora_lane_4byte_0_i_n_7),
        .\left_align_select_r_reg[0]_0 (gt_wrapper_i_n_95),
        .\left_align_select_r_reg[1] (aurora_aurora_lane_4byte_0_i_n_8),
        .\left_align_select_r_reg[1]_0 (gt_wrapper_i_n_96),
        .link_reset_out(link_reset_out),
        .p_3_out(\aurora_sym_dec_4byte_i/p_3_out ),
        .\previous_cycle_control_r_reg[0] (\aurora_sym_dec_4byte_i/previous_cycle_control_r ),
        .\previous_cycle_data_r_reg[7] ({aurora_aurora_lane_4byte_0_i_n_26,aurora_aurora_lane_4byte_0_i_n_27,aurora_aurora_lane_4byte_0_i_n_28,aurora_aurora_lane_4byte_0_i_n_29,aurora_aurora_lane_4byte_0_i_n_30,aurora_aurora_lane_4byte_0_i_n_31,aurora_aurora_lane_4byte_0_i_n_32,aurora_aurora_lane_4byte_0_i_n_33}),
        .ready_r_reg(aurora_aurora_lane_4byte_0_i_n_25),
        .reset_count_r_reg(gt_wrapper_i_n_69),
        .\rx_ecp_d_r_reg[6] (aurora_aurora_lane_4byte_0_i_n_100),
        .\rx_ecp_d_r_reg[6]_0 (aurora_aurora_lane_4byte_0_i_n_101),
        .rx_pe_data_striped_i({rx_pe_data_striped_i[8],rx_pe_data_striped_i[9],rx_pe_data_striped_i[10],rx_pe_data_striped_i[24],rx_pe_data_striped_i[25],rx_pe_data_striped_i[26]}),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .\soft_err_r_reg[0] (gt_wrapper_i_n_72),
        .\soft_err_r_reg[1] (gt_wrapper_i_n_70),
        .\soft_err_r_reg[2] (gt_wrapper_i_n_71),
        .\soft_err_r_reg[3] (gt_wrapper_i_n_73),
        .\tx_pe_data_r_reg[0] ({tx_pe_data_i[0],tx_pe_data_i[1],tx_pe_data_i[2],tx_pe_data_i[3],tx_pe_data_i[4],tx_pe_data_i[5],tx_pe_data_i[6],tx_pe_data_i[7],tx_pe_data_i[8],tx_pe_data_i[9],tx_pe_data_i[10],tx_pe_data_i[11],tx_pe_data_i[12],tx_pe_data_i[13],tx_pe_data_i[14],tx_pe_data_i[15],tx_pe_data_i[16],tx_pe_data_i[17],tx_pe_data_i[18],tx_pe_data_i[19],tx_pe_data_i[20],tx_pe_data_i[21],tx_pe_data_i[22],tx_pe_data_i[23],tx_pe_data_i[24],tx_pe_data_i[25],tx_pe_data_i[26],tx_pe_data_i[27],tx_pe_data_i[28],tx_pe_data_i[29],tx_pe_data_i[30],tx_pe_data_i[31]}),
        .\tx_pe_data_v_r_reg[0] ({tx_pe_data_v_i[0],tx_pe_data_v_i[1]}),
        .tx_reset_i(tx_reset_i),
        .user_clk(user_clk),
        .\word_aligned_control_bits_r_reg[2] (gt_wrapper_i_n_90),
        .\word_aligned_control_bits_r_reg[3] (gt_wrapper_i_n_91),
        .\word_aligned_data_r_reg[0] ({aurora_aurora_lane_4byte_0_i_n_86,aurora_aurora_lane_4byte_0_i_n_87,aurora_aurora_lane_4byte_0_i_n_88,aurora_aurora_lane_4byte_0_i_n_89,aurora_aurora_lane_4byte_0_i_n_90,aurora_aurora_lane_4byte_0_i_n_91,aurora_aurora_lane_4byte_0_i_n_92,aurora_aurora_lane_4byte_0_i_n_93}),
        .\word_aligned_data_r_reg[11] ({\aurora_sym_dec_4byte_i/p_0_in ,aurora_aurora_lane_4byte_0_i_n_82,aurora_aurora_lane_4byte_0_i_n_83,aurora_aurora_lane_4byte_0_i_n_84,aurora_aurora_lane_4byte_0_i_n_85}),
        .\word_aligned_data_r_reg[16] ({aurora_aurora_lane_4byte_0_i_n_73,aurora_aurora_lane_4byte_0_i_n_74,aurora_aurora_lane_4byte_0_i_n_75,aurora_aurora_lane_4byte_0_i_n_76,aurora_aurora_lane_4byte_0_i_n_77,aurora_aurora_lane_4byte_0_i_n_78,aurora_aurora_lane_4byte_0_i_n_79,aurora_aurora_lane_4byte_0_i_n_80}),
        .\word_aligned_data_r_reg[16]_0 ({gt_wrapper_i_n_74,gt_wrapper_i_n_75,gt_wrapper_i_n_76,gt_wrapper_i_n_77,gt_wrapper_i_n_78,gt_wrapper_i_n_79,gt_wrapper_i_n_80,gt_wrapper_i_n_81}),
        .\word_aligned_data_r_reg[24] ({gt_wrapper_i_n_82,gt_wrapper_i_n_83,gt_wrapper_i_n_84,gt_wrapper_i_n_85,gt_wrapper_i_n_86,gt_wrapper_i_n_87,gt_wrapper_i_n_88,gt_wrapper_i_n_89}),
        .\word_aligned_data_r_reg[27] ({aurora_aurora_lane_4byte_0_i_n_68,aurora_aurora_lane_4byte_0_i_n_69,aurora_aurora_lane_4byte_0_i_n_70,aurora_aurora_lane_4byte_0_i_n_71,aurora_aurora_lane_4byte_0_i_n_72}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_GLOBAL_LOGIC aurora_global_logic_i
       (.D({soft_err_i[0],soft_err_i[1]}),
        .SR(reset_lanes_i),
        .channel_up(channel_up),
        .\downcounter_r_reg[2] (sys_reset_out),
        .gen_a_i(gen_a_i),
        .gen_k_flop_0_i({gen_k_i[0],gen_k_i[1],gen_k_i[2],gen_k_i[3]}),
        .gen_r_flop_0_i({gen_r_i[0],gen_r_i[1],gen_r_i[2],gen_r_i[3]}),
        .gen_v_flop_1_i({gen_v_i[1],gen_v_i[2],gen_v_i[3]}),
        .got_v_i(got_v_i),
        .gtrxreset_i(gtrxreset_i),
        .hard_err(hard_err),
        .hard_err_i(hard_err_i),
        .lane_up(lane_up),
        .p_0_in(p_0_in),
        .power_down(power_down),
        .reset_channel_i(reset_channel_i),
        .rx_ll_rst(rx_ll_rst),
        .soft_err(soft_err),
        .start_rx_i(start_rx_i),
        .user_clk(user_clk),
        .wait_for_lane_up_r0(\channel_init_sm_i/wait_for_lane_up_r0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_RX_LL aurora_rx_ll_i
       (.D({rx_pe_data_v_striped_i[0],rx_pe_data_v_striped_i[1]}),
        .\PDU_ECP_reg[1] (aurora_aurora_lane_4byte_0_i_n_101),
        .\PDU_SCP_reg[1] (aurora_aurora_lane_4byte_0_i_n_100),
        .Q({rx_suf_striped_i[0],rx_suf_striped_i[1]}),
        .RX_ECP0(RX_ECP0),
        .\RX_REM_reg[0] ({rx_rem_int[0],rx_rem_int[1]}),
        .RX_SCP0(RX_SCP0),
        .frame_err(frame_err),
        .load_ufc_control_code_r_reg(aurora_aurora_lane_4byte_0_i_n_18),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tlast(m_axi_rx_tlast),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .m_axi_ufc_rx_tdata(m_axi_ufc_rx_tdata),
        .m_axi_ufc_rx_tkeep(\^m_axi_ufc_rx_tkeep ),
        .m_axi_ufc_rx_tlast(m_axi_ufc_rx_tlast),
        .m_axi_ufc_rx_tvalid(m_axi_ufc_rx_tvalid),
        .p_3_out(\aurora_sym_dec_4byte_i/p_3_out ),
        .rx_eof(rx_eof),
        .rx_ll_rst(rx_ll_rst),
        .rx_pe_data_striped_i({rx_pe_data_striped_i[8],rx_pe_data_striped_i[9],rx_pe_data_striped_i[10],rx_pe_data_striped_i[24],rx_pe_data_striped_i[25],rx_pe_data_striped_i[26]}),
        .\stage_1_count_value_r_reg[0] (aurora_aurora_lane_4byte_0_i_n_35),
        .\stage_1_count_value_r_reg[1] (aurora_aurora_lane_4byte_0_i_n_23),
        .\stage_1_count_value_r_reg[2] (aurora_aurora_lane_4byte_0_i_n_22),
        .\stage_1_count_value_r_reg[3] (aurora_aurora_lane_4byte_0_i_n_21),
        .\stage_1_data_r_reg[0] ({aurora_aurora_lane_4byte_0_i_n_86,aurora_aurora_lane_4byte_0_i_n_87,aurora_aurora_lane_4byte_0_i_n_88,aurora_aurora_lane_4byte_0_i_n_89,aurora_aurora_lane_4byte_0_i_n_90,aurora_aurora_lane_4byte_0_i_n_91,aurora_aurora_lane_4byte_0_i_n_92,aurora_aurora_lane_4byte_0_i_n_93}),
        .\stage_1_data_r_reg[11] ({\aurora_sym_dec_4byte_i/p_0_in ,aurora_aurora_lane_4byte_0_i_n_82,aurora_aurora_lane_4byte_0_i_n_83,aurora_aurora_lane_4byte_0_i_n_84,aurora_aurora_lane_4byte_0_i_n_85}),
        .\stage_1_data_r_reg[16] ({aurora_aurora_lane_4byte_0_i_n_73,aurora_aurora_lane_4byte_0_i_n_74,aurora_aurora_lane_4byte_0_i_n_75,aurora_aurora_lane_4byte_0_i_n_76,aurora_aurora_lane_4byte_0_i_n_77,aurora_aurora_lane_4byte_0_i_n_78,aurora_aurora_lane_4byte_0_i_n_79,aurora_aurora_lane_4byte_0_i_n_80}),
        .\stage_1_data_r_reg[27] ({aurora_aurora_lane_4byte_0_i_n_68,aurora_aurora_lane_4byte_0_i_n_69,aurora_aurora_lane_4byte_0_i_n_70,aurora_aurora_lane_4byte_0_i_n_71,aurora_aurora_lane_4byte_0_i_n_72}),
        .start_rx_i(start_rx_i),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_TX_LL aurora_tx_ll_i
       (.\GEN_PAD_reg[0] ({gen_pad_i[0],gen_pad_i[1]}),
        .Q(do_cc_i),
        .\TX_PE_DATA_V_reg[0] ({tx_pe_data_v_i[0],tx_pe_data_v_i[1]}),
        .\TX_PE_DATA_reg[0] ({tx_pe_data_i[0],tx_pe_data_i[1],tx_pe_data_i[2],tx_pe_data_i[3],tx_pe_data_i[4],tx_pe_data_i[5],tx_pe_data_i[6],tx_pe_data_i[7],tx_pe_data_i[8],tx_pe_data_i[9],tx_pe_data_i[10],tx_pe_data_i[11],tx_pe_data_i[12],tx_pe_data_i[13],tx_pe_data_i[14],tx_pe_data_i[15],tx_pe_data_i[16],tx_pe_data_i[17],tx_pe_data_i[18],tx_pe_data_i[19],tx_pe_data_i[20],tx_pe_data_i[21],tx_pe_data_i[22],tx_pe_data_i[23],tx_pe_data_i[24],tx_pe_data_i[25],tx_pe_data_i[26],tx_pe_data_i[27],tx_pe_data_i[28],tx_pe_data_i[29],tx_pe_data_i[30],tx_pe_data_i[31]}),
        .gen_cc_i(gen_cc_i),
        .gen_ecp_i(gen_ecp_i),
        .gen_scp_striped_i(gen_scp_striped_i),
        .gen_suf_striped_i(gen_suf_striped_i),
        .next_ufc_idle_c(\tx_ll_control_i/next_ufc_idle_c ),
        .p_0_in(p_0_in),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .s_axi_tx_tkeep(s_axi_tx_tkeep),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tready(s_axi_tx_tready),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .s_axi_ufc_tx_ms(s_axi_ufc_tx_ms),
        .s_axi_ufc_tx_req(s_axi_ufc_tx_req),
        .\s_axi_ufc_tx_tdata[0] (aurora_tx_ll_i_n_6),
        .\s_axi_ufc_tx_tdata[1] (aurora_tx_ll_i_n_7),
        .\s_axi_ufc_tx_tdata[2] (aurora_tx_ll_i_n_8),
        .tx_dst_rdy(tx_dst_rdy),
        .\tx_pe_data_v_r_reg[1] (axi_to_ll_pdu_i_n_0),
        .ufc_header_r_reg(s_axi_ufc_tx_ack),
        .\ufc_message_count_r_reg[2] (aurora_tx_ll_i_n_10),
        .user_clk(user_clk),
        .warn_cc(warn_cc));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_AXI_TO_LL axi_to_ll_pdu_i
       (.new_pkt_r(new_pkt_r),
        .new_pkt_r_reg_0(axi_to_ll_pdu_i_n_0),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_RESET_LOGIC core_reset_logic_i
       (.SYSTEM_RESET_reg_0(sys_reset_out),
        .channel_up(channel_up),
        .gt_rxresetdone_r2_reg_0(gt_wrapper_i_n_94),
        .gt_txresetdone_r2_reg_0(gt_wrapper_i_n_93),
        .init_clk_in(init_clk_in),
        .link_reset_r(link_reset_r),
        .new_pkt_r(new_pkt_r),
        .new_pkt_r_reg(axi_to_ll_pdu_i_n_0),
        .out(reset_sync_user_clk),
        .reset_channel_i(reset_channel_i),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .tx_dst_rdy(tx_dst_rdy),
        .tx_lock(tx_lock),
        .user_clk(user_clk),
        .wait_for_lane_up_r0(\channel_init_sm_i/wait_for_lane_up_r0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync gt_reset_cdc_sync
       (.AR(gt_reset_sync_init_clk),
        .gt_reset(gt_reset),
        .init_clk_in(init_clk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_GT_WRAPPER gt_wrapper_i
       (.AR(gt_reset_sync_init_clk),
        .D(rx_char_is_comma_i),
        .RXCHARISK(rx_char_is_k_i),
        .RXDATA(rx_data_i),
        .RXDISPERR({rx_disp_err_i[3],rx_disp_err_i[0]}),
        .RXNOTINTABLE({rx_not_in_table_i[3],rx_not_in_table_i[0]}),
        .TXCHARISK(tx_char_is_k_i),
        .TXDATA(tx_data_i),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .ena_comma_align_i(ena_comma_align_i),
        .gt_qpllclk_quad1_in(gt_qpllclk_quad1_in),
        .gt_qpllrefclk_quad1_in(gt_qpllrefclk_quad1_in),
        .gt_refclk1(gt_refclk1),
        .gtrxreset_i(gtrxreset_i),
        .hard_err_gt0(\aurora_err_detect_4byte_i/hard_err_gt0 ),
        .init_clk_in(init_clk_in),
        .init_clk_in_0(gt_wrapper_i_n_70),
        .init_clk_in_1(gt_wrapper_i_n_71),
        .init_clk_in_2(gt_wrapper_i_n_72),
        .init_clk_in_3(gt_wrapper_i_n_73),
        .\left_align_select_r_reg[0] (gt_wrapper_i_n_95),
        .\left_align_select_r_reg[0]_0 (aurora_aurora_lane_4byte_0_i_n_7),
        .\left_align_select_r_reg[0]_1 (aurora_aurora_lane_4byte_0_i_n_25),
        .\left_align_select_r_reg[1] ({gt_wrapper_i_n_74,gt_wrapper_i_n_75,gt_wrapper_i_n_76,gt_wrapper_i_n_77,gt_wrapper_i_n_78,gt_wrapper_i_n_79,gt_wrapper_i_n_80,gt_wrapper_i_n_81}),
        .\left_align_select_r_reg[1]_0 ({gt_wrapper_i_n_82,gt_wrapper_i_n_83,gt_wrapper_i_n_84,gt_wrapper_i_n_85,gt_wrapper_i_n_86,gt_wrapper_i_n_87,gt_wrapper_i_n_88,gt_wrapper_i_n_89}),
        .\left_align_select_r_reg[1]_1 (gt_wrapper_i_n_90),
        .\left_align_select_r_reg[1]_2 (gt_wrapper_i_n_91),
        .\left_align_select_r_reg[1]_3 (gt_wrapper_i_n_96),
        .\left_align_select_r_reg[1]_4 (aurora_aurora_lane_4byte_0_i_n_8),
        .link_reset_out(link_reset_out),
        .link_reset_r(link_reset_r),
        .loopback(loopback),
        .power_down(power_down),
        .rst_r_reg(gt_wrapper_i_n_69),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .rx_resetdone_out(rx_resetdone_out),
        .rxfsm_rxresetdone_r3_reg_0(gt_wrapper_i_n_94),
        .rxn(rxn),
        .rxp(rxp),
        .s_level_out_d3_reg(gt_wrapper_i_n_93),
        .sync_clk(sync_clk),
        .tx_lock(tx_lock),
        .tx_out_clk(tx_out_clk),
        .tx_reset_i(tx_reset_i),
        .tx_resetdone_out(tx_resetdone_out),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk),
        .\word_aligned_control_bits_r_reg[2] (\aurora_sym_dec_4byte_i/previous_cycle_control_r ),
        .\word_aligned_data_r_reg[16] ({aurora_aurora_lane_4byte_0_i_n_26,aurora_aurora_lane_4byte_0_i_n_27,aurora_aurora_lane_4byte_0_i_n_28,aurora_aurora_lane_4byte_0_i_n_29,aurora_aurora_lane_4byte_0_i_n_30,aurora_aurora_lane_4byte_0_i_n_31,aurora_aurora_lane_4byte_0_i_n_32,aurora_aurora_lane_4byte_0_i_n_33}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync_0 hpcnt_reset_cdc_sync
       (.init_clk_in(init_clk_in),
        .reset(reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_LL_TO_AXI ll_to_axi_pdu_i
       (.m_axi_rx_tkeep({\^m_axi_rx_tkeep [1],\^m_axi_rx_tkeep [2],\^m_axi_rx_tkeep [3]}),
        .\m_axi_rx_tkeep[1] ({rx_rem_int[0],rx_rem_int[1]}),
        .rx_eof(rx_eof));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync_1 reset_sync_user_clk_cdc_sync
       (.out(reset_sync_user_clk),
        .reset(reset),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_STANDARD_CC_MODULE standard_cc_module_i
       (.Q(do_cc_i),
        .\cc_count_r_reg[5]_0 (sys_reset_out),
        .next_ufc_idle_c(\tx_ll_control_i/next_ufc_idle_c ),
        .s_axi_ufc_tx_req(s_axi_ufc_tx_req),
        .ufc_idle_r_reg(aurora_tx_ll_i_n_10),
        .user_clk(user_clk),
        .warn_cc(warn_cc));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_gt
   (tx_lock,
    drprdy_out,
    txn,
    txp,
    rx_realign_i,
    init_clk_in_0,
    tx_out_clk,
    init_clk_in_1,
    drpdo_out,
    RXDATA,
    D,
    RXCHARISK,
    RXDISPERR,
    RXNOTINTABLE,
    ack_flag,
    rst_r_reg,
    init_clk_in_2,
    init_clk_in_3,
    init_clk_in_4,
    init_clk_in_5,
    \left_align_select_r_reg[1] ,
    \left_align_select_r_reg[1]_0 ,
    \left_align_select_r_reg[1]_1 ,
    \left_align_select_r_reg[1]_2 ,
    hard_err_gt0,
    \left_align_select_r_reg[0] ,
    \left_align_select_r_reg[1]_3 ,
    init_clk_in,
    drpclk_in,
    drpen_in,
    drpwe_in,
    gt_refclk1,
    SR,
    gt_tx_reset_i,
    rxn,
    rxp,
    gt_qpllclk_quad1_in,
    gt_qpllrefclk_quad1_in,
    gt_rxdfelfhold_i,
    ena_comma_align_i,
    rx_polarity_i,
    gt_rxuserrdy_i,
    sync_clk,
    user_clk,
    power_down,
    gt_txuserrdy_i,
    drpdi_in,
    loopback,
    TXDATA,
    TXCHARISK,
    drpaddr_in,
    flag2_reg_0,
    tx_reset_i,
    \left_align_select_r_reg[1]_4 ,
    \left_align_select_r_reg[0]_0 ,
    \word_aligned_data_r_reg[16] ,
    \word_aligned_control_bits_r_reg[2] ,
    cpll_reset_i,
    \left_align_select_r_reg[0]_1 );
  output tx_lock;
  output drprdy_out;
  output txn;
  output txp;
  output rx_realign_i;
  output init_clk_in_0;
  output tx_out_clk;
  output init_clk_in_1;
  output [15:0]drpdo_out;
  output [31:0]RXDATA;
  output [3:0]D;
  output [3:0]RXCHARISK;
  output [1:0]RXDISPERR;
  output [1:0]RXNOTINTABLE;
  output ack_flag;
  output rst_r_reg;
  output init_clk_in_2;
  output init_clk_in_3;
  output init_clk_in_4;
  output init_clk_in_5;
  output [7:0]\left_align_select_r_reg[1] ;
  output [7:0]\left_align_select_r_reg[1]_0 ;
  output \left_align_select_r_reg[1]_1 ;
  output \left_align_select_r_reg[1]_2 ;
  output hard_err_gt0;
  output \left_align_select_r_reg[0] ;
  output \left_align_select_r_reg[1]_3 ;
  input init_clk_in;
  input drpclk_in;
  input drpen_in;
  input drpwe_in;
  input gt_refclk1;
  input [0:0]SR;
  input gt_tx_reset_i;
  input rxn;
  input rxp;
  input gt_qpllclk_quad1_in;
  input gt_qpllrefclk_quad1_in;
  input gt_rxdfelfhold_i;
  input ena_comma_align_i;
  input rx_polarity_i;
  input gt_rxuserrdy_i;
  input sync_clk;
  input user_clk;
  input power_down;
  input gt_txuserrdy_i;
  input [15:0]drpdi_in;
  input [2:0]loopback;
  input [31:0]TXDATA;
  input [3:0]TXCHARISK;
  input [8:0]drpaddr_in;
  input flag2_reg_0;
  input tx_reset_i;
  input \left_align_select_r_reg[1]_4 ;
  input \left_align_select_r_reg[0]_0 ;
  input [7:0]\word_aligned_data_r_reg[16] ;
  input [0:0]\word_aligned_control_bits_r_reg[2] ;
  input cpll_reset_i;
  input \left_align_select_r_reg[0]_1 ;

  wire [3:0]D;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire [1:0]RXDISPERR;
  wire [1:0]RXNOTINTABLE;
  wire [0:0]SR;
  wire [3:0]TXCHARISK;
  wire [31:0]TXDATA;
  wire ack_flag;
  wire ack_flag_i_1_n_0;
  wire ack_sync1;
  wire ack_sync2;
  wire ack_sync3;
  wire ack_sync4;
  wire ack_sync5;
  wire ack_sync6;
  wire cpll_pd_i;
  wire cpll_reset_i;
  wire cpll_reset_i_0;
  wire \cpllpd_wait_reg[31]_srl32_n_1 ;
  wire \cpllpd_wait_reg[63]_srl32_n_1 ;
  wire \cpllpd_wait_reg[94]_srl31_n_0 ;
  wire cpllreset_ovrd_i;
  wire \cpllreset_wait_reg[126]_srl31_n_0 ;
  wire \cpllreset_wait_reg[31]_srl32_n_1 ;
  wire \cpllreset_wait_reg[63]_srl32_n_1 ;
  wire \cpllreset_wait_reg[95]_srl32_n_1 ;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync6;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire flag;
  wire flag2;
  wire flag2_reg_0;
  wire flag_i_1_n_0;
  wire gt_pllrefclklost_i;
  wire gt_qpllclk_quad1_in;
  wire gt_qpllrefclk_quad1_in;
  wire gt_refclk1;
  wire gt_rxdfelfhold_i;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire gtxe2_i_n_0;
  wire gtxe2_i_n_11;
  wire gtxe2_i_n_16;
  wire gtxe2_i_n_170;
  wire gtxe2_i_n_171;
  wire gtxe2_i_n_172;
  wire gtxe2_i_n_173;
  wire gtxe2_i_n_174;
  wire gtxe2_i_n_175;
  wire gtxe2_i_n_176;
  wire gtxe2_i_n_177;
  wire gtxe2_i_n_178;
  wire gtxe2_i_n_179;
  wire gtxe2_i_n_180;
  wire gtxe2_i_n_181;
  wire gtxe2_i_n_182;
  wire gtxe2_i_n_183;
  wire gtxe2_i_n_184;
  wire gtxe2_i_n_23;
  wire gtxe2_i_n_27;
  wire gtxe2_i_n_38;
  wire gtxe2_i_n_39;
  wire gtxe2_i_n_4;
  wire gtxe2_i_n_78;
  wire gtxe2_i_n_79;
  wire gtxe2_i_n_81;
  wire gtxe2_i_n_83;
  wire gtxe2_i_n_84;
  wire gtxe2_i_n_9;
  wire hard_err_gt0;
  wire init_clk_in;
  wire init_clk_in_0;
  wire init_clk_in_1;
  wire init_clk_in_2;
  wire init_clk_in_3;
  wire init_clk_in_4;
  wire init_clk_in_5;
  wire \left_align_select_r_reg[0] ;
  wire \left_align_select_r_reg[0]_0 ;
  wire \left_align_select_r_reg[0]_1 ;
  wire [7:0]\left_align_select_r_reg[1] ;
  wire [7:0]\left_align_select_r_reg[1]_0 ;
  wire \left_align_select_r_reg[1]_1 ;
  wire \left_align_select_r_reg[1]_2 ;
  wire \left_align_select_r_reg[1]_3 ;
  wire \left_align_select_r_reg[1]_4 ;
  wire [2:0]loopback;
  wire power_down;
  wire rst_r_reg;
  wire rx_buf_err_i;
  wire [2:1]rx_disp_err_i;
  wire [2:1]rx_not_in_table_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rxn;
  wire rxp;
  wire sync_clk;
  wire tx_buf_err_i;
  wire tx_lock;
  wire tx_out_clk;
  wire tx_reset_i;
  wire txn;
  wire txp;
  wire user_clk;
  wire [0:0]\word_aligned_control_bits_r_reg[2] ;
  wire [7:0]\word_aligned_data_r_reg[16] ;
  wire \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [63:32]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXSTATUS_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFF90)) 
    ack_flag_i_1
       (.I0(ack_sync6),
        .I1(ack_sync5),
        .I2(ack_flag),
        .I3(flag2),
        .O(ack_flag_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_flag_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(ack_flag_i_1_n_0),
        .Q(ack_flag),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    ack_sync_reg1
       (.C(init_clk_in),
        .CE(1'b1),
        .D(data_sync6),
        .Q(ack_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    ack_sync_reg2
       (.C(init_clk_in),
        .CE(1'b1),
        .D(ack_sync1),
        .Q(ack_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    ack_sync_reg3
       (.C(init_clk_in),
        .CE(1'b1),
        .D(ack_sync2),
        .Q(ack_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    ack_sync_reg4
       (.C(init_clk_in),
        .CE(1'b1),
        .D(ack_sync3),
        .Q(ack_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    ack_sync_reg5
       (.C(init_clk_in),
        .CE(1'b1),
        .D(ack_sync4),
        .Q(ack_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    ack_sync_reg6
       (.C(init_clk_in),
        .CE(1'b1),
        .D(ack_sync5),
        .Q(ack_sync6),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF5700028200)) 
    \aurora_sym_dec_4byte_i/left_align_select_r[0]_i_1 
       (.I0(\left_align_select_r_reg[0]_1 ),
        .I1(RXCHARISK[1]),
        .I2(RXCHARISK[0]),
        .I3(RXCHARISK[2]),
        .I4(RXCHARISK[3]),
        .I5(\left_align_select_r_reg[0]_0 ),
        .O(\left_align_select_r_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFF7DDF00020088)) 
    \aurora_sym_dec_4byte_i/left_align_select_r[1]_i_1 
       (.I0(\left_align_select_r_reg[0]_1 ),
        .I1(RXCHARISK[1]),
        .I2(RXCHARISK[0]),
        .I3(RXCHARISK[2]),
        .I4(RXCHARISK[3]),
        .I5(\left_align_select_r_reg[1]_4 ),
        .O(\left_align_select_r_reg[1]_3 ));
  LUT3 #(
    .INIT(8'hF6)) 
    cpll_reset_i__0
       (.I0(data_sync5),
        .I1(data_sync6),
        .I2(cpllreset_ovrd_i),
        .O(cpll_reset_i_0));
  (* srl_bus_name = "inst/\gt_wrapper_i/aurora_multi_gt_i/gt0_aurora_i/cpllpd_wait_reg " *) 
  (* srl_name = "inst/\gt_wrapper_i/aurora_multi_gt_i/gt0_aurora_i/cpllpd_wait_reg[31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
    \cpllpd_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(1'b0),
        .Q(\NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllpd_wait_reg[31]_srl32_n_1 ));
  (* srl_bus_name = "inst/\gt_wrapper_i/aurora_multi_gt_i/gt0_aurora_i/cpllpd_wait_reg " *) 
  (* srl_name = "inst/\gt_wrapper_i/aurora_multi_gt_i/gt0_aurora_i/cpllpd_wait_reg[63]_srl32 " *) 
  SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
    \cpllpd_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(\cpllpd_wait_reg[31]_srl32_n_1 ),
        .Q(\NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllpd_wait_reg[63]_srl32_n_1 ));
  (* srl_bus_name = "inst/\gt_wrapper_i/aurora_multi_gt_i/gt0_aurora_i/cpllpd_wait_reg " *) 
  (* srl_name = "inst/\gt_wrapper_i/aurora_multi_gt_i/gt0_aurora_i/cpllpd_wait_reg[94]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h7FFFFFFF)) 
    \cpllpd_wait_reg[94]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(\cpllpd_wait_reg[63]_srl32_n_1 ),
        .Q(\cpllpd_wait_reg[94]_srl31_n_0 ),
        .Q31(\NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \cpllpd_wait_reg[95] 
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[94]_srl31_n_0 ),
        .Q(cpll_pd_i),
        .R(1'b0));
  (* srl_bus_name = "inst/\gt_wrapper_i/aurora_multi_gt_i/gt0_aurora_i/cpllreset_wait_reg " *) 
  (* srl_name = "inst/\gt_wrapper_i/aurora_multi_gt_i/gt0_aurora_i/cpllreset_wait_reg[126]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[126]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(\cpllreset_wait_reg[95]_srl32_n_1 ),
        .Q(\cpllreset_wait_reg[126]_srl31_n_0 ),
        .Q31(\NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cpllreset_wait_reg[127] 
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(\cpllreset_wait_reg[126]_srl31_n_0 ),
        .Q(cpllreset_ovrd_i),
        .R(1'b0));
  (* srl_bus_name = "inst/\gt_wrapper_i/aurora_multi_gt_i/gt0_aurora_i/cpllreset_wait_reg " *) 
  (* srl_name = "inst/\gt_wrapper_i/aurora_multi_gt_i/gt0_aurora_i/cpllreset_wait_reg[31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h000000FF)) 
    \cpllreset_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(1'b0),
        .Q(\NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[31]_srl32_n_1 ));
  (* srl_bus_name = "inst/\gt_wrapper_i/aurora_multi_gt_i/gt0_aurora_i/cpllreset_wait_reg " *) 
  (* srl_name = "inst/\gt_wrapper_i/aurora_multi_gt_i/gt0_aurora_i/cpllreset_wait_reg[63]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(\cpllreset_wait_reg[31]_srl32_n_1 ),
        .Q(\NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[63]_srl32_n_1 ));
  (* srl_bus_name = "inst/\gt_wrapper_i/aurora_multi_gt_i/gt0_aurora_i/cpllreset_wait_reg " *) 
  (* srl_name = "inst/\gt_wrapper_i/aurora_multi_gt_i/gt0_aurora_i/cpllreset_wait_reg[95]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[95]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(\cpllreset_wait_reg[63]_srl32_n_1 ),
        .Q(\NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[95]_srl32_n_1 ));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(flag),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_sync6),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    flag2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(flag2_reg_0),
        .Q(flag2),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB4)) 
    flag_i_1
       (.I0(ack_flag),
        .I1(cpll_reset_i),
        .I2(flag),
        .O(flag_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    flag_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(flag_i_1_n_0),
        .Q(flag),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(2),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(7),
    .CHAN_BOND_SEQ_1_1(10'b0101111100),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b0001),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b0000),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("TRUE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(31),
    .CLK_COR_MIN_LAT(24),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0111110111),
    .CLK_COR_SEQ_1_2(10'b0111110111),
    .CLK_COR_SEQ_1_3(10'b0111110111),
    .CLK_COR_SEQ_1_4(10'b0111110111),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0100000000),
    .CLK_COR_SEQ_2_3(10'b0100000000),
    .CLK_COR_SEQ_2_4(10'b0100000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(4),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h19),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h00018480),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FULL"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(61),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(4),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h03000023FF20400020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(5),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(40),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0954),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_INT_DATAWIDTH(1),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b100),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b100),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b001),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(5),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(40),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(1),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
    gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(gtxe2_i_n_0),
        .CPLLLOCK(tx_lock),
        .CPLLLOCKDETCLK(init_clk_in),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(cpll_pd_i),
        .CPLLREFCLKLOST(gt_pllrefclklost_i),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(cpll_reset_i_0),
        .DMONITOROUT({gtxe2_i_n_177,gtxe2_i_n_178,gtxe2_i_n_179,gtxe2_i_n_180,gtxe2_i_n_181,gtxe2_i_n_182,gtxe2_i_n_183,gtxe2_i_n_184}),
        .DRPADDR(drpaddr_in),
        .DRPCLK(drpclk_in),
        .DRPDI(drpdi_in),
        .DRPDO(drpdo_out),
        .DRPEN(drpen_in),
        .DRPRDY(drprdy_out),
        .DRPWE(drpwe_in),
        .EYESCANDATAERROR(gtxe2_i_n_4),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(gt_refclk1),
        .GTREFCLK1(1'b0),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(SR),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .GTTXRESET(gt_tx_reset_i),
        .GTXRXN(rxn),
        .GTXRXP(rxp),
        .GTXTXN(txn),
        .GTXTXP(txp),
        .LOOPBACK(loopback),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt_qpllclk_quad1_in),
        .QPLLREFCLK(gt_qpllrefclk_quad1_in),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({rx_buf_err_i,gtxe2_i_n_83,gtxe2_i_n_84}),
        .RXBYTEISALIGNED(gtxe2_i_n_9),
        .RXBYTEREALIGN(rx_realign_i),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(gtxe2_i_n_11),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:4],D}),
        .RXCHARISK({NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:4],RXCHARISK}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT({gtxe2_i_n_78,gtxe2_i_n_79}),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gtxe2_i_n_16),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:32],RXDATA}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(gt_rxdfelfhold_i),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(gt_rxdfelfhold_i),
        .RXDFELFOVRDEN(1'b1),
        .RXDFELPMRESET(1'b0),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR({NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:4],RXDISPERR[1],rx_disp_err_i,RXDISPERR[0]}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(1'b0),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(ena_comma_align_i),
        .RXMONITOROUT({gtxe2_i_n_170,gtxe2_i_n_171,gtxe2_i_n_172,gtxe2_i_n_173,gtxe2_i_n_174,gtxe2_i_n_175,gtxe2_i_n_176}),
        .RXMONITORSEL({1'b0,1'b0}),
        .RXNOTINTABLE({NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:4],RXNOTINTABLE[1],rx_not_in_table_i,RXNOTINTABLE[0]}),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gtxe2_i_n_23),
        .RXOUTCLKFABRIC(NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(ena_comma_align_i),
        .RXPCSRESET(1'b0),
        .RXPD({power_down,power_down}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPOLARITY(rx_polarity_i),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(gtxe2_i_n_27),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(init_clk_in_0),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS(NLW_gtxe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXUSERRDY(gt_rxuserrdy_i),
        .RXUSRCLK(sync_clk),
        .RXUSRCLK2(user_clk),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({tx_buf_err_i,gtxe2_i_n_81}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,TXCHARISK}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,TXDATA}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(power_down),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(tx_out_clk),
        .TXOUTCLKFABRIC(gtxe2_i_n_38),
        .TXOUTCLKPCS(gtxe2_i_n_39),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({power_down,power_down}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(init_clk_in_1),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL({1'b0,1'b0}),
        .TXUSERRDY(gt_txuserrdy_i),
        .TXUSRCLK(sync_clk),
        .TXUSRCLK2(user_clk));
  LUT3 #(
    .INIT(8'hFE)) 
    hard_err_gt_i_1
       (.I0(rx_realign_i),
        .I1(tx_buf_err_i),
        .I2(rx_buf_err_i),
        .O(hard_err_gt0));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'h0F0F0F0E)) 
    reset_count_r_i_3
       (.I0(rx_disp_err_i[2]),
        .I1(rx_not_in_table_i[2]),
        .I2(tx_reset_i),
        .I3(rx_disp_err_i[1]),
        .I4(rx_not_in_table_i[1]),
        .O(rst_r_reg));
  LUT2 #(
    .INIT(4'hE)) 
    \soft_err_r[0]_i_2 
       (.I0(RXDISPERR[0]),
        .I1(RXNOTINTABLE[0]),
        .O(init_clk_in_4));
  LUT2 #(
    .INIT(4'hE)) 
    \soft_err_r[1]_i_1 
       (.I0(rx_disp_err_i[1]),
        .I1(rx_not_in_table_i[1]),
        .O(init_clk_in_2));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \soft_err_r[2]_i_1 
       (.I0(rx_disp_err_i[2]),
        .I1(rx_not_in_table_i[2]),
        .O(init_clk_in_3));
  LUT2 #(
    .INIT(4'hE)) 
    \soft_err_r[3]_i_1 
       (.I0(RXDISPERR[1]),
        .I1(RXNOTINTABLE[1]),
        .O(init_clk_in_5));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_control_bits_r[2]_i_1 
       (.I0(RXCHARISK[1]),
        .I1(\left_align_select_r_reg[1]_4 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(RXCHARISK[0]),
        .I4(\word_aligned_control_bits_r_reg[2] ),
        .I5(RXCHARISK[2]),
        .O(\left_align_select_r_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_control_bits_r[3]_i_1 
       (.I0(RXCHARISK[2]),
        .I1(\left_align_select_r_reg[1]_4 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(RXCHARISK[1]),
        .I4(RXCHARISK[0]),
        .I5(RXCHARISK[3]),
        .O(\left_align_select_r_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[16]_i_1 
       (.I0(RXDATA[15]),
        .I1(\left_align_select_r_reg[1]_4 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(RXDATA[7]),
        .I4(\word_aligned_data_r_reg[16] [7]),
        .I5(RXDATA[23]),
        .O(\left_align_select_r_reg[1] [7]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[17]_i_1 
       (.I0(RXDATA[14]),
        .I1(\left_align_select_r_reg[1]_4 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(RXDATA[6]),
        .I4(\word_aligned_data_r_reg[16] [6]),
        .I5(RXDATA[22]),
        .O(\left_align_select_r_reg[1] [6]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[18]_i_1 
       (.I0(RXDATA[13]),
        .I1(\left_align_select_r_reg[1]_4 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(RXDATA[5]),
        .I4(\word_aligned_data_r_reg[16] [5]),
        .I5(RXDATA[21]),
        .O(\left_align_select_r_reg[1] [5]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[19]_i_1 
       (.I0(RXDATA[12]),
        .I1(\left_align_select_r_reg[1]_4 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(RXDATA[4]),
        .I4(\word_aligned_data_r_reg[16] [4]),
        .I5(RXDATA[20]),
        .O(\left_align_select_r_reg[1] [4]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[20]_i_1 
       (.I0(RXDATA[11]),
        .I1(\left_align_select_r_reg[1]_4 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(RXDATA[3]),
        .I4(\word_aligned_data_r_reg[16] [3]),
        .I5(RXDATA[19]),
        .O(\left_align_select_r_reg[1] [3]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[21]_i_1 
       (.I0(RXDATA[10]),
        .I1(\left_align_select_r_reg[1]_4 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(RXDATA[2]),
        .I4(\word_aligned_data_r_reg[16] [2]),
        .I5(RXDATA[18]),
        .O(\left_align_select_r_reg[1] [2]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[22]_i_1 
       (.I0(RXDATA[9]),
        .I1(\left_align_select_r_reg[1]_4 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(RXDATA[1]),
        .I4(\word_aligned_data_r_reg[16] [1]),
        .I5(RXDATA[17]),
        .O(\left_align_select_r_reg[1] [1]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[23]_i_1 
       (.I0(RXDATA[8]),
        .I1(\left_align_select_r_reg[1]_4 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(RXDATA[0]),
        .I4(\word_aligned_data_r_reg[16] [0]),
        .I5(RXDATA[16]),
        .O(\left_align_select_r_reg[1] [0]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[24]_i_1 
       (.I0(RXDATA[23]),
        .I1(\left_align_select_r_reg[1]_4 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(RXDATA[15]),
        .I4(RXDATA[7]),
        .I5(RXDATA[31]),
        .O(\left_align_select_r_reg[1]_0 [7]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[25]_i_1 
       (.I0(RXDATA[22]),
        .I1(\left_align_select_r_reg[1]_4 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(RXDATA[14]),
        .I4(RXDATA[6]),
        .I5(RXDATA[30]),
        .O(\left_align_select_r_reg[1]_0 [6]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[26]_i_1 
       (.I0(RXDATA[21]),
        .I1(\left_align_select_r_reg[1]_4 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(RXDATA[13]),
        .I4(RXDATA[5]),
        .I5(RXDATA[29]),
        .O(\left_align_select_r_reg[1]_0 [5]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[27]_i_1 
       (.I0(RXDATA[20]),
        .I1(\left_align_select_r_reg[1]_4 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(RXDATA[12]),
        .I4(RXDATA[4]),
        .I5(RXDATA[28]),
        .O(\left_align_select_r_reg[1]_0 [4]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[28]_i_1 
       (.I0(RXDATA[19]),
        .I1(\left_align_select_r_reg[1]_4 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(RXDATA[11]),
        .I4(RXDATA[3]),
        .I5(RXDATA[27]),
        .O(\left_align_select_r_reg[1]_0 [3]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[29]_i_1 
       (.I0(RXDATA[18]),
        .I1(\left_align_select_r_reg[1]_4 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(RXDATA[10]),
        .I4(RXDATA[2]),
        .I5(RXDATA[26]),
        .O(\left_align_select_r_reg[1]_0 [2]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[30]_i_1 
       (.I0(RXDATA[17]),
        .I1(\left_align_select_r_reg[1]_4 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(RXDATA[9]),
        .I4(RXDATA[1]),
        .I5(RXDATA[25]),
        .O(\left_align_select_r_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \word_aligned_data_r[31]_i_1 
       (.I0(RXDATA[16]),
        .I1(\left_align_select_r_reg[1]_4 ),
        .I2(\left_align_select_r_reg[0]_0 ),
        .I3(RXDATA[8]),
        .I4(RXDATA[0]),
        .I5(RXDATA[24]),
        .O(\left_align_select_r_reg[1]_0 [0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_hotplug
   (link_reset_out,
    user_clk,
    init_clk_in,
    SR,
    D);
  output link_reset_out;
  input user_clk;
  input init_clk_in;
  input [0:0]SR;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]SR;
  wire cc_sync;
  wire \count_for_reset_r[0]_i_2_n_0 ;
  wire [25:0]count_for_reset_r_reg;
  wire \count_for_reset_r_reg[0]_i_1_n_0 ;
  wire \count_for_reset_r_reg[0]_i_1_n_1 ;
  wire \count_for_reset_r_reg[0]_i_1_n_2 ;
  wire \count_for_reset_r_reg[0]_i_1_n_3 ;
  wire \count_for_reset_r_reg[0]_i_1_n_4 ;
  wire \count_for_reset_r_reg[0]_i_1_n_5 ;
  wire \count_for_reset_r_reg[0]_i_1_n_6 ;
  wire \count_for_reset_r_reg[0]_i_1_n_7 ;
  wire \count_for_reset_r_reg[12]_i_1_n_0 ;
  wire \count_for_reset_r_reg[12]_i_1_n_1 ;
  wire \count_for_reset_r_reg[12]_i_1_n_2 ;
  wire \count_for_reset_r_reg[12]_i_1_n_3 ;
  wire \count_for_reset_r_reg[12]_i_1_n_4 ;
  wire \count_for_reset_r_reg[12]_i_1_n_5 ;
  wire \count_for_reset_r_reg[12]_i_1_n_6 ;
  wire \count_for_reset_r_reg[12]_i_1_n_7 ;
  wire \count_for_reset_r_reg[16]_i_1_n_0 ;
  wire \count_for_reset_r_reg[16]_i_1_n_1 ;
  wire \count_for_reset_r_reg[16]_i_1_n_2 ;
  wire \count_for_reset_r_reg[16]_i_1_n_3 ;
  wire \count_for_reset_r_reg[16]_i_1_n_4 ;
  wire \count_for_reset_r_reg[16]_i_1_n_5 ;
  wire \count_for_reset_r_reg[16]_i_1_n_6 ;
  wire \count_for_reset_r_reg[16]_i_1_n_7 ;
  wire \count_for_reset_r_reg[20]_i_1_n_0 ;
  wire \count_for_reset_r_reg[20]_i_1_n_1 ;
  wire \count_for_reset_r_reg[20]_i_1_n_2 ;
  wire \count_for_reset_r_reg[20]_i_1_n_3 ;
  wire \count_for_reset_r_reg[20]_i_1_n_4 ;
  wire \count_for_reset_r_reg[20]_i_1_n_5 ;
  wire \count_for_reset_r_reg[20]_i_1_n_6 ;
  wire \count_for_reset_r_reg[20]_i_1_n_7 ;
  wire \count_for_reset_r_reg[24]_i_1_n_3 ;
  wire \count_for_reset_r_reg[24]_i_1_n_6 ;
  wire \count_for_reset_r_reg[24]_i_1_n_7 ;
  wire \count_for_reset_r_reg[4]_i_1_n_0 ;
  wire \count_for_reset_r_reg[4]_i_1_n_1 ;
  wire \count_for_reset_r_reg[4]_i_1_n_2 ;
  wire \count_for_reset_r_reg[4]_i_1_n_3 ;
  wire \count_for_reset_r_reg[4]_i_1_n_4 ;
  wire \count_for_reset_r_reg[4]_i_1_n_5 ;
  wire \count_for_reset_r_reg[4]_i_1_n_6 ;
  wire \count_for_reset_r_reg[4]_i_1_n_7 ;
  wire \count_for_reset_r_reg[8]_i_1_n_0 ;
  wire \count_for_reset_r_reg[8]_i_1_n_1 ;
  wire \count_for_reset_r_reg[8]_i_1_n_2 ;
  wire \count_for_reset_r_reg[8]_i_1_n_3 ;
  wire \count_for_reset_r_reg[8]_i_1_n_4 ;
  wire \count_for_reset_r_reg[8]_i_1_n_5 ;
  wire \count_for_reset_r_reg[8]_i_1_n_6 ;
  wire \count_for_reset_r_reg[8]_i_1_n_7 ;
  wire init_clk_in;
  wire link_reset_0;
  wire link_reset_0_i_1_n_0;
  wire link_reset_0_i_2_n_0;
  wire link_reset_0_i_3_n_0;
  wire link_reset_0_i_4_n_0;
  wire link_reset_0_i_5_n_0;
  wire link_reset_0_i_6_n_0;
  wire link_reset_out;
  wire [7:0]rx_cc_extend_r;
  wire rx_cc_extend_r2;
  wire rx_cc_extend_r2_i_1_n_0;
  wire rx_cc_extend_r2_i_2_n_0;
  wire user_clk;
  wire [3:1]\NLW_count_for_reset_r_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_for_reset_r_reg[24]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_for_reset_r[0]_i_2 
       (.I0(count_for_reset_r_reg[0]),
        .O(\count_for_reset_r[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[0] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[0]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[0]),
        .R(cc_sync));
  CARRY4 \count_for_reset_r_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_for_reset_r_reg[0]_i_1_n_0 ,\count_for_reset_r_reg[0]_i_1_n_1 ,\count_for_reset_r_reg[0]_i_1_n_2 ,\count_for_reset_r_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_for_reset_r_reg[0]_i_1_n_4 ,\count_for_reset_r_reg[0]_i_1_n_5 ,\count_for_reset_r_reg[0]_i_1_n_6 ,\count_for_reset_r_reg[0]_i_1_n_7 }),
        .S({count_for_reset_r_reg[3:1],\count_for_reset_r[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[10] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[8]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[10]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[11] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[8]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[11]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[12] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[12]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[12]),
        .R(cc_sync));
  CARRY4 \count_for_reset_r_reg[12]_i_1 
       (.CI(\count_for_reset_r_reg[8]_i_1_n_0 ),
        .CO({\count_for_reset_r_reg[12]_i_1_n_0 ,\count_for_reset_r_reg[12]_i_1_n_1 ,\count_for_reset_r_reg[12]_i_1_n_2 ,\count_for_reset_r_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_for_reset_r_reg[12]_i_1_n_4 ,\count_for_reset_r_reg[12]_i_1_n_5 ,\count_for_reset_r_reg[12]_i_1_n_6 ,\count_for_reset_r_reg[12]_i_1_n_7 }),
        .S(count_for_reset_r_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[13] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[12]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[13]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[14] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[12]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[14]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[15] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[12]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[15]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[16] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[16]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[16]),
        .R(cc_sync));
  CARRY4 \count_for_reset_r_reg[16]_i_1 
       (.CI(\count_for_reset_r_reg[12]_i_1_n_0 ),
        .CO({\count_for_reset_r_reg[16]_i_1_n_0 ,\count_for_reset_r_reg[16]_i_1_n_1 ,\count_for_reset_r_reg[16]_i_1_n_2 ,\count_for_reset_r_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_for_reset_r_reg[16]_i_1_n_4 ,\count_for_reset_r_reg[16]_i_1_n_5 ,\count_for_reset_r_reg[16]_i_1_n_6 ,\count_for_reset_r_reg[16]_i_1_n_7 }),
        .S(count_for_reset_r_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[17] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[16]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[17]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[18] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[16]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[18]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[19] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[16]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[19]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[1] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[0]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[1]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[20] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[20]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[20]),
        .R(cc_sync));
  CARRY4 \count_for_reset_r_reg[20]_i_1 
       (.CI(\count_for_reset_r_reg[16]_i_1_n_0 ),
        .CO({\count_for_reset_r_reg[20]_i_1_n_0 ,\count_for_reset_r_reg[20]_i_1_n_1 ,\count_for_reset_r_reg[20]_i_1_n_2 ,\count_for_reset_r_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_for_reset_r_reg[20]_i_1_n_4 ,\count_for_reset_r_reg[20]_i_1_n_5 ,\count_for_reset_r_reg[20]_i_1_n_6 ,\count_for_reset_r_reg[20]_i_1_n_7 }),
        .S(count_for_reset_r_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[21] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[20]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[21]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[22] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[20]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[22]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[23] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[20]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[23]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[24] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[24]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[24]),
        .R(cc_sync));
  CARRY4 \count_for_reset_r_reg[24]_i_1 
       (.CI(\count_for_reset_r_reg[20]_i_1_n_0 ),
        .CO({\NLW_count_for_reset_r_reg[24]_i_1_CO_UNCONNECTED [3:1],\count_for_reset_r_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_for_reset_r_reg[24]_i_1_O_UNCONNECTED [3:2],\count_for_reset_r_reg[24]_i_1_n_6 ,\count_for_reset_r_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,count_for_reset_r_reg[25:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[25] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[24]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[25]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[2] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[0]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[2]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[3] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[0]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[3]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[4] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[4]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[4]),
        .R(cc_sync));
  CARRY4 \count_for_reset_r_reg[4]_i_1 
       (.CI(\count_for_reset_r_reg[0]_i_1_n_0 ),
        .CO({\count_for_reset_r_reg[4]_i_1_n_0 ,\count_for_reset_r_reg[4]_i_1_n_1 ,\count_for_reset_r_reg[4]_i_1_n_2 ,\count_for_reset_r_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_for_reset_r_reg[4]_i_1_n_4 ,\count_for_reset_r_reg[4]_i_1_n_5 ,\count_for_reset_r_reg[4]_i_1_n_6 ,\count_for_reset_r_reg[4]_i_1_n_7 }),
        .S(count_for_reset_r_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[5] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[4]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[5]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[6] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[4]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[6]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[7] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[4]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[7]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[8] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[8]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[8]),
        .R(cc_sync));
  CARRY4 \count_for_reset_r_reg[8]_i_1 
       (.CI(\count_for_reset_r_reg[4]_i_1_n_0 ),
        .CO({\count_for_reset_r_reg[8]_i_1_n_0 ,\count_for_reset_r_reg[8]_i_1_n_1 ,\count_for_reset_r_reg[8]_i_1_n_2 ,\count_for_reset_r_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_for_reset_r_reg[8]_i_1_n_4 ,\count_for_reset_r_reg[8]_i_1_n_5 ,\count_for_reset_r_reg[8]_i_1_n_6 ,\count_for_reset_r_reg[8]_i_1_n_7 }),
        .S(count_for_reset_r_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[9] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[8]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[9]),
        .R(cc_sync));
  LUT5 #(
    .INIT(32'h80000000)) 
    link_reset_0_i_1
       (.I0(link_reset_0_i_2_n_0),
        .I1(link_reset_0_i_3_n_0),
        .I2(link_reset_0_i_4_n_0),
        .I3(link_reset_0_i_5_n_0),
        .I4(link_reset_0_i_6_n_0),
        .O(link_reset_0_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    link_reset_0_i_2
       (.I0(count_for_reset_r_reg[7]),
        .I1(count_for_reset_r_reg[6]),
        .I2(count_for_reset_r_reg[5]),
        .O(link_reset_0_i_2_n_0));
  LUT5 #(
    .INIT(32'h78F8F8F8)) 
    link_reset_0_i_3
       (.I0(count_for_reset_r_reg[2]),
        .I1(count_for_reset_r_reg[3]),
        .I2(count_for_reset_r_reg[4]),
        .I3(count_for_reset_r_reg[1]),
        .I4(count_for_reset_r_reg[0]),
        .O(link_reset_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    link_reset_0_i_4
       (.I0(count_for_reset_r_reg[16]),
        .I1(count_for_reset_r_reg[17]),
        .I2(count_for_reset_r_reg[14]),
        .I3(count_for_reset_r_reg[15]),
        .I4(count_for_reset_r_reg[19]),
        .I5(count_for_reset_r_reg[18]),
        .O(link_reset_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    link_reset_0_i_5
       (.I0(count_for_reset_r_reg[10]),
        .I1(count_for_reset_r_reg[11]),
        .I2(count_for_reset_r_reg[8]),
        .I3(count_for_reset_r_reg[9]),
        .I4(count_for_reset_r_reg[13]),
        .I5(count_for_reset_r_reg[12]),
        .O(link_reset_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    link_reset_0_i_6
       (.I0(count_for_reset_r_reg[22]),
        .I1(count_for_reset_r_reg[23]),
        .I2(count_for_reset_r_reg[20]),
        .I3(count_for_reset_r_reg[21]),
        .I4(count_for_reset_r_reg[25]),
        .I5(count_for_reset_r_reg[24]),
        .O(link_reset_0_i_6_n_0));
  FDRE link_reset_0_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_0_i_1_n_0),
        .Q(link_reset_0),
        .R(1'b0));
  FDRE \link_reset_r_reg[0] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_0),
        .Q(link_reset_out),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_19 rx_cc_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(cc_sync),
        .rx_cc_extend_r2(rx_cc_extend_r2),
        .user_clk(user_clk));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    rx_cc_extend_r2_i_1
       (.I0(rx_cc_extend_r[2]),
        .I1(rx_cc_extend_r[3]),
        .I2(rx_cc_extend_r[0]),
        .I3(rx_cc_extend_r[1]),
        .I4(rx_cc_extend_r2_i_2_n_0),
        .O(rx_cc_extend_r2_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rx_cc_extend_r2_i_2
       (.I0(rx_cc_extend_r[5]),
        .I1(rx_cc_extend_r[4]),
        .I2(rx_cc_extend_r[7]),
        .I3(rx_cc_extend_r[6]),
        .O(rx_cc_extend_r2_i_2_n_0));
  FDRE rx_cc_extend_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r2_i_1_n_0),
        .Q(rx_cc_extend_r2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[1]),
        .Q(rx_cc_extend_r[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[2]),
        .Q(rx_cc_extend_r[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[3]),
        .Q(rx_cc_extend_r[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[4]),
        .Q(rx_cc_extend_r[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[5]),
        .Q(rx_cc_extend_r[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[6]),
        .Q(rx_cc_extend_r[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[7]),
        .Q(rx_cc_extend_r[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D),
        .Q(rx_cc_extend_r[7]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_multi_gt
   (tx_lock,
    drprdy_out,
    txn,
    txp,
    rx_realign_i,
    init_clk_in_0,
    tx_out_clk,
    init_clk_in_1,
    drpdo_out,
    RXDATA,
    D,
    RXCHARISK,
    RXDISPERR,
    RXNOTINTABLE,
    ack_flag,
    rst_r_reg,
    init_clk_in_2,
    init_clk_in_3,
    init_clk_in_4,
    init_clk_in_5,
    \left_align_select_r_reg[1] ,
    \left_align_select_r_reg[1]_0 ,
    \left_align_select_r_reg[1]_1 ,
    \left_align_select_r_reg[1]_2 ,
    hard_err_gt0,
    \left_align_select_r_reg[0] ,
    \left_align_select_r_reg[1]_3 ,
    init_clk_in,
    drpclk_in,
    drpen_in,
    drpwe_in,
    gt_refclk1,
    SR,
    gt_tx_reset_i,
    rxn,
    rxp,
    gt_qpllclk_quad1_in,
    gt_qpllrefclk_quad1_in,
    gt_rxdfelfhold_i,
    ena_comma_align_i,
    rx_polarity_i,
    gt_rxuserrdy_i,
    sync_clk,
    user_clk,
    power_down,
    gt_txuserrdy_i,
    drpdi_in,
    loopback,
    TXDATA,
    TXCHARISK,
    drpaddr_in,
    flag2_reg,
    tx_reset_i,
    \left_align_select_r_reg[1]_4 ,
    \left_align_select_r_reg[0]_0 ,
    \word_aligned_data_r_reg[16] ,
    \word_aligned_control_bits_r_reg[2] ,
    cpll_reset_i,
    \left_align_select_r_reg[0]_1 );
  output tx_lock;
  output drprdy_out;
  output txn;
  output txp;
  output rx_realign_i;
  output init_clk_in_0;
  output tx_out_clk;
  output init_clk_in_1;
  output [15:0]drpdo_out;
  output [31:0]RXDATA;
  output [3:0]D;
  output [3:0]RXCHARISK;
  output [1:0]RXDISPERR;
  output [1:0]RXNOTINTABLE;
  output ack_flag;
  output rst_r_reg;
  output init_clk_in_2;
  output init_clk_in_3;
  output init_clk_in_4;
  output init_clk_in_5;
  output [7:0]\left_align_select_r_reg[1] ;
  output [7:0]\left_align_select_r_reg[1]_0 ;
  output \left_align_select_r_reg[1]_1 ;
  output \left_align_select_r_reg[1]_2 ;
  output hard_err_gt0;
  output \left_align_select_r_reg[0] ;
  output \left_align_select_r_reg[1]_3 ;
  input init_clk_in;
  input drpclk_in;
  input drpen_in;
  input drpwe_in;
  input gt_refclk1;
  input [0:0]SR;
  input gt_tx_reset_i;
  input rxn;
  input rxp;
  input gt_qpllclk_quad1_in;
  input gt_qpllrefclk_quad1_in;
  input gt_rxdfelfhold_i;
  input ena_comma_align_i;
  input rx_polarity_i;
  input gt_rxuserrdy_i;
  input sync_clk;
  input user_clk;
  input power_down;
  input gt_txuserrdy_i;
  input [15:0]drpdi_in;
  input [2:0]loopback;
  input [31:0]TXDATA;
  input [3:0]TXCHARISK;
  input [8:0]drpaddr_in;
  input flag2_reg;
  input tx_reset_i;
  input \left_align_select_r_reg[1]_4 ;
  input \left_align_select_r_reg[0]_0 ;
  input [7:0]\word_aligned_data_r_reg[16] ;
  input [0:0]\word_aligned_control_bits_r_reg[2] ;
  input cpll_reset_i;
  input \left_align_select_r_reg[0]_1 ;

  wire [3:0]D;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire [1:0]RXDISPERR;
  wire [1:0]RXNOTINTABLE;
  wire [0:0]SR;
  wire [3:0]TXCHARISK;
  wire [31:0]TXDATA;
  wire ack_flag;
  wire cpll_reset_i;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire flag2_reg;
  wire gt_qpllclk_quad1_in;
  wire gt_qpllrefclk_quad1_in;
  wire gt_refclk1;
  wire gt_rxdfelfhold_i;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire hard_err_gt0;
  wire init_clk_in;
  wire init_clk_in_0;
  wire init_clk_in_1;
  wire init_clk_in_2;
  wire init_clk_in_3;
  wire init_clk_in_4;
  wire init_clk_in_5;
  wire \left_align_select_r_reg[0] ;
  wire \left_align_select_r_reg[0]_0 ;
  wire \left_align_select_r_reg[0]_1 ;
  wire [7:0]\left_align_select_r_reg[1] ;
  wire [7:0]\left_align_select_r_reg[1]_0 ;
  wire \left_align_select_r_reg[1]_1 ;
  wire \left_align_select_r_reg[1]_2 ;
  wire \left_align_select_r_reg[1]_3 ;
  wire \left_align_select_r_reg[1]_4 ;
  wire [2:0]loopback;
  wire power_down;
  wire rst_r_reg;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rxn;
  wire rxp;
  wire sync_clk;
  wire tx_lock;
  wire tx_out_clk;
  wire tx_reset_i;
  wire txn;
  wire txp;
  wire user_clk;
  wire [0:0]\word_aligned_control_bits_r_reg[2] ;
  wire [7:0]\word_aligned_data_r_reg[16] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_gt gt0_aurora_i
       (.D(D),
        .RXCHARISK(RXCHARISK),
        .RXDATA(RXDATA),
        .RXDISPERR(RXDISPERR),
        .RXNOTINTABLE(RXNOTINTABLE),
        .SR(SR),
        .TXCHARISK(TXCHARISK),
        .TXDATA(TXDATA),
        .ack_flag(ack_flag),
        .cpll_reset_i(cpll_reset_i),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .ena_comma_align_i(ena_comma_align_i),
        .flag2_reg_0(flag2_reg),
        .gt_qpllclk_quad1_in(gt_qpllclk_quad1_in),
        .gt_qpllrefclk_quad1_in(gt_qpllrefclk_quad1_in),
        .gt_refclk1(gt_refclk1),
        .gt_rxdfelfhold_i(gt_rxdfelfhold_i),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .hard_err_gt0(hard_err_gt0),
        .init_clk_in(init_clk_in),
        .init_clk_in_0(init_clk_in_0),
        .init_clk_in_1(init_clk_in_1),
        .init_clk_in_2(init_clk_in_2),
        .init_clk_in_3(init_clk_in_3),
        .init_clk_in_4(init_clk_in_4),
        .init_clk_in_5(init_clk_in_5),
        .\left_align_select_r_reg[0] (\left_align_select_r_reg[0] ),
        .\left_align_select_r_reg[0]_0 (\left_align_select_r_reg[0]_0 ),
        .\left_align_select_r_reg[0]_1 (\left_align_select_r_reg[0]_1 ),
        .\left_align_select_r_reg[1] (\left_align_select_r_reg[1] ),
        .\left_align_select_r_reg[1]_0 (\left_align_select_r_reg[1]_0 ),
        .\left_align_select_r_reg[1]_1 (\left_align_select_r_reg[1]_1 ),
        .\left_align_select_r_reg[1]_2 (\left_align_select_r_reg[1]_2 ),
        .\left_align_select_r_reg[1]_3 (\left_align_select_r_reg[1]_3 ),
        .\left_align_select_r_reg[1]_4 (\left_align_select_r_reg[1]_4 ),
        .loopback(loopback),
        .power_down(power_down),
        .rst_r_reg(rst_r_reg),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .rxn(rxn),
        .rxp(rxp),
        .sync_clk(sync_clk),
        .tx_lock(tx_lock),
        .tx_out_clk(tx_out_clk),
        .tx_reset_i(tx_reset_i),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk),
        .\word_aligned_control_bits_r_reg[2] (\word_aligned_control_bits_r_reg[2] ),
        .\word_aligned_data_r_reg[16] (\word_aligned_data_r_reg[16] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_rx_startup_fsm
   (gtrxreset_i_0,
    gt_rxuserrdy_i,
    gt_rxdfelfhold_i,
    tx_lock,
    init_clk_in,
    user_clk,
    rxfsm_rxresetdone_r,
    AR,
    \FSM_sequential_rx_state_reg[0]_0 ,
    gt_txuserrdy_i);
  output gtrxreset_i_0;
  output gt_rxuserrdy_i;
  output gt_rxdfelfhold_i;
  input tx_lock;
  input init_clk_in;
  input user_clk;
  input rxfsm_rxresetdone_r;
  input [0:0]AR;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input gt_txuserrdy_i;

  wire [0:0]AR;
  wire \FSM_sequential_rx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[0]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_11_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_12_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_13_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_14_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_9_n_0 ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire RXDFEAGCHOLD_i_1_n_0;
  wire RXUSERRDY_i_1_n_0;
  wire adapt_count;
  wire \adapt_count[0]_i_3_n_0 ;
  wire \adapt_count[0]_i_4_n_0 ;
  wire \adapt_count[0]_i_5_n_0 ;
  wire \adapt_count[0]_i_6_n_0 ;
  wire \adapt_count[0]_i_7_n_0 ;
  wire \adapt_count[0]_i_8_n_0 ;
  wire \adapt_count[0]_i_9_n_0 ;
  wire [31:0]adapt_count_reg;
  wire \adapt_count_reg[0]_i_2_n_0 ;
  wire \adapt_count_reg[0]_i_2_n_1 ;
  wire \adapt_count_reg[0]_i_2_n_2 ;
  wire \adapt_count_reg[0]_i_2_n_3 ;
  wire \adapt_count_reg[0]_i_2_n_4 ;
  wire \adapt_count_reg[0]_i_2_n_5 ;
  wire \adapt_count_reg[0]_i_2_n_6 ;
  wire \adapt_count_reg[0]_i_2_n_7 ;
  wire \adapt_count_reg[12]_i_1_n_0 ;
  wire \adapt_count_reg[12]_i_1_n_1 ;
  wire \adapt_count_reg[12]_i_1_n_2 ;
  wire \adapt_count_reg[12]_i_1_n_3 ;
  wire \adapt_count_reg[12]_i_1_n_4 ;
  wire \adapt_count_reg[12]_i_1_n_5 ;
  wire \adapt_count_reg[12]_i_1_n_6 ;
  wire \adapt_count_reg[12]_i_1_n_7 ;
  wire \adapt_count_reg[16]_i_1_n_0 ;
  wire \adapt_count_reg[16]_i_1_n_1 ;
  wire \adapt_count_reg[16]_i_1_n_2 ;
  wire \adapt_count_reg[16]_i_1_n_3 ;
  wire \adapt_count_reg[16]_i_1_n_4 ;
  wire \adapt_count_reg[16]_i_1_n_5 ;
  wire \adapt_count_reg[16]_i_1_n_6 ;
  wire \adapt_count_reg[16]_i_1_n_7 ;
  wire \adapt_count_reg[20]_i_1_n_0 ;
  wire \adapt_count_reg[20]_i_1_n_1 ;
  wire \adapt_count_reg[20]_i_1_n_2 ;
  wire \adapt_count_reg[20]_i_1_n_3 ;
  wire \adapt_count_reg[20]_i_1_n_4 ;
  wire \adapt_count_reg[20]_i_1_n_5 ;
  wire \adapt_count_reg[20]_i_1_n_6 ;
  wire \adapt_count_reg[20]_i_1_n_7 ;
  wire \adapt_count_reg[24]_i_1_n_0 ;
  wire \adapt_count_reg[24]_i_1_n_1 ;
  wire \adapt_count_reg[24]_i_1_n_2 ;
  wire \adapt_count_reg[24]_i_1_n_3 ;
  wire \adapt_count_reg[24]_i_1_n_4 ;
  wire \adapt_count_reg[24]_i_1_n_5 ;
  wire \adapt_count_reg[24]_i_1_n_6 ;
  wire \adapt_count_reg[24]_i_1_n_7 ;
  wire \adapt_count_reg[28]_i_1_n_1 ;
  wire \adapt_count_reg[28]_i_1_n_2 ;
  wire \adapt_count_reg[28]_i_1_n_3 ;
  wire \adapt_count_reg[28]_i_1_n_4 ;
  wire \adapt_count_reg[28]_i_1_n_5 ;
  wire \adapt_count_reg[28]_i_1_n_6 ;
  wire \adapt_count_reg[28]_i_1_n_7 ;
  wire \adapt_count_reg[4]_i_1_n_0 ;
  wire \adapt_count_reg[4]_i_1_n_1 ;
  wire \adapt_count_reg[4]_i_1_n_2 ;
  wire \adapt_count_reg[4]_i_1_n_3 ;
  wire \adapt_count_reg[4]_i_1_n_4 ;
  wire \adapt_count_reg[4]_i_1_n_5 ;
  wire \adapt_count_reg[4]_i_1_n_6 ;
  wire \adapt_count_reg[4]_i_1_n_7 ;
  wire \adapt_count_reg[8]_i_1_n_0 ;
  wire \adapt_count_reg[8]_i_1_n_1 ;
  wire \adapt_count_reg[8]_i_1_n_2 ;
  wire \adapt_count_reg[8]_i_1_n_3 ;
  wire \adapt_count_reg[8]_i_1_n_4 ;
  wire \adapt_count_reg[8]_i_1_n_5 ;
  wire \adapt_count_reg[8]_i_1_n_6 ;
  wire \adapt_count_reg[8]_i_1_n_7 ;
  wire check_tlock_max_i_1_n_0;
  wire check_tlock_max_reg_n_0;
  wire gt_rxdfelfhold_i;
  wire gt_rxuserrdy_i;
  wire gt_txuserrdy_i;
  wire gtrxreset_i;
  wire gtrxreset_i_0;
  wire gtrxreset_i_i_1_n_0;
  wire init_clk_in;
  wire \init_wait_count[0]_i_1__0_n_0 ;
  wire \init_wait_count[7]_i_1__0_n_0 ;
  wire \init_wait_count[7]_i_3__0_n_0 ;
  wire \init_wait_count[7]_i_4__0_n_0 ;
  wire [7:0]init_wait_count_reg;
  wire init_wait_done_i_1__0_n_0;
  wire init_wait_done_i_2__0_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[9]_i_2__0_n_0 ;
  wire \mmcm_lock_count[9]_i_4__0_n_0 ;
  wire [9:0]mmcm_lock_count_reg;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_2__0_n_0;
  wire [7:1]p_0_in__1;
  wire [9:0]p_0_in__2;
  wire recclk_mon_count_reset;
  wire reset_time_out_i_2_n_0;
  wire reset_time_out_i_5_n_0;
  wire reset_time_out_reg_n_0;
  wire run_phase_alignment_int_i_1__0_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s2;
  wire run_phase_alignment_int_s3_reg_n_0;
  wire rx_fsm_reset_done_int;
  wire rx_fsm_reset_done_int_0;
  wire rx_fsm_reset_done_int_i_1_n_0;
  wire rx_fsm_reset_done_int_i_3_n_0;
  wire rx_fsm_reset_done_int_i_4_n_0;
  wire rx_fsm_reset_done_int_i_5_n_0;
  wire rx_fsm_reset_done_int_i_6_n_0;
  wire rx_fsm_reset_done_int_s3;
  wire [3:0]rx_state;
  wire rxfsm_rxresetdone_r;
  wire rxresetdone_s2;
  wire rxresetdone_s3;
  wire sync_cplllock_cdc_sync_n_0;
  wire sync_cplllock_cdc_sync_n_1;
  wire sync_cplllock_cdc_sync_n_2;
  wire sync_mmcm_lock_reclocked_cdc_sync_n_0;
  wire sync_mmcm_lock_reclocked_cdc_sync_n_1;
  wire sync_rx_fsm_reset_done_int_cdc_sync_n_0;
  wire time_out_100us_i_1_n_0;
  wire time_out_100us_i_2_n_0;
  wire time_out_100us_i_3_n_0;
  wire time_out_100us_i_4_n_0;
  wire time_out_100us_reg_n_0;
  wire time_out_1us_i_1_n_0;
  wire time_out_1us_i_2_n_0;
  wire time_out_1us_i_3_n_0;
  wire time_out_1us_i_4_n_0;
  wire time_out_1us_reg_n_0;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_i_2__0_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_adapt_i_1_n_0;
  wire time_out_adapt_i_2_n_0;
  wire time_out_adapt_i_3_n_0;
  wire time_out_adapt_i_4_n_0;
  wire time_out_adapt_i_5_n_0;
  wire time_out_adapt_i_6_n_0;
  wire time_out_adapt_i_7_n_0;
  wire time_out_adapt_reg_n_0;
  wire \time_out_counter[0]_i_1__0_n_0 ;
  wire \time_out_counter[0]_i_3_n_0 ;
  wire \time_out_counter[0]_i_4__0_n_0 ;
  wire \time_out_counter[0]_i_5_n_0 ;
  wire \time_out_counter[0]_i_6__0_n_0 ;
  wire [18:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2__0_n_0 ;
  wire \time_out_counter_reg[0]_i_2__0_n_1 ;
  wire \time_out_counter_reg[0]_i_2__0_n_2 ;
  wire \time_out_counter_reg[0]_i_2__0_n_3 ;
  wire \time_out_counter_reg[0]_i_2__0_n_4 ;
  wire \time_out_counter_reg[0]_i_2__0_n_5 ;
  wire \time_out_counter_reg[0]_i_2__0_n_6 ;
  wire \time_out_counter_reg[0]_i_2__0_n_7 ;
  wire \time_out_counter_reg[12]_i_1__0_n_0 ;
  wire \time_out_counter_reg[12]_i_1__0_n_1 ;
  wire \time_out_counter_reg[12]_i_1__0_n_2 ;
  wire \time_out_counter_reg[12]_i_1__0_n_3 ;
  wire \time_out_counter_reg[12]_i_1__0_n_4 ;
  wire \time_out_counter_reg[12]_i_1__0_n_5 ;
  wire \time_out_counter_reg[12]_i_1__0_n_6 ;
  wire \time_out_counter_reg[12]_i_1__0_n_7 ;
  wire \time_out_counter_reg[16]_i_1__0_n_2 ;
  wire \time_out_counter_reg[16]_i_1__0_n_3 ;
  wire \time_out_counter_reg[16]_i_1__0_n_5 ;
  wire \time_out_counter_reg[16]_i_1__0_n_6 ;
  wire \time_out_counter_reg[16]_i_1__0_n_7 ;
  wire \time_out_counter_reg[4]_i_1__0_n_0 ;
  wire \time_out_counter_reg[4]_i_1__0_n_1 ;
  wire \time_out_counter_reg[4]_i_1__0_n_2 ;
  wire \time_out_counter_reg[4]_i_1__0_n_3 ;
  wire \time_out_counter_reg[4]_i_1__0_n_4 ;
  wire \time_out_counter_reg[4]_i_1__0_n_5 ;
  wire \time_out_counter_reg[4]_i_1__0_n_6 ;
  wire \time_out_counter_reg[4]_i_1__0_n_7 ;
  wire \time_out_counter_reg[8]_i_1__0_n_0 ;
  wire \time_out_counter_reg[8]_i_1__0_n_1 ;
  wire \time_out_counter_reg[8]_i_1__0_n_2 ;
  wire \time_out_counter_reg[8]_i_1__0_n_3 ;
  wire \time_out_counter_reg[8]_i_1__0_n_4 ;
  wire \time_out_counter_reg[8]_i_1__0_n_5 ;
  wire \time_out_counter_reg[8]_i_1__0_n_6 ;
  wire \time_out_counter_reg[8]_i_1__0_n_7 ;
  wire time_out_wait_bypass_i_1__0_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire time_tlock_max_i_1_n_0;
  wire time_tlock_max_i_2_n_0;
  wire time_tlock_max_i_3_n_0;
  wire time_tlock_max_i_4_n_0;
  wire time_tlock_max_i_5_n_0;
  wire tx_lock;
  wire user_clk;
  wire \wait_bypass_count[0]_i_1__0_n_0 ;
  wire \wait_bypass_count[0]_i_2__0_n_0 ;
  wire \wait_bypass_count[0]_i_4__0_n_0 ;
  wire \wait_bypass_count[0]_i_5__0_n_0 ;
  wire \wait_bypass_count[0]_i_6__0_n_0 ;
  wire \wait_bypass_count[0]_i_7__0_n_0 ;
  wire [12:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3__0_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_7 ;
  wire \wait_time_cnt[0]_i_1_n_0 ;
  wire \wait_time_cnt[0]_i_2__0_n_0 ;
  wire \wait_time_cnt[0]_i_4__0_n_0 ;
  wire \wait_time_cnt[0]_i_5__0_n_0 ;
  wire \wait_time_cnt[0]_i_6__0_n_0 ;
  wire \wait_time_cnt[0]_i_7__0_n_0 ;
  wire \wait_time_cnt[0]_i_8__0_n_0 ;
  wire \wait_time_cnt[0]_i_9__0_n_0 ;
  wire \wait_time_cnt[12]_i_2__0_n_0 ;
  wire \wait_time_cnt[12]_i_3__0_n_0 ;
  wire \wait_time_cnt[12]_i_4__0_n_0 ;
  wire \wait_time_cnt[12]_i_5__0_n_0 ;
  wire \wait_time_cnt[4]_i_2__0_n_0 ;
  wire \wait_time_cnt[4]_i_3__0_n_0 ;
  wire \wait_time_cnt[4]_i_4__0_n_0 ;
  wire \wait_time_cnt[4]_i_5__0_n_0 ;
  wire \wait_time_cnt[8]_i_2__0_n_0 ;
  wire \wait_time_cnt[8]_i_3__0_n_0 ;
  wire \wait_time_cnt[8]_i_4__0_n_0 ;
  wire \wait_time_cnt[8]_i_5__0_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3__0_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_7 ;
  wire [3:3]\NLW_adapt_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFEFEFEF)) 
    \FSM_sequential_rx_state[0]_i_1 
       (.I0(\FSM_sequential_rx_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_rx_state[0]_i_3_n_0 ),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(rx_state[3]),
        .O(\FSM_sequential_rx_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2222AAAA00300000)) 
    \FSM_sequential_rx_state[0]_i_2 
       (.I0(time_out_2ms_reg_n_0),
        .I1(reset_time_out_reg_n_0),
        .I2(time_tlock_max),
        .I3(rx_state[3]),
        .I4(rx_state[2]),
        .I5(rx_state[1]),
        .O(\FSM_sequential_rx_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \FSM_sequential_rx_state[0]_i_3 
       (.I0(rx_state[3]),
        .I1(reset_time_out_reg_n_0),
        .I2(gt_rxuserrdy_i),
        .I3(time_out_100us_reg_n_0),
        .O(\FSM_sequential_rx_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01300330)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .I2(rx_state[1]),
        .I3(rx_state[0]),
        .I4(time_tlock_max),
        .I5(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .O(\FSM_sequential_rx_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3030203020202020)) 
    \FSM_sequential_rx_state[1]_i_2 
       (.I0(reset_time_out_reg_n_0),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(time_out_100us_reg_n_0),
        .I4(gt_rxuserrdy_i),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h010C0C0C01000C0C)) 
    \FSM_sequential_rx_state[2]_i_1 
       (.I0(time_out_2ms_reg_n_0),
        .I1(rx_state[2]),
        .I2(rx_state[3]),
        .I3(rx_state[1]),
        .I4(rx_state[0]),
        .I5(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_rx_state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[2]_i_2 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_tlock_max),
        .O(\FSM_sequential_rx_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_rx_state[3]_i_10 
       (.I0(wait_time_cnt_reg[12]),
        .I1(wait_time_cnt_reg[13]),
        .I2(wait_time_cnt_reg[10]),
        .I3(wait_time_cnt_reg[11]),
        .I4(wait_time_cnt_reg[15]),
        .I5(wait_time_cnt_reg[14]),
        .O(\FSM_sequential_rx_state[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_rx_state[3]_i_11 
       (.I0(rx_state[0]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .I3(wait_time_cnt_reg[3]),
        .O(\FSM_sequential_rx_state[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'h55AF00C0)) 
    \FSM_sequential_rx_state[3]_i_12 
       (.I0(gt_rxuserrdy_i),
        .I1(mmcm_lock_reclocked),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000000004400C400)) 
    \FSM_sequential_rx_state[3]_i_13 
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(time_out_2ms_reg_n_0),
        .I4(reset_time_out_reg_n_0),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_sequential_rx_state[3]_i_14 
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .O(\FSM_sequential_rx_state[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0F0F8FBF0F0)) 
    \FSM_sequential_rx_state[3]_i_2 
       (.I0(\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .I1(rx_state[0]),
        .I2(\FSM_sequential_rx_state[3]_i_8_n_0 ),
        .I3(time_out_wait_bypass_s3),
        .I4(rx_state[3]),
        .I5(rx_state[1]),
        .O(\FSM_sequential_rx_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rx_state[3]_i_3 
       (.I0(rx_state[0]),
        .I1(rx_state[1]),
        .O(\FSM_sequential_rx_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \FSM_sequential_rx_state[3]_i_4 
       (.I0(\FSM_sequential_rx_state[3]_i_9_n_0 ),
        .I1(\FSM_sequential_rx_state[3]_i_10_n_0 ),
        .I2(wait_time_cnt_reg[2]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[0]),
        .I5(\FSM_sequential_rx_state[3]_i_11_n_0 ),
        .O(\FSM_sequential_rx_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFFFEFEFE)) 
    \FSM_sequential_rx_state[3]_i_6 
       (.I0(\FSM_sequential_rx_state[3]_i_13_n_0 ),
        .I1(\FSM_sequential_rx_state[0]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_state[3]_i_14_n_0 ),
        .I3(\wait_time_cnt[0]_i_1_n_0 ),
        .I4(time_tlock_max),
        .I5(reset_time_out_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_rx_state[3]_i_7 
       (.I0(time_out_100us_reg_n_0),
        .I1(gt_rxuserrdy_i),
        .I2(reset_time_out_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8A000000)) 
    \FSM_sequential_rx_state[3]_i_8 
       (.I0(rx_state[2]),
        .I1(reset_time_out_reg_n_0),
        .I2(time_out_2ms_reg_n_0),
        .I3(rx_state[1]),
        .I4(rx_state[0]),
        .O(\FSM_sequential_rx_state[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_rx_state[3]_i_9 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[7]),
        .I2(wait_time_cnt_reg[4]),
        .I3(wait_time_cnt_reg[5]),
        .I4(wait_time_cnt_reg[9]),
        .I5(wait_time_cnt_reg[8]),
        .O(\FSM_sequential_rx_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[0] 
       (.C(init_clk_in),
        .CE(sync_cplllock_cdc_sync_n_0),
        .D(\FSM_sequential_rx_state[0]_i_1_n_0 ),
        .Q(rx_state[0]),
        .R(AR));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[1] 
       (.C(init_clk_in),
        .CE(sync_cplllock_cdc_sync_n_0),
        .D(\FSM_sequential_rx_state[1]_i_1_n_0 ),
        .Q(rx_state[1]),
        .R(AR));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[2] 
       (.C(init_clk_in),
        .CE(sync_cplllock_cdc_sync_n_0),
        .D(\FSM_sequential_rx_state[2]_i_1_n_0 ),
        .Q(rx_state[2]),
        .R(AR));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[3] 
       (.C(init_clk_in),
        .CE(sync_cplllock_cdc_sync_n_0),
        .D(\FSM_sequential_rx_state[3]_i_2_n_0 ),
        .Q(rx_state[3]),
        .R(AR));
  LUT6 #(
    .INIT(64'hFFFFFFFF00080000)) 
    RXDFEAGCHOLD_i_1
       (.I0(time_out_adapt_reg_n_0),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(rx_state[2]),
        .I4(rx_state[3]),
        .I5(gt_rxdfelfhold_i),
        .O(RXDFEAGCHOLD_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RXDFEAGCHOLD_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(RXDFEAGCHOLD_i_1_n_0),
        .Q(gt_rxdfelfhold_i),
        .R(AR));
  LUT6 #(
    .INIT(64'hFFFFFFCF00008000)) 
    RXUSERRDY_i_1
       (.I0(gt_txuserrdy_i),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(rx_state[2]),
        .I4(rx_state[3]),
        .I5(gt_rxuserrdy_i),
        .O(RXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RXUSERRDY_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(RXUSERRDY_i_1_n_0),
        .Q(gt_rxuserrdy_i),
        .R(AR));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \adapt_count[0]_i_1 
       (.I0(\adapt_count[0]_i_3_n_0 ),
        .I1(\adapt_count[0]_i_4_n_0 ),
        .I2(\adapt_count[0]_i_5_n_0 ),
        .I3(\adapt_count[0]_i_6_n_0 ),
        .I4(\adapt_count[0]_i_7_n_0 ),
        .I5(\adapt_count[0]_i_8_n_0 ),
        .O(adapt_count));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    \adapt_count[0]_i_3 
       (.I0(adapt_count_reg[12]),
        .I1(adapt_count_reg[13]),
        .I2(adapt_count_reg[11]),
        .I3(adapt_count_reg[10]),
        .I4(adapt_count_reg[8]),
        .I5(adapt_count_reg[9]),
        .O(\adapt_count[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \adapt_count[0]_i_4 
       (.I0(adapt_count_reg[19]),
        .I1(adapt_count_reg[18]),
        .I2(adapt_count_reg[16]),
        .I3(adapt_count_reg[17]),
        .I4(adapt_count_reg[15]),
        .I5(adapt_count_reg[14]),
        .O(\adapt_count[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \adapt_count[0]_i_5 
       (.I0(adapt_count_reg[30]),
        .I1(adapt_count_reg[31]),
        .I2(adapt_count_reg[28]),
        .I3(adapt_count_reg[29]),
        .I4(adapt_count_reg[27]),
        .I5(adapt_count_reg[26]),
        .O(\adapt_count[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \adapt_count[0]_i_6 
       (.I0(adapt_count_reg[24]),
        .I1(adapt_count_reg[25]),
        .I2(adapt_count_reg[22]),
        .I3(adapt_count_reg[23]),
        .I4(adapt_count_reg[21]),
        .I5(adapt_count_reg[20]),
        .O(\adapt_count[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \adapt_count[0]_i_7 
       (.I0(adapt_count_reg[0]),
        .I1(adapt_count_reg[1]),
        .O(\adapt_count[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    \adapt_count[0]_i_8 
       (.I0(adapt_count_reg[7]),
        .I1(adapt_count_reg[6]),
        .I2(adapt_count_reg[4]),
        .I3(adapt_count_reg[5]),
        .I4(adapt_count_reg[3]),
        .I5(adapt_count_reg[2]),
        .O(\adapt_count[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adapt_count[0]_i_9 
       (.I0(adapt_count_reg[0]),
        .O(\adapt_count[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[0] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[0]_i_2_n_7 ),
        .Q(adapt_count_reg[0]),
        .R(recclk_mon_count_reset));
  CARRY4 \adapt_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\adapt_count_reg[0]_i_2_n_0 ,\adapt_count_reg[0]_i_2_n_1 ,\adapt_count_reg[0]_i_2_n_2 ,\adapt_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\adapt_count_reg[0]_i_2_n_4 ,\adapt_count_reg[0]_i_2_n_5 ,\adapt_count_reg[0]_i_2_n_6 ,\adapt_count_reg[0]_i_2_n_7 }),
        .S({adapt_count_reg[3:1],\adapt_count[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[10] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[8]_i_1_n_5 ),
        .Q(adapt_count_reg[10]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[11] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[8]_i_1_n_4 ),
        .Q(adapt_count_reg[11]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[12] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[12]_i_1_n_7 ),
        .Q(adapt_count_reg[12]),
        .R(recclk_mon_count_reset));
  CARRY4 \adapt_count_reg[12]_i_1 
       (.CI(\adapt_count_reg[8]_i_1_n_0 ),
        .CO({\adapt_count_reg[12]_i_1_n_0 ,\adapt_count_reg[12]_i_1_n_1 ,\adapt_count_reg[12]_i_1_n_2 ,\adapt_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[12]_i_1_n_4 ,\adapt_count_reg[12]_i_1_n_5 ,\adapt_count_reg[12]_i_1_n_6 ,\adapt_count_reg[12]_i_1_n_7 }),
        .S(adapt_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[13] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[12]_i_1_n_6 ),
        .Q(adapt_count_reg[13]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[14] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[12]_i_1_n_5 ),
        .Q(adapt_count_reg[14]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[15] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[12]_i_1_n_4 ),
        .Q(adapt_count_reg[15]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[16] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[16]_i_1_n_7 ),
        .Q(adapt_count_reg[16]),
        .R(recclk_mon_count_reset));
  CARRY4 \adapt_count_reg[16]_i_1 
       (.CI(\adapt_count_reg[12]_i_1_n_0 ),
        .CO({\adapt_count_reg[16]_i_1_n_0 ,\adapt_count_reg[16]_i_1_n_1 ,\adapt_count_reg[16]_i_1_n_2 ,\adapt_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[16]_i_1_n_4 ,\adapt_count_reg[16]_i_1_n_5 ,\adapt_count_reg[16]_i_1_n_6 ,\adapt_count_reg[16]_i_1_n_7 }),
        .S(adapt_count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[17] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[16]_i_1_n_6 ),
        .Q(adapt_count_reg[17]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[18] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[16]_i_1_n_5 ),
        .Q(adapt_count_reg[18]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[19] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[16]_i_1_n_4 ),
        .Q(adapt_count_reg[19]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[1] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[0]_i_2_n_6 ),
        .Q(adapt_count_reg[1]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[20] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[20]_i_1_n_7 ),
        .Q(adapt_count_reg[20]),
        .R(recclk_mon_count_reset));
  CARRY4 \adapt_count_reg[20]_i_1 
       (.CI(\adapt_count_reg[16]_i_1_n_0 ),
        .CO({\adapt_count_reg[20]_i_1_n_0 ,\adapt_count_reg[20]_i_1_n_1 ,\adapt_count_reg[20]_i_1_n_2 ,\adapt_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[20]_i_1_n_4 ,\adapt_count_reg[20]_i_1_n_5 ,\adapt_count_reg[20]_i_1_n_6 ,\adapt_count_reg[20]_i_1_n_7 }),
        .S(adapt_count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[21] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[20]_i_1_n_6 ),
        .Q(adapt_count_reg[21]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[22] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[20]_i_1_n_5 ),
        .Q(adapt_count_reg[22]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[23] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[20]_i_1_n_4 ),
        .Q(adapt_count_reg[23]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[24] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[24]_i_1_n_7 ),
        .Q(adapt_count_reg[24]),
        .R(recclk_mon_count_reset));
  CARRY4 \adapt_count_reg[24]_i_1 
       (.CI(\adapt_count_reg[20]_i_1_n_0 ),
        .CO({\adapt_count_reg[24]_i_1_n_0 ,\adapt_count_reg[24]_i_1_n_1 ,\adapt_count_reg[24]_i_1_n_2 ,\adapt_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[24]_i_1_n_4 ,\adapt_count_reg[24]_i_1_n_5 ,\adapt_count_reg[24]_i_1_n_6 ,\adapt_count_reg[24]_i_1_n_7 }),
        .S(adapt_count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[25] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[24]_i_1_n_6 ),
        .Q(adapt_count_reg[25]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[26] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[24]_i_1_n_5 ),
        .Q(adapt_count_reg[26]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[27] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[24]_i_1_n_4 ),
        .Q(adapt_count_reg[27]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[28] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[28]_i_1_n_7 ),
        .Q(adapt_count_reg[28]),
        .R(recclk_mon_count_reset));
  CARRY4 \adapt_count_reg[28]_i_1 
       (.CI(\adapt_count_reg[24]_i_1_n_0 ),
        .CO({\NLW_adapt_count_reg[28]_i_1_CO_UNCONNECTED [3],\adapt_count_reg[28]_i_1_n_1 ,\adapt_count_reg[28]_i_1_n_2 ,\adapt_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[28]_i_1_n_4 ,\adapt_count_reg[28]_i_1_n_5 ,\adapt_count_reg[28]_i_1_n_6 ,\adapt_count_reg[28]_i_1_n_7 }),
        .S(adapt_count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[29] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[28]_i_1_n_6 ),
        .Q(adapt_count_reg[29]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[2] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[0]_i_2_n_5 ),
        .Q(adapt_count_reg[2]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[30] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[28]_i_1_n_5 ),
        .Q(adapt_count_reg[30]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[31] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[28]_i_1_n_4 ),
        .Q(adapt_count_reg[31]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[3] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[0]_i_2_n_4 ),
        .Q(adapt_count_reg[3]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[4] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[4]_i_1_n_7 ),
        .Q(adapt_count_reg[4]),
        .R(recclk_mon_count_reset));
  CARRY4 \adapt_count_reg[4]_i_1 
       (.CI(\adapt_count_reg[0]_i_2_n_0 ),
        .CO({\adapt_count_reg[4]_i_1_n_0 ,\adapt_count_reg[4]_i_1_n_1 ,\adapt_count_reg[4]_i_1_n_2 ,\adapt_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[4]_i_1_n_4 ,\adapt_count_reg[4]_i_1_n_5 ,\adapt_count_reg[4]_i_1_n_6 ,\adapt_count_reg[4]_i_1_n_7 }),
        .S(adapt_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[5] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[4]_i_1_n_6 ),
        .Q(adapt_count_reg[5]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[6] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[4]_i_1_n_5 ),
        .Q(adapt_count_reg[6]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[7] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[4]_i_1_n_4 ),
        .Q(adapt_count_reg[7]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[8] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[8]_i_1_n_7 ),
        .Q(adapt_count_reg[8]),
        .R(recclk_mon_count_reset));
  CARRY4 \adapt_count_reg[8]_i_1 
       (.CI(\adapt_count_reg[4]_i_1_n_0 ),
        .CO({\adapt_count_reg[8]_i_1_n_0 ,\adapt_count_reg[8]_i_1_n_1 ,\adapt_count_reg[8]_i_1_n_2 ,\adapt_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[8]_i_1_n_4 ,\adapt_count_reg[8]_i_1_n_5 ,\adapt_count_reg[8]_i_1_n_6 ,\adapt_count_reg[8]_i_1_n_7 }),
        .S(adapt_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[9] 
       (.C(init_clk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[8]_i_1_n_6 ),
        .Q(adapt_count_reg[9]),
        .R(recclk_mon_count_reset));
  FDSE #(
    .INIT(1'b0)) 
    adapt_count_reset_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(sync_cplllock_cdc_sync_n_2),
        .Q(recclk_mon_count_reset),
        .S(AR));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    check_tlock_max_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(rx_state[3]),
        .I4(check_tlock_max_reg_n_0),
        .O(check_tlock_max_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    check_tlock_max_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(check_tlock_max_i_1_n_0),
        .Q(check_tlock_max_reg_n_0),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'hFFEF0004)) 
    gtrxreset_i_i_1
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[3]),
        .I4(gtrxreset_i_0),
        .O(gtrxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtrxreset_i_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_i_i_1_n_0),
        .Q(gtrxreset_i_0),
        .R(AR));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_count_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[2]),
        .I4(init_wait_count_reg[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .I4(init_wait_count_reg[3]),
        .I5(init_wait_count_reg[5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \init_wait_count[6]_i_1__0 
       (.I0(\init_wait_count[7]_i_4__0_n_0 ),
        .I1(init_wait_count_reg[6]),
        .O(p_0_in__1[6]));
  LUT3 #(
    .INIT(8'hFE)) 
    \init_wait_count[7]_i_1__0 
       (.I0(\init_wait_count[7]_i_3__0_n_0 ),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .O(\init_wait_count[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \init_wait_count[7]_i_2__0 
       (.I0(init_wait_count_reg[6]),
        .I1(\init_wait_count[7]_i_4__0_n_0 ),
        .I2(init_wait_count_reg[7]),
        .O(p_0_in__1[7]));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \init_wait_count[7]_i_3__0 
       (.I0(init_wait_count_reg[6]),
        .I1(init_wait_count_reg[7]),
        .I2(init_wait_count_reg[4]),
        .I3(init_wait_count_reg[5]),
        .I4(init_wait_count_reg[3]),
        .I5(init_wait_count_reg[2]),
        .O(\init_wait_count[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \init_wait_count[7]_i_4__0 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .I4(init_wait_count_reg[3]),
        .I5(init_wait_count_reg[5]),
        .O(\init_wait_count[7]_i_4__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(init_clk_in),
        .CE(\init_wait_count[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(\init_wait_count[0]_i_1__0_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(init_clk_in),
        .CE(\init_wait_count[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(p_0_in__1[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(init_clk_in),
        .CE(\init_wait_count[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(p_0_in__1[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(init_clk_in),
        .CE(\init_wait_count[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(p_0_in__1[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(init_clk_in),
        .CE(\init_wait_count[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(p_0_in__1[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(init_clk_in),
        .CE(\init_wait_count[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(p_0_in__1[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(init_clk_in),
        .CE(\init_wait_count[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(p_0_in__1[6]),
        .Q(init_wait_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(init_clk_in),
        .CE(\init_wait_count[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(p_0_in__1[7]),
        .Q(init_wait_count_reg[7]));
  LUT4 #(
    .INIT(16'hFF02)) 
    init_wait_done_i_1__0
       (.I0(init_wait_done_i_2__0_n_0),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    init_wait_done_i_2__0
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[5]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[3]),
        .I4(init_wait_count_reg[7]),
        .I5(init_wait_count_reg[6]),
        .O(init_wait_done_i_2__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(AR),
        .D(init_wait_done_i_1__0_n_0),
        .Q(init_wait_done_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1__0 
       (.I0(mmcm_lock_count_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg[0]),
        .I1(mmcm_lock_count_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg[1]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \mmcm_lock_count[4]_i_1__0 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[2]),
        .I4(mmcm_lock_count_reg[4]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mmcm_lock_count[5]_i_1__0 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(p_0_in__2[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \mmcm_lock_count[6]_i_1__0 
       (.I0(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I1(mmcm_lock_count_reg[6]),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \mmcm_lock_count[7]_i_1__0 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I2(mmcm_lock_count_reg[7]),
        .O(p_0_in__2[7]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \mmcm_lock_count[8]_i_1__0 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I2(mmcm_lock_count_reg[6]),
        .I3(mmcm_lock_count_reg[8]),
        .O(p_0_in__2[8]));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \mmcm_lock_count[9]_i_2__0 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I2(mmcm_lock_count_reg[6]),
        .I3(mmcm_lock_count_reg[8]),
        .I4(mmcm_lock_count_reg[9]),
        .O(\mmcm_lock_count[9]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \mmcm_lock_count[9]_i_3__0 
       (.I0(mmcm_lock_count_reg[8]),
        .I1(mmcm_lock_count_reg[6]),
        .I2(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I3(mmcm_lock_count_reg[7]),
        .I4(mmcm_lock_count_reg[9]),
        .O(p_0_in__2[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \mmcm_lock_count[9]_i_4__0 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(\mmcm_lock_count[9]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[0]),
        .Q(mmcm_lock_count_reg[0]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[1]),
        .Q(mmcm_lock_count_reg[1]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[2]),
        .Q(mmcm_lock_count_reg[2]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[3]),
        .Q(mmcm_lock_count_reg[3]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[4]),
        .Q(mmcm_lock_count_reg[4]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[5]),
        .Q(mmcm_lock_count_reg[5]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[6]),
        .Q(mmcm_lock_count_reg[6]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[7]),
        .Q(mmcm_lock_count_reg[7]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[8] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[8]),
        .Q(mmcm_lock_count_reg[8]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[9] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[9]),
        .Q(mmcm_lock_count_reg[9]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    mmcm_lock_reclocked_i_2__0
       (.I0(mmcm_lock_count_reg[9]),
        .I1(mmcm_lock_count_reg[8]),
        .I2(mmcm_lock_count_reg[6]),
        .I3(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I4(mmcm_lock_count_reg[7]),
        .O(mmcm_lock_reclocked_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(sync_mmcm_lock_reclocked_cdc_sync_n_1),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0F0E0C0EC3CEC0CE)) 
    reset_time_out_i_2
       (.I0(\FSM_sequential_rx_state_reg[0]_0 ),
        .I1(rx_state[3]),
        .I2(rx_state[1]),
        .I3(rx_state[0]),
        .I4(mmcm_lock_reclocked),
        .I5(gt_rxuserrdy_i),
        .O(reset_time_out_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'h1)) 
    reset_time_out_i_4
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .O(gtrxreset_i));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'h34347674)) 
    reset_time_out_i_5
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .I2(rx_state[0]),
        .I3(\FSM_sequential_rx_state_reg[0]_0 ),
        .I4(rx_state[1]),
        .O(reset_time_out_i_5_n_0));
  FDSE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(sync_cplllock_cdc_sync_n_1),
        .Q(reset_time_out_reg_n_0),
        .S(AR));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'hFFFB0100)) 
    run_phase_alignment_int_i_1__0
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[3]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1__0_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(AR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(run_phase_alignment_int_s2),
        .Q(run_phase_alignment_int_s3_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hABA8)) 
    rx_fsm_reset_done_int_i_1
       (.I0(rx_fsm_reset_done_int_0),
        .I1(rx_fsm_reset_done_int_i_3_n_0),
        .I2(rx_fsm_reset_done_int_i_4_n_0),
        .I3(rx_fsm_reset_done_int),
        .O(rx_fsm_reset_done_int_i_1_n_0));
  LUT5 #(
    .INIT(32'h00040000)) 
    rx_fsm_reset_done_int_i_2
       (.I0(rx_state[0]),
        .I1(time_out_1us_reg_n_0),
        .I2(rx_state[2]),
        .I3(reset_time_out_reg_n_0),
        .I4(gt_rxuserrdy_i),
        .O(rx_fsm_reset_done_int_0));
  LUT6 #(
    .INIT(64'h0400040004040400)) 
    rx_fsm_reset_done_int_i_3
       (.I0(rx_fsm_reset_done_int_i_5_n_0),
        .I1(rx_state[3]),
        .I2(rx_state[2]),
        .I3(gt_rxuserrdy_i),
        .I4(time_out_100us_reg_n_0),
        .I5(reset_time_out_reg_n_0),
        .O(rx_fsm_reset_done_int_i_3_n_0));
  LUT6 #(
    .INIT(64'h0020002020200020)) 
    rx_fsm_reset_done_int_i_4
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(rx_fsm_reset_done_int_i_6_n_0),
        .I3(gt_rxuserrdy_i),
        .I4(time_out_1us_reg_n_0),
        .I5(reset_time_out_reg_n_0),
        .O(rx_fsm_reset_done_int_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'hB)) 
    rx_fsm_reset_done_int_i_5
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .O(rx_fsm_reset_done_int_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rx_fsm_reset_done_int_i_6
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .O(rx_fsm_reset_done_int_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int_i_1_n_0),
        .Q(rx_fsm_reset_done_int),
        .R(AR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_s3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(sync_rx_fsm_reset_done_int_cdc_sync_n_0),
        .Q(rx_fsm_reset_done_int_s3),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    rxresetdone_s3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rxresetdone_s2),
        .Q(rxresetdone_s3),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_9 sync_RXRESETDONE_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(rxresetdone_s2),
        .rxfsm_rxresetdone_r(rxfsm_rxresetdone_r),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync_10 sync_cplllock_cdc_sync
       (.E(sync_cplllock_cdc_sync_n_0),
        .\FSM_sequential_rx_state_reg[0] (\FSM_sequential_rx_state[3]_i_3_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_0 (init_wait_done_reg_n_0),
        .\FSM_sequential_rx_state_reg[0]_1 (\FSM_sequential_rx_state[3]_i_4_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_2 (\FSM_sequential_rx_state[3]_i_6_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_3 (\FSM_sequential_rx_state[3]_i_12_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_4 (\FSM_sequential_rx_state_reg[0]_0 ),
        .\FSM_sequential_rx_state_reg[1] (sync_cplllock_cdc_sync_n_1),
        .Q(rx_state),
        .gtrxreset_i(gtrxreset_i),
        .init_clk_in(init_clk_in),
        .recclk_mon_count_reset(recclk_mon_count_reset),
        .reset_time_out_reg(reset_time_out_i_2_n_0),
        .reset_time_out_reg_0(reset_time_out_i_5_n_0),
        .reset_time_out_reg_1(reset_time_out_reg_n_0),
        .rxresetdone_s3(rxresetdone_s3),
        .s_level_out_d3_reg_0(sync_cplllock_cdc_sync_n_2),
        .tx_lock(tx_lock));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync_11 sync_mmcm_lock_reclocked_cdc_sync
       (.SR(sync_mmcm_lock_reclocked_cdc_sync_n_0),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .mmcm_lock_reclocked_reg(sync_mmcm_lock_reclocked_cdc_sync_n_1),
        .mmcm_lock_reclocked_reg_0(mmcm_lock_reclocked_i_2__0_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync_12 sync_qplllock_cdc_sync
       (.init_clk_in(init_clk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_13 sync_run_phase_alignment_int_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(run_phase_alignment_int_s2),
        .p_level_in_d1_cdc_from_reg_0(run_phase_alignment_int_reg_n_0),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_14 sync_rx_fsm_reset_done_int_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(sync_rx_fsm_reset_done_int_cdc_sync_n_0),
        .rx_fsm_reset_done_int(rx_fsm_reset_done_int),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_15 sync_time_out_wait_bypass_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(time_out_wait_bypass_s2),
        .p_level_in_d1_cdc_from_reg_0(time_out_wait_bypass_reg_n_0),
        .user_clk(user_clk));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    time_out_100us_i_1
       (.I0(time_out_100us_i_2_n_0),
        .I1(time_out_100us_i_3_n_0),
        .I2(time_out_100us_i_4_n_0),
        .I3(time_tlock_max_i_2_n_0),
        .I4(time_out_100us_reg_n_0),
        .O(time_out_100us_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    time_out_100us_i_2
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[2]),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[1]),
        .I5(time_out_counter_reg[0]),
        .O(time_out_100us_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    time_out_100us_i_3
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[5]),
        .O(time_out_100us_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000080)) 
    time_out_100us_i_4
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_counter_reg[11]),
        .O(time_out_100us_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_100us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_100us_i_1_n_0),
        .Q(time_out_100us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT5 #(
    .INIT(32'hFFFF0002)) 
    time_out_1us_i_1
       (.I0(time_out_1us_i_2_n_0),
        .I1(time_out_1us_i_3_n_0),
        .I2(time_out_1us_i_4_n_0),
        .I3(time_tlock_max_i_2_n_0),
        .I4(time_out_1us_reg_n_0),
        .O(time_out_1us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    time_out_1us_i_2
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[2]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[12]),
        .I5(time_out_counter_reg[11]),
        .O(time_out_1us_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    time_out_1us_i_3
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[0]),
        .O(time_out_1us_i_3_n_0));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    time_out_1us_i_4
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[6]),
        .I4(time_out_counter_reg[5]),
        .O(time_out_1us_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_1us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_1us_i_1_n_0),
        .Q(time_out_1us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    time_out_2ms_i_1
       (.I0(time_out_2ms_i_2__0_n_0),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[17]),
        .I4(\time_out_counter[0]_i_5_n_0 ),
        .I5(time_out_2ms_reg_n_0),
        .O(time_out_2ms_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    time_out_2ms_i_2__0
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[18]),
        .I4(time_out_counter_reg[15]),
        .O(time_out_2ms_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'h00EA)) 
    time_out_adapt_i_1
       (.I0(time_out_adapt_reg_n_0),
        .I1(time_out_adapt_i_2_n_0),
        .I2(time_out_adapt_i_3_n_0),
        .I3(recclk_mon_count_reset),
        .O(time_out_adapt_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    time_out_adapt_i_2
       (.I0(time_out_adapt_i_4_n_0),
        .I1(time_out_adapt_i_5_n_0),
        .I2(time_out_adapt_i_6_n_0),
        .I3(time_out_adapt_i_7_n_0),
        .I4(adapt_count_reg[0]),
        .I5(adapt_count_reg[1]),
        .O(time_out_adapt_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    time_out_adapt_i_3
       (.I0(adapt_count_reg[28]),
        .I1(adapt_count_reg[29]),
        .I2(adapt_count_reg[26]),
        .I3(adapt_count_reg[27]),
        .I4(adapt_count_reg[31]),
        .I5(adapt_count_reg[30]),
        .O(time_out_adapt_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    time_out_adapt_i_4
       (.I0(adapt_count_reg[22]),
        .I1(adapt_count_reg[23]),
        .I2(adapt_count_reg[20]),
        .I3(adapt_count_reg[21]),
        .I4(adapt_count_reg[25]),
        .I5(adapt_count_reg[24]),
        .O(time_out_adapt_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    time_out_adapt_i_5
       (.I0(adapt_count_reg[16]),
        .I1(adapt_count_reg[17]),
        .I2(adapt_count_reg[14]),
        .I3(adapt_count_reg[15]),
        .I4(adapt_count_reg[18]),
        .I5(adapt_count_reg[19]),
        .O(time_out_adapt_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    time_out_adapt_i_6
       (.I0(adapt_count_reg[11]),
        .I1(adapt_count_reg[10]),
        .I2(adapt_count_reg[9]),
        .I3(adapt_count_reg[8]),
        .I4(adapt_count_reg[13]),
        .I5(adapt_count_reg[12]),
        .O(time_out_adapt_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    time_out_adapt_i_7
       (.I0(adapt_count_reg[4]),
        .I1(adapt_count_reg[5]),
        .I2(adapt_count_reg[2]),
        .I3(adapt_count_reg[3]),
        .I4(adapt_count_reg[6]),
        .I5(adapt_count_reg[7]),
        .O(time_out_adapt_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_adapt_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_adapt_i_1_n_0),
        .Q(time_out_adapt_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFBFFFFFFFFFFFFF)) 
    \time_out_counter[0]_i_1__0 
       (.I0(\time_out_counter[0]_i_3_n_0 ),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[11]),
        .I4(\time_out_counter[0]_i_4__0_n_0 ),
        .I5(\time_out_counter[0]_i_5_n_0 ),
        .O(\time_out_counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \time_out_counter[0]_i_3 
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[14]),
        .O(\time_out_counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \time_out_counter[0]_i_4__0 
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[18]),
        .O(\time_out_counter[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \time_out_counter[0]_i_5 
       (.I0(time_out_100us_i_2_n_0),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[10]),
        .I5(time_out_counter_reg[4]),
        .O(\time_out_counter[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_6__0 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_6__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(init_clk_in),
        .CE(\time_out_counter[0]_i_1__0_n_0 ),
        .D(\time_out_counter_reg[0]_i_2__0_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2__0_n_0 ,\time_out_counter_reg[0]_i_2__0_n_1 ,\time_out_counter_reg[0]_i_2__0_n_2 ,\time_out_counter_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2__0_n_4 ,\time_out_counter_reg[0]_i_2__0_n_5 ,\time_out_counter_reg[0]_i_2__0_n_6 ,\time_out_counter_reg[0]_i_2__0_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_6__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(init_clk_in),
        .CE(\time_out_counter[0]_i_1__0_n_0 ),
        .D(\time_out_counter_reg[8]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(init_clk_in),
        .CE(\time_out_counter[0]_i_1__0_n_0 ),
        .D(\time_out_counter_reg[8]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(init_clk_in),
        .CE(\time_out_counter[0]_i_1__0_n_0 ),
        .D(\time_out_counter_reg[12]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[12]_i_1__0 
       (.CI(\time_out_counter_reg[8]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1__0_n_0 ,\time_out_counter_reg[12]_i_1__0_n_1 ,\time_out_counter_reg[12]_i_1__0_n_2 ,\time_out_counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1__0_n_4 ,\time_out_counter_reg[12]_i_1__0_n_5 ,\time_out_counter_reg[12]_i_1__0_n_6 ,\time_out_counter_reg[12]_i_1__0_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(init_clk_in),
        .CE(\time_out_counter[0]_i_1__0_n_0 ),
        .D(\time_out_counter_reg[12]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(init_clk_in),
        .CE(\time_out_counter[0]_i_1__0_n_0 ),
        .D(\time_out_counter_reg[12]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(init_clk_in),
        .CE(\time_out_counter[0]_i_1__0_n_0 ),
        .D(\time_out_counter_reg[12]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(init_clk_in),
        .CE(\time_out_counter[0]_i_1__0_n_0 ),
        .D(\time_out_counter_reg[16]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[16]_i_1__0 
       (.CI(\time_out_counter_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1__0_n_2 ,\time_out_counter_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED [3],\time_out_counter_reg[16]_i_1__0_n_5 ,\time_out_counter_reg[16]_i_1__0_n_6 ,\time_out_counter_reg[16]_i_1__0_n_7 }),
        .S({1'b0,time_out_counter_reg[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(init_clk_in),
        .CE(\time_out_counter[0]_i_1__0_n_0 ),
        .D(\time_out_counter_reg[16]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[18] 
       (.C(init_clk_in),
        .CE(\time_out_counter[0]_i_1__0_n_0 ),
        .D(\time_out_counter_reg[16]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[18]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(init_clk_in),
        .CE(\time_out_counter[0]_i_1__0_n_0 ),
        .D(\time_out_counter_reg[0]_i_2__0_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(init_clk_in),
        .CE(\time_out_counter[0]_i_1__0_n_0 ),
        .D(\time_out_counter_reg[0]_i_2__0_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(init_clk_in),
        .CE(\time_out_counter[0]_i_1__0_n_0 ),
        .D(\time_out_counter_reg[0]_i_2__0_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(init_clk_in),
        .CE(\time_out_counter[0]_i_1__0_n_0 ),
        .D(\time_out_counter_reg[4]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[4]_i_1__0 
       (.CI(\time_out_counter_reg[0]_i_2__0_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1__0_n_0 ,\time_out_counter_reg[4]_i_1__0_n_1 ,\time_out_counter_reg[4]_i_1__0_n_2 ,\time_out_counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1__0_n_4 ,\time_out_counter_reg[4]_i_1__0_n_5 ,\time_out_counter_reg[4]_i_1__0_n_6 ,\time_out_counter_reg[4]_i_1__0_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(init_clk_in),
        .CE(\time_out_counter[0]_i_1__0_n_0 ),
        .D(\time_out_counter_reg[4]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(init_clk_in),
        .CE(\time_out_counter[0]_i_1__0_n_0 ),
        .D(\time_out_counter_reg[4]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(init_clk_in),
        .CE(\time_out_counter[0]_i_1__0_n_0 ),
        .D(\time_out_counter_reg[4]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(init_clk_in),
        .CE(\time_out_counter[0]_i_1__0_n_0 ),
        .D(\time_out_counter_reg[8]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[8]_i_1__0 
       (.CI(\time_out_counter_reg[4]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1__0_n_0 ,\time_out_counter_reg[8]_i_1__0_n_1 ,\time_out_counter_reg[8]_i_1__0_n_2 ,\time_out_counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1__0_n_4 ,\time_out_counter_reg[8]_i_1__0_n_5 ,\time_out_counter_reg[8]_i_1__0_n_6 ,\time_out_counter_reg[8]_i_1__0_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(init_clk_in),
        .CE(\time_out_counter[0]_i_1__0_n_0 ),
        .D(\time_out_counter_reg[8]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1__0
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(\wait_bypass_count[0]_i_4__0_n_0 ),
        .I2(rx_fsm_reset_done_int_s3),
        .I3(run_phase_alignment_int_s3_reg_n_0),
        .O(time_out_wait_bypass_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1__0_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFC8C8C888)) 
    time_tlock_max_i_1
       (.I0(time_tlock_max_i_2_n_0),
        .I1(check_tlock_max_reg_n_0),
        .I2(time_out_counter_reg[13]),
        .I3(time_tlock_max_i_3_n_0),
        .I4(time_tlock_max_i_4_n_0),
        .I5(time_tlock_max),
        .O(time_tlock_max_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    time_tlock_max_i_2
       (.I0(time_out_counter_reg[18]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[16]),
        .I4(time_out_counter_reg[17]),
        .O(time_tlock_max_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max_i_3
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[12]),
        .O(time_tlock_max_i_3_n_0));
  LUT6 #(
    .INIT(64'h8080800080008000)) 
    time_tlock_max_i_4
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_100us_i_3_n_0),
        .I4(time_tlock_max_i_5_n_0),
        .I5(time_out_counter_reg[4]),
        .O(time_tlock_max_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_tlock_max_i_5
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[2]),
        .O(time_tlock_max_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max),
        .R(reset_time_out_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1__0 
       (.I0(run_phase_alignment_int_s3_reg_n_0),
        .O(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2__0 
       (.I0(\wait_bypass_count[0]_i_4__0_n_0 ),
        .I1(rx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_bypass_count[0]_i_4__0 
       (.I0(\wait_bypass_count[0]_i_6__0_n_0 ),
        .I1(wait_bypass_count_reg[4]),
        .I2(wait_bypass_count_reg[3]),
        .I3(wait_bypass_count_reg[6]),
        .I4(wait_bypass_count_reg[5]),
        .I5(\wait_bypass_count[0]_i_7__0_n_0 ),
        .O(\wait_bypass_count[0]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_5__0 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \wait_bypass_count[0]_i_6__0 
       (.I0(wait_bypass_count_reg[8]),
        .I1(wait_bypass_count_reg[7]),
        .I2(wait_bypass_count_reg[9]),
        .I3(wait_bypass_count_reg[10]),
        .O(\wait_bypass_count[0]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \wait_bypass_count[0]_i_7__0 
       (.I0(wait_bypass_count_reg[0]),
        .I1(wait_bypass_count_reg[11]),
        .I2(wait_bypass_count_reg[12]),
        .I3(wait_bypass_count_reg[2]),
        .I4(wait_bypass_count_reg[1]),
        .O(\wait_bypass_count[0]_i_7__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  CARRY4 \wait_bypass_count_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3__0_n_0 ,\wait_bypass_count_reg[0]_i_3__0_n_1 ,\wait_bypass_count_reg[0]_i_3__0_n_2 ,\wait_bypass_count_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3__0_n_4 ,\wait_bypass_count_reg[0]_i_3__0_n_5 ,\wait_bypass_count_reg[0]_i_3__0_n_6 ,\wait_bypass_count_reg[0]_i_3__0_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  CARRY4 \wait_bypass_count_reg[12]_i_1__0 
       (.CI(\wait_bypass_count_reg[8]_i_1__0_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED [3:1],\wait_bypass_count_reg[12]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  CARRY4 \wait_bypass_count_reg[4]_i_1__0 
       (.CI(\wait_bypass_count_reg[0]_i_3__0_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1__0_n_0 ,\wait_bypass_count_reg[4]_i_1__0_n_1 ,\wait_bypass_count_reg[4]_i_1__0_n_2 ,\wait_bypass_count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1__0_n_4 ,\wait_bypass_count_reg[4]_i_1__0_n_5 ,\wait_bypass_count_reg[4]_i_1__0_n_6 ,\wait_bypass_count_reg[4]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  CARRY4 \wait_bypass_count_reg[8]_i_1__0 
       (.CI(\wait_bypass_count_reg[4]_i_1__0_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1__0_n_0 ,\wait_bypass_count_reg[8]_i_1__0_n_1 ,\wait_bypass_count_reg[8]_i_1__0_n_2 ,\wait_bypass_count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1__0_n_4 ,\wait_bypass_count_reg[8]_i_1__0_n_5 ,\wait_bypass_count_reg[8]_i_1__0_n_6 ,\wait_bypass_count_reg[8]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \wait_time_cnt[0]_i_1 
       (.I0(rx_state[0]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .O(\wait_time_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[0]_i_2__0 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[3]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(\wait_time_cnt[0]_i_4__0_n_0 ),
        .I5(\wait_time_cnt[0]_i_5__0_n_0 ),
        .O(\wait_time_cnt[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[0]_i_4__0 
       (.I0(wait_time_cnt_reg[14]),
        .I1(wait_time_cnt_reg[15]),
        .I2(wait_time_cnt_reg[12]),
        .I3(wait_time_cnt_reg[13]),
        .I4(wait_time_cnt_reg[11]),
        .I5(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[0]_i_5__0 
       (.I0(wait_time_cnt_reg[8]),
        .I1(wait_time_cnt_reg[9]),
        .I2(wait_time_cnt_reg[6]),
        .I3(wait_time_cnt_reg[7]),
        .I4(wait_time_cnt_reg[5]),
        .I5(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[0]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_6__0 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_7__0 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_8__0 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_8__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_9__0 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_9__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2__0 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3__0 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4__0 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5__0 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2__0 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3__0 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4__0 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5__0 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2__0 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3__0 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4__0 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5__0 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5__0_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  CARRY4 \wait_time_cnt_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3__0_n_0 ,\wait_time_cnt_reg[0]_i_3__0_n_1 ,\wait_time_cnt_reg[0]_i_3__0_n_2 ,\wait_time_cnt_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3__0_n_4 ,\wait_time_cnt_reg[0]_i_3__0_n_5 ,\wait_time_cnt_reg[0]_i_3__0_n_6 ,\wait_time_cnt_reg[0]_i_3__0_n_7 }),
        .S({\wait_time_cnt[0]_i_6__0_n_0 ,\wait_time_cnt[0]_i_7__0_n_0 ,\wait_time_cnt[0]_i_8__0_n_0 ,\wait_time_cnt[0]_i_9__0_n_0 }));
  FDRE \wait_time_cnt_reg[10] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[11] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[12] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  CARRY4 \wait_time_cnt_reg[12]_i_1__0 
       (.CI(\wait_time_cnt_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1__0_n_1 ,\wait_time_cnt_reg[12]_i_1__0_n_2 ,\wait_time_cnt_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1__0_n_4 ,\wait_time_cnt_reg[12]_i_1__0_n_5 ,\wait_time_cnt_reg[12]_i_1__0_n_6 ,\wait_time_cnt_reg[12]_i_1__0_n_7 }),
        .S({\wait_time_cnt[12]_i_2__0_n_0 ,\wait_time_cnt[12]_i_3__0_n_0 ,\wait_time_cnt[12]_i_4__0_n_0 ,\wait_time_cnt[12]_i_5__0_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[14] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[15] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[1] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[2] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[3] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[4] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  CARRY4 \wait_time_cnt_reg[4]_i_1__0 
       (.CI(\wait_time_cnt_reg[0]_i_3__0_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1__0_n_0 ,\wait_time_cnt_reg[4]_i_1__0_n_1 ,\wait_time_cnt_reg[4]_i_1__0_n_2 ,\wait_time_cnt_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1__0_n_4 ,\wait_time_cnt_reg[4]_i_1__0_n_5 ,\wait_time_cnt_reg[4]_i_1__0_n_6 ,\wait_time_cnt_reg[4]_i_1__0_n_7 }),
        .S({\wait_time_cnt[4]_i_2__0_n_0 ,\wait_time_cnt[4]_i_3__0_n_0 ,\wait_time_cnt[4]_i_4__0_n_0 ,\wait_time_cnt[4]_i_5__0_n_0 }));
  FDSE \wait_time_cnt_reg[5] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[6] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[7] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[8] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  CARRY4 \wait_time_cnt_reg[8]_i_1__0 
       (.CI(\wait_time_cnt_reg[4]_i_1__0_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1__0_n_0 ,\wait_time_cnt_reg[8]_i_1__0_n_1 ,\wait_time_cnt_reg[8]_i_1__0_n_2 ,\wait_time_cnt_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1__0_n_4 ,\wait_time_cnt_reg[8]_i_1__0_n_5 ,\wait_time_cnt_reg[8]_i_1__0_n_6 ,\wait_time_cnt_reg[8]_i_1__0_n_7 }),
        .S({\wait_time_cnt[8]_i_2__0_n_0 ,\wait_time_cnt[8]_i_3__0_n_0 ,\wait_time_cnt[8]_i_4__0_n_0 ,\wait_time_cnt[8]_i_5__0_n_0 }));
  FDSE \wait_time_cnt_reg[9] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_tx_startup_fsm
   (out,
    gt_tx_reset_i,
    cpll_reset_i,
    gt_txuserrdy_i,
    CPLL_RESET_reg_0,
    s_level_out_d3_reg,
    tx_lock,
    init_clk_in,
    user_clk,
    txfsm_txresetdone_r,
    AR,
    ack_flag);
  output out;
  output gt_tx_reset_i;
  output cpll_reset_i;
  output gt_txuserrdy_i;
  output CPLL_RESET_reg_0;
  output s_level_out_d3_reg;
  input tx_lock;
  input init_clk_in;
  input user_clk;
  input txfsm_txresetdone_r;
  input [0:0]AR;
  input ack_flag;

  wire [0:0]AR;
  wire CPLL_RESET_i_1_n_0;
  wire CPLL_RESET_reg_0;
  wire \FSM_sequential_tx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_11_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_12_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_13_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_9_n_0 ;
  wire TXUSERRDY_i_1_n_0;
  wire ack_flag;
  wire clear;
  wire cpll_reset_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire gttxreset_i_i_1_n_0;
  wire init_clk_in;
  wire \init_wait_count[0]_i_1_n_0 ;
  wire \init_wait_count[7]_i_1_n_0 ;
  wire \init_wait_count[7]_i_3_n_0 ;
  wire \init_wait_count[7]_i_4_n_0 ;
  wire [7:0]init_wait_count_reg;
  wire init_wait_done_i_1_n_0;
  wire init_wait_done_i_2_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[9]_i_2_n_0 ;
  wire \mmcm_lock_count[9]_i_4_n_0 ;
  wire [9:0]mmcm_lock_count_reg;
  wire mmcm_lock_reclocked;
  wire out;
  wire [7:1]p_0_in;
  wire p_0_in_1;
  wire [9:0]p_0_in__0;
  wire pll_reset_asserted_i_1_n_0;
  wire pll_reset_asserted_reg_n_0;
  wire reset_time_out;
  wire run_phase_alignment_int;
  wire run_phase_alignment_int_i_1_n_0;
  wire run_phase_alignment_int_s2;
  wire run_phase_alignment_int_s3;
  wire s_level_out_d3_reg;
  wire sel;
  wire sync_cplllock_cdc_sync_n_0;
  wire sync_cplllock_cdc_sync_n_1;
  wire sync_mmcm_lock_reclocked_cdc_sync_n_0;
  wire sync_mmcm_lock_reclocked_cdc_sync_n_1;
  wire time_out_2ms_i_1__0_n_0;
  wire time_out_2ms_i_2_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_500us_i_1_n_0;
  wire time_out_500us_i_2_n_0;
  wire time_out_500us_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3__0_n_0 ;
  wire \time_out_counter[0]_i_4_n_0 ;
  wire \time_out_counter[0]_i_5__0_n_0 ;
  wire \time_out_counter[0]_i_6_n_0 ;
  wire \time_out_counter[0]_i_7_n_0 ;
  wire \time_out_counter[0]_i_8_n_0 ;
  wire [17:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2_n_0 ;
  wire \time_out_counter_reg[0]_i_2_n_1 ;
  wire \time_out_counter_reg[0]_i_2_n_2 ;
  wire \time_out_counter_reg[0]_i_2_n_3 ;
  wire \time_out_counter_reg[0]_i_2_n_4 ;
  wire \time_out_counter_reg[0]_i_2_n_5 ;
  wire \time_out_counter_reg[0]_i_2_n_6 ;
  wire \time_out_counter_reg[0]_i_2_n_7 ;
  wire \time_out_counter_reg[12]_i_1_n_0 ;
  wire \time_out_counter_reg[12]_i_1_n_1 ;
  wire \time_out_counter_reg[12]_i_1_n_2 ;
  wire \time_out_counter_reg[12]_i_1_n_3 ;
  wire \time_out_counter_reg[12]_i_1_n_4 ;
  wire \time_out_counter_reg[12]_i_1_n_5 ;
  wire \time_out_counter_reg[12]_i_1_n_6 ;
  wire \time_out_counter_reg[12]_i_1_n_7 ;
  wire \time_out_counter_reg[16]_i_1_n_3 ;
  wire \time_out_counter_reg[16]_i_1_n_6 ;
  wire \time_out_counter_reg[16]_i_1_n_7 ;
  wire \time_out_counter_reg[4]_i_1_n_0 ;
  wire \time_out_counter_reg[4]_i_1_n_1 ;
  wire \time_out_counter_reg[4]_i_1_n_2 ;
  wire \time_out_counter_reg[4]_i_1_n_3 ;
  wire \time_out_counter_reg[4]_i_1_n_4 ;
  wire \time_out_counter_reg[4]_i_1_n_5 ;
  wire \time_out_counter_reg[4]_i_1_n_6 ;
  wire \time_out_counter_reg[4]_i_1_n_7 ;
  wire \time_out_counter_reg[8]_i_1_n_0 ;
  wire \time_out_counter_reg[8]_i_1_n_1 ;
  wire \time_out_counter_reg[8]_i_1_n_2 ;
  wire \time_out_counter_reg[8]_i_1_n_3 ;
  wire \time_out_counter_reg[8]_i_1_n_4 ;
  wire \time_out_counter_reg[8]_i_1_n_5 ;
  wire \time_out_counter_reg[8]_i_1_n_6 ;
  wire \time_out_counter_reg[8]_i_1_n_7 ;
  wire time_out_wait_bypass;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max_i_1__0_n_0;
  wire time_tlock_max_i_2__0_n_0;
  wire time_tlock_max_i_3__0_n_0;
  wire time_tlock_max_reg_n_0;
  wire tx_fsm_reset_done_int;
  wire tx_fsm_reset_done_int_i_1_n_0;
  wire tx_fsm_reset_done_int_s3;
  wire tx_lock;
  wire [3:0]tx_state;
  wire txfsm_txresetdone_r;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire user_clk;
  wire \wait_bypass_count[0]_i_2_n_0 ;
  wire \wait_bypass_count[0]_i_4_n_0 ;
  wire \wait_bypass_count[0]_i_5_n_0 ;
  wire \wait_bypass_count[0]_i_6_n_0 ;
  wire \wait_bypass_count[0]_i_7_n_0 ;
  wire \wait_bypass_count[0]_i_8_n_0 ;
  wire \wait_bypass_count[0]_i_9_n_0 ;
  wire [16:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1_n_0 ;
  wire \wait_bypass_count_reg[12]_i_1_n_1 ;
  wire \wait_bypass_count_reg[12]_i_1_n_2 ;
  wire \wait_bypass_count_reg[12]_i_1_n_3 ;
  wire \wait_bypass_count_reg[12]_i_1_n_4 ;
  wire \wait_bypass_count_reg[12]_i_1_n_5 ;
  wire \wait_bypass_count_reg[12]_i_1_n_6 ;
  wire \wait_bypass_count_reg[12]_i_1_n_7 ;
  wire \wait_bypass_count_reg[16]_i_1_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1_n_7 ;
  wire \wait_time_cnt[0]_i_1__0_n_0 ;
  wire \wait_time_cnt[0]_i_4_n_0 ;
  wire \wait_time_cnt[0]_i_5_n_0 ;
  wire \wait_time_cnt[0]_i_6_n_0 ;
  wire \wait_time_cnt[0]_i_7_n_0 ;
  wire \wait_time_cnt[0]_i_8_n_0 ;
  wire \wait_time_cnt[0]_i_9_n_0 ;
  wire \wait_time_cnt[12]_i_2_n_0 ;
  wire \wait_time_cnt[12]_i_3_n_0 ;
  wire \wait_time_cnt[12]_i_4_n_0 ;
  wire \wait_time_cnt[12]_i_5_n_0 ;
  wire \wait_time_cnt[4]_i_2_n_0 ;
  wire \wait_time_cnt[4]_i_3_n_0 ;
  wire \wait_time_cnt[4]_i_4_n_0 ;
  wire \wait_time_cnt[4]_i_5_n_0 ;
  wire \wait_time_cnt[8]_i_2_n_0 ;
  wire \wait_time_cnt[8]_i_3_n_0 ;
  wire \wait_time_cnt[8]_i_4_n_0 ;
  wire \wait_time_cnt[8]_i_5_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1_n_7 ;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFF700000004)) 
    CPLL_RESET_i_1
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(tx_state[0]),
        .I2(tx_state[3]),
        .I3(tx_state[2]),
        .I4(tx_state[1]),
        .I5(cpll_reset_i),
        .O(CPLL_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CPLL_RESET_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(CPLL_RESET_i_1_n_0),
        .Q(cpll_reset_i),
        .R(AR));
  LUT6 #(
    .INIT(64'hEFEFEFEFEFFFEFEF)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .I1(tx_state[3]),
        .I2(tx_state[0]),
        .I3(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I4(tx_state[2]),
        .I5(tx_state[1]),
        .O(\FSM_sequential_tx_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT5 #(
    .INIT(32'h2020F000)) 
    \FSM_sequential_tx_state[0]_i_2 
       (.I0(time_out_500us_reg_n_0),
        .I1(reset_time_out),
        .I2(tx_state[1]),
        .I3(time_out_2ms_reg_n_0),
        .I4(tx_state[2]),
        .O(\FSM_sequential_tx_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000F00D0)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(tx_state[2]),
        .I1(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(tx_state[1]),
        .O(\FSM_sequential_tx_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003400F0000400F0)) 
    \FSM_sequential_tx_state[2]_i_1 
       (.I0(time_out_2ms_reg_n_0),
        .I1(tx_state[1]),
        .I2(tx_state[2]),
        .I3(tx_state[3]),
        .I4(tx_state[0]),
        .I5(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_tx_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_tx_state[2]_i_2 
       (.I0(time_tlock_max_reg_n_0),
        .I1(reset_time_out),
        .I2(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_tx_state[3]_i_10 
       (.I0(wait_time_cnt_reg[12]),
        .I1(wait_time_cnt_reg[13]),
        .I2(wait_time_cnt_reg[10]),
        .I3(wait_time_cnt_reg[11]),
        .I4(wait_time_cnt_reg[15]),
        .I5(wait_time_cnt_reg[14]),
        .O(\FSM_sequential_tx_state[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_tx_state[3]_i_11 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[3]),
        .I3(wait_time_cnt_reg[2]),
        .O(\FSM_sequential_tx_state[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_tx_state[3]_i_12 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \FSM_sequential_tx_state[3]_i_13 
       (.I0(mmcm_lock_reclocked),
        .I1(time_tlock_max_reg_n_0),
        .I2(reset_time_out),
        .O(\FSM_sequential_tx_state[3]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hA2FFA2A2)) 
    \FSM_sequential_tx_state[3]_i_2 
       (.I0(\FSM_sequential_tx_state[3]_i_7_n_0 ),
        .I1(time_out_500us_reg_n_0),
        .I2(reset_time_out),
        .I3(time_out_wait_bypass_s3),
        .I4(tx_state[3]),
        .O(\FSM_sequential_tx_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \FSM_sequential_tx_state[3]_i_4 
       (.I0(\FSM_sequential_tx_state[3]_i_9_n_0 ),
        .I1(\FSM_sequential_tx_state[3]_i_10_n_0 ),
        .I2(\FSM_sequential_tx_state[3]_i_11_n_0 ),
        .I3(tx_state[3]),
        .I4(tx_state[0]),
        .I5(\FSM_sequential_tx_state[3]_i_12_n_0 ),
        .O(\FSM_sequential_tx_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_sequential_tx_state[3]_i_5 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[3]),
        .I3(tx_state[0]),
        .O(\FSM_sequential_tx_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0C00000A)) 
    \FSM_sequential_tx_state[3]_i_6 
       (.I0(init_wait_done_reg_n_0),
        .I1(\FSM_sequential_tx_state[3]_i_13_n_0 ),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .I4(tx_state[0]),
        .I5(tx_state[3]),
        .O(\FSM_sequential_tx_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_sequential_tx_state[3]_i_7 
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .O(\FSM_sequential_tx_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_tx_state[3]_i_8 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .O(\FSM_sequential_tx_state[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_tx_state[3]_i_9 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[7]),
        .I2(wait_time_cnt_reg[4]),
        .I3(wait_time_cnt_reg[5]),
        .I4(wait_time_cnt_reg[9]),
        .I5(wait_time_cnt_reg[8]),
        .O(\FSM_sequential_tx_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[0] 
       (.C(init_clk_in),
        .CE(sync_cplllock_cdc_sync_n_0),
        .D(\FSM_sequential_tx_state[0]_i_1_n_0 ),
        .Q(tx_state[0]),
        .R(AR));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[1] 
       (.C(init_clk_in),
        .CE(sync_cplllock_cdc_sync_n_0),
        .D(\FSM_sequential_tx_state[1]_i_1_n_0 ),
        .Q(tx_state[1]),
        .R(AR));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[2] 
       (.C(init_clk_in),
        .CE(sync_cplllock_cdc_sync_n_0),
        .D(\FSM_sequential_tx_state[2]_i_1_n_0 ),
        .Q(tx_state[2]),
        .R(AR));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[3] 
       (.C(init_clk_in),
        .CE(sync_cplllock_cdc_sync_n_0),
        .D(\FSM_sequential_tx_state[3]_i_2_n_0 ),
        .Q(tx_state[3]),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT5 #(
    .INIT(32'hFEFF0800)) 
    TXUSERRDY_i_1
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[3]),
        .I3(tx_state[0]),
        .I4(gt_txuserrdy_i),
        .O(TXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TXUSERRDY_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(TXUSERRDY_i_1_n_0),
        .Q(gt_txuserrdy_i),
        .R(AR));
  LUT2 #(
    .INIT(4'h2)) 
    flag2_i_1
       (.I0(cpll_reset_i),
        .I1(ack_flag),
        .O(CPLL_RESET_reg_0));
  LUT5 #(
    .INIT(32'hFFFB0100)) 
    gttxreset_i_i_1
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[3]),
        .I3(tx_state[0]),
        .I4(gt_tx_reset_i),
        .O(gttxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gttxreset_i_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gttxreset_i_i_1_n_0),
        .Q(gt_tx_reset_i),
        .R(AR));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_count_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[2]),
        .I4(init_wait_count_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .I4(init_wait_count_reg[3]),
        .I5(init_wait_count_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \init_wait_count[6]_i_1 
       (.I0(\init_wait_count[7]_i_4_n_0 ),
        .I1(init_wait_count_reg[6]),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'hFE)) 
    \init_wait_count[7]_i_1 
       (.I0(\init_wait_count[7]_i_3_n_0 ),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .O(\init_wait_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \init_wait_count[7]_i_2 
       (.I0(init_wait_count_reg[6]),
        .I1(\init_wait_count[7]_i_4_n_0 ),
        .I2(init_wait_count_reg[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \init_wait_count[7]_i_3 
       (.I0(init_wait_count_reg[6]),
        .I1(init_wait_count_reg[7]),
        .I2(init_wait_count_reg[4]),
        .I3(init_wait_count_reg[5]),
        .I4(init_wait_count_reg[3]),
        .I5(init_wait_count_reg[2]),
        .O(\init_wait_count[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \init_wait_count[7]_i_4 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .I4(init_wait_count_reg[3]),
        .I5(init_wait_count_reg[5]),
        .O(\init_wait_count[7]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(init_clk_in),
        .CE(\init_wait_count[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\init_wait_count[0]_i_1_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(init_clk_in),
        .CE(\init_wait_count[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(init_clk_in),
        .CE(\init_wait_count[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(init_clk_in),
        .CE(\init_wait_count[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(init_clk_in),
        .CE(\init_wait_count[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(init_clk_in),
        .CE(\init_wait_count[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(init_clk_in),
        .CE(\init_wait_count[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(init_clk_in),
        .CE(\init_wait_count[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[7]),
        .Q(init_wait_count_reg[7]));
  LUT4 #(
    .INIT(16'hFF02)) 
    init_wait_done_i_1
       (.I0(init_wait_done_i_2_n_0),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    init_wait_done_i_2
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[5]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[3]),
        .I4(init_wait_count_reg[7]),
        .I5(init_wait_count_reg[6]),
        .O(init_wait_done_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(AR),
        .D(init_wait_done_i_1_n_0),
        .Q(init_wait_done_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg[0]),
        .I1(mmcm_lock_count_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg[1]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[2]),
        .I4(mmcm_lock_count_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \mmcm_lock_count[6]_i_1 
       (.I0(\mmcm_lock_count[9]_i_4_n_0 ),
        .I1(mmcm_lock_count_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \mmcm_lock_count[7]_i_1 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(\mmcm_lock_count[9]_i_4_n_0 ),
        .I2(mmcm_lock_count_reg[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \mmcm_lock_count[8]_i_1 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(\mmcm_lock_count[9]_i_4_n_0 ),
        .I2(mmcm_lock_count_reg[6]),
        .I3(mmcm_lock_count_reg[8]),
        .O(p_0_in__0[8]));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \mmcm_lock_count[9]_i_2 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(\mmcm_lock_count[9]_i_4_n_0 ),
        .I2(mmcm_lock_count_reg[6]),
        .I3(mmcm_lock_count_reg[8]),
        .I4(mmcm_lock_count_reg[9]),
        .O(\mmcm_lock_count[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \mmcm_lock_count[9]_i_3 
       (.I0(mmcm_lock_count_reg[8]),
        .I1(mmcm_lock_count_reg[6]),
        .I2(\mmcm_lock_count[9]_i_4_n_0 ),
        .I3(mmcm_lock_count_reg[7]),
        .I4(mmcm_lock_count_reg[9]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \mmcm_lock_count[9]_i_4 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(\mmcm_lock_count[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(mmcm_lock_count_reg[0]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(mmcm_lock_count_reg[1]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(mmcm_lock_count_reg[2]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(mmcm_lock_count_reg[3]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(mmcm_lock_count_reg[4]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(mmcm_lock_count_reg[5]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(mmcm_lock_count_reg[6]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(mmcm_lock_count_reg[7]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[8] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[8]),
        .Q(mmcm_lock_count_reg[8]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[9] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[9]),
        .Q(mmcm_lock_count_reg[9]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    mmcm_lock_reclocked_i_2
       (.I0(mmcm_lock_count_reg[9]),
        .I1(mmcm_lock_count_reg[8]),
        .I2(mmcm_lock_count_reg[6]),
        .I3(\mmcm_lock_count[9]_i_4_n_0 ),
        .I4(mmcm_lock_count_reg[7]),
        .O(p_0_in_1));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(sync_mmcm_lock_reclocked_cdc_sync_n_1),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT5 #(
    .INIT(32'hCCCCCC5C)) 
    pll_reset_asserted_i_1
       (.I0(tx_state[1]),
        .I1(pll_reset_asserted_reg_n_0),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(tx_state[2]),
        .O(pll_reset_asserted_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(pll_reset_asserted_i_1_n_0),
        .Q(pll_reset_asserted_reg_n_0),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(sync_cplllock_cdc_sync_n_1),
        .Q(reset_time_out),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT5 #(
    .INIT(32'hFEFF0010)) 
    run_phase_alignment_int_i_1
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[3]),
        .I3(tx_state[0]),
        .I4(run_phase_alignment_int),
        .O(run_phase_alignment_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1_n_0),
        .Q(run_phase_alignment_int),
        .R(AR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(run_phase_alignment_int_s2),
        .Q(run_phase_alignment_int_s3),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_2 sync_TXRESETDONE_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(txresetdone_s2),
        .txfsm_txresetdone_r(txfsm_txresetdone_r),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync_3 sync_cplllock_cdc_sync
       (.E(sync_cplllock_cdc_sync_n_0),
        .\FSM_sequential_tx_state_reg[0] (sync_cplllock_cdc_sync_n_1),
        .\FSM_sequential_tx_state_reg[0]_0 (\FSM_sequential_tx_state[3]_i_4_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_1 (\FSM_sequential_tx_state[3]_i_5_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_2 (\FSM_sequential_tx_state[3]_i_6_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_3 (\FSM_sequential_tx_state[3]_i_7_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_4 (\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_5 (pll_reset_asserted_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_6 (\FSM_sequential_tx_state[3]_i_8_n_0 ),
        .Q(tx_state),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .reset_time_out(reset_time_out),
        .tx_lock(tx_lock),
        .txresetdone_s3(txresetdone_s3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync_4 sync_mmcm_lock_reclocked_cdc_sync
       (.SR(sync_mmcm_lock_reclocked_cdc_sync_n_0),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .mmcm_lock_reclocked_reg(sync_mmcm_lock_reclocked_cdc_sync_n_1),
        .p_0_in_1(p_0_in_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync_5 sync_qplllock_cdc_sync
       (.init_clk_in(init_clk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_6 sync_run_phase_alignment_int_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(run_phase_alignment_int_s2),
        .run_phase_alignment_int(run_phase_alignment_int),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_7 sync_time_out_wait_bypass_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(time_out_wait_bypass_s2),
        .time_out_wait_bypass(time_out_wait_bypass),
        .user_clk(user_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_aurora_cdc_sync__parameterized0_8 sync_tx_fsm_reset_done_int_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(out),
        .s_level_out_d3_reg_0(s_level_out_d3_reg),
        .tx_fsm_reset_done_int(tx_fsm_reset_done_int),
        .user_clk(user_clk));
  LUT4 #(
    .INIT(16'h00AE)) 
    time_out_2ms_i_1__0
       (.I0(time_out_2ms_reg_n_0),
        .I1(time_out_2ms_i_2_n_0),
        .I2(\time_out_counter[0]_i_3__0_n_0 ),
        .I3(reset_time_out),
        .O(time_out_2ms_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    time_out_2ms_i_2
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[11]),
        .I4(time_out_counter_reg[4]),
        .I5(\time_out_counter[0]_i_4_n_0 ),
        .O(time_out_2ms_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1__0_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAEAAA)) 
    time_out_500us_i_1
       (.I0(time_out_500us_reg_n_0),
        .I1(time_out_500us_i_2_n_0),
        .I2(time_out_counter_reg[4]),
        .I3(time_out_counter_reg[9]),
        .I4(\time_out_counter[0]_i_3__0_n_0 ),
        .I5(reset_time_out),
        .O(time_out_500us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    time_out_500us_i_2
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[11]),
        .I4(time_out_counter_reg[17]),
        .I5(time_out_counter_reg[16]),
        .O(time_out_500us_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_500us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_500us_i_1_n_0),
        .Q(time_out_500us_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \time_out_counter[0]_i_1 
       (.I0(\time_out_counter[0]_i_3__0_n_0 ),
        .I1(time_out_counter_reg[11]),
        .I2(\time_out_counter[0]_i_4_n_0 ),
        .I3(time_out_counter_reg[9]),
        .I4(\time_out_counter[0]_i_5__0_n_0 ),
        .I5(time_out_counter_reg[4]),
        .O(time_out_counter));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \time_out_counter[0]_i_3__0 
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[13]),
        .I2(\time_out_counter[0]_i_7_n_0 ),
        .I3(\time_out_counter[0]_i_8_n_0 ),
        .O(\time_out_counter[0]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[10]),
        .O(\time_out_counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \time_out_counter[0]_i_5__0 
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .O(\time_out_counter[0]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_6 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \time_out_counter[0]_i_7 
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[12]),
        .O(\time_out_counter[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \time_out_counter[0]_i_8 
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[2]),
        .O(\time_out_counter[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2_n_0 ,\time_out_counter_reg[0]_i_2_n_1 ,\time_out_counter_reg[0]_i_2_n_2 ,\time_out_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2_n_4 ,\time_out_counter_reg[0]_i_2_n_5 ,\time_out_counter_reg[0]_i_2_n_6 ,\time_out_counter_reg[0]_i_2_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[12]_i_1 
       (.CI(\time_out_counter_reg[8]_i_1_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1_n_0 ,\time_out_counter_reg[12]_i_1_n_1 ,\time_out_counter_reg[12]_i_1_n_2 ,\time_out_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1_n_4 ,\time_out_counter_reg[12]_i_1_n_5 ,\time_out_counter_reg[12]_i_1_n_6 ,\time_out_counter_reg[12]_i_1_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[16]_i_1 
       (.CI(\time_out_counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:1],\time_out_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1_n_6 ,\time_out_counter_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,time_out_counter_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[4]_i_1 
       (.CI(\time_out_counter_reg[0]_i_2_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1_n_0 ,\time_out_counter_reg[4]_i_1_n_1 ,\time_out_counter_reg[4]_i_1_n_2 ,\time_out_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1_n_4 ,\time_out_counter_reg[4]_i_1_n_5 ,\time_out_counter_reg[4]_i_1_n_6 ,\time_out_counter_reg[4]_i_1_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[8]_i_1 
       (.CI(\time_out_counter_reg[4]_i_1_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1_n_0 ,\time_out_counter_reg[8]_i_1_n_1 ,\time_out_counter_reg[8]_i_1_n_2 ,\time_out_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1_n_4 ,\time_out_counter_reg[8]_i_1_n_5 ,\time_out_counter_reg[8]_i_1_n_6 ,\time_out_counter_reg[8]_i_1_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass),
        .I1(\wait_bypass_count[0]_i_4_n_0 ),
        .I2(tx_fsm_reset_done_int_s3),
        .I3(run_phase_alignment_int_s3),
        .O(time_out_wait_bypass_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1_n_0),
        .Q(time_out_wait_bypass),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AABAAAAA)) 
    time_tlock_max_i_1__0
       (.I0(time_tlock_max_reg_n_0),
        .I1(time_tlock_max_i_2__0_n_0),
        .I2(time_out_counter_reg[4]),
        .I3(\time_out_counter[0]_i_4_n_0 ),
        .I4(time_tlock_max_i_3__0_n_0),
        .I5(reset_time_out),
        .O(time_tlock_max_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    time_tlock_max_i_2__0
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[0]),
        .I3(time_out_counter_reg[1]),
        .I4(\time_out_counter[0]_i_7_n_0 ),
        .O(time_tlock_max_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    time_tlock_max_i_3__0
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[6]),
        .I4(time_out_counter_reg[17]),
        .I5(time_out_counter_reg[16]),
        .O(time_tlock_max_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_tlock_max_i_1__0_n_0),
        .Q(time_tlock_max_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    tx_fsm_reset_done_int_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(tx_fsm_reset_done_int),
        .O(tx_fsm_reset_done_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_i_1_n_0),
        .Q(tx_fsm_reset_done_int),
        .R(AR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_s3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(out),
        .Q(tx_fsm_reset_done_int_s3),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    txresetdone_s3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(txresetdone_s2),
        .Q(txresetdone_s3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1 
       (.I0(run_phase_alignment_int_s3),
        .O(clear));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2 
       (.I0(\wait_bypass_count[0]_i_4_n_0 ),
        .I1(tx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_bypass_count[0]_i_4 
       (.I0(\wait_bypass_count[0]_i_6_n_0 ),
        .I1(\wait_bypass_count[0]_i_7_n_0 ),
        .I2(\wait_bypass_count[0]_i_8_n_0 ),
        .I3(\wait_bypass_count[0]_i_9_n_0 ),
        .O(\wait_bypass_count[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_5 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \wait_bypass_count[0]_i_6 
       (.I0(wait_bypass_count_reg[4]),
        .I1(wait_bypass_count_reg[3]),
        .I2(wait_bypass_count_reg[6]),
        .I3(wait_bypass_count_reg[5]),
        .O(\wait_bypass_count[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \wait_bypass_count[0]_i_7 
       (.I0(wait_bypass_count_reg[0]),
        .I1(wait_bypass_count_reg[16]),
        .I2(wait_bypass_count_reg[15]),
        .I3(wait_bypass_count_reg[2]),
        .I4(wait_bypass_count_reg[1]),
        .O(\wait_bypass_count[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \wait_bypass_count[0]_i_8 
       (.I0(wait_bypass_count_reg[12]),
        .I1(wait_bypass_count_reg[11]),
        .I2(wait_bypass_count_reg[13]),
        .I3(wait_bypass_count_reg[14]),
        .O(\wait_bypass_count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \wait_bypass_count[0]_i_9 
       (.I0(wait_bypass_count_reg[7]),
        .I1(wait_bypass_count_reg[8]),
        .I2(wait_bypass_count_reg[9]),
        .I3(wait_bypass_count_reg[10]),
        .O(\wait_bypass_count[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3_n_0 ,\wait_bypass_count_reg[0]_i_3_n_1 ,\wait_bypass_count_reg[0]_i_3_n_2 ,\wait_bypass_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3_n_4 ,\wait_bypass_count_reg[0]_i_3_n_5 ,\wait_bypass_count_reg[0]_i_3_n_6 ,\wait_bypass_count_reg[0]_i_3_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[12]_i_1 
       (.CI(\wait_bypass_count_reg[8]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[12]_i_1_n_0 ,\wait_bypass_count_reg[12]_i_1_n_1 ,\wait_bypass_count_reg[12]_i_1_n_2 ,\wait_bypass_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[12]_i_1_n_4 ,\wait_bypass_count_reg[12]_i_1_n_5 ,\wait_bypass_count_reg[12]_i_1_n_6 ,\wait_bypass_count_reg[12]_i_1_n_7 }),
        .S(wait_bypass_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[13] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[14] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[15] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[16] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[16]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[16]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[16]_i_1 
       (.CI(\wait_bypass_count_reg[12]_i_1_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED [3:1],\wait_bypass_count_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[4]_i_1 
       (.CI(\wait_bypass_count_reg[0]_i_3_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1_n_0 ,\wait_bypass_count_reg[4]_i_1_n_1 ,\wait_bypass_count_reg[4]_i_1_n_2 ,\wait_bypass_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1_n_4 ,\wait_bypass_count_reg[4]_i_1_n_5 ,\wait_bypass_count_reg[4]_i_1_n_6 ,\wait_bypass_count_reg[4]_i_1_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[8]_i_1 
       (.CI(\wait_bypass_count_reg[4]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1_n_0 ,\wait_bypass_count_reg[8]_i_1_n_1 ,\wait_bypass_count_reg[8]_i_1_n_2 ,\wait_bypass_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1_n_4 ,\wait_bypass_count_reg[8]_i_1_n_5 ,\wait_bypass_count_reg[8]_i_1_n_6 ,\wait_bypass_count_reg[8]_i_1_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(clear));
  LUT4 #(
    .INIT(16'h0070)) 
    \wait_time_cnt[0]_i_1__0 
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .O(\wait_time_cnt[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[0]_i_2 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[3]),
        .I3(wait_time_cnt_reg[2]),
        .I4(\wait_time_cnt[0]_i_4_n_0 ),
        .I5(\wait_time_cnt[0]_i_5_n_0 ),
        .O(sel));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[0]_i_4 
       (.I0(wait_time_cnt_reg[14]),
        .I1(wait_time_cnt_reg[15]),
        .I2(wait_time_cnt_reg[12]),
        .I3(wait_time_cnt_reg[13]),
        .I4(wait_time_cnt_reg[11]),
        .I5(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[0]_i_5 
       (.I0(wait_time_cnt_reg[8]),
        .I1(wait_time_cnt_reg[9]),
        .I2(wait_time_cnt_reg[6]),
        .I3(wait_time_cnt_reg[7]),
        .I4(wait_time_cnt_reg[5]),
        .I5(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_6 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_7 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_8 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_9 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  CARRY4 \wait_time_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3_n_0 ,\wait_time_cnt_reg[0]_i_3_n_1 ,\wait_time_cnt_reg[0]_i_3_n_2 ,\wait_time_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3_n_4 ,\wait_time_cnt_reg[0]_i_3_n_5 ,\wait_time_cnt_reg[0]_i_3_n_6 ,\wait_time_cnt_reg[0]_i_3_n_7 }),
        .S({\wait_time_cnt[0]_i_6_n_0 ,\wait_time_cnt[0]_i_7_n_0 ,\wait_time_cnt[0]_i_8_n_0 ,\wait_time_cnt[0]_i_9_n_0 }));
  FDRE \wait_time_cnt_reg[10] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[11] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[12] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  CARRY4 \wait_time_cnt_reg[12]_i_1 
       (.CI(\wait_time_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1_n_1 ,\wait_time_cnt_reg[12]_i_1_n_2 ,\wait_time_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1_n_4 ,\wait_time_cnt_reg[12]_i_1_n_5 ,\wait_time_cnt_reg[12]_i_1_n_6 ,\wait_time_cnt_reg[12]_i_1_n_7 }),
        .S({\wait_time_cnt[12]_i_2_n_0 ,\wait_time_cnt[12]_i_3_n_0 ,\wait_time_cnt[12]_i_4_n_0 ,\wait_time_cnt[12]_i_5_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[14] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[15] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[1] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[2] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDSE \wait_time_cnt_reg[3] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[4] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  CARRY4 \wait_time_cnt_reg[4]_i_1 
       (.CI(\wait_time_cnt_reg[0]_i_3_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1_n_0 ,\wait_time_cnt_reg[4]_i_1_n_1 ,\wait_time_cnt_reg[4]_i_1_n_2 ,\wait_time_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1_n_4 ,\wait_time_cnt_reg[4]_i_1_n_5 ,\wait_time_cnt_reg[4]_i_1_n_6 ,\wait_time_cnt_reg[4]_i_1_n_7 }),
        .S({\wait_time_cnt[4]_i_2_n_0 ,\wait_time_cnt[4]_i_3_n_0 ,\wait_time_cnt[4]_i_4_n_0 ,\wait_time_cnt[4]_i_5_n_0 }));
  FDSE \wait_time_cnt_reg[5] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDSE \wait_time_cnt_reg[6] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDSE \wait_time_cnt_reg[7] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDSE \wait_time_cnt_reg[8] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  CARRY4 \wait_time_cnt_reg[8]_i_1 
       (.CI(\wait_time_cnt_reg[4]_i_1_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1_n_0 ,\wait_time_cnt_reg[8]_i_1_n_1 ,\wait_time_cnt_reg[8]_i_1_n_2 ,\wait_time_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1_n_4 ,\wait_time_cnt_reg[8]_i_1_n_5 ,\wait_time_cnt_reg[8]_i_1_n_6 ,\wait_time_cnt_reg[8]_i_1_n_7 }),
        .S({\wait_time_cnt[8]_i_2_n_0 ,\wait_time_cnt[8]_i_3_n_0 ,\wait_time_cnt[8]_i_4_n_0 ,\wait_time_cnt[8]_i_5_n_0 }));
  FDSE \wait_time_cnt_reg[9] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
