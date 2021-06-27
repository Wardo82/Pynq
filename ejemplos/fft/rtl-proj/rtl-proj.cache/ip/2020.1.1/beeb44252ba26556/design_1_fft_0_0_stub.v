// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1 (lin64) Build 2960000 Wed Aug  5 22:57:21 MDT 2020
// Date        : Sat Jun 26 15:48:12 2021
// Host        : Wardo running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fft_0_0_stub.v
// Design      : design_1_fft_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fft,Vivado 2020.1.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, ap_start, ap_done, ap_idle, 
  ap_ready, din_TVALID, din_TREADY, din_TDATA, din_TLAST, din_TKEEP, dout_TVALID, dout_TREADY, 
  dout_TDATA, dout_TLAST, dout_TKEEP, size)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,din_TVALID,din_TREADY,din_TDATA[127:0],din_TLAST[0:0],din_TKEEP[15:0],dout_TVALID,dout_TREADY,dout_TDATA[127:0],dout_TLAST[0:0],dout_TKEEP[15:0],size[31:0]" */;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input din_TVALID;
  output din_TREADY;
  input [127:0]din_TDATA;
  input [0:0]din_TLAST;
  input [15:0]din_TKEEP;
  output dout_TVALID;
  input dout_TREADY;
  output [127:0]dout_TDATA;
  output [0:0]dout_TLAST;
  output [15:0]dout_TKEEP;
  input [31:0]size;
endmodule
