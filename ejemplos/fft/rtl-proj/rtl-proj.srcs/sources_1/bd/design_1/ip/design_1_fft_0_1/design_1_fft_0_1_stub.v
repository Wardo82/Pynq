// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1 (lin64) Build 2960000 Wed Aug  5 22:57:21 MDT 2020
// Date        : Sat Jun 26 16:17:48 2021
// Host        : Wardo running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/wardo/Documents/repos/Pynq/ejemplos/fft/rtl-proj/rtl-proj.srcs/sources_1/bd/design_1/ip/design_1_fft_0_1/design_1_fft_0_1_stub.v
// Design      : design_1_fft_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fft,Vivado 2020.1.1" *)
module design_1_fft_0_1(s_axi_control_AWADDR, 
  s_axi_control_AWVALID, s_axi_control_AWREADY, s_axi_control_WDATA, s_axi_control_WSTRB, 
  s_axi_control_WVALID, s_axi_control_WREADY, s_axi_control_BRESP, s_axi_control_BVALID, 
  s_axi_control_BREADY, s_axi_control_ARADDR, s_axi_control_ARVALID, 
  s_axi_control_ARREADY, s_axi_control_RDATA, s_axi_control_RRESP, s_axi_control_RVALID, 
  s_axi_control_RREADY, ap_clk, ap_rst_n, din_TVALID, din_TREADY, din_TDATA, din_TLAST, 
  din_TKEEP, dout_TVALID, dout_TREADY, dout_TDATA, dout_TLAST, dout_TKEEP)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_AWADDR[4:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[4:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,din_TVALID,din_TREADY,din_TDATA[127:0],din_TLAST[0:0],din_TKEEP[15:0],dout_TVALID,dout_TREADY,dout_TDATA[127:0],dout_TLAST[0:0],dout_TKEEP[15:0]" */;
  input [4:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [4:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk;
  input ap_rst_n;
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
endmodule
