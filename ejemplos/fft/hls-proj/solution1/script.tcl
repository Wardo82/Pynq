############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls-proj
set_top fft
add_files fft.cpp
add_files fft.h
add_files -tb fft_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -output /home/wardo/Documents/repos/Pynq/ejemplos/fft/hls-proj/fft.zip -rtl vhdl
source "./hls-proj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl vhdl -format ip_catalog -output /home/wardo/Documents/repos/Pynq/ejemplos/fft/hls-proj/fft.zip
