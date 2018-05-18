############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hog_svm_fpga
set_top xillybus_wrapper
add_files hog_svm_fpga/xillybus_wrapper.cpp
add_files hog_svm_fpga/hardware_approximation.cpp
add_files -tb hog_svm_fpga/gray_ver.txt
add_files -tb hog_svm_fpga/img_data.txt
add_files -tb ../Source/HOG_SVM_detector/x64/Release/non-vehicle_data.txt
add_files -tb hog_svm_fpga/tb_xillybus_wrapper.cpp
add_files -tb ../Source/HOG_SVM_detector/x64/Release/test_pos.txt
add_files -tb hog_svm_fpga/vehicle.txt
add_files -tb ../Source/HOG_SVM_detector/x64/Release/vehicle_data.txt
open_solution "hog_svm_fpga"
set_part {xc7z010clg400-1}
create_clock -period 10 -name default
#source "./hog_svm_fpga/hog_svm_fpga/directives.tcl"
csim_design -O
csynth_design
cosim_design -O
export_design -rtl verilog -format syn_dcp
