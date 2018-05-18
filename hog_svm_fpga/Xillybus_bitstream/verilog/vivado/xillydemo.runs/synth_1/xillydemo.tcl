# 
# Synthesis run script generated by Vivado
# 

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
set_msg_config  -ruleid {1}  -id {BD 41-968}  -string {{xillybus_S_AXI}}  -new_severity {INFO} 
set_msg_config  -ruleid {10}  -id {Netlist 29-160}  -string {{vivado_system_processing_system7}}  -new_severity {INFO} 
set_msg_config  -ruleid {2}  -id {BD 41-968}  -string {{xillybus_M_AXI}}  -new_severity {INFO} 
set_msg_config  -ruleid {3}  -id {BD 41-967}  -string {{xillybus_ip_0/xillybus_M_AXI}}  -new_severity {INFO} 
set_msg_config  -ruleid {4}  -id {BD 41-967}  -string {{xillybus_ip_0/xillybus_S_AXI}}  -new_severity {INFO} 
set_msg_config  -ruleid {5}  -id {BD 41-678}  -string {{xillybus_S_AXI/Reg}}  -new_severity {INFO} 
set_msg_config  -ruleid {6}  -id {BD 41-1356}  -string {{xillybus_S_AXI/Reg}}  -new_severity {INFO} 
set_msg_config  -ruleid {8}  -id {BD 41-759}  -string {{xlconcat_0/In}}  -new_severity {INFO} 
set_msg_config  -ruleid {9}  -id {filemgmt 20-1440}  -string {{xillybus_lite.ngc}}  -new_severity {INFO} 
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/verilog/vivado/xillydemo.cache/wt [current_project]
set_property parent.project_path D:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/verilog/vivado/xillydemo.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths d:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/vivado-ip [current_project]
set_property ip_output_repo d:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/verilog/vivado/xillydemo.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files -quiet D:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/hog_svm_fpga/impl/ip/xillybus_wrapper.dcp
set_property used_in_implementation false [get_files D:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/hog_svm_fpga/impl/ip/xillybus_wrapper.dcp]
read_verilog -library xil_defaultlib {
  D:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/verilog/src/xillydemo.v
  D:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/verilog/src/smbus.v
  D:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/verilog/src/i2s_audio.v
  D:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/verilog/src/xillybus.v
  D:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/verilog/src/xillybus_core.v
  D:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/system.v
}
add_files D:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/vivado_system/vivado_system.bd
set_property used_in_implementation false [get_files -all d:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/vivado_system/ip/vivado_system_processing_system7_0_0/vivado_system_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/vivado_system/ip/vivado_system_rst_processing_system7_0_100M_0/vivado_system_rst_processing_system7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/vivado_system/ip/vivado_system_rst_processing_system7_0_100M_0/vivado_system_rst_processing_system7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all d:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/vivado_system/ip/vivado_system_rst_processing_system7_0_100M_0/vivado_system_rst_processing_system7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/vivado_system/ip/vivado_system_xbar_0/vivado_system_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/vivado_system/ip/vivado_system_auto_pc_0/vivado_system_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all D:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/vivado_system/vivado_system_ooc.xdc]

read_ip -quiet D:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/vga_fifo/vga_fifo.xci
set_property used_in_implementation false [get_files -all d:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/vga_fifo/vga_fifo.xdc]
set_property used_in_implementation false [get_files -all d:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/vga_fifo/vga_fifo_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/vga_fifo/vga_fifo_ooc.xdc]

read_ip -quiet D:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/fifo_32x512/fifo_32x512.xci
set_property used_in_implementation false [get_files -all d:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/fifo_32x512/fifo_32x512.xdc]
set_property used_in_implementation false [get_files -all d:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/fifo_32x512/fifo_32x512_ooc.xdc]

read_ip -quiet D:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/fifo_8x2048/fifo_8x2048.xci
set_property used_in_implementation false [get_files -all d:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/fifo_8x2048/fifo_8x2048.xdc]
set_property used_in_implementation false [get_files -all d:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/fifo_8x2048/fifo_8x2048_ooc.xdc]

set_property edif_extra_search_paths D:/lolic/Documents/Thesis/Zybo_FPGA_bitstream/cores [current_fileset]
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/xillydemo.xdc
set_property used_in_implementation false [get_files D:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/Xillybus_bitstream/vivado-essentials/xillydemo.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top xillydemo -part xc7z010clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef xillydemo.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file xillydemo_utilization_synth.rpt -pb xillydemo_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
