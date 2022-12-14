# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 1
create_project -in_memory -part xc7vx485tffg1761-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir d:/work/SFP-Simulation-link/source/projects/VC707/hssl_ctrl_test_loopback/hssl_ctrl_test_loopback.cache/wt [current_project]
set_property parent.project_path d:/work/SFP-Simulation-link/source/projects/VC707/hssl_ctrl_test_loopback/hssl_ctrl_test_loopback.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:vc707:part0:1.4 [current_project]
set_property ip_output_repo d:/work/SFP-Simulation-link/source/projects/VC707/hssl_ctrl_test_loopback/hssl_ctrl_test_loopback.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  d:/work/SFP-Simulation-link/source/hdl/vhdl/VC707/coregen/ip/aurora/aurora_cdc_sync_exdes.vhd
  d:/work/SFP-Simulation-link/source/hdl/vhdl/VC707/coregen/ip/aurora/aurora_clock_module.vhd
  d:/work/SFP-Simulation-link/source/hdl/vhdl/common/hssl_ctrl_test/rtl/aurora_comp_dec_1l.vhd
  d:/work/SFP-Simulation-link/source/hdl/vhdl/VC707/coregen/ip/aurora/aurora_gt_common_wrapper.vhd
  d:/work/SFP-Simulation-link/source/hdl/vhdl/VC707/coregen/ip/aurora/aurora_support.vhd
  d:/work/SFP-Simulation-link/source/hdl/vhdl/VC707/coregen/ip/aurora/aurora_support_reset_logic.vhd
  d:/work/SFP-Simulation-link/source/hdl/vhdl/VC707/coregen/ip/aurora/aurora_wrapper_1l.vhd
  d:/work/SFP-Simulation-link/source/hdl/vhdl/common/misc/hil_lib.vhd
  d:/work/SFP-Simulation-link/source/hdl/vhdl/common/hssl_ctrl_test/rtl/hssl_comp_dec.vhd
  d:/work/SFP-Simulation-link/source/hdl/vhdl/common/hssl_ctrl_test/rtl/hssl_comp_dec_1l.vhd
  d:/work/SFP-Simulation-link/source/hdl/vhdl/common/hssl_ctrl_test/rtl/hssl_ctrl_1l.vhd
  d:/work/SFP-Simulation-link/source/hdl/vhdl/common/hssl_ctrl_test/rtl/hssl_ctrl_test_1l_loopback.vhd
}
read_ip -quiet d:/work/SFP-Simulation-link/source/hdl/vhdl/VC707/coregen/ip/aurora/aurora.xci
set_property used_in_implementation false [get_files -all d:/work/SFP-Simulation-link/source/hdl/vhdl/VC707/coregen/ip/aurora/aurora_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/work/SFP-Simulation-link/source/hdl/vhdl/VC707/coregen/ip/aurora/aurora.xdc]
set_property used_in_implementation false [get_files -all d:/work/SFP-Simulation-link/source/hdl/vhdl/VC707/coregen/ip/aurora/aurora_ooc.xdc]

read_ip -quiet d:/work/SFP-Simulation-link/source/hdl/vhdl/VC707/coregen/ip/hssl_ctrl_fifo_1x/hssl_ctrl_fifo_1x.xci
set_property used_in_implementation false [get_files -all d:/work/SFP-Simulation-link/source/hdl/vhdl/VC707/coregen/ip/hssl_ctrl_fifo_1x/hssl_ctrl_fifo_1x.xdc]
set_property used_in_implementation false [get_files -all d:/work/SFP-Simulation-link/source/hdl/vhdl/VC707/coregen/ip/hssl_ctrl_fifo_1x/hssl_ctrl_fifo_1x_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/work/SFP-Simulation-link/source/hdl/vhdl/VC707/coregen/ip/hssl_ctrl_fifo_1x/hssl_ctrl_fifo_1x_ooc.xdc]

read_ip -quiet d:/work/SFP-Simulation-link/source/hdl/vhdl/VC707/coregen/ip/clk_wiz/clk_wiz.xci
set_property used_in_implementation false [get_files -all d:/work/SFP-Simulation-link/source/hdl/vhdl/VC707/coregen/ip/clk_wiz/clk_wiz_board.xdc]
set_property used_in_implementation false [get_files -all d:/work/SFP-Simulation-link/source/hdl/vhdl/VC707/coregen/ip/clk_wiz/clk_wiz.xdc]
set_property used_in_implementation false [get_files -all d:/work/SFP-Simulation-link/source/hdl/vhdl/VC707/coregen/ip/clk_wiz/clk_wiz_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc d:/work/SFP-Simulation-link/source/hdl/vhdl/common/hssl_ctrl_test/constraints/vc707/vc707_aurora.xdc
set_property used_in_implementation false [get_files d:/work/SFP-Simulation-link/source/hdl/vhdl/common/hssl_ctrl_test/constraints/vc707/vc707_aurora.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top hssl_ctrl_test_1l_loopback -part xc7vx485tffg1761-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef hssl_ctrl_test_1l_loopback.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file hssl_ctrl_test_1l_loopback_utilization_synth.rpt -pb hssl_ctrl_test_1l_loopback_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
