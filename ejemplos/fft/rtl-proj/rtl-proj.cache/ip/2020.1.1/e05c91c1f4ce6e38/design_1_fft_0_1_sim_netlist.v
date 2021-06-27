// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1 (lin64) Build 2960000 Wed Aug  5 22:57:21 MDT 2020
// Date        : Sat Jun 26 16:17:47 2021
// Host        : Wardo running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fft_0_1_sim_netlist.v
// Design      : design_1_fft_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fft_0_1,fft,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "HLS" *) 
(* x_core_info = "fft,Vivado 2020.1.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_control_AWADDR,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    ap_clk,
    ap_rst_n,
    din_TVALID,
    din_TREADY,
    din_TDATA,
    din_TLAST,
    din_TKEEP,
    dout_TVALID,
    dout_TREADY,
    dout_TDATA,
    dout_TLAST,
    dout_TKEEP);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 50000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]s_axi_control_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) input [4:0]s_axi_control_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) input s_axi_control_RREADY;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:din:dout, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 din TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME din, TDATA_NUM_BYTES 16, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input din_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 din TREADY" *) output din_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 din TDATA" *) input [127:0]din_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 din TLAST" *) input [0:0]din_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 din TKEEP" *) input [15:0]din_TKEEP;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 dout TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME dout, TDATA_NUM_BYTES 16, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) output dout_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 dout TREADY" *) input dout_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 dout TDATA" *) output [127:0]dout_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 dout TLAST" *) output [0:0]dout_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 dout TKEEP" *) output [15:0]dout_TKEEP;

  wire ap_clk;
  wire ap_rst_n;
  wire [127:0]din_TDATA;
  wire [15:0]din_TKEEP;
  wire [0:0]din_TLAST;
  wire din_TREADY;
  wire din_TVALID;
  wire [127:0]dout_TDATA;
  wire [15:0]dout_TKEEP;
  wire [0:0]dout_TLAST;
  wire dout_TREADY;
  wire dout_TVALID;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [4:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire [1:0]s_axi_control_BRESP;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire [1:0]s_axi_control_RRESP;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;

  (* C_S_AXI_CONTROL_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* sdx_kernel = "true" *) 
  (* sdx_kernel_synth_inst = "U0" *) 
  (* sdx_kernel_type = "hls" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft U0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .din_TDATA(din_TDATA),
        .din_TKEEP(din_TKEEP),
        .din_TLAST(din_TLAST),
        .din_TREADY(din_TREADY),
        .din_TVALID(din_TVALID),
        .dout_TDATA(dout_TDATA),
        .dout_TKEEP(dout_TKEEP),
        .dout_TLAST(dout_TLAST),
        .dout_TREADY(dout_TREADY),
        .dout_TVALID(dout_TVALID),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BRESP(s_axi_control_BRESP),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RRESP(s_axi_control_RRESP),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
endmodule

(* C_S_AXI_CONTROL_ADDR_WIDTH = "5" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft
   (ap_clk,
    ap_rst_n,
    din_TDATA,
    din_TVALID,
    din_TREADY,
    din_TKEEP,
    din_TLAST,
    dout_TDATA,
    dout_TVALID,
    dout_TREADY,
    dout_TKEEP,
    dout_TLAST,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_AWADDR,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_ARADDR,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP);
  input ap_clk;
  input ap_rst_n;
  input [127:0]din_TDATA;
  input din_TVALID;
  output din_TREADY;
  input [15:0]din_TKEEP;
  input [0:0]din_TLAST;
  output [127:0]dout_TDATA;
  output dout_TVALID;
  input dout_TREADY;
  output [15:0]dout_TKEEP;
  output [0:0]dout_TLAST;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [4:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [4:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;

  wire \<const0> ;
  wire ARESET;
  wire ack_out;
  wire \ap_CS_fsm[1]_i_2_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire \ap_CS_fsm_reg_n_0_[1] ;
  wire \ap_CS_fsm_reg_n_0_[2] ;
  wire \ap_CS_fsm_reg_n_0_[3] ;
  wire \ap_CS_fsm_reg_n_0_[4] ;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire [6:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_rst_n;
  wire [127:0]buff2;
  wire [127:0]din_TDATA;
  wire [127:0]din_TDATA_int_regslice;
  wire [15:0]din_TKEEP;
  wire [15:0]din_TKEEP_int_regslice;
  wire [0:0]din_TLAST;
  wire din_TLAST_int_regslice;
  wire din_TREADY;
  wire din_TVALID;
  wire [127:0]dout_TDATA;
  wire [15:0]dout_TKEEP;
  wire [0:0]dout_TLAST;
  wire dout_TREADY;
  wire dout_TREADY_int_regslice;
  wire dout_TVALID;
  wire [15:0]pkt_keep_V_reg_108;
  wire pkt_last_V_reg_113;
  wire regslice_both_dout_V_data_V_U_n_5;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [4:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [31:0]size;
  wire vld_out;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(\ap_CS_fsm_reg_n_0_[4] ),
        .I1(ap_CS_fsm_state6),
        .I2(\ap_CS_fsm_reg_n_0_[2] ),
        .I3(\ap_CS_fsm_reg_n_0_[3] ),
        .O(\ap_CS_fsm[1]_i_2_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ARESET));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(\ap_CS_fsm_reg_n_0_[1] ),
        .R(ARESET));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[1] ),
        .Q(\ap_CS_fsm_reg_n_0_[2] ),
        .R(ARESET));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[2] ),
        .Q(\ap_CS_fsm_reg_n_0_[3] ),
        .R(ARESET));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[3] ),
        .Q(\ap_CS_fsm_reg_n_0_[4] ),
        .R(ARESET));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state6),
        .R(ARESET));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(ap_CS_fsm_state7),
        .R(ARESET));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft_control_s_axi control_s_axi_U
       (.ARESET(ARESET),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_control_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_control_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_control_WREADY),
        .Q(size),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft_mul_128s_32s_128_5_1 mul_128s_32s_128_5_1_U1
       (.Q(size),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .buff0_reg__3(regslice_both_dout_V_data_V_U_n_5),
        .\buff2_reg[127] (buff2),
        .din_TDATA_int_regslice(din_TDATA_int_regslice));
  FDRE \pkt_keep_V_reg_108_reg[0] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(din_TKEEP_int_regslice[0]),
        .Q(pkt_keep_V_reg_108[0]),
        .R(1'b0));
  FDRE \pkt_keep_V_reg_108_reg[10] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(din_TKEEP_int_regslice[10]),
        .Q(pkt_keep_V_reg_108[10]),
        .R(1'b0));
  FDRE \pkt_keep_V_reg_108_reg[11] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(din_TKEEP_int_regslice[11]),
        .Q(pkt_keep_V_reg_108[11]),
        .R(1'b0));
  FDRE \pkt_keep_V_reg_108_reg[12] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(din_TKEEP_int_regslice[12]),
        .Q(pkt_keep_V_reg_108[12]),
        .R(1'b0));
  FDRE \pkt_keep_V_reg_108_reg[13] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(din_TKEEP_int_regslice[13]),
        .Q(pkt_keep_V_reg_108[13]),
        .R(1'b0));
  FDRE \pkt_keep_V_reg_108_reg[14] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(din_TKEEP_int_regslice[14]),
        .Q(pkt_keep_V_reg_108[14]),
        .R(1'b0));
  FDRE \pkt_keep_V_reg_108_reg[15] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(din_TKEEP_int_regslice[15]),
        .Q(pkt_keep_V_reg_108[15]),
        .R(1'b0));
  FDRE \pkt_keep_V_reg_108_reg[1] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(din_TKEEP_int_regslice[1]),
        .Q(pkt_keep_V_reg_108[1]),
        .R(1'b0));
  FDRE \pkt_keep_V_reg_108_reg[2] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(din_TKEEP_int_regslice[2]),
        .Q(pkt_keep_V_reg_108[2]),
        .R(1'b0));
  FDRE \pkt_keep_V_reg_108_reg[3] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(din_TKEEP_int_regslice[3]),
        .Q(pkt_keep_V_reg_108[3]),
        .R(1'b0));
  FDRE \pkt_keep_V_reg_108_reg[4] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(din_TKEEP_int_regslice[4]),
        .Q(pkt_keep_V_reg_108[4]),
        .R(1'b0));
  FDRE \pkt_keep_V_reg_108_reg[5] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(din_TKEEP_int_regslice[5]),
        .Q(pkt_keep_V_reg_108[5]),
        .R(1'b0));
  FDRE \pkt_keep_V_reg_108_reg[6] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(din_TKEEP_int_regslice[6]),
        .Q(pkt_keep_V_reg_108[6]),
        .R(1'b0));
  FDRE \pkt_keep_V_reg_108_reg[7] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(din_TKEEP_int_regslice[7]),
        .Q(pkt_keep_V_reg_108[7]),
        .R(1'b0));
  FDRE \pkt_keep_V_reg_108_reg[8] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(din_TKEEP_int_regslice[8]),
        .Q(pkt_keep_V_reg_108[8]),
        .R(1'b0));
  FDRE \pkt_keep_V_reg_108_reg[9] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(din_TKEEP_int_regslice[9]),
        .Q(pkt_keep_V_reg_108[9]),
        .R(1'b0));
  FDRE \pkt_last_V_reg_113_reg[0] 
       (.C(ap_clk),
        .CE(ack_out),
        .D(din_TLAST_int_regslice),
        .Q(pkt_last_V_reg_113),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both regslice_both_din_V_data_V_U
       (.ARESET(ARESET),
        .\B_V_data_1_state_reg[1]_0 (din_TREADY),
        .D(ap_NS_fsm[1]),
        .E(ack_out),
        .Q({ap_CS_fsm_state7,\ap_CS_fsm_reg_n_0_[1] ,\ap_CS_fsm_reg_n_0_[0] }),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm[1]_i_2_n_0 ),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .din_TDATA(din_TDATA),
        .din_TDATA_int_regslice(din_TDATA_int_regslice),
        .din_TVALID(din_TVALID),
        .vld_out(vld_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized1 regslice_both_din_V_keep_V_U
       (.ARESET(ARESET),
        .D(din_TKEEP_int_regslice),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .din_TKEEP(din_TKEEP),
        .din_TVALID(din_TVALID),
        .vld_out(vld_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized3 regslice_both_din_V_last_V_U
       (.ARESET(ARESET),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .din_TLAST(din_TLAST),
        .din_TLAST_int_regslice(din_TLAST_int_regslice),
        .din_TVALID(din_TVALID),
        .vld_out(vld_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both_0 regslice_both_dout_V_data_V_U
       (.ARESET(ARESET),
        .\B_V_data_1_payload_A_reg[127]_0 (buff2),
        .\B_V_data_1_state_reg[0]_0 (dout_TVALID),
        .D({ap_NS_fsm[6:5],ap_NS_fsm[0]}),
        .Q({ap_CS_fsm_state7,ap_CS_fsm_state6,\ap_CS_fsm_reg_n_0_[4] ,\ap_CS_fsm_reg_n_0_[0] }),
        .\ap_CS_fsm_reg[6] (regslice_both_dout_V_data_V_U_n_5),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .dout_TDATA(dout_TDATA),
        .dout_TREADY(dout_TREADY),
        .dout_TREADY_int_regslice(dout_TREADY_int_regslice),
        .vld_out(vld_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized1_1 regslice_both_dout_V_keep_V_U
       (.ARESET(ARESET),
        .\B_V_data_1_payload_A_reg[15]_0 (pkt_keep_V_reg_108),
        .Q(ap_CS_fsm_state6),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .dout_TKEEP(dout_TKEEP),
        .dout_TREADY(dout_TREADY),
        .dout_TREADY_int_regslice(dout_TREADY_int_regslice));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized3_2 regslice_both_dout_V_last_V_U
       (.ARESET(ARESET),
        .Q(ap_CS_fsm_state6),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .dout_TLAST(dout_TLAST),
        .dout_TREADY(dout_TREADY),
        .dout_TREADY_int_regslice(dout_TREADY_int_regslice),
        .pkt_last_V_reg_113(pkt_last_V_reg_113));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft_control_s_axi
   (ARESET,
    s_axi_control_BVALID,
    \FSM_onehot_wstate_reg[2]_0 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_control_RVALID,
    \FSM_onehot_rstate_reg[1]_0 ,
    Q,
    s_axi_control_RDATA,
    ap_rst_n,
    s_axi_control_WVALID,
    ap_clk,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_AWADDR,
    s_axi_control_AWVALID,
    s_axi_control_BREADY,
    s_axi_control_ARVALID,
    s_axi_control_RREADY,
    s_axi_control_ARADDR);
  output ARESET;
  output s_axi_control_BVALID;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_control_RVALID;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output [31:0]Q;
  output [31:0]s_axi_control_RDATA;
  input ap_rst_n;
  input s_axi_control_WVALID;
  input ap_clk;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input [4:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  input s_axi_control_BREADY;
  input s_axi_control_ARVALID;
  input s_axi_control_RREADY;
  input [4:0]s_axi_control_ARADDR;

  wire ARESET;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [31:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire ar_hs;
  wire \int_size[31]_i_1_n_0 ;
  wire \int_size[31]_i_3_n_0 ;
  wire [31:0]\or ;
  wire \rdata_data[31]_i_1_n_0 ;
  wire [2:1]rnext;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [4:0]s_axi_control_AWADDR;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;

  LUT1 #(
    .INIT(2'h1)) 
    \B_V_data_1_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF747)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_RVALID),
        .I3(s_axi_control_RREADY),
        .O(rnext[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_RREADY),
        .I3(s_axi_control_RVALID),
        .O(rnext[2]));
  (* FSM_ENCODED_STATES = "rddata:100,rdidle:010,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext[1]),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ARESET));
  (* FSM_ENCODED_STATES = "rddata:100,rdidle:010,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext[2]),
        .Q(s_axi_control_RVALID),
        .R(ARESET));
  LUT5 #(
    .INIT(32'h888BFF8B)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(s_axi_control_BREADY),
        .I1(s_axi_control_BVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .I4(s_axi_control_AWVALID),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_control_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_control_BREADY),
        .I3(s_axi_control_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ARESET));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ARESET));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_control_BVALID),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[0]),
        .O(\or [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[10]),
        .O(\or [10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[11]),
        .O(\or [11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[12]),
        .O(\or [12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[13]),
        .O(\or [13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[14]),
        .O(\or [14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[15]),
        .O(\or [15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[16]),
        .O(\or [16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[17]),
        .O(\or [17]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[18]),
        .O(\or [18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[19]),
        .O(\or [19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[1]),
        .O(\or [1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[20]),
        .O(\or [20]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[21]),
        .O(\or [21]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[22]),
        .O(\or [22]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[23]),
        .O(\or [23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[24]),
        .O(\or [24]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[25]),
        .O(\or [25]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[26]),
        .O(\or [26]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[27]),
        .O(\or [27]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[28]),
        .O(\or [28]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[29]),
        .O(\or [29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[2]),
        .O(\or [2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[30]),
        .O(\or [30]));
  LUT2 #(
    .INIT(4'h2)) 
    \int_size[31]_i_1 
       (.I0(s_axi_control_WVALID),
        .I1(\int_size[31]_i_3_n_0 ),
        .O(\int_size[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[31]),
        .O(\or [31]));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \int_size[31]_i_3 
       (.I0(\waddr_reg_n_0_[0] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[1] ),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(\waddr_reg_n_0_[4] ),
        .I5(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\int_size[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[3]),
        .O(\or [3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[4]),
        .O(\or [4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[5]),
        .O(\or [5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[6]),
        .O(\or [6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[7]),
        .O(\or [7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[8]),
        .O(\or [8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_size[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[9]),
        .O(\or [9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[0] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[10] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[11] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[12] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[13] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[14] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[15] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[16] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[17] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[18] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[19] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[1] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[20] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[21] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[22] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[23] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[24] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[25] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[26] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[27] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[28] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[29] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[2] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[30] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[31] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[3] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[4] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[5] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[6] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[7] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[8] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_size_reg[9] 
       (.C(ap_clk),
        .CE(\int_size[31]_i_1_n_0 ),
        .D(\or [9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \rdata_data[31]_i_1 
       (.I0(ar_hs),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata_data[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata_data[31]_i_2 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  FDRE \rdata_data_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[0]),
        .Q(s_axi_control_RDATA[0]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[10]),
        .Q(s_axi_control_RDATA[10]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[11]),
        .Q(s_axi_control_RDATA[11]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[12]),
        .Q(s_axi_control_RDATA[12]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[13]),
        .Q(s_axi_control_RDATA[13]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[14]),
        .Q(s_axi_control_RDATA[14]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[15]),
        .Q(s_axi_control_RDATA[15]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[16]),
        .Q(s_axi_control_RDATA[16]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[17]),
        .Q(s_axi_control_RDATA[17]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[18]),
        .Q(s_axi_control_RDATA[18]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[19]),
        .Q(s_axi_control_RDATA[19]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[1]),
        .Q(s_axi_control_RDATA[1]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[20]),
        .Q(s_axi_control_RDATA[20]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[21]),
        .Q(s_axi_control_RDATA[21]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[22] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[22]),
        .Q(s_axi_control_RDATA[22]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[23] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[23]),
        .Q(s_axi_control_RDATA[23]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[24] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[24]),
        .Q(s_axi_control_RDATA[24]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[25] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[25]),
        .Q(s_axi_control_RDATA[25]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[26] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[26]),
        .Q(s_axi_control_RDATA[26]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[27] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[27]),
        .Q(s_axi_control_RDATA[27]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[28] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[28]),
        .Q(s_axi_control_RDATA[28]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[29] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[29]),
        .Q(s_axi_control_RDATA[29]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[2]),
        .Q(s_axi_control_RDATA[2]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[30] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[30]),
        .Q(s_axi_control_RDATA[30]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[31] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[31]),
        .Q(s_axi_control_RDATA[31]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[3]),
        .Q(s_axi_control_RDATA[3]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[4]),
        .Q(s_axi_control_RDATA[4]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[5]),
        .Q(s_axi_control_RDATA[5]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[6]),
        .Q(s_axi_control_RDATA[6]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[7]),
        .Q(s_axi_control_RDATA[7]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[8]),
        .Q(s_axi_control_RDATA[8]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(Q[9]),
        .Q(s_axi_control_RDATA[9]),
        .R(\rdata_data[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[4]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft_mul_128s_32s_128_5_1
   (\buff2_reg[127] ,
    ack_out,
    buff0_reg__3,
    ap_clk,
    Q,
    din_TDATA_int_regslice);
  output [127:0]\buff2_reg[127] ;
  input ack_out;
  input buff0_reg__3;
  input ap_clk;
  input [31:0]Q;
  input [127:0]din_TDATA_int_regslice;

  wire [31:0]Q;
  wire ack_out;
  wire ap_clk;
  wire buff0_reg__3;
  wire [127:0]\buff2_reg[127] ;
  wire [127:0]din_TDATA_int_regslice;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft_mul_128s_32s_128_5_1_Multiplier_0 fft_mul_128s_32s_128_5_1_Multiplier_0_U
       (.Q(Q),
        .ack_out(ack_out),
        .ap_clk(ap_clk),
        .buff0_reg__3_0(buff0_reg__3),
        .\buff2_reg[127]_0 (\buff2_reg[127] ),
        .din_TDATA_int_regslice(din_TDATA_int_regslice));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fft_mul_128s_32s_128_5_1_Multiplier_0
   (\buff2_reg[127]_0 ,
    ack_out,
    buff0_reg__3_0,
    ap_clk,
    Q,
    din_TDATA_int_regslice);
  output [127:0]\buff2_reg[127]_0 ;
  input ack_out;
  input buff0_reg__3_0;
  input ap_clk;
  input [31:0]Q;
  input [127:0]din_TDATA_int_regslice;

  wire [31:0]Q;
  wire ack_out;
  wire ap_clk;
  wire buff0_reg__0_n_106;
  wire buff0_reg__0_n_107;
  wire buff0_reg__0_n_108;
  wire buff0_reg__0_n_109;
  wire buff0_reg__0_n_110;
  wire buff0_reg__0_n_111;
  wire buff0_reg__0_n_112;
  wire buff0_reg__0_n_113;
  wire buff0_reg__0_n_114;
  wire buff0_reg__0_n_115;
  wire buff0_reg__0_n_116;
  wire buff0_reg__0_n_117;
  wire buff0_reg__0_n_118;
  wire buff0_reg__0_n_119;
  wire buff0_reg__0_n_120;
  wire buff0_reg__0_n_121;
  wire buff0_reg__0_n_122;
  wire buff0_reg__0_n_123;
  wire buff0_reg__0_n_124;
  wire buff0_reg__0_n_125;
  wire buff0_reg__0_n_126;
  wire buff0_reg__0_n_127;
  wire buff0_reg__0_n_128;
  wire buff0_reg__0_n_129;
  wire buff0_reg__0_n_130;
  wire buff0_reg__0_n_131;
  wire buff0_reg__0_n_132;
  wire buff0_reg__0_n_133;
  wire buff0_reg__0_n_134;
  wire buff0_reg__0_n_135;
  wire buff0_reg__0_n_136;
  wire buff0_reg__0_n_137;
  wire buff0_reg__0_n_138;
  wire buff0_reg__0_n_139;
  wire buff0_reg__0_n_140;
  wire buff0_reg__0_n_141;
  wire buff0_reg__0_n_142;
  wire buff0_reg__0_n_143;
  wire buff0_reg__0_n_144;
  wire buff0_reg__0_n_145;
  wire buff0_reg__0_n_146;
  wire buff0_reg__0_n_147;
  wire buff0_reg__0_n_148;
  wire buff0_reg__0_n_149;
  wire buff0_reg__0_n_150;
  wire buff0_reg__0_n_151;
  wire buff0_reg__0_n_152;
  wire buff0_reg__0_n_153;
  wire buff0_reg__1_n_100;
  wire buff0_reg__1_n_101;
  wire buff0_reg__1_n_102;
  wire buff0_reg__1_n_103;
  wire buff0_reg__1_n_104;
  wire buff0_reg__1_n_105;
  wire buff0_reg__1_n_106;
  wire buff0_reg__1_n_107;
  wire buff0_reg__1_n_108;
  wire buff0_reg__1_n_109;
  wire buff0_reg__1_n_110;
  wire buff0_reg__1_n_111;
  wire buff0_reg__1_n_112;
  wire buff0_reg__1_n_113;
  wire buff0_reg__1_n_114;
  wire buff0_reg__1_n_115;
  wire buff0_reg__1_n_116;
  wire buff0_reg__1_n_117;
  wire buff0_reg__1_n_118;
  wire buff0_reg__1_n_119;
  wire buff0_reg__1_n_120;
  wire buff0_reg__1_n_121;
  wire buff0_reg__1_n_122;
  wire buff0_reg__1_n_123;
  wire buff0_reg__1_n_124;
  wire buff0_reg__1_n_125;
  wire buff0_reg__1_n_126;
  wire buff0_reg__1_n_127;
  wire buff0_reg__1_n_128;
  wire buff0_reg__1_n_129;
  wire buff0_reg__1_n_130;
  wire buff0_reg__1_n_131;
  wire buff0_reg__1_n_132;
  wire buff0_reg__1_n_133;
  wire buff0_reg__1_n_134;
  wire buff0_reg__1_n_135;
  wire buff0_reg__1_n_136;
  wire buff0_reg__1_n_137;
  wire buff0_reg__1_n_138;
  wire buff0_reg__1_n_139;
  wire buff0_reg__1_n_140;
  wire buff0_reg__1_n_141;
  wire buff0_reg__1_n_142;
  wire buff0_reg__1_n_143;
  wire buff0_reg__1_n_144;
  wire buff0_reg__1_n_145;
  wire buff0_reg__1_n_146;
  wire buff0_reg__1_n_147;
  wire buff0_reg__1_n_148;
  wire buff0_reg__1_n_149;
  wire buff0_reg__1_n_150;
  wire buff0_reg__1_n_151;
  wire buff0_reg__1_n_152;
  wire buff0_reg__1_n_153;
  wire buff0_reg__1_n_58;
  wire buff0_reg__1_n_59;
  wire buff0_reg__1_n_60;
  wire buff0_reg__1_n_61;
  wire buff0_reg__1_n_62;
  wire buff0_reg__1_n_63;
  wire buff0_reg__1_n_64;
  wire buff0_reg__1_n_65;
  wire buff0_reg__1_n_66;
  wire buff0_reg__1_n_67;
  wire buff0_reg__1_n_68;
  wire buff0_reg__1_n_69;
  wire buff0_reg__1_n_70;
  wire buff0_reg__1_n_71;
  wire buff0_reg__1_n_72;
  wire buff0_reg__1_n_73;
  wire buff0_reg__1_n_74;
  wire buff0_reg__1_n_75;
  wire buff0_reg__1_n_76;
  wire buff0_reg__1_n_77;
  wire buff0_reg__1_n_78;
  wire buff0_reg__1_n_79;
  wire buff0_reg__1_n_80;
  wire buff0_reg__1_n_81;
  wire buff0_reg__1_n_82;
  wire buff0_reg__1_n_83;
  wire buff0_reg__1_n_84;
  wire buff0_reg__1_n_85;
  wire buff0_reg__1_n_86;
  wire buff0_reg__1_n_87;
  wire buff0_reg__1_n_88;
  wire buff0_reg__1_n_89;
  wire buff0_reg__1_n_90;
  wire buff0_reg__1_n_91;
  wire buff0_reg__1_n_92;
  wire buff0_reg__1_n_93;
  wire buff0_reg__1_n_94;
  wire buff0_reg__1_n_95;
  wire buff0_reg__1_n_96;
  wire buff0_reg__1_n_97;
  wire buff0_reg__1_n_98;
  wire buff0_reg__1_n_99;
  wire buff0_reg__2_n_106;
  wire buff0_reg__2_n_107;
  wire buff0_reg__2_n_108;
  wire buff0_reg__2_n_109;
  wire buff0_reg__2_n_110;
  wire buff0_reg__2_n_111;
  wire buff0_reg__2_n_112;
  wire buff0_reg__2_n_113;
  wire buff0_reg__2_n_114;
  wire buff0_reg__2_n_115;
  wire buff0_reg__2_n_116;
  wire buff0_reg__2_n_117;
  wire buff0_reg__2_n_118;
  wire buff0_reg__2_n_119;
  wire buff0_reg__2_n_120;
  wire buff0_reg__2_n_121;
  wire buff0_reg__2_n_122;
  wire buff0_reg__2_n_123;
  wire buff0_reg__2_n_124;
  wire buff0_reg__2_n_125;
  wire buff0_reg__2_n_126;
  wire buff0_reg__2_n_127;
  wire buff0_reg__2_n_128;
  wire buff0_reg__2_n_129;
  wire buff0_reg__2_n_130;
  wire buff0_reg__2_n_131;
  wire buff0_reg__2_n_132;
  wire buff0_reg__2_n_133;
  wire buff0_reg__2_n_134;
  wire buff0_reg__2_n_135;
  wire buff0_reg__2_n_136;
  wire buff0_reg__2_n_137;
  wire buff0_reg__2_n_138;
  wire buff0_reg__2_n_139;
  wire buff0_reg__2_n_140;
  wire buff0_reg__2_n_141;
  wire buff0_reg__2_n_142;
  wire buff0_reg__2_n_143;
  wire buff0_reg__2_n_144;
  wire buff0_reg__2_n_145;
  wire buff0_reg__2_n_146;
  wire buff0_reg__2_n_147;
  wire buff0_reg__2_n_148;
  wire buff0_reg__2_n_149;
  wire buff0_reg__2_n_150;
  wire buff0_reg__2_n_151;
  wire buff0_reg__2_n_152;
  wire buff0_reg__2_n_153;
  wire buff0_reg__3_0;
  wire buff0_reg__3_n_100;
  wire buff0_reg__3_n_101;
  wire buff0_reg__3_n_102;
  wire buff0_reg__3_n_103;
  wire buff0_reg__3_n_104;
  wire buff0_reg__3_n_105;
  wire buff0_reg__3_n_106;
  wire buff0_reg__3_n_107;
  wire buff0_reg__3_n_108;
  wire buff0_reg__3_n_109;
  wire buff0_reg__3_n_110;
  wire buff0_reg__3_n_111;
  wire buff0_reg__3_n_112;
  wire buff0_reg__3_n_113;
  wire buff0_reg__3_n_114;
  wire buff0_reg__3_n_115;
  wire buff0_reg__3_n_116;
  wire buff0_reg__3_n_117;
  wire buff0_reg__3_n_118;
  wire buff0_reg__3_n_119;
  wire buff0_reg__3_n_120;
  wire buff0_reg__3_n_121;
  wire buff0_reg__3_n_122;
  wire buff0_reg__3_n_123;
  wire buff0_reg__3_n_124;
  wire buff0_reg__3_n_125;
  wire buff0_reg__3_n_126;
  wire buff0_reg__3_n_127;
  wire buff0_reg__3_n_128;
  wire buff0_reg__3_n_129;
  wire buff0_reg__3_n_130;
  wire buff0_reg__3_n_131;
  wire buff0_reg__3_n_132;
  wire buff0_reg__3_n_133;
  wire buff0_reg__3_n_134;
  wire buff0_reg__3_n_135;
  wire buff0_reg__3_n_136;
  wire buff0_reg__3_n_137;
  wire buff0_reg__3_n_138;
  wire buff0_reg__3_n_139;
  wire buff0_reg__3_n_140;
  wire buff0_reg__3_n_141;
  wire buff0_reg__3_n_142;
  wire buff0_reg__3_n_143;
  wire buff0_reg__3_n_144;
  wire buff0_reg__3_n_145;
  wire buff0_reg__3_n_146;
  wire buff0_reg__3_n_147;
  wire buff0_reg__3_n_148;
  wire buff0_reg__3_n_149;
  wire buff0_reg__3_n_150;
  wire buff0_reg__3_n_151;
  wire buff0_reg__3_n_152;
  wire buff0_reg__3_n_153;
  wire buff0_reg__3_n_58;
  wire buff0_reg__3_n_59;
  wire buff0_reg__3_n_60;
  wire buff0_reg__3_n_61;
  wire buff0_reg__3_n_62;
  wire buff0_reg__3_n_63;
  wire buff0_reg__3_n_64;
  wire buff0_reg__3_n_65;
  wire buff0_reg__3_n_66;
  wire buff0_reg__3_n_67;
  wire buff0_reg__3_n_68;
  wire buff0_reg__3_n_69;
  wire buff0_reg__3_n_70;
  wire buff0_reg__3_n_71;
  wire buff0_reg__3_n_72;
  wire buff0_reg__3_n_73;
  wire buff0_reg__3_n_74;
  wire buff0_reg__3_n_75;
  wire buff0_reg__3_n_76;
  wire buff0_reg__3_n_77;
  wire buff0_reg__3_n_78;
  wire buff0_reg__3_n_79;
  wire buff0_reg__3_n_80;
  wire buff0_reg__3_n_81;
  wire buff0_reg__3_n_82;
  wire buff0_reg__3_n_83;
  wire buff0_reg__3_n_84;
  wire buff0_reg__3_n_85;
  wire buff0_reg__3_n_86;
  wire buff0_reg__3_n_87;
  wire buff0_reg__3_n_88;
  wire buff0_reg__3_n_89;
  wire buff0_reg__3_n_90;
  wire buff0_reg__3_n_91;
  wire buff0_reg__3_n_92;
  wire buff0_reg__3_n_93;
  wire buff0_reg__3_n_94;
  wire buff0_reg__3_n_95;
  wire buff0_reg__3_n_96;
  wire buff0_reg__3_n_97;
  wire buff0_reg__3_n_98;
  wire buff0_reg__3_n_99;
  wire buff0_reg_n_100;
  wire buff0_reg_n_101;
  wire buff0_reg_n_102;
  wire buff0_reg_n_103;
  wire buff0_reg_n_104;
  wire buff0_reg_n_105;
  wire buff0_reg_n_106;
  wire buff0_reg_n_107;
  wire buff0_reg_n_108;
  wire buff0_reg_n_109;
  wire buff0_reg_n_110;
  wire buff0_reg_n_111;
  wire buff0_reg_n_112;
  wire buff0_reg_n_113;
  wire buff0_reg_n_114;
  wire buff0_reg_n_115;
  wire buff0_reg_n_116;
  wire buff0_reg_n_117;
  wire buff0_reg_n_118;
  wire buff0_reg_n_119;
  wire buff0_reg_n_120;
  wire buff0_reg_n_121;
  wire buff0_reg_n_122;
  wire buff0_reg_n_123;
  wire buff0_reg_n_124;
  wire buff0_reg_n_125;
  wire buff0_reg_n_126;
  wire buff0_reg_n_127;
  wire buff0_reg_n_128;
  wire buff0_reg_n_129;
  wire buff0_reg_n_130;
  wire buff0_reg_n_131;
  wire buff0_reg_n_132;
  wire buff0_reg_n_133;
  wire buff0_reg_n_134;
  wire buff0_reg_n_135;
  wire buff0_reg_n_136;
  wire buff0_reg_n_137;
  wire buff0_reg_n_138;
  wire buff0_reg_n_139;
  wire buff0_reg_n_140;
  wire buff0_reg_n_141;
  wire buff0_reg_n_142;
  wire buff0_reg_n_143;
  wire buff0_reg_n_144;
  wire buff0_reg_n_145;
  wire buff0_reg_n_146;
  wire buff0_reg_n_147;
  wire buff0_reg_n_148;
  wire buff0_reg_n_149;
  wire buff0_reg_n_150;
  wire buff0_reg_n_151;
  wire buff0_reg_n_152;
  wire buff0_reg_n_153;
  wire buff0_reg_n_58;
  wire buff0_reg_n_59;
  wire buff0_reg_n_60;
  wire buff0_reg_n_61;
  wire buff0_reg_n_62;
  wire buff0_reg_n_63;
  wire buff0_reg_n_64;
  wire buff0_reg_n_65;
  wire buff0_reg_n_66;
  wire buff0_reg_n_67;
  wire buff0_reg_n_68;
  wire buff0_reg_n_69;
  wire buff0_reg_n_70;
  wire buff0_reg_n_71;
  wire buff0_reg_n_72;
  wire buff0_reg_n_73;
  wire buff0_reg_n_74;
  wire buff0_reg_n_75;
  wire buff0_reg_n_76;
  wire buff0_reg_n_77;
  wire buff0_reg_n_78;
  wire buff0_reg_n_79;
  wire buff0_reg_n_80;
  wire buff0_reg_n_81;
  wire buff0_reg_n_82;
  wire buff0_reg_n_83;
  wire buff0_reg_n_84;
  wire buff0_reg_n_85;
  wire buff0_reg_n_86;
  wire buff0_reg_n_87;
  wire buff0_reg_n_88;
  wire buff0_reg_n_89;
  wire buff0_reg_n_90;
  wire buff0_reg_n_91;
  wire buff0_reg_n_92;
  wire buff0_reg_n_93;
  wire buff0_reg_n_94;
  wire buff0_reg_n_95;
  wire buff0_reg_n_96;
  wire buff0_reg_n_97;
  wire buff0_reg_n_98;
  wire buff0_reg_n_99;
  wire \buff1_reg[0]__0_n_0 ;
  wire \buff1_reg[0]__1_n_0 ;
  wire \buff1_reg[0]__2_n_0 ;
  wire \buff1_reg[0]__3_n_0 ;
  wire \buff1_reg[10]__0_n_0 ;
  wire \buff1_reg[10]__1_n_0 ;
  wire \buff1_reg[10]__2_n_0 ;
  wire \buff1_reg[10]__3_n_0 ;
  wire \buff1_reg[11]__0_n_0 ;
  wire \buff1_reg[11]__1_n_0 ;
  wire \buff1_reg[11]__2_n_0 ;
  wire \buff1_reg[11]__3_n_0 ;
  wire \buff1_reg[12]__0_n_0 ;
  wire \buff1_reg[12]__1_n_0 ;
  wire \buff1_reg[12]__2_n_0 ;
  wire \buff1_reg[12]__3_n_0 ;
  wire \buff1_reg[13]__0_n_0 ;
  wire \buff1_reg[13]__1_n_0 ;
  wire \buff1_reg[13]__2_n_0 ;
  wire \buff1_reg[13]__3_n_0 ;
  wire \buff1_reg[14]__0_n_0 ;
  wire \buff1_reg[14]__1_n_0 ;
  wire \buff1_reg[14]__2_n_0 ;
  wire \buff1_reg[14]__3_n_0 ;
  wire \buff1_reg[15]__0_n_0 ;
  wire \buff1_reg[15]__1_n_0 ;
  wire \buff1_reg[15]__2_n_0 ;
  wire \buff1_reg[15]__3_n_0 ;
  wire \buff1_reg[16]__0_n_0 ;
  wire \buff1_reg[16]__1_n_0 ;
  wire \buff1_reg[16]__2_n_0 ;
  wire \buff1_reg[16]__3_n_0 ;
  wire \buff1_reg[1]__0_n_0 ;
  wire \buff1_reg[1]__1_n_0 ;
  wire \buff1_reg[1]__2_n_0 ;
  wire \buff1_reg[1]__3_n_0 ;
  wire \buff1_reg[2]__0_n_0 ;
  wire \buff1_reg[2]__1_n_0 ;
  wire \buff1_reg[2]__2_n_0 ;
  wire \buff1_reg[2]__3_n_0 ;
  wire \buff1_reg[3]__0_n_0 ;
  wire \buff1_reg[3]__1_n_0 ;
  wire \buff1_reg[3]__2_n_0 ;
  wire \buff1_reg[3]__3_n_0 ;
  wire \buff1_reg[4]__0_n_0 ;
  wire \buff1_reg[4]__1_n_0 ;
  wire \buff1_reg[4]__2_n_0 ;
  wire \buff1_reg[4]__3_n_0 ;
  wire \buff1_reg[5]__0_n_0 ;
  wire \buff1_reg[5]__1_n_0 ;
  wire \buff1_reg[5]__2_n_0 ;
  wire \buff1_reg[5]__3_n_0 ;
  wire \buff1_reg[6]__0_n_0 ;
  wire \buff1_reg[6]__1_n_0 ;
  wire \buff1_reg[6]__2_n_0 ;
  wire \buff1_reg[6]__3_n_0 ;
  wire \buff1_reg[7]__0_n_0 ;
  wire \buff1_reg[7]__1_n_0 ;
  wire \buff1_reg[7]__2_n_0 ;
  wire \buff1_reg[7]__3_n_0 ;
  wire \buff1_reg[8]__0_n_0 ;
  wire \buff1_reg[8]__1_n_0 ;
  wire \buff1_reg[8]__2_n_0 ;
  wire \buff1_reg[8]__3_n_0 ;
  wire \buff1_reg[9]__0_n_0 ;
  wire \buff1_reg[9]__1_n_0 ;
  wire \buff1_reg[9]__2_n_0 ;
  wire \buff1_reg[9]__3_n_0 ;
  wire buff1_reg__0_n_100;
  wire buff1_reg__0_n_101;
  wire buff1_reg__0_n_102;
  wire buff1_reg__0_n_103;
  wire buff1_reg__0_n_104;
  wire buff1_reg__0_n_105;
  wire buff1_reg__0_n_58;
  wire buff1_reg__0_n_59;
  wire buff1_reg__0_n_60;
  wire buff1_reg__0_n_61;
  wire buff1_reg__0_n_62;
  wire buff1_reg__0_n_63;
  wire buff1_reg__0_n_64;
  wire buff1_reg__0_n_65;
  wire buff1_reg__0_n_66;
  wire buff1_reg__0_n_67;
  wire buff1_reg__0_n_68;
  wire buff1_reg__0_n_69;
  wire buff1_reg__0_n_70;
  wire buff1_reg__0_n_71;
  wire buff1_reg__0_n_72;
  wire buff1_reg__0_n_73;
  wire buff1_reg__0_n_74;
  wire buff1_reg__0_n_75;
  wire buff1_reg__0_n_76;
  wire buff1_reg__0_n_77;
  wire buff1_reg__0_n_78;
  wire buff1_reg__0_n_79;
  wire buff1_reg__0_n_80;
  wire buff1_reg__0_n_81;
  wire buff1_reg__0_n_82;
  wire buff1_reg__0_n_83;
  wire buff1_reg__0_n_84;
  wire buff1_reg__0_n_85;
  wire buff1_reg__0_n_86;
  wire buff1_reg__0_n_87;
  wire buff1_reg__0_n_88;
  wire buff1_reg__0_n_89;
  wire buff1_reg__0_n_90;
  wire buff1_reg__0_n_91;
  wire buff1_reg__0_n_92;
  wire buff1_reg__0_n_93;
  wire buff1_reg__0_n_94;
  wire buff1_reg__0_n_95;
  wire buff1_reg__0_n_96;
  wire buff1_reg__0_n_97;
  wire buff1_reg__0_n_98;
  wire buff1_reg__0_n_99;
  wire buff1_reg__1_n_100;
  wire buff1_reg__1_n_101;
  wire buff1_reg__1_n_102;
  wire buff1_reg__1_n_103;
  wire buff1_reg__1_n_104;
  wire buff1_reg__1_n_105;
  wire buff1_reg__1_n_58;
  wire buff1_reg__1_n_59;
  wire buff1_reg__1_n_60;
  wire buff1_reg__1_n_61;
  wire buff1_reg__1_n_62;
  wire buff1_reg__1_n_63;
  wire buff1_reg__1_n_64;
  wire buff1_reg__1_n_65;
  wire buff1_reg__1_n_66;
  wire buff1_reg__1_n_67;
  wire buff1_reg__1_n_68;
  wire buff1_reg__1_n_69;
  wire buff1_reg__1_n_70;
  wire buff1_reg__1_n_71;
  wire buff1_reg__1_n_72;
  wire buff1_reg__1_n_73;
  wire buff1_reg__1_n_74;
  wire buff1_reg__1_n_75;
  wire buff1_reg__1_n_76;
  wire buff1_reg__1_n_77;
  wire buff1_reg__1_n_78;
  wire buff1_reg__1_n_79;
  wire buff1_reg__1_n_80;
  wire buff1_reg__1_n_81;
  wire buff1_reg__1_n_82;
  wire buff1_reg__1_n_83;
  wire buff1_reg__1_n_84;
  wire buff1_reg__1_n_85;
  wire buff1_reg__1_n_86;
  wire buff1_reg__1_n_87;
  wire buff1_reg__1_n_88;
  wire buff1_reg__1_n_89;
  wire buff1_reg__1_n_90;
  wire buff1_reg__1_n_91;
  wire buff1_reg__1_n_92;
  wire buff1_reg__1_n_93;
  wire buff1_reg__1_n_94;
  wire buff1_reg__1_n_95;
  wire buff1_reg__1_n_96;
  wire buff1_reg__1_n_97;
  wire buff1_reg__1_n_98;
  wire buff1_reg__1_n_99;
  wire buff1_reg__2_n_100;
  wire buff1_reg__2_n_101;
  wire buff1_reg__2_n_102;
  wire buff1_reg__2_n_103;
  wire buff1_reg__2_n_104;
  wire buff1_reg__2_n_105;
  wire buff1_reg__2_n_58;
  wire buff1_reg__2_n_59;
  wire buff1_reg__2_n_60;
  wire buff1_reg__2_n_61;
  wire buff1_reg__2_n_62;
  wire buff1_reg__2_n_63;
  wire buff1_reg__2_n_64;
  wire buff1_reg__2_n_65;
  wire buff1_reg__2_n_66;
  wire buff1_reg__2_n_67;
  wire buff1_reg__2_n_68;
  wire buff1_reg__2_n_69;
  wire buff1_reg__2_n_70;
  wire buff1_reg__2_n_71;
  wire buff1_reg__2_n_72;
  wire buff1_reg__2_n_73;
  wire buff1_reg__2_n_74;
  wire buff1_reg__2_n_75;
  wire buff1_reg__2_n_76;
  wire buff1_reg__2_n_77;
  wire buff1_reg__2_n_78;
  wire buff1_reg__2_n_79;
  wire buff1_reg__2_n_80;
  wire buff1_reg__2_n_81;
  wire buff1_reg__2_n_82;
  wire buff1_reg__2_n_83;
  wire buff1_reg__2_n_84;
  wire buff1_reg__2_n_85;
  wire buff1_reg__2_n_86;
  wire buff1_reg__2_n_87;
  wire buff1_reg__2_n_88;
  wire buff1_reg__2_n_89;
  wire buff1_reg__2_n_90;
  wire buff1_reg__2_n_91;
  wire buff1_reg__2_n_92;
  wire buff1_reg__2_n_93;
  wire buff1_reg__2_n_94;
  wire buff1_reg__2_n_95;
  wire buff1_reg__2_n_96;
  wire buff1_reg__2_n_97;
  wire buff1_reg__2_n_98;
  wire buff1_reg__2_n_99;
  wire buff1_reg__3_n_100;
  wire buff1_reg__3_n_101;
  wire buff1_reg__3_n_102;
  wire buff1_reg__3_n_103;
  wire buff1_reg__3_n_104;
  wire buff1_reg__3_n_105;
  wire buff1_reg__3_n_58;
  wire buff1_reg__3_n_59;
  wire buff1_reg__3_n_60;
  wire buff1_reg__3_n_61;
  wire buff1_reg__3_n_62;
  wire buff1_reg__3_n_63;
  wire buff1_reg__3_n_64;
  wire buff1_reg__3_n_65;
  wire buff1_reg__3_n_66;
  wire buff1_reg__3_n_67;
  wire buff1_reg__3_n_68;
  wire buff1_reg__3_n_69;
  wire buff1_reg__3_n_70;
  wire buff1_reg__3_n_71;
  wire buff1_reg__3_n_72;
  wire buff1_reg__3_n_73;
  wire buff1_reg__3_n_74;
  wire buff1_reg__3_n_75;
  wire buff1_reg__3_n_76;
  wire buff1_reg__3_n_77;
  wire buff1_reg__3_n_78;
  wire buff1_reg__3_n_79;
  wire buff1_reg__3_n_80;
  wire buff1_reg__3_n_81;
  wire buff1_reg__3_n_82;
  wire buff1_reg__3_n_83;
  wire buff1_reg__3_n_84;
  wire buff1_reg__3_n_85;
  wire buff1_reg__3_n_86;
  wire buff1_reg__3_n_87;
  wire buff1_reg__3_n_88;
  wire buff1_reg__3_n_89;
  wire buff1_reg__3_n_90;
  wire buff1_reg__3_n_91;
  wire buff1_reg__3_n_92;
  wire buff1_reg__3_n_93;
  wire buff1_reg__3_n_94;
  wire buff1_reg__3_n_95;
  wire buff1_reg__3_n_96;
  wire buff1_reg__3_n_97;
  wire buff1_reg__3_n_98;
  wire buff1_reg__3_n_99;
  wire [127:33]buff1_reg__5;
  wire \buff1_reg_n_0_[0] ;
  wire \buff1_reg_n_0_[10] ;
  wire \buff1_reg_n_0_[11] ;
  wire \buff1_reg_n_0_[12] ;
  wire \buff1_reg_n_0_[13] ;
  wire \buff1_reg_n_0_[14] ;
  wire \buff1_reg_n_0_[15] ;
  wire \buff1_reg_n_0_[16] ;
  wire \buff1_reg_n_0_[1] ;
  wire \buff1_reg_n_0_[2] ;
  wire \buff1_reg_n_0_[3] ;
  wire \buff1_reg_n_0_[4] ;
  wire \buff1_reg_n_0_[5] ;
  wire \buff1_reg_n_0_[6] ;
  wire \buff1_reg_n_0_[7] ;
  wire \buff1_reg_n_0_[8] ;
  wire \buff1_reg_n_0_[9] ;
  wire buff1_reg_n_100;
  wire buff1_reg_n_101;
  wire buff1_reg_n_102;
  wire buff1_reg_n_103;
  wire buff1_reg_n_104;
  wire buff1_reg_n_105;
  wire buff1_reg_n_58;
  wire buff1_reg_n_59;
  wire buff1_reg_n_60;
  wire buff1_reg_n_61;
  wire buff1_reg_n_62;
  wire buff1_reg_n_63;
  wire buff1_reg_n_64;
  wire buff1_reg_n_65;
  wire buff1_reg_n_66;
  wire buff1_reg_n_67;
  wire buff1_reg_n_68;
  wire buff1_reg_n_69;
  wire buff1_reg_n_70;
  wire buff1_reg_n_71;
  wire buff1_reg_n_72;
  wire buff1_reg_n_73;
  wire buff1_reg_n_74;
  wire buff1_reg_n_75;
  wire buff1_reg_n_76;
  wire buff1_reg_n_77;
  wire buff1_reg_n_78;
  wire buff1_reg_n_79;
  wire buff1_reg_n_80;
  wire buff1_reg_n_81;
  wire buff1_reg_n_82;
  wire buff1_reg_n_83;
  wire buff1_reg_n_84;
  wire buff1_reg_n_85;
  wire buff1_reg_n_86;
  wire buff1_reg_n_87;
  wire buff1_reg_n_88;
  wire buff1_reg_n_89;
  wire buff1_reg_n_90;
  wire buff1_reg_n_91;
  wire buff1_reg_n_92;
  wire buff1_reg_n_93;
  wire buff1_reg_n_94;
  wire buff1_reg_n_95;
  wire buff1_reg_n_96;
  wire buff1_reg_n_97;
  wire buff1_reg_n_98;
  wire buff1_reg_n_99;
  wire \buff2[103]_i_10_n_0 ;
  wire \buff2[103]_i_11_n_0 ;
  wire \buff2[103]_i_12_n_0 ;
  wire \buff2[103]_i_13_n_0 ;
  wire \buff2[103]_i_14_n_0 ;
  wire \buff2[103]_i_2_n_0 ;
  wire \buff2[103]_i_3_n_0 ;
  wire \buff2[103]_i_4_n_0 ;
  wire \buff2[103]_i_5_n_0 ;
  wire \buff2[103]_i_6_n_0 ;
  wire \buff2[103]_i_8_n_0 ;
  wire \buff2[103]_i_9_n_0 ;
  wire \buff2[107]_i_11_n_0 ;
  wire \buff2[107]_i_12_n_0 ;
  wire \buff2[107]_i_13_n_0 ;
  wire \buff2[107]_i_14_n_0 ;
  wire \buff2[107]_i_2_n_0 ;
  wire \buff2[107]_i_3_n_0 ;
  wire \buff2[107]_i_4_n_0 ;
  wire \buff2[107]_i_5_n_0 ;
  wire \buff2[107]_i_6_n_0 ;
  wire \buff2[107]_i_7_n_0 ;
  wire \buff2[107]_i_8_n_0 ;
  wire \buff2[107]_i_9_n_0 ;
  wire \buff2[111]_i_11_n_0 ;
  wire \buff2[111]_i_12_n_0 ;
  wire \buff2[111]_i_13_n_0 ;
  wire \buff2[111]_i_14_n_0 ;
  wire \buff2[111]_i_2_n_0 ;
  wire \buff2[111]_i_3_n_0 ;
  wire \buff2[111]_i_4_n_0 ;
  wire \buff2[111]_i_5_n_0 ;
  wire \buff2[111]_i_6_n_0 ;
  wire \buff2[111]_i_7_n_0 ;
  wire \buff2[111]_i_8_n_0 ;
  wire \buff2[111]_i_9_n_0 ;
  wire \buff2[115]_i_11_n_0 ;
  wire \buff2[115]_i_12_n_0 ;
  wire \buff2[115]_i_13_n_0 ;
  wire \buff2[115]_i_14_n_0 ;
  wire \buff2[115]_i_2_n_0 ;
  wire \buff2[115]_i_3_n_0 ;
  wire \buff2[115]_i_4_n_0 ;
  wire \buff2[115]_i_5_n_0 ;
  wire \buff2[115]_i_6_n_0 ;
  wire \buff2[115]_i_7_n_0 ;
  wire \buff2[115]_i_8_n_0 ;
  wire \buff2[115]_i_9_n_0 ;
  wire \buff2[119]_i_2_n_0 ;
  wire \buff2[119]_i_3_n_0 ;
  wire \buff2[119]_i_4_n_0 ;
  wire \buff2[119]_i_5_n_0 ;
  wire \buff2[119]_i_6_n_0 ;
  wire \buff2[119]_i_7_n_0 ;
  wire \buff2[119]_i_8_n_0 ;
  wire \buff2[119]_i_9_n_0 ;
  wire \buff2[123]_i_2_n_0 ;
  wire \buff2[123]_i_3_n_0 ;
  wire \buff2[123]_i_4_n_0 ;
  wire \buff2[123]_i_5_n_0 ;
  wire \buff2[123]_i_6_n_0 ;
  wire \buff2[123]_i_7_n_0 ;
  wire \buff2[123]_i_8_n_0 ;
  wire \buff2[123]_i_9_n_0 ;
  wire \buff2[127]_i_10_n_0 ;
  wire \buff2[127]_i_11_n_0 ;
  wire \buff2[127]_i_12_n_0 ;
  wire \buff2[127]_i_2_n_0 ;
  wire \buff2[127]_i_3_n_0 ;
  wire \buff2[127]_i_4_n_0 ;
  wire \buff2[127]_i_5_n_0 ;
  wire \buff2[127]_i_6_n_0 ;
  wire \buff2[127]_i_7_n_0 ;
  wire \buff2[127]_i_8_n_0 ;
  wire \buff2[36]_i_2_n_0 ;
  wire \buff2[36]_i_3_n_0 ;
  wire \buff2[36]_i_4_n_0 ;
  wire \buff2[40]_i_2_n_0 ;
  wire \buff2[40]_i_3_n_0 ;
  wire \buff2[40]_i_4_n_0 ;
  wire \buff2[40]_i_5_n_0 ;
  wire \buff2[44]_i_2_n_0 ;
  wire \buff2[44]_i_3_n_0 ;
  wire \buff2[44]_i_4_n_0 ;
  wire \buff2[44]_i_5_n_0 ;
  wire \buff2[48]_i_2_n_0 ;
  wire \buff2[48]_i_3_n_0 ;
  wire \buff2[48]_i_4_n_0 ;
  wire \buff2[48]_i_5_n_0 ;
  wire \buff2[52]_i_2_n_0 ;
  wire \buff2[52]_i_3_n_0 ;
  wire \buff2[52]_i_4_n_0 ;
  wire \buff2[52]_i_5_n_0 ;
  wire \buff2[52]_i_6_n_0 ;
  wire \buff2[56]_i_2_n_0 ;
  wire \buff2[56]_i_3_n_0 ;
  wire \buff2[56]_i_4_n_0 ;
  wire \buff2[56]_i_5_n_0 ;
  wire \buff2[56]_i_6_n_0 ;
  wire \buff2[56]_i_7_n_0 ;
  wire \buff2[56]_i_8_n_0 ;
  wire \buff2[56]_i_9_n_0 ;
  wire \buff2[60]_i_2_n_0 ;
  wire \buff2[60]_i_3_n_0 ;
  wire \buff2[60]_i_4_n_0 ;
  wire \buff2[60]_i_5_n_0 ;
  wire \buff2[60]_i_6_n_0 ;
  wire \buff2[60]_i_7_n_0 ;
  wire \buff2[60]_i_8_n_0 ;
  wire \buff2[60]_i_9_n_0 ;
  wire \buff2[64]_i_2_n_0 ;
  wire \buff2[64]_i_3_n_0 ;
  wire \buff2[64]_i_4_n_0 ;
  wire \buff2[64]_i_5_n_0 ;
  wire \buff2[64]_i_6_n_0 ;
  wire \buff2[64]_i_7_n_0 ;
  wire \buff2[64]_i_8_n_0 ;
  wire \buff2[64]_i_9_n_0 ;
  wire \buff2[68]_i_2_n_0 ;
  wire \buff2[68]_i_3_n_0 ;
  wire \buff2[68]_i_4_n_0 ;
  wire \buff2[68]_i_5_n_0 ;
  wire \buff2[68]_i_6_n_0 ;
  wire \buff2[68]_i_7_n_0 ;
  wire \buff2[68]_i_8_n_0 ;
  wire \buff2[68]_i_9_n_0 ;
  wire \buff2[72]_i_2_n_0 ;
  wire \buff2[72]_i_3_n_0 ;
  wire \buff2[72]_i_4_n_0 ;
  wire \buff2[72]_i_5_n_0 ;
  wire \buff2[72]_i_6_n_0 ;
  wire \buff2[72]_i_7_n_0 ;
  wire \buff2[72]_i_8_n_0 ;
  wire \buff2[72]_i_9_n_0 ;
  wire \buff2[76]_i_2_n_0 ;
  wire \buff2[76]_i_3_n_0 ;
  wire \buff2[76]_i_4_n_0 ;
  wire \buff2[76]_i_5_n_0 ;
  wire \buff2[76]_i_6_n_0 ;
  wire \buff2[76]_i_7_n_0 ;
  wire \buff2[76]_i_8_n_0 ;
  wire \buff2[76]_i_9_n_0 ;
  wire \buff2[80]_i_2_n_0 ;
  wire \buff2[80]_i_3_n_0 ;
  wire \buff2[80]_i_4_n_0 ;
  wire \buff2[80]_i_5_n_0 ;
  wire \buff2[80]_i_6_n_0 ;
  wire \buff2[80]_i_7_n_0 ;
  wire \buff2[80]_i_8_n_0 ;
  wire \buff2[80]_i_9_n_0 ;
  wire \buff2[83]_i_2_n_0 ;
  wire \buff2[83]_i_3_n_0 ;
  wire \buff2[83]_i_4_n_0 ;
  wire \buff2[83]_i_5_n_0 ;
  wire \buff2[83]_i_6_n_0 ;
  wire \buff2[83]_i_7_n_0 ;
  wire \buff2[83]_i_8_n_0 ;
  wire \buff2[83]_i_9_n_0 ;
  wire \buff2[87]_i_2_n_0 ;
  wire \buff2[87]_i_3_n_0 ;
  wire \buff2[87]_i_4_n_0 ;
  wire \buff2[91]_i_10_n_0 ;
  wire \buff2[91]_i_11_n_0 ;
  wire \buff2[91]_i_12_n_0 ;
  wire \buff2[91]_i_13_n_0 ;
  wire \buff2[91]_i_14_n_0 ;
  wire \buff2[91]_i_2_n_0 ;
  wire \buff2[91]_i_3_n_0 ;
  wire \buff2[91]_i_4_n_0 ;
  wire \buff2[91]_i_5_n_0 ;
  wire \buff2[91]_i_7_n_0 ;
  wire \buff2[91]_i_8_n_0 ;
  wire \buff2[91]_i_9_n_0 ;
  wire \buff2[95]_i_10_n_0 ;
  wire \buff2[95]_i_11_n_0 ;
  wire \buff2[95]_i_12_n_0 ;
  wire \buff2[95]_i_13_n_0 ;
  wire \buff2[95]_i_14_n_0 ;
  wire \buff2[95]_i_2_n_0 ;
  wire \buff2[95]_i_3_n_0 ;
  wire \buff2[95]_i_4_n_0 ;
  wire \buff2[95]_i_5_n_0 ;
  wire \buff2[95]_i_7_n_0 ;
  wire \buff2[95]_i_8_n_0 ;
  wire \buff2[95]_i_9_n_0 ;
  wire \buff2[99]_i_10_n_0 ;
  wire \buff2[99]_i_11_n_0 ;
  wire \buff2[99]_i_12_n_0 ;
  wire \buff2[99]_i_13_n_0 ;
  wire \buff2[99]_i_14_n_0 ;
  wire \buff2[99]_i_2_n_0 ;
  wire \buff2[99]_i_3_n_0 ;
  wire \buff2[99]_i_4_n_0 ;
  wire \buff2[99]_i_5_n_0 ;
  wire \buff2[99]_i_7_n_0 ;
  wire \buff2[99]_i_8_n_0 ;
  wire \buff2[99]_i_9_n_0 ;
  wire \buff2_reg[103]_i_1_n_0 ;
  wire \buff2_reg[103]_i_1_n_1 ;
  wire \buff2_reg[103]_i_1_n_2 ;
  wire \buff2_reg[103]_i_1_n_3 ;
  wire \buff2_reg[103]_i_7_n_0 ;
  wire \buff2_reg[103]_i_7_n_1 ;
  wire \buff2_reg[103]_i_7_n_2 ;
  wire \buff2_reg[103]_i_7_n_3 ;
  wire \buff2_reg[103]_i_7_n_4 ;
  wire \buff2_reg[103]_i_7_n_5 ;
  wire \buff2_reg[103]_i_7_n_6 ;
  wire \buff2_reg[103]_i_7_n_7 ;
  wire \buff2_reg[107]_i_10_n_0 ;
  wire \buff2_reg[107]_i_10_n_1 ;
  wire \buff2_reg[107]_i_10_n_2 ;
  wire \buff2_reg[107]_i_10_n_3 ;
  wire \buff2_reg[107]_i_10_n_4 ;
  wire \buff2_reg[107]_i_10_n_5 ;
  wire \buff2_reg[107]_i_10_n_6 ;
  wire \buff2_reg[107]_i_10_n_7 ;
  wire \buff2_reg[107]_i_1_n_0 ;
  wire \buff2_reg[107]_i_1_n_1 ;
  wire \buff2_reg[107]_i_1_n_2 ;
  wire \buff2_reg[107]_i_1_n_3 ;
  wire \buff2_reg[111]_i_10_n_0 ;
  wire \buff2_reg[111]_i_10_n_1 ;
  wire \buff2_reg[111]_i_10_n_2 ;
  wire \buff2_reg[111]_i_10_n_3 ;
  wire \buff2_reg[111]_i_10_n_4 ;
  wire \buff2_reg[111]_i_10_n_5 ;
  wire \buff2_reg[111]_i_10_n_6 ;
  wire \buff2_reg[111]_i_10_n_7 ;
  wire \buff2_reg[111]_i_1_n_0 ;
  wire \buff2_reg[111]_i_1_n_1 ;
  wire \buff2_reg[111]_i_1_n_2 ;
  wire \buff2_reg[111]_i_1_n_3 ;
  wire \buff2_reg[115]_i_10_n_0 ;
  wire \buff2_reg[115]_i_10_n_1 ;
  wire \buff2_reg[115]_i_10_n_2 ;
  wire \buff2_reg[115]_i_10_n_3 ;
  wire \buff2_reg[115]_i_10_n_4 ;
  wire \buff2_reg[115]_i_10_n_5 ;
  wire \buff2_reg[115]_i_10_n_6 ;
  wire \buff2_reg[115]_i_10_n_7 ;
  wire \buff2_reg[115]_i_1_n_0 ;
  wire \buff2_reg[115]_i_1_n_1 ;
  wire \buff2_reg[115]_i_1_n_2 ;
  wire \buff2_reg[115]_i_1_n_3 ;
  wire \buff2_reg[119]_i_1_n_0 ;
  wire \buff2_reg[119]_i_1_n_1 ;
  wire \buff2_reg[119]_i_1_n_2 ;
  wire \buff2_reg[119]_i_1_n_3 ;
  wire \buff2_reg[123]_i_1_n_0 ;
  wire \buff2_reg[123]_i_1_n_1 ;
  wire \buff2_reg[123]_i_1_n_2 ;
  wire \buff2_reg[123]_i_1_n_3 ;
  wire [127:0]\buff2_reg[127]_0 ;
  wire \buff2_reg[127]_i_1_n_1 ;
  wire \buff2_reg[127]_i_1_n_2 ;
  wire \buff2_reg[127]_i_1_n_3 ;
  wire \buff2_reg[127]_i_9_n_0 ;
  wire \buff2_reg[127]_i_9_n_2 ;
  wire \buff2_reg[127]_i_9_n_3 ;
  wire \buff2_reg[127]_i_9_n_5 ;
  wire \buff2_reg[127]_i_9_n_6 ;
  wire \buff2_reg[127]_i_9_n_7 ;
  wire \buff2_reg[36]_i_1_n_0 ;
  wire \buff2_reg[36]_i_1_n_1 ;
  wire \buff2_reg[36]_i_1_n_2 ;
  wire \buff2_reg[36]_i_1_n_3 ;
  wire \buff2_reg[40]_i_1_n_0 ;
  wire \buff2_reg[40]_i_1_n_1 ;
  wire \buff2_reg[40]_i_1_n_2 ;
  wire \buff2_reg[40]_i_1_n_3 ;
  wire \buff2_reg[44]_i_1_n_0 ;
  wire \buff2_reg[44]_i_1_n_1 ;
  wire \buff2_reg[44]_i_1_n_2 ;
  wire \buff2_reg[44]_i_1_n_3 ;
  wire \buff2_reg[48]_i_1_n_0 ;
  wire \buff2_reg[48]_i_1_n_1 ;
  wire \buff2_reg[48]_i_1_n_2 ;
  wire \buff2_reg[48]_i_1_n_3 ;
  wire \buff2_reg[52]_i_1_n_0 ;
  wire \buff2_reg[52]_i_1_n_1 ;
  wire \buff2_reg[52]_i_1_n_2 ;
  wire \buff2_reg[52]_i_1_n_3 ;
  wire \buff2_reg[56]_i_1_n_0 ;
  wire \buff2_reg[56]_i_1_n_1 ;
  wire \buff2_reg[56]_i_1_n_2 ;
  wire \buff2_reg[56]_i_1_n_3 ;
  wire \buff2_reg[60]_i_1_n_0 ;
  wire \buff2_reg[60]_i_1_n_1 ;
  wire \buff2_reg[60]_i_1_n_2 ;
  wire \buff2_reg[60]_i_1_n_3 ;
  wire \buff2_reg[64]_i_1_n_0 ;
  wire \buff2_reg[64]_i_1_n_1 ;
  wire \buff2_reg[64]_i_1_n_2 ;
  wire \buff2_reg[64]_i_1_n_3 ;
  wire \buff2_reg[68]_i_1_n_0 ;
  wire \buff2_reg[68]_i_1_n_1 ;
  wire \buff2_reg[68]_i_1_n_2 ;
  wire \buff2_reg[68]_i_1_n_3 ;
  wire \buff2_reg[72]_i_1_n_0 ;
  wire \buff2_reg[72]_i_1_n_1 ;
  wire \buff2_reg[72]_i_1_n_2 ;
  wire \buff2_reg[72]_i_1_n_3 ;
  wire \buff2_reg[76]_i_1_n_0 ;
  wire \buff2_reg[76]_i_1_n_1 ;
  wire \buff2_reg[76]_i_1_n_2 ;
  wire \buff2_reg[76]_i_1_n_3 ;
  wire \buff2_reg[80]_i_1_n_0 ;
  wire \buff2_reg[80]_i_1_n_1 ;
  wire \buff2_reg[80]_i_1_n_2 ;
  wire \buff2_reg[80]_i_1_n_3 ;
  wire \buff2_reg[83]_i_1_n_0 ;
  wire \buff2_reg[83]_i_1_n_1 ;
  wire \buff2_reg[83]_i_1_n_2 ;
  wire \buff2_reg[83]_i_1_n_3 ;
  wire \buff2_reg[83]_i_1_n_4 ;
  wire \buff2_reg[87]_i_1_n_0 ;
  wire \buff2_reg[87]_i_1_n_1 ;
  wire \buff2_reg[87]_i_1_n_2 ;
  wire \buff2_reg[87]_i_1_n_3 ;
  wire \buff2_reg[91]_i_1_n_0 ;
  wire \buff2_reg[91]_i_1_n_1 ;
  wire \buff2_reg[91]_i_1_n_2 ;
  wire \buff2_reg[91]_i_1_n_3 ;
  wire \buff2_reg[91]_i_6_n_0 ;
  wire \buff2_reg[91]_i_6_n_1 ;
  wire \buff2_reg[91]_i_6_n_2 ;
  wire \buff2_reg[91]_i_6_n_3 ;
  wire \buff2_reg[91]_i_6_n_4 ;
  wire \buff2_reg[91]_i_6_n_5 ;
  wire \buff2_reg[91]_i_6_n_6 ;
  wire \buff2_reg[91]_i_6_n_7 ;
  wire \buff2_reg[95]_i_1_n_0 ;
  wire \buff2_reg[95]_i_1_n_1 ;
  wire \buff2_reg[95]_i_1_n_2 ;
  wire \buff2_reg[95]_i_1_n_3 ;
  wire \buff2_reg[95]_i_6_n_0 ;
  wire \buff2_reg[95]_i_6_n_1 ;
  wire \buff2_reg[95]_i_6_n_2 ;
  wire \buff2_reg[95]_i_6_n_3 ;
  wire \buff2_reg[95]_i_6_n_4 ;
  wire \buff2_reg[95]_i_6_n_5 ;
  wire \buff2_reg[95]_i_6_n_6 ;
  wire \buff2_reg[95]_i_6_n_7 ;
  wire \buff2_reg[99]_i_1_n_0 ;
  wire \buff2_reg[99]_i_1_n_1 ;
  wire \buff2_reg[99]_i_1_n_2 ;
  wire \buff2_reg[99]_i_1_n_3 ;
  wire \buff2_reg[99]_i_6_n_0 ;
  wire \buff2_reg[99]_i_6_n_1 ;
  wire \buff2_reg[99]_i_6_n_2 ;
  wire \buff2_reg[99]_i_6_n_3 ;
  wire \buff2_reg[99]_i_6_n_4 ;
  wire \buff2_reg[99]_i_6_n_5 ;
  wire \buff2_reg[99]_i_6_n_6 ;
  wire \buff2_reg[99]_i_6_n_7 ;
  wire [127:0]din_TDATA_int_regslice;
  wire tmp_product__0_n_100;
  wire tmp_product__0_n_101;
  wire tmp_product__0_n_102;
  wire tmp_product__0_n_103;
  wire tmp_product__0_n_104;
  wire tmp_product__0_n_105;
  wire tmp_product__0_n_106;
  wire tmp_product__0_n_107;
  wire tmp_product__0_n_108;
  wire tmp_product__0_n_109;
  wire tmp_product__0_n_110;
  wire tmp_product__0_n_111;
  wire tmp_product__0_n_112;
  wire tmp_product__0_n_113;
  wire tmp_product__0_n_114;
  wire tmp_product__0_n_115;
  wire tmp_product__0_n_116;
  wire tmp_product__0_n_117;
  wire tmp_product__0_n_118;
  wire tmp_product__0_n_119;
  wire tmp_product__0_n_120;
  wire tmp_product__0_n_121;
  wire tmp_product__0_n_122;
  wire tmp_product__0_n_123;
  wire tmp_product__0_n_124;
  wire tmp_product__0_n_125;
  wire tmp_product__0_n_126;
  wire tmp_product__0_n_127;
  wire tmp_product__0_n_128;
  wire tmp_product__0_n_129;
  wire tmp_product__0_n_130;
  wire tmp_product__0_n_131;
  wire tmp_product__0_n_132;
  wire tmp_product__0_n_133;
  wire tmp_product__0_n_134;
  wire tmp_product__0_n_135;
  wire tmp_product__0_n_136;
  wire tmp_product__0_n_137;
  wire tmp_product__0_n_138;
  wire tmp_product__0_n_139;
  wire tmp_product__0_n_140;
  wire tmp_product__0_n_141;
  wire tmp_product__0_n_142;
  wire tmp_product__0_n_143;
  wire tmp_product__0_n_144;
  wire tmp_product__0_n_145;
  wire tmp_product__0_n_146;
  wire tmp_product__0_n_147;
  wire tmp_product__0_n_148;
  wire tmp_product__0_n_149;
  wire tmp_product__0_n_150;
  wire tmp_product__0_n_151;
  wire tmp_product__0_n_152;
  wire tmp_product__0_n_153;
  wire tmp_product__0_n_58;
  wire tmp_product__0_n_59;
  wire tmp_product__0_n_60;
  wire tmp_product__0_n_61;
  wire tmp_product__0_n_62;
  wire tmp_product__0_n_63;
  wire tmp_product__0_n_64;
  wire tmp_product__0_n_65;
  wire tmp_product__0_n_66;
  wire tmp_product__0_n_67;
  wire tmp_product__0_n_68;
  wire tmp_product__0_n_69;
  wire tmp_product__0_n_70;
  wire tmp_product__0_n_71;
  wire tmp_product__0_n_72;
  wire tmp_product__0_n_73;
  wire tmp_product__0_n_74;
  wire tmp_product__0_n_75;
  wire tmp_product__0_n_76;
  wire tmp_product__0_n_77;
  wire tmp_product__0_n_78;
  wire tmp_product__0_n_79;
  wire tmp_product__0_n_80;
  wire tmp_product__0_n_81;
  wire tmp_product__0_n_82;
  wire tmp_product__0_n_83;
  wire tmp_product__0_n_84;
  wire tmp_product__0_n_85;
  wire tmp_product__0_n_86;
  wire tmp_product__0_n_87;
  wire tmp_product__0_n_88;
  wire tmp_product__0_n_89;
  wire tmp_product__0_n_90;
  wire tmp_product__0_n_91;
  wire tmp_product__0_n_92;
  wire tmp_product__0_n_93;
  wire tmp_product__0_n_94;
  wire tmp_product__0_n_95;
  wire tmp_product__0_n_96;
  wire tmp_product__0_n_97;
  wire tmp_product__0_n_98;
  wire tmp_product__0_n_99;
  wire tmp_product__1_n_106;
  wire tmp_product__1_n_107;
  wire tmp_product__1_n_108;
  wire tmp_product__1_n_109;
  wire tmp_product__1_n_110;
  wire tmp_product__1_n_111;
  wire tmp_product__1_n_112;
  wire tmp_product__1_n_113;
  wire tmp_product__1_n_114;
  wire tmp_product__1_n_115;
  wire tmp_product__1_n_116;
  wire tmp_product__1_n_117;
  wire tmp_product__1_n_118;
  wire tmp_product__1_n_119;
  wire tmp_product__1_n_120;
  wire tmp_product__1_n_121;
  wire tmp_product__1_n_122;
  wire tmp_product__1_n_123;
  wire tmp_product__1_n_124;
  wire tmp_product__1_n_125;
  wire tmp_product__1_n_126;
  wire tmp_product__1_n_127;
  wire tmp_product__1_n_128;
  wire tmp_product__1_n_129;
  wire tmp_product__1_n_130;
  wire tmp_product__1_n_131;
  wire tmp_product__1_n_132;
  wire tmp_product__1_n_133;
  wire tmp_product__1_n_134;
  wire tmp_product__1_n_135;
  wire tmp_product__1_n_136;
  wire tmp_product__1_n_137;
  wire tmp_product__1_n_138;
  wire tmp_product__1_n_139;
  wire tmp_product__1_n_140;
  wire tmp_product__1_n_141;
  wire tmp_product__1_n_142;
  wire tmp_product__1_n_143;
  wire tmp_product__1_n_144;
  wire tmp_product__1_n_145;
  wire tmp_product__1_n_146;
  wire tmp_product__1_n_147;
  wire tmp_product__1_n_148;
  wire tmp_product__1_n_149;
  wire tmp_product__1_n_150;
  wire tmp_product__1_n_151;
  wire tmp_product__1_n_152;
  wire tmp_product__1_n_153;
  wire tmp_product__2_n_100;
  wire tmp_product__2_n_101;
  wire tmp_product__2_n_102;
  wire tmp_product__2_n_103;
  wire tmp_product__2_n_104;
  wire tmp_product__2_n_105;
  wire tmp_product__2_n_106;
  wire tmp_product__2_n_107;
  wire tmp_product__2_n_108;
  wire tmp_product__2_n_109;
  wire tmp_product__2_n_110;
  wire tmp_product__2_n_111;
  wire tmp_product__2_n_112;
  wire tmp_product__2_n_113;
  wire tmp_product__2_n_114;
  wire tmp_product__2_n_115;
  wire tmp_product__2_n_116;
  wire tmp_product__2_n_117;
  wire tmp_product__2_n_118;
  wire tmp_product__2_n_119;
  wire tmp_product__2_n_120;
  wire tmp_product__2_n_121;
  wire tmp_product__2_n_122;
  wire tmp_product__2_n_123;
  wire tmp_product__2_n_124;
  wire tmp_product__2_n_125;
  wire tmp_product__2_n_126;
  wire tmp_product__2_n_127;
  wire tmp_product__2_n_128;
  wire tmp_product__2_n_129;
  wire tmp_product__2_n_130;
  wire tmp_product__2_n_131;
  wire tmp_product__2_n_132;
  wire tmp_product__2_n_133;
  wire tmp_product__2_n_134;
  wire tmp_product__2_n_135;
  wire tmp_product__2_n_136;
  wire tmp_product__2_n_137;
  wire tmp_product__2_n_138;
  wire tmp_product__2_n_139;
  wire tmp_product__2_n_140;
  wire tmp_product__2_n_141;
  wire tmp_product__2_n_142;
  wire tmp_product__2_n_143;
  wire tmp_product__2_n_144;
  wire tmp_product__2_n_145;
  wire tmp_product__2_n_146;
  wire tmp_product__2_n_147;
  wire tmp_product__2_n_148;
  wire tmp_product__2_n_149;
  wire tmp_product__2_n_150;
  wire tmp_product__2_n_151;
  wire tmp_product__2_n_152;
  wire tmp_product__2_n_153;
  wire tmp_product__2_n_58;
  wire tmp_product__2_n_59;
  wire tmp_product__2_n_60;
  wire tmp_product__2_n_61;
  wire tmp_product__2_n_62;
  wire tmp_product__2_n_63;
  wire tmp_product__2_n_64;
  wire tmp_product__2_n_65;
  wire tmp_product__2_n_66;
  wire tmp_product__2_n_67;
  wire tmp_product__2_n_68;
  wire tmp_product__2_n_69;
  wire tmp_product__2_n_70;
  wire tmp_product__2_n_71;
  wire tmp_product__2_n_72;
  wire tmp_product__2_n_73;
  wire tmp_product__2_n_74;
  wire tmp_product__2_n_75;
  wire tmp_product__2_n_76;
  wire tmp_product__2_n_77;
  wire tmp_product__2_n_78;
  wire tmp_product__2_n_79;
  wire tmp_product__2_n_80;
  wire tmp_product__2_n_81;
  wire tmp_product__2_n_82;
  wire tmp_product__2_n_83;
  wire tmp_product__2_n_84;
  wire tmp_product__2_n_85;
  wire tmp_product__2_n_86;
  wire tmp_product__2_n_87;
  wire tmp_product__2_n_88;
  wire tmp_product__2_n_89;
  wire tmp_product__2_n_90;
  wire tmp_product__2_n_91;
  wire tmp_product__2_n_92;
  wire tmp_product__2_n_93;
  wire tmp_product__2_n_94;
  wire tmp_product__2_n_95;
  wire tmp_product__2_n_96;
  wire tmp_product__2_n_97;
  wire tmp_product__2_n_98;
  wire tmp_product__2_n_99;
  wire tmp_product__3_n_106;
  wire tmp_product__3_n_107;
  wire tmp_product__3_n_108;
  wire tmp_product__3_n_109;
  wire tmp_product__3_n_110;
  wire tmp_product__3_n_111;
  wire tmp_product__3_n_112;
  wire tmp_product__3_n_113;
  wire tmp_product__3_n_114;
  wire tmp_product__3_n_115;
  wire tmp_product__3_n_116;
  wire tmp_product__3_n_117;
  wire tmp_product__3_n_118;
  wire tmp_product__3_n_119;
  wire tmp_product__3_n_120;
  wire tmp_product__3_n_121;
  wire tmp_product__3_n_122;
  wire tmp_product__3_n_123;
  wire tmp_product__3_n_124;
  wire tmp_product__3_n_125;
  wire tmp_product__3_n_126;
  wire tmp_product__3_n_127;
  wire tmp_product__3_n_128;
  wire tmp_product__3_n_129;
  wire tmp_product__3_n_130;
  wire tmp_product__3_n_131;
  wire tmp_product__3_n_132;
  wire tmp_product__3_n_133;
  wire tmp_product__3_n_134;
  wire tmp_product__3_n_135;
  wire tmp_product__3_n_136;
  wire tmp_product__3_n_137;
  wire tmp_product__3_n_138;
  wire tmp_product__3_n_139;
  wire tmp_product__3_n_140;
  wire tmp_product__3_n_141;
  wire tmp_product__3_n_142;
  wire tmp_product__3_n_143;
  wire tmp_product__3_n_144;
  wire tmp_product__3_n_145;
  wire tmp_product__3_n_146;
  wire tmp_product__3_n_147;
  wire tmp_product__3_n_148;
  wire tmp_product__3_n_149;
  wire tmp_product__3_n_150;
  wire tmp_product__3_n_151;
  wire tmp_product__3_n_152;
  wire tmp_product__3_n_153;
  wire tmp_product_n_106;
  wire tmp_product_n_107;
  wire tmp_product_n_108;
  wire tmp_product_n_109;
  wire tmp_product_n_110;
  wire tmp_product_n_111;
  wire tmp_product_n_112;
  wire tmp_product_n_113;
  wire tmp_product_n_114;
  wire tmp_product_n_115;
  wire tmp_product_n_116;
  wire tmp_product_n_117;
  wire tmp_product_n_118;
  wire tmp_product_n_119;
  wire tmp_product_n_120;
  wire tmp_product_n_121;
  wire tmp_product_n_122;
  wire tmp_product_n_123;
  wire tmp_product_n_124;
  wire tmp_product_n_125;
  wire tmp_product_n_126;
  wire tmp_product_n_127;
  wire tmp_product_n_128;
  wire tmp_product_n_129;
  wire tmp_product_n_130;
  wire tmp_product_n_131;
  wire tmp_product_n_132;
  wire tmp_product_n_133;
  wire tmp_product_n_134;
  wire tmp_product_n_135;
  wire tmp_product_n_136;
  wire tmp_product_n_137;
  wire tmp_product_n_138;
  wire tmp_product_n_139;
  wire tmp_product_n_140;
  wire tmp_product_n_141;
  wire tmp_product_n_142;
  wire tmp_product_n_143;
  wire tmp_product_n_144;
  wire tmp_product_n_145;
  wire tmp_product_n_146;
  wire tmp_product_n_147;
  wire tmp_product_n_148;
  wire tmp_product_n_149;
  wire tmp_product_n_150;
  wire tmp_product_n_151;
  wire tmp_product_n_152;
  wire tmp_product_n_153;
  wire NLW_buff0_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_buff0_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_buff0_reg_OVERFLOW_UNCONNECTED;
  wire NLW_buff0_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_buff0_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_buff0_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_buff0_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_buff0_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_buff0_reg_CARRYOUT_UNCONNECTED;
  wire NLW_buff0_reg__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_buff0_reg__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_buff0_reg__0_OVERFLOW_UNCONNECTED;
  wire NLW_buff0_reg__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_buff0_reg__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_buff0_reg__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_buff0_reg__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_buff0_reg__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_buff0_reg__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_buff0_reg__0_P_UNCONNECTED;
  wire NLW_buff0_reg__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_buff0_reg__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_buff0_reg__1_OVERFLOW_UNCONNECTED;
  wire NLW_buff0_reg__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_buff0_reg__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_buff0_reg__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_buff0_reg__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_buff0_reg__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_buff0_reg__1_CARRYOUT_UNCONNECTED;
  wire NLW_buff0_reg__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_buff0_reg__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_buff0_reg__2_OVERFLOW_UNCONNECTED;
  wire NLW_buff0_reg__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_buff0_reg__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_buff0_reg__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_buff0_reg__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_buff0_reg__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_buff0_reg__2_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_buff0_reg__2_P_UNCONNECTED;
  wire NLW_buff0_reg__3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_buff0_reg__3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_buff0_reg__3_OVERFLOW_UNCONNECTED;
  wire NLW_buff0_reg__3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_buff0_reg__3_PATTERNDETECT_UNCONNECTED;
  wire NLW_buff0_reg__3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_buff0_reg__3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_buff0_reg__3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_buff0_reg__3_CARRYOUT_UNCONNECTED;
  wire NLW_buff1_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_buff1_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_buff1_reg_OVERFLOW_UNCONNECTED;
  wire NLW_buff1_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_buff1_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_buff1_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_buff1_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_buff1_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_buff1_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_buff1_reg_PCOUT_UNCONNECTED;
  wire NLW_buff1_reg__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_buff1_reg__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_buff1_reg__0_OVERFLOW_UNCONNECTED;
  wire NLW_buff1_reg__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_buff1_reg__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_buff1_reg__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_buff1_reg__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_buff1_reg__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_buff1_reg__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_buff1_reg__0_PCOUT_UNCONNECTED;
  wire NLW_buff1_reg__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_buff1_reg__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_buff1_reg__1_OVERFLOW_UNCONNECTED;
  wire NLW_buff1_reg__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_buff1_reg__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_buff1_reg__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_buff1_reg__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_buff1_reg__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_buff1_reg__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_buff1_reg__1_PCOUT_UNCONNECTED;
  wire NLW_buff1_reg__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_buff1_reg__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_buff1_reg__2_OVERFLOW_UNCONNECTED;
  wire NLW_buff1_reg__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_buff1_reg__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_buff1_reg__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_buff1_reg__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_buff1_reg__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_buff1_reg__2_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_buff1_reg__2_PCOUT_UNCONNECTED;
  wire NLW_buff1_reg__3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_buff1_reg__3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_buff1_reg__3_OVERFLOW_UNCONNECTED;
  wire NLW_buff1_reg__3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_buff1_reg__3_PATTERNDETECT_UNCONNECTED;
  wire NLW_buff1_reg__3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_buff1_reg__3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_buff1_reg__3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_buff1_reg__3_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_buff1_reg__3_PCOUT_UNCONNECTED;
  wire [3:3]\NLW_buff2_reg[127]_i_1_CO_UNCONNECTED ;
  wire [2:2]\NLW_buff2_reg[127]_i_9_CO_UNCONNECTED ;
  wire [3:3]\NLW_buff2_reg[127]_i_9_O_UNCONNECTED ;
  wire NLW_tmp_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_tmp_product_P_UNCONNECTED;
  wire NLW_tmp_product__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product__0_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product__0_CARRYOUT_UNCONNECTED;
  wire NLW_tmp_product__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product__1_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_tmp_product__1_P_UNCONNECTED;
  wire NLW_tmp_product__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product__2_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product__2_CARRYOUT_UNCONNECTED;
  wire NLW_tmp_product__3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product__3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product__3_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product__3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product__3_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product__3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product__3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product__3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product__3_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_tmp_product__3_P_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    buff0_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_TDATA_int_regslice[118:102]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_buff0_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_buff0_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_buff0_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_buff0_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ack_out),
        .CEA2(buff0_reg__3_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ack_out),
        .CEB2(buff0_reg__3_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(buff0_reg__3_0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_buff0_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_buff0_reg_OVERFLOW_UNCONNECTED),
        .P({buff0_reg_n_58,buff0_reg_n_59,buff0_reg_n_60,buff0_reg_n_61,buff0_reg_n_62,buff0_reg_n_63,buff0_reg_n_64,buff0_reg_n_65,buff0_reg_n_66,buff0_reg_n_67,buff0_reg_n_68,buff0_reg_n_69,buff0_reg_n_70,buff0_reg_n_71,buff0_reg_n_72,buff0_reg_n_73,buff0_reg_n_74,buff0_reg_n_75,buff0_reg_n_76,buff0_reg_n_77,buff0_reg_n_78,buff0_reg_n_79,buff0_reg_n_80,buff0_reg_n_81,buff0_reg_n_82,buff0_reg_n_83,buff0_reg_n_84,buff0_reg_n_85,buff0_reg_n_86,buff0_reg_n_87,buff0_reg_n_88,buff0_reg_n_89,buff0_reg_n_90,buff0_reg_n_91,buff0_reg_n_92,buff0_reg_n_93,buff0_reg_n_94,buff0_reg_n_95,buff0_reg_n_96,buff0_reg_n_97,buff0_reg_n_98,buff0_reg_n_99,buff0_reg_n_100,buff0_reg_n_101,buff0_reg_n_102,buff0_reg_n_103,buff0_reg_n_104,buff0_reg_n_105}),
        .PATTERNBDETECT(NLW_buff0_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_buff0_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({buff0_reg_n_106,buff0_reg_n_107,buff0_reg_n_108,buff0_reg_n_109,buff0_reg_n_110,buff0_reg_n_111,buff0_reg_n_112,buff0_reg_n_113,buff0_reg_n_114,buff0_reg_n_115,buff0_reg_n_116,buff0_reg_n_117,buff0_reg_n_118,buff0_reg_n_119,buff0_reg_n_120,buff0_reg_n_121,buff0_reg_n_122,buff0_reg_n_123,buff0_reg_n_124,buff0_reg_n_125,buff0_reg_n_126,buff0_reg_n_127,buff0_reg_n_128,buff0_reg_n_129,buff0_reg_n_130,buff0_reg_n_131,buff0_reg_n_132,buff0_reg_n_133,buff0_reg_n_134,buff0_reg_n_135,buff0_reg_n_136,buff0_reg_n_137,buff0_reg_n_138,buff0_reg_n_139,buff0_reg_n_140,buff0_reg_n_141,buff0_reg_n_142,buff0_reg_n_143,buff0_reg_n_144,buff0_reg_n_145,buff0_reg_n_146,buff0_reg_n_147,buff0_reg_n_148,buff0_reg_n_149,buff0_reg_n_150,buff0_reg_n_151,buff0_reg_n_152,buff0_reg_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_buff0_reg_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 16}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    buff0_reg__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_TDATA_int_regslice[84:68]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_buff0_reg__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q[31],Q[31],Q[31],Q[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_buff0_reg__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_buff0_reg__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_buff0_reg__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ack_out),
        .CEA2(buff0_reg__3_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ack_out),
        .CEB2(buff0_reg__3_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(buff0_reg__3_0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_buff0_reg__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_buff0_reg__0_OVERFLOW_UNCONNECTED),
        .P(NLW_buff0_reg__0_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_buff0_reg__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_buff0_reg__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({buff0_reg__0_n_106,buff0_reg__0_n_107,buff0_reg__0_n_108,buff0_reg__0_n_109,buff0_reg__0_n_110,buff0_reg__0_n_111,buff0_reg__0_n_112,buff0_reg__0_n_113,buff0_reg__0_n_114,buff0_reg__0_n_115,buff0_reg__0_n_116,buff0_reg__0_n_117,buff0_reg__0_n_118,buff0_reg__0_n_119,buff0_reg__0_n_120,buff0_reg__0_n_121,buff0_reg__0_n_122,buff0_reg__0_n_123,buff0_reg__0_n_124,buff0_reg__0_n_125,buff0_reg__0_n_126,buff0_reg__0_n_127,buff0_reg__0_n_128,buff0_reg__0_n_129,buff0_reg__0_n_130,buff0_reg__0_n_131,buff0_reg__0_n_132,buff0_reg__0_n_133,buff0_reg__0_n_134,buff0_reg__0_n_135,buff0_reg__0_n_136,buff0_reg__0_n_137,buff0_reg__0_n_138,buff0_reg__0_n_139,buff0_reg__0_n_140,buff0_reg__0_n_141,buff0_reg__0_n_142,buff0_reg__0_n_143,buff0_reg__0_n_144,buff0_reg__0_n_145,buff0_reg__0_n_146,buff0_reg__0_n_147,buff0_reg__0_n_148,buff0_reg__0_n_149,buff0_reg__0_n_150,buff0_reg__0_n_151,buff0_reg__0_n_152,buff0_reg__0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_buff0_reg__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    buff0_reg__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_TDATA_int_regslice[67:51]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_buff0_reg__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_buff0_reg__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_buff0_reg__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_buff0_reg__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ack_out),
        .CEA2(buff0_reg__3_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ack_out),
        .CEB2(buff0_reg__3_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(buff0_reg__3_0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_buff0_reg__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_buff0_reg__1_OVERFLOW_UNCONNECTED),
        .P({buff0_reg__1_n_58,buff0_reg__1_n_59,buff0_reg__1_n_60,buff0_reg__1_n_61,buff0_reg__1_n_62,buff0_reg__1_n_63,buff0_reg__1_n_64,buff0_reg__1_n_65,buff0_reg__1_n_66,buff0_reg__1_n_67,buff0_reg__1_n_68,buff0_reg__1_n_69,buff0_reg__1_n_70,buff0_reg__1_n_71,buff0_reg__1_n_72,buff0_reg__1_n_73,buff0_reg__1_n_74,buff0_reg__1_n_75,buff0_reg__1_n_76,buff0_reg__1_n_77,buff0_reg__1_n_78,buff0_reg__1_n_79,buff0_reg__1_n_80,buff0_reg__1_n_81,buff0_reg__1_n_82,buff0_reg__1_n_83,buff0_reg__1_n_84,buff0_reg__1_n_85,buff0_reg__1_n_86,buff0_reg__1_n_87,buff0_reg__1_n_88,buff0_reg__1_n_89,buff0_reg__1_n_90,buff0_reg__1_n_91,buff0_reg__1_n_92,buff0_reg__1_n_93,buff0_reg__1_n_94,buff0_reg__1_n_95,buff0_reg__1_n_96,buff0_reg__1_n_97,buff0_reg__1_n_98,buff0_reg__1_n_99,buff0_reg__1_n_100,buff0_reg__1_n_101,buff0_reg__1_n_102,buff0_reg__1_n_103,buff0_reg__1_n_104,buff0_reg__1_n_105}),
        .PATTERNBDETECT(NLW_buff0_reg__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_buff0_reg__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({buff0_reg__1_n_106,buff0_reg__1_n_107,buff0_reg__1_n_108,buff0_reg__1_n_109,buff0_reg__1_n_110,buff0_reg__1_n_111,buff0_reg__1_n_112,buff0_reg__1_n_113,buff0_reg__1_n_114,buff0_reg__1_n_115,buff0_reg__1_n_116,buff0_reg__1_n_117,buff0_reg__1_n_118,buff0_reg__1_n_119,buff0_reg__1_n_120,buff0_reg__1_n_121,buff0_reg__1_n_122,buff0_reg__1_n_123,buff0_reg__1_n_124,buff0_reg__1_n_125,buff0_reg__1_n_126,buff0_reg__1_n_127,buff0_reg__1_n_128,buff0_reg__1_n_129,buff0_reg__1_n_130,buff0_reg__1_n_131,buff0_reg__1_n_132,buff0_reg__1_n_133,buff0_reg__1_n_134,buff0_reg__1_n_135,buff0_reg__1_n_136,buff0_reg__1_n_137,buff0_reg__1_n_138,buff0_reg__1_n_139,buff0_reg__1_n_140,buff0_reg__1_n_141,buff0_reg__1_n_142,buff0_reg__1_n_143,buff0_reg__1_n_144,buff0_reg__1_n_145,buff0_reg__1_n_146,buff0_reg__1_n_147,buff0_reg__1_n_148,buff0_reg__1_n_149,buff0_reg__1_n_150,buff0_reg__1_n_151,buff0_reg__1_n_152,buff0_reg__1_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_buff0_reg__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 16}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    buff0_reg__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_TDATA_int_regslice[33:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_buff0_reg__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q[31],Q[31],Q[31],Q[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_buff0_reg__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_buff0_reg__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_buff0_reg__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ack_out),
        .CEA2(buff0_reg__3_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ack_out),
        .CEB2(buff0_reg__3_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(buff0_reg__3_0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_buff0_reg__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_buff0_reg__2_OVERFLOW_UNCONNECTED),
        .P(NLW_buff0_reg__2_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_buff0_reg__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_buff0_reg__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({buff0_reg__2_n_106,buff0_reg__2_n_107,buff0_reg__2_n_108,buff0_reg__2_n_109,buff0_reg__2_n_110,buff0_reg__2_n_111,buff0_reg__2_n_112,buff0_reg__2_n_113,buff0_reg__2_n_114,buff0_reg__2_n_115,buff0_reg__2_n_116,buff0_reg__2_n_117,buff0_reg__2_n_118,buff0_reg__2_n_119,buff0_reg__2_n_120,buff0_reg__2_n_121,buff0_reg__2_n_122,buff0_reg__2_n_123,buff0_reg__2_n_124,buff0_reg__2_n_125,buff0_reg__2_n_126,buff0_reg__2_n_127,buff0_reg__2_n_128,buff0_reg__2_n_129,buff0_reg__2_n_130,buff0_reg__2_n_131,buff0_reg__2_n_132,buff0_reg__2_n_133,buff0_reg__2_n_134,buff0_reg__2_n_135,buff0_reg__2_n_136,buff0_reg__2_n_137,buff0_reg__2_n_138,buff0_reg__2_n_139,buff0_reg__2_n_140,buff0_reg__2_n_141,buff0_reg__2_n_142,buff0_reg__2_n_143,buff0_reg__2_n_144,buff0_reg__2_n_145,buff0_reg__2_n_146,buff0_reg__2_n_147,buff0_reg__2_n_148,buff0_reg__2_n_149,buff0_reg__2_n_150,buff0_reg__2_n_151,buff0_reg__2_n_152,buff0_reg__2_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_buff0_reg__2_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    buff0_reg__3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_TDATA_int_regslice[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_buff0_reg__3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_buff0_reg__3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_buff0_reg__3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_buff0_reg__3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ack_out),
        .CEA2(buff0_reg__3_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ack_out),
        .CEB2(buff0_reg__3_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(buff0_reg__3_0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_buff0_reg__3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_buff0_reg__3_OVERFLOW_UNCONNECTED),
        .P({buff0_reg__3_n_58,buff0_reg__3_n_59,buff0_reg__3_n_60,buff0_reg__3_n_61,buff0_reg__3_n_62,buff0_reg__3_n_63,buff0_reg__3_n_64,buff0_reg__3_n_65,buff0_reg__3_n_66,buff0_reg__3_n_67,buff0_reg__3_n_68,buff0_reg__3_n_69,buff0_reg__3_n_70,buff0_reg__3_n_71,buff0_reg__3_n_72,buff0_reg__3_n_73,buff0_reg__3_n_74,buff0_reg__3_n_75,buff0_reg__3_n_76,buff0_reg__3_n_77,buff0_reg__3_n_78,buff0_reg__3_n_79,buff0_reg__3_n_80,buff0_reg__3_n_81,buff0_reg__3_n_82,buff0_reg__3_n_83,buff0_reg__3_n_84,buff0_reg__3_n_85,buff0_reg__3_n_86,buff0_reg__3_n_87,buff0_reg__3_n_88,buff0_reg__3_n_89,buff0_reg__3_n_90,buff0_reg__3_n_91,buff0_reg__3_n_92,buff0_reg__3_n_93,buff0_reg__3_n_94,buff0_reg__3_n_95,buff0_reg__3_n_96,buff0_reg__3_n_97,buff0_reg__3_n_98,buff0_reg__3_n_99,buff0_reg__3_n_100,buff0_reg__3_n_101,buff0_reg__3_n_102,buff0_reg__3_n_103,buff0_reg__3_n_104,buff0_reg__3_n_105}),
        .PATTERNBDETECT(NLW_buff0_reg__3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_buff0_reg__3_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({buff0_reg__3_n_106,buff0_reg__3_n_107,buff0_reg__3_n_108,buff0_reg__3_n_109,buff0_reg__3_n_110,buff0_reg__3_n_111,buff0_reg__3_n_112,buff0_reg__3_n_113,buff0_reg__3_n_114,buff0_reg__3_n_115,buff0_reg__3_n_116,buff0_reg__3_n_117,buff0_reg__3_n_118,buff0_reg__3_n_119,buff0_reg__3_n_120,buff0_reg__3_n_121,buff0_reg__3_n_122,buff0_reg__3_n_123,buff0_reg__3_n_124,buff0_reg__3_n_125,buff0_reg__3_n_126,buff0_reg__3_n_127,buff0_reg__3_n_128,buff0_reg__3_n_129,buff0_reg__3_n_130,buff0_reg__3_n_131,buff0_reg__3_n_132,buff0_reg__3_n_133,buff0_reg__3_n_134,buff0_reg__3_n_135,buff0_reg__3_n_136,buff0_reg__3_n_137,buff0_reg__3_n_138,buff0_reg__3_n_139,buff0_reg__3_n_140,buff0_reg__3_n_141,buff0_reg__3_n_142,buff0_reg__3_n_143,buff0_reg__3_n_144,buff0_reg__3_n_145,buff0_reg__3_n_146,buff0_reg__3_n_147,buff0_reg__3_n_148,buff0_reg__3_n_149,buff0_reg__3_n_150,buff0_reg__3_n_151,buff0_reg__3_n_152,buff0_reg__3_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_buff0_reg__3_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 9x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    buff1_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_buff1_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({din_TDATA_int_regslice[127],din_TDATA_int_regslice[127],din_TDATA_int_regslice[127],din_TDATA_int_regslice[127],din_TDATA_int_regslice[127],din_TDATA_int_regslice[127],din_TDATA_int_regslice[127],din_TDATA_int_regslice[127],din_TDATA_int_regslice[127],din_TDATA_int_regslice[127:119]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_buff1_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_buff1_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_buff1_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ack_out),
        .CEA2(buff0_reg__3_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ack_out),
        .CEB2(buff0_reg__3_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(buff0_reg__3_0),
        .CEP(buff0_reg__3_0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_buff1_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_buff1_reg_OVERFLOW_UNCONNECTED),
        .P({buff1_reg_n_58,buff1_reg_n_59,buff1_reg_n_60,buff1_reg_n_61,buff1_reg_n_62,buff1_reg_n_63,buff1_reg_n_64,buff1_reg_n_65,buff1_reg_n_66,buff1_reg_n_67,buff1_reg_n_68,buff1_reg_n_69,buff1_reg_n_70,buff1_reg_n_71,buff1_reg_n_72,buff1_reg_n_73,buff1_reg_n_74,buff1_reg_n_75,buff1_reg_n_76,buff1_reg_n_77,buff1_reg_n_78,buff1_reg_n_79,buff1_reg_n_80,buff1_reg_n_81,buff1_reg_n_82,buff1_reg_n_83,buff1_reg_n_84,buff1_reg_n_85,buff1_reg_n_86,buff1_reg_n_87,buff1_reg_n_88,buff1_reg_n_89,buff1_reg_n_90,buff1_reg_n_91,buff1_reg_n_92,buff1_reg_n_93,buff1_reg_n_94,buff1_reg_n_95,buff1_reg_n_96,buff1_reg_n_97,buff1_reg_n_98,buff1_reg_n_99,buff1_reg_n_100,buff1_reg_n_101,buff1_reg_n_102,buff1_reg_n_103,buff1_reg_n_104,buff1_reg_n_105}),
        .PATTERNBDETECT(NLW_buff1_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_buff1_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({tmp_product_n_106,tmp_product_n_107,tmp_product_n_108,tmp_product_n_109,tmp_product_n_110,tmp_product_n_111,tmp_product_n_112,tmp_product_n_113,tmp_product_n_114,tmp_product_n_115,tmp_product_n_116,tmp_product_n_117,tmp_product_n_118,tmp_product_n_119,tmp_product_n_120,tmp_product_n_121,tmp_product_n_122,tmp_product_n_123,tmp_product_n_124,tmp_product_n_125,tmp_product_n_126,tmp_product_n_127,tmp_product_n_128,tmp_product_n_129,tmp_product_n_130,tmp_product_n_131,tmp_product_n_132,tmp_product_n_133,tmp_product_n_134,tmp_product_n_135,tmp_product_n_136,tmp_product_n_137,tmp_product_n_138,tmp_product_n_139,tmp_product_n_140,tmp_product_n_141,tmp_product_n_142,tmp_product_n_143,tmp_product_n_144,tmp_product_n_145,tmp_product_n_146,tmp_product_n_147,tmp_product_n_148,tmp_product_n_149,tmp_product_n_150,tmp_product_n_151,tmp_product_n_152,tmp_product_n_153}),
        .PCOUT(NLW_buff1_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_buff1_reg_UNDERFLOW_UNCONNECTED));
  FDRE \buff1_reg[0] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg_n_105),
        .Q(\buff1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \buff1_reg[0]__0 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__0_n_105),
        .Q(\buff1_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[0]__1 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__1_n_105),
        .Q(\buff1_reg[0]__1_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[0]__2 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__2_n_105),
        .Q(\buff1_reg[0]__2_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[0]__3 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__3_n_105),
        .Q(\buff1_reg[0]__3_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[10] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg_n_95),
        .Q(\buff1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \buff1_reg[10]__0 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__0_n_95),
        .Q(\buff1_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[10]__1 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__1_n_95),
        .Q(\buff1_reg[10]__1_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[10]__2 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__2_n_95),
        .Q(\buff1_reg[10]__2_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[10]__3 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__3_n_95),
        .Q(\buff1_reg[10]__3_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[11] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg_n_94),
        .Q(\buff1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \buff1_reg[11]__0 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__0_n_94),
        .Q(\buff1_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[11]__1 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__1_n_94),
        .Q(\buff1_reg[11]__1_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[11]__2 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__2_n_94),
        .Q(\buff1_reg[11]__2_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[11]__3 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__3_n_94),
        .Q(\buff1_reg[11]__3_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[12] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg_n_93),
        .Q(\buff1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \buff1_reg[12]__0 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__0_n_93),
        .Q(\buff1_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[12]__1 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__1_n_93),
        .Q(\buff1_reg[12]__1_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[12]__2 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__2_n_93),
        .Q(\buff1_reg[12]__2_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[12]__3 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__3_n_93),
        .Q(\buff1_reg[12]__3_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[13] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg_n_92),
        .Q(\buff1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \buff1_reg[13]__0 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__0_n_92),
        .Q(\buff1_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[13]__1 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__1_n_92),
        .Q(\buff1_reg[13]__1_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[13]__2 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__2_n_92),
        .Q(\buff1_reg[13]__2_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[13]__3 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__3_n_92),
        .Q(\buff1_reg[13]__3_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[14] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg_n_91),
        .Q(\buff1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \buff1_reg[14]__0 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__0_n_91),
        .Q(\buff1_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[14]__1 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__1_n_91),
        .Q(\buff1_reg[14]__1_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[14]__2 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__2_n_91),
        .Q(\buff1_reg[14]__2_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[14]__3 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__3_n_91),
        .Q(\buff1_reg[14]__3_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[15] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg_n_90),
        .Q(\buff1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \buff1_reg[15]__0 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__0_n_90),
        .Q(\buff1_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[15]__1 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__1_n_90),
        .Q(\buff1_reg[15]__1_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[15]__2 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__2_n_90),
        .Q(\buff1_reg[15]__2_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[15]__3 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__3_n_90),
        .Q(\buff1_reg[15]__3_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[16] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg_n_89),
        .Q(\buff1_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \buff1_reg[16]__0 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__0_n_89),
        .Q(\buff1_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[16]__1 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__1_n_89),
        .Q(\buff1_reg[16]__1_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[16]__2 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__2_n_89),
        .Q(\buff1_reg[16]__2_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[16]__3 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__3_n_89),
        .Q(\buff1_reg[16]__3_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[1] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg_n_104),
        .Q(\buff1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \buff1_reg[1]__0 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__0_n_104),
        .Q(\buff1_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[1]__1 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__1_n_104),
        .Q(\buff1_reg[1]__1_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[1]__2 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__2_n_104),
        .Q(\buff1_reg[1]__2_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[1]__3 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__3_n_104),
        .Q(\buff1_reg[1]__3_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[2] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg_n_103),
        .Q(\buff1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \buff1_reg[2]__0 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__0_n_103),
        .Q(\buff1_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[2]__1 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__1_n_103),
        .Q(\buff1_reg[2]__1_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[2]__2 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__2_n_103),
        .Q(\buff1_reg[2]__2_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[2]__3 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__3_n_103),
        .Q(\buff1_reg[2]__3_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[3] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg_n_102),
        .Q(\buff1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \buff1_reg[3]__0 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__0_n_102),
        .Q(\buff1_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[3]__1 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__1_n_102),
        .Q(\buff1_reg[3]__1_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[3]__2 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__2_n_102),
        .Q(\buff1_reg[3]__2_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[3]__3 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__3_n_102),
        .Q(\buff1_reg[3]__3_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[4] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg_n_101),
        .Q(\buff1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \buff1_reg[4]__0 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__0_n_101),
        .Q(\buff1_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[4]__1 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__1_n_101),
        .Q(\buff1_reg[4]__1_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[4]__2 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__2_n_101),
        .Q(\buff1_reg[4]__2_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[4]__3 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__3_n_101),
        .Q(\buff1_reg[4]__3_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[5] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg_n_100),
        .Q(\buff1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \buff1_reg[5]__0 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__0_n_100),
        .Q(\buff1_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[5]__1 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__1_n_100),
        .Q(\buff1_reg[5]__1_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[5]__2 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__2_n_100),
        .Q(\buff1_reg[5]__2_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[5]__3 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__3_n_100),
        .Q(\buff1_reg[5]__3_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[6] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg_n_99),
        .Q(\buff1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \buff1_reg[6]__0 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__0_n_99),
        .Q(\buff1_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[6]__1 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__1_n_99),
        .Q(\buff1_reg[6]__1_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[6]__2 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__2_n_99),
        .Q(\buff1_reg[6]__2_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[6]__3 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__3_n_99),
        .Q(\buff1_reg[6]__3_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[7] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg_n_98),
        .Q(\buff1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \buff1_reg[7]__0 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__0_n_98),
        .Q(\buff1_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[7]__1 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__1_n_98),
        .Q(\buff1_reg[7]__1_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[7]__2 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__2_n_98),
        .Q(\buff1_reg[7]__2_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[7]__3 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__3_n_98),
        .Q(\buff1_reg[7]__3_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[8] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg_n_97),
        .Q(\buff1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \buff1_reg[8]__0 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__0_n_97),
        .Q(\buff1_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[8]__1 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__1_n_97),
        .Q(\buff1_reg[8]__1_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[8]__2 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__2_n_97),
        .Q(\buff1_reg[8]__2_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[8]__3 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__3_n_97),
        .Q(\buff1_reg[8]__3_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[9] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg_n_96),
        .Q(\buff1_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \buff1_reg[9]__0 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__0_n_96),
        .Q(\buff1_reg[9]__0_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[9]__1 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__1_n_96),
        .Q(\buff1_reg[9]__1_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[9]__2 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(tmp_product__2_n_96),
        .Q(\buff1_reg[9]__2_n_0 ),
        .R(1'b0));
  FDRE \buff1_reg[9]__3 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff0_reg__3_n_96),
        .Q(\buff1_reg[9]__3_n_0 ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 16}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    buff1_reg__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_TDATA_int_regslice[101:85]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_buff1_reg__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q[31],Q[31],Q[31],Q[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_buff1_reg__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_buff1_reg__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_buff1_reg__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ack_out),
        .CEA2(buff0_reg__3_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ack_out),
        .CEB2(buff0_reg__3_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(buff0_reg__3_0),
        .CEP(buff0_reg__3_0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_buff1_reg__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_buff1_reg__0_OVERFLOW_UNCONNECTED),
        .P({buff1_reg__0_n_58,buff1_reg__0_n_59,buff1_reg__0_n_60,buff1_reg__0_n_61,buff1_reg__0_n_62,buff1_reg__0_n_63,buff1_reg__0_n_64,buff1_reg__0_n_65,buff1_reg__0_n_66,buff1_reg__0_n_67,buff1_reg__0_n_68,buff1_reg__0_n_69,buff1_reg__0_n_70,buff1_reg__0_n_71,buff1_reg__0_n_72,buff1_reg__0_n_73,buff1_reg__0_n_74,buff1_reg__0_n_75,buff1_reg__0_n_76,buff1_reg__0_n_77,buff1_reg__0_n_78,buff1_reg__0_n_79,buff1_reg__0_n_80,buff1_reg__0_n_81,buff1_reg__0_n_82,buff1_reg__0_n_83,buff1_reg__0_n_84,buff1_reg__0_n_85,buff1_reg__0_n_86,buff1_reg__0_n_87,buff1_reg__0_n_88,buff1_reg__0_n_89,buff1_reg__0_n_90,buff1_reg__0_n_91,buff1_reg__0_n_92,buff1_reg__0_n_93,buff1_reg__0_n_94,buff1_reg__0_n_95,buff1_reg__0_n_96,buff1_reg__0_n_97,buff1_reg__0_n_98,buff1_reg__0_n_99,buff1_reg__0_n_100,buff1_reg__0_n_101,buff1_reg__0_n_102,buff1_reg__0_n_103,buff1_reg__0_n_104,buff1_reg__0_n_105}),
        .PATTERNBDETECT(NLW_buff1_reg__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_buff1_reg__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({tmp_product__0_n_106,tmp_product__0_n_107,tmp_product__0_n_108,tmp_product__0_n_109,tmp_product__0_n_110,tmp_product__0_n_111,tmp_product__0_n_112,tmp_product__0_n_113,tmp_product__0_n_114,tmp_product__0_n_115,tmp_product__0_n_116,tmp_product__0_n_117,tmp_product__0_n_118,tmp_product__0_n_119,tmp_product__0_n_120,tmp_product__0_n_121,tmp_product__0_n_122,tmp_product__0_n_123,tmp_product__0_n_124,tmp_product__0_n_125,tmp_product__0_n_126,tmp_product__0_n_127,tmp_product__0_n_128,tmp_product__0_n_129,tmp_product__0_n_130,tmp_product__0_n_131,tmp_product__0_n_132,tmp_product__0_n_133,tmp_product__0_n_134,tmp_product__0_n_135,tmp_product__0_n_136,tmp_product__0_n_137,tmp_product__0_n_138,tmp_product__0_n_139,tmp_product__0_n_140,tmp_product__0_n_141,tmp_product__0_n_142,tmp_product__0_n_143,tmp_product__0_n_144,tmp_product__0_n_145,tmp_product__0_n_146,tmp_product__0_n_147,tmp_product__0_n_148,tmp_product__0_n_149,tmp_product__0_n_150,tmp_product__0_n_151,tmp_product__0_n_152,tmp_product__0_n_153}),
        .PCOUT(NLW_buff1_reg__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_buff1_reg__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    buff1_reg__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_TDATA_int_regslice[84:68]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_buff1_reg__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_buff1_reg__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_buff1_reg__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_buff1_reg__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ack_out),
        .CEA2(buff0_reg__3_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ack_out),
        .CEB2(buff0_reg__3_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(buff0_reg__3_0),
        .CEP(buff0_reg__3_0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_buff1_reg__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_buff1_reg__1_OVERFLOW_UNCONNECTED),
        .P({buff1_reg__1_n_58,buff1_reg__1_n_59,buff1_reg__1_n_60,buff1_reg__1_n_61,buff1_reg__1_n_62,buff1_reg__1_n_63,buff1_reg__1_n_64,buff1_reg__1_n_65,buff1_reg__1_n_66,buff1_reg__1_n_67,buff1_reg__1_n_68,buff1_reg__1_n_69,buff1_reg__1_n_70,buff1_reg__1_n_71,buff1_reg__1_n_72,buff1_reg__1_n_73,buff1_reg__1_n_74,buff1_reg__1_n_75,buff1_reg__1_n_76,buff1_reg__1_n_77,buff1_reg__1_n_78,buff1_reg__1_n_79,buff1_reg__1_n_80,buff1_reg__1_n_81,buff1_reg__1_n_82,buff1_reg__1_n_83,buff1_reg__1_n_84,buff1_reg__1_n_85,buff1_reg__1_n_86,buff1_reg__1_n_87,buff1_reg__1_n_88,buff1_reg__1_n_89,buff1_reg__1_n_90,buff1_reg__1_n_91,buff1_reg__1_n_92,buff1_reg__1_n_93,buff1_reg__1_n_94,buff1_reg__1_n_95,buff1_reg__1_n_96,buff1_reg__1_n_97,buff1_reg__1_n_98,buff1_reg__1_n_99,buff1_reg__1_n_100,buff1_reg__1_n_101,buff1_reg__1_n_102,buff1_reg__1_n_103,buff1_reg__1_n_104,buff1_reg__1_n_105}),
        .PATTERNBDETECT(NLW_buff1_reg__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_buff1_reg__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({tmp_product__1_n_106,tmp_product__1_n_107,tmp_product__1_n_108,tmp_product__1_n_109,tmp_product__1_n_110,tmp_product__1_n_111,tmp_product__1_n_112,tmp_product__1_n_113,tmp_product__1_n_114,tmp_product__1_n_115,tmp_product__1_n_116,tmp_product__1_n_117,tmp_product__1_n_118,tmp_product__1_n_119,tmp_product__1_n_120,tmp_product__1_n_121,tmp_product__1_n_122,tmp_product__1_n_123,tmp_product__1_n_124,tmp_product__1_n_125,tmp_product__1_n_126,tmp_product__1_n_127,tmp_product__1_n_128,tmp_product__1_n_129,tmp_product__1_n_130,tmp_product__1_n_131,tmp_product__1_n_132,tmp_product__1_n_133,tmp_product__1_n_134,tmp_product__1_n_135,tmp_product__1_n_136,tmp_product__1_n_137,tmp_product__1_n_138,tmp_product__1_n_139,tmp_product__1_n_140,tmp_product__1_n_141,tmp_product__1_n_142,tmp_product__1_n_143,tmp_product__1_n_144,tmp_product__1_n_145,tmp_product__1_n_146,tmp_product__1_n_147,tmp_product__1_n_148,tmp_product__1_n_149,tmp_product__1_n_150,tmp_product__1_n_151,tmp_product__1_n_152,tmp_product__1_n_153}),
        .PCOUT(NLW_buff1_reg__1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_buff1_reg__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 16}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    buff1_reg__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_TDATA_int_regslice[50:34]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_buff1_reg__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q[31],Q[31],Q[31],Q[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_buff1_reg__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_buff1_reg__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_buff1_reg__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ack_out),
        .CEA2(buff0_reg__3_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ack_out),
        .CEB2(buff0_reg__3_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(buff0_reg__3_0),
        .CEP(buff0_reg__3_0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_buff1_reg__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_buff1_reg__2_OVERFLOW_UNCONNECTED),
        .P({buff1_reg__2_n_58,buff1_reg__2_n_59,buff1_reg__2_n_60,buff1_reg__2_n_61,buff1_reg__2_n_62,buff1_reg__2_n_63,buff1_reg__2_n_64,buff1_reg__2_n_65,buff1_reg__2_n_66,buff1_reg__2_n_67,buff1_reg__2_n_68,buff1_reg__2_n_69,buff1_reg__2_n_70,buff1_reg__2_n_71,buff1_reg__2_n_72,buff1_reg__2_n_73,buff1_reg__2_n_74,buff1_reg__2_n_75,buff1_reg__2_n_76,buff1_reg__2_n_77,buff1_reg__2_n_78,buff1_reg__2_n_79,buff1_reg__2_n_80,buff1_reg__2_n_81,buff1_reg__2_n_82,buff1_reg__2_n_83,buff1_reg__2_n_84,buff1_reg__2_n_85,buff1_reg__2_n_86,buff1_reg__2_n_87,buff1_reg__2_n_88,buff1_reg__2_n_89,buff1_reg__2_n_90,buff1_reg__2_n_91,buff1_reg__2_n_92,buff1_reg__2_n_93,buff1_reg__2_n_94,buff1_reg__2_n_95,buff1_reg__2_n_96,buff1_reg__2_n_97,buff1_reg__2_n_98,buff1_reg__2_n_99,buff1_reg__2_n_100,buff1_reg__2_n_101,buff1_reg__2_n_102,buff1_reg__2_n_103,buff1_reg__2_n_104,buff1_reg__2_n_105}),
        .PATTERNBDETECT(NLW_buff1_reg__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_buff1_reg__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({tmp_product__2_n_106,tmp_product__2_n_107,tmp_product__2_n_108,tmp_product__2_n_109,tmp_product__2_n_110,tmp_product__2_n_111,tmp_product__2_n_112,tmp_product__2_n_113,tmp_product__2_n_114,tmp_product__2_n_115,tmp_product__2_n_116,tmp_product__2_n_117,tmp_product__2_n_118,tmp_product__2_n_119,tmp_product__2_n_120,tmp_product__2_n_121,tmp_product__2_n_122,tmp_product__2_n_123,tmp_product__2_n_124,tmp_product__2_n_125,tmp_product__2_n_126,tmp_product__2_n_127,tmp_product__2_n_128,tmp_product__2_n_129,tmp_product__2_n_130,tmp_product__2_n_131,tmp_product__2_n_132,tmp_product__2_n_133,tmp_product__2_n_134,tmp_product__2_n_135,tmp_product__2_n_136,tmp_product__2_n_137,tmp_product__2_n_138,tmp_product__2_n_139,tmp_product__2_n_140,tmp_product__2_n_141,tmp_product__2_n_142,tmp_product__2_n_143,tmp_product__2_n_144,tmp_product__2_n_145,tmp_product__2_n_146,tmp_product__2_n_147,tmp_product__2_n_148,tmp_product__2_n_149,tmp_product__2_n_150,tmp_product__2_n_151,tmp_product__2_n_152,tmp_product__2_n_153}),
        .PCOUT(NLW_buff1_reg__2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_buff1_reg__2_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    buff1_reg__3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_TDATA_int_regslice[33:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_buff1_reg__3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_buff1_reg__3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_buff1_reg__3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_buff1_reg__3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ack_out),
        .CEA2(buff0_reg__3_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ack_out),
        .CEB2(buff0_reg__3_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(buff0_reg__3_0),
        .CEP(buff0_reg__3_0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_buff1_reg__3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_buff1_reg__3_OVERFLOW_UNCONNECTED),
        .P({buff1_reg__3_n_58,buff1_reg__3_n_59,buff1_reg__3_n_60,buff1_reg__3_n_61,buff1_reg__3_n_62,buff1_reg__3_n_63,buff1_reg__3_n_64,buff1_reg__3_n_65,buff1_reg__3_n_66,buff1_reg__3_n_67,buff1_reg__3_n_68,buff1_reg__3_n_69,buff1_reg__3_n_70,buff1_reg__3_n_71,buff1_reg__3_n_72,buff1_reg__3_n_73,buff1_reg__3_n_74,buff1_reg__3_n_75,buff1_reg__3_n_76,buff1_reg__3_n_77,buff1_reg__3_n_78,buff1_reg__3_n_79,buff1_reg__3_n_80,buff1_reg__3_n_81,buff1_reg__3_n_82,buff1_reg__3_n_83,buff1_reg__3_n_84,buff1_reg__3_n_85,buff1_reg__3_n_86,buff1_reg__3_n_87,buff1_reg__3_n_88,buff1_reg__3_n_89,buff1_reg__3_n_90,buff1_reg__3_n_91,buff1_reg__3_n_92,buff1_reg__3_n_93,buff1_reg__3_n_94,buff1_reg__3_n_95,buff1_reg__3_n_96,buff1_reg__3_n_97,buff1_reg__3_n_98,buff1_reg__3_n_99,buff1_reg__3_n_100,buff1_reg__3_n_101,buff1_reg__3_n_102,buff1_reg__3_n_103,buff1_reg__3_n_104,buff1_reg__3_n_105}),
        .PATTERNBDETECT(NLW_buff1_reg__3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_buff1_reg__3_PATTERNDETECT_UNCONNECTED),
        .PCIN({tmp_product__3_n_106,tmp_product__3_n_107,tmp_product__3_n_108,tmp_product__3_n_109,tmp_product__3_n_110,tmp_product__3_n_111,tmp_product__3_n_112,tmp_product__3_n_113,tmp_product__3_n_114,tmp_product__3_n_115,tmp_product__3_n_116,tmp_product__3_n_117,tmp_product__3_n_118,tmp_product__3_n_119,tmp_product__3_n_120,tmp_product__3_n_121,tmp_product__3_n_122,tmp_product__3_n_123,tmp_product__3_n_124,tmp_product__3_n_125,tmp_product__3_n_126,tmp_product__3_n_127,tmp_product__3_n_128,tmp_product__3_n_129,tmp_product__3_n_130,tmp_product__3_n_131,tmp_product__3_n_132,tmp_product__3_n_133,tmp_product__3_n_134,tmp_product__3_n_135,tmp_product__3_n_136,tmp_product__3_n_137,tmp_product__3_n_138,tmp_product__3_n_139,tmp_product__3_n_140,tmp_product__3_n_141,tmp_product__3_n_142,tmp_product__3_n_143,tmp_product__3_n_144,tmp_product__3_n_145,tmp_product__3_n_146,tmp_product__3_n_147,tmp_product__3_n_148,tmp_product__3_n_149,tmp_product__3_n_150,tmp_product__3_n_151,tmp_product__3_n_152,tmp_product__3_n_153}),
        .PCOUT(NLW_buff1_reg__3_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_buff1_reg__3_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[103]_i_10 
       (.I0(buff1_reg__1_n_78),
        .I1(buff1_reg__2_n_61),
        .I2(buff1_reg__1_n_77),
        .I3(buff1_reg__2_n_60),
        .O(\buff2[103]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \buff2[103]_i_11 
       (.I0(buff1_reg__1_n_74),
        .I1(buff1_reg__1_n_73),
        .O(\buff2[103]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hE0FE1F01)) 
    \buff2[103]_i_12 
       (.I0(buff1_reg__2_n_59),
        .I1(buff1_reg__1_n_76),
        .I2(buff1_reg__1_n_75),
        .I3(buff1_reg__2_n_58),
        .I4(buff1_reg__1_n_74),
        .O(\buff2[103]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[103]_i_13 
       (.I0(buff1_reg__2_n_60),
        .I1(buff1_reg__1_n_77),
        .I2(buff1_reg__2_n_58),
        .I3(buff1_reg__1_n_75),
        .I4(buff1_reg__2_n_59),
        .I5(buff1_reg__1_n_76),
        .O(\buff2[103]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[103]_i_14 
       (.I0(buff1_reg__2_n_61),
        .I1(buff1_reg__1_n_78),
        .I2(buff1_reg__2_n_59),
        .I3(buff1_reg__1_n_76),
        .I4(buff1_reg__2_n_60),
        .I5(buff1_reg__1_n_77),
        .O(\buff2[103]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \buff2[103]_i_2 
       (.I0(buff1_reg__0_n_104),
        .I1(\buff2_reg[107]_i_10_n_5 ),
        .I2(\buff1_reg_n_0_[1] ),
        .O(\buff2[103]_i_2_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \buff2[103]_i_3 
       (.I0(\buff2_reg[107]_i_10_n_5 ),
        .I1(\buff1_reg_n_0_[1] ),
        .I2(buff1_reg__0_n_104),
        .I3(\buff1_reg_n_0_[0] ),
        .I4(\buff2_reg[107]_i_10_n_6 ),
        .O(\buff2[103]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \buff2[103]_i_4 
       (.I0(\buff2_reg[107]_i_10_n_6 ),
        .I1(\buff1_reg_n_0_[0] ),
        .I2(buff1_reg__0_n_105),
        .O(\buff2[103]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[103]_i_5 
       (.I0(\buff1_reg[16]__0_n_0 ),
        .I1(\buff2_reg[107]_i_10_n_7 ),
        .O(\buff2[103]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[103]_i_6 
       (.I0(\buff1_reg[15]__0_n_0 ),
        .I1(\buff2_reg[103]_i_7_n_4 ),
        .O(\buff2[103]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hDDD4)) 
    \buff2[103]_i_8 
       (.I0(buff1_reg__2_n_58),
        .I1(buff1_reg__1_n_75),
        .I2(buff1_reg__1_n_76),
        .I3(buff1_reg__2_n_59),
        .O(\buff2[103]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[103]_i_9 
       (.I0(buff1_reg__1_n_77),
        .I1(buff1_reg__2_n_60),
        .I2(buff1_reg__1_n_76),
        .I3(buff1_reg__2_n_59),
        .O(\buff2[103]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \buff2[107]_i_11 
       (.I0(buff1_reg__1_n_70),
        .I1(buff1_reg__1_n_69),
        .O(\buff2[107]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \buff2[107]_i_12 
       (.I0(buff1_reg__1_n_71),
        .I1(buff1_reg__1_n_70),
        .O(\buff2[107]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \buff2[107]_i_13 
       (.I0(buff1_reg__1_n_72),
        .I1(buff1_reg__1_n_71),
        .O(\buff2[107]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \buff2[107]_i_14 
       (.I0(buff1_reg__1_n_73),
        .I1(buff1_reg__1_n_72),
        .O(\buff2[107]_i_14_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[107]_i_2 
       (.I0(\buff2_reg[111]_i_10_n_6 ),
        .I1(\buff1_reg_n_0_[4] ),
        .I2(buff1_reg__0_n_101),
        .O(\buff2[107]_i_2_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[107]_i_3 
       (.I0(\buff2_reg[111]_i_10_n_7 ),
        .I1(\buff1_reg_n_0_[3] ),
        .I2(buff1_reg__0_n_102),
        .O(\buff2[107]_i_3_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[107]_i_4 
       (.I0(\buff2_reg[107]_i_10_n_4 ),
        .I1(\buff1_reg_n_0_[2] ),
        .I2(buff1_reg__0_n_103),
        .O(\buff2[107]_i_4_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[107]_i_5 
       (.I0(\buff2_reg[107]_i_10_n_5 ),
        .I1(\buff1_reg_n_0_[1] ),
        .I2(buff1_reg__0_n_104),
        .O(\buff2[107]_i_5_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[107]_i_6 
       (.I0(\buff2_reg[111]_i_10_n_5 ),
        .I1(\buff1_reg_n_0_[5] ),
        .I2(buff1_reg__0_n_100),
        .I3(\buff2[107]_i_2_n_0 ),
        .O(\buff2[107]_i_6_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[107]_i_7 
       (.I0(\buff2_reg[111]_i_10_n_6 ),
        .I1(\buff1_reg_n_0_[4] ),
        .I2(buff1_reg__0_n_101),
        .I3(\buff2[107]_i_3_n_0 ),
        .O(\buff2[107]_i_7_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[107]_i_8 
       (.I0(\buff2_reg[111]_i_10_n_7 ),
        .I1(\buff1_reg_n_0_[3] ),
        .I2(buff1_reg__0_n_102),
        .I3(\buff2[107]_i_4_n_0 ),
        .O(\buff2[107]_i_8_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[107]_i_9 
       (.I0(\buff2_reg[107]_i_10_n_4 ),
        .I1(\buff1_reg_n_0_[2] ),
        .I2(buff1_reg__0_n_103),
        .I3(\buff2[107]_i_5_n_0 ),
        .O(\buff2[107]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \buff2[111]_i_11 
       (.I0(buff1_reg__1_n_66),
        .I1(buff1_reg__1_n_65),
        .O(\buff2[111]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \buff2[111]_i_12 
       (.I0(buff1_reg__1_n_67),
        .I1(buff1_reg__1_n_66),
        .O(\buff2[111]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \buff2[111]_i_13 
       (.I0(buff1_reg__1_n_68),
        .I1(buff1_reg__1_n_67),
        .O(\buff2[111]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \buff2[111]_i_14 
       (.I0(buff1_reg__1_n_69),
        .I1(buff1_reg__1_n_68),
        .O(\buff2[111]_i_14_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[111]_i_2 
       (.I0(\buff2_reg[115]_i_10_n_6 ),
        .I1(\buff1_reg_n_0_[8] ),
        .I2(buff1_reg__0_n_97),
        .O(\buff2[111]_i_2_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[111]_i_3 
       (.I0(\buff2_reg[115]_i_10_n_7 ),
        .I1(\buff1_reg_n_0_[7] ),
        .I2(buff1_reg__0_n_98),
        .O(\buff2[111]_i_3_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[111]_i_4 
       (.I0(\buff2_reg[111]_i_10_n_4 ),
        .I1(\buff1_reg_n_0_[6] ),
        .I2(buff1_reg__0_n_99),
        .O(\buff2[111]_i_4_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[111]_i_5 
       (.I0(\buff2_reg[111]_i_10_n_5 ),
        .I1(\buff1_reg_n_0_[5] ),
        .I2(buff1_reg__0_n_100),
        .O(\buff2[111]_i_5_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[111]_i_6 
       (.I0(\buff2_reg[115]_i_10_n_5 ),
        .I1(\buff1_reg_n_0_[9] ),
        .I2(buff1_reg__0_n_96),
        .I3(\buff2[111]_i_2_n_0 ),
        .O(\buff2[111]_i_6_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[111]_i_7 
       (.I0(\buff2_reg[115]_i_10_n_6 ),
        .I1(\buff1_reg_n_0_[8] ),
        .I2(buff1_reg__0_n_97),
        .I3(\buff2[111]_i_3_n_0 ),
        .O(\buff2[111]_i_7_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[111]_i_8 
       (.I0(\buff2_reg[115]_i_10_n_7 ),
        .I1(\buff1_reg_n_0_[7] ),
        .I2(buff1_reg__0_n_98),
        .I3(\buff2[111]_i_4_n_0 ),
        .O(\buff2[111]_i_8_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[111]_i_9 
       (.I0(\buff2_reg[111]_i_10_n_4 ),
        .I1(\buff1_reg_n_0_[6] ),
        .I2(buff1_reg__0_n_99),
        .I3(\buff2[111]_i_5_n_0 ),
        .O(\buff2[111]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \buff2[115]_i_11 
       (.I0(buff1_reg__1_n_62),
        .I1(buff1_reg__1_n_61),
        .O(\buff2[115]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \buff2[115]_i_12 
       (.I0(buff1_reg__1_n_63),
        .I1(buff1_reg__1_n_62),
        .O(\buff2[115]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \buff2[115]_i_13 
       (.I0(buff1_reg__1_n_64),
        .I1(buff1_reg__1_n_63),
        .O(\buff2[115]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \buff2[115]_i_14 
       (.I0(buff1_reg__1_n_65),
        .I1(buff1_reg__1_n_64),
        .O(\buff2[115]_i_14_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[115]_i_2 
       (.I0(\buff2_reg[127]_i_9_n_6 ),
        .I1(\buff1_reg_n_0_[12] ),
        .I2(buff1_reg__0_n_93),
        .O(\buff2[115]_i_2_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[115]_i_3 
       (.I0(\buff2_reg[127]_i_9_n_7 ),
        .I1(\buff1_reg_n_0_[11] ),
        .I2(buff1_reg__0_n_94),
        .O(\buff2[115]_i_3_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[115]_i_4 
       (.I0(\buff2_reg[115]_i_10_n_4 ),
        .I1(\buff1_reg_n_0_[10] ),
        .I2(buff1_reg__0_n_95),
        .O(\buff2[115]_i_4_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[115]_i_5 
       (.I0(\buff2_reg[115]_i_10_n_5 ),
        .I1(\buff1_reg_n_0_[9] ),
        .I2(buff1_reg__0_n_96),
        .O(\buff2[115]_i_5_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[115]_i_6 
       (.I0(\buff2_reg[127]_i_9_n_5 ),
        .I1(\buff1_reg_n_0_[13] ),
        .I2(buff1_reg__0_n_92),
        .I3(\buff2[115]_i_2_n_0 ),
        .O(\buff2[115]_i_6_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[115]_i_7 
       (.I0(\buff2_reg[127]_i_9_n_6 ),
        .I1(\buff1_reg_n_0_[12] ),
        .I2(buff1_reg__0_n_93),
        .I3(\buff2[115]_i_3_n_0 ),
        .O(\buff2[115]_i_7_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[115]_i_8 
       (.I0(\buff2_reg[127]_i_9_n_7 ),
        .I1(\buff1_reg_n_0_[11] ),
        .I2(buff1_reg__0_n_94),
        .I3(\buff2[115]_i_4_n_0 ),
        .O(\buff2[115]_i_8_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[115]_i_9 
       (.I0(\buff2_reg[115]_i_10_n_4 ),
        .I1(\buff1_reg_n_0_[10] ),
        .I2(buff1_reg__0_n_95),
        .I3(\buff2[115]_i_5_n_0 ),
        .O(\buff2[115]_i_9_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \buff2[119]_i_2 
       (.I0(\buff2_reg[127]_i_9_n_0 ),
        .I1(\buff1_reg_n_0_[16] ),
        .I2(buff1_reg__0_n_89),
        .O(\buff2[119]_i_2_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \buff2[119]_i_3 
       (.I0(\buff2_reg[127]_i_9_n_0 ),
        .I1(\buff1_reg_n_0_[15] ),
        .I2(buff1_reg__0_n_90),
        .O(\buff2[119]_i_3_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \buff2[119]_i_4 
       (.I0(\buff2_reg[127]_i_9_n_0 ),
        .I1(\buff1_reg_n_0_[14] ),
        .I2(buff1_reg__0_n_91),
        .O(\buff2[119]_i_4_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[119]_i_5 
       (.I0(\buff2_reg[127]_i_9_n_5 ),
        .I1(\buff1_reg_n_0_[13] ),
        .I2(buff1_reg__0_n_92),
        .O(\buff2[119]_i_5_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \buff2[119]_i_6 
       (.I0(\buff2_reg[127]_i_9_n_0 ),
        .I1(buff1_reg_n_105),
        .I2(buff1_reg__0_n_88),
        .I3(\buff2[119]_i_2_n_0 ),
        .O(\buff2[119]_i_6_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \buff2[119]_i_7 
       (.I0(\buff2_reg[127]_i_9_n_0 ),
        .I1(\buff1_reg_n_0_[16] ),
        .I2(buff1_reg__0_n_89),
        .I3(\buff2[119]_i_3_n_0 ),
        .O(\buff2[119]_i_7_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \buff2[119]_i_8 
       (.I0(\buff2_reg[127]_i_9_n_0 ),
        .I1(\buff1_reg_n_0_[15] ),
        .I2(buff1_reg__0_n_90),
        .I3(\buff2[119]_i_4_n_0 ),
        .O(\buff2[119]_i_8_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \buff2[119]_i_9 
       (.I0(\buff2_reg[127]_i_9_n_0 ),
        .I1(\buff1_reg_n_0_[14] ),
        .I2(buff1_reg__0_n_91),
        .I3(\buff2[119]_i_5_n_0 ),
        .O(\buff2[119]_i_9_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \buff2[123]_i_2 
       (.I0(\buff2_reg[127]_i_9_n_0 ),
        .I1(buff1_reg_n_102),
        .I2(buff1_reg__0_n_85),
        .O(\buff2[123]_i_2_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \buff2[123]_i_3 
       (.I0(\buff2_reg[127]_i_9_n_0 ),
        .I1(buff1_reg_n_103),
        .I2(buff1_reg__0_n_86),
        .O(\buff2[123]_i_3_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \buff2[123]_i_4 
       (.I0(\buff2_reg[127]_i_9_n_0 ),
        .I1(buff1_reg_n_104),
        .I2(buff1_reg__0_n_87),
        .O(\buff2[123]_i_4_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \buff2[123]_i_5 
       (.I0(\buff2_reg[127]_i_9_n_0 ),
        .I1(buff1_reg_n_105),
        .I2(buff1_reg__0_n_88),
        .O(\buff2[123]_i_5_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \buff2[123]_i_6 
       (.I0(\buff2_reg[127]_i_9_n_0 ),
        .I1(buff1_reg_n_101),
        .I2(buff1_reg__0_n_84),
        .I3(\buff2[123]_i_2_n_0 ),
        .O(\buff2[123]_i_6_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \buff2[123]_i_7 
       (.I0(\buff2_reg[127]_i_9_n_0 ),
        .I1(buff1_reg_n_102),
        .I2(buff1_reg__0_n_85),
        .I3(\buff2[123]_i_3_n_0 ),
        .O(\buff2[123]_i_7_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \buff2[123]_i_8 
       (.I0(\buff2_reg[127]_i_9_n_0 ),
        .I1(buff1_reg_n_103),
        .I2(buff1_reg__0_n_86),
        .I3(\buff2[123]_i_4_n_0 ),
        .O(\buff2[123]_i_8_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \buff2[123]_i_9 
       (.I0(\buff2_reg[127]_i_9_n_0 ),
        .I1(buff1_reg_n_104),
        .I2(buff1_reg__0_n_87),
        .I3(\buff2[123]_i_5_n_0 ),
        .O(\buff2[123]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \buff2[127]_i_10 
       (.I0(buff1_reg__1_n_59),
        .I1(buff1_reg__1_n_58),
        .O(\buff2[127]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \buff2[127]_i_11 
       (.I0(buff1_reg__1_n_60),
        .I1(buff1_reg__1_n_59),
        .O(\buff2[127]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \buff2[127]_i_12 
       (.I0(buff1_reg__1_n_61),
        .I1(buff1_reg__1_n_60),
        .O(\buff2[127]_i_12_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \buff2[127]_i_2 
       (.I0(\buff2_reg[127]_i_9_n_0 ),
        .I1(buff1_reg_n_99),
        .I2(buff1_reg__0_n_82),
        .O(\buff2[127]_i_2_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \buff2[127]_i_3 
       (.I0(\buff2_reg[127]_i_9_n_0 ),
        .I1(buff1_reg_n_100),
        .I2(buff1_reg__0_n_83),
        .O(\buff2[127]_i_3_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \buff2[127]_i_4 
       (.I0(\buff2_reg[127]_i_9_n_0 ),
        .I1(buff1_reg_n_101),
        .I2(buff1_reg__0_n_84),
        .O(\buff2[127]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h871E78E1)) 
    \buff2[127]_i_5 
       (.I0(buff1_reg__0_n_81),
        .I1(buff1_reg_n_98),
        .I2(buff1_reg_n_97),
        .I3(\buff2_reg[127]_i_9_n_0 ),
        .I4(buff1_reg__0_n_80),
        .O(\buff2[127]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \buff2[127]_i_6 
       (.I0(\buff2[127]_i_2_n_0 ),
        .I1(buff1_reg_n_98),
        .I2(\buff2_reg[127]_i_9_n_0 ),
        .I3(buff1_reg__0_n_81),
        .O(\buff2[127]_i_6_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \buff2[127]_i_7 
       (.I0(\buff2_reg[127]_i_9_n_0 ),
        .I1(buff1_reg_n_99),
        .I2(buff1_reg__0_n_82),
        .I3(\buff2[127]_i_3_n_0 ),
        .O(\buff2[127]_i_7_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \buff2[127]_i_8 
       (.I0(\buff2_reg[127]_i_9_n_0 ),
        .I1(buff1_reg_n_100),
        .I2(buff1_reg__0_n_83),
        .I3(\buff2[127]_i_4_n_0 ),
        .O(\buff2[127]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[36]_i_2 
       (.I0(buff1_reg__3_n_86),
        .I1(\buff1_reg[2]__2_n_0 ),
        .O(\buff2[36]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[36]_i_3 
       (.I0(buff1_reg__3_n_87),
        .I1(\buff1_reg[1]__2_n_0 ),
        .O(\buff2[36]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[36]_i_4 
       (.I0(buff1_reg__3_n_88),
        .I1(\buff1_reg[0]__2_n_0 ),
        .O(\buff2[36]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[40]_i_2 
       (.I0(buff1_reg__3_n_82),
        .I1(\buff1_reg[6]__2_n_0 ),
        .O(\buff2[40]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[40]_i_3 
       (.I0(buff1_reg__3_n_83),
        .I1(\buff1_reg[5]__2_n_0 ),
        .O(\buff2[40]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[40]_i_4 
       (.I0(buff1_reg__3_n_84),
        .I1(\buff1_reg[4]__2_n_0 ),
        .O(\buff2[40]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[40]_i_5 
       (.I0(buff1_reg__3_n_85),
        .I1(\buff1_reg[3]__2_n_0 ),
        .O(\buff2[40]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[44]_i_2 
       (.I0(buff1_reg__3_n_78),
        .I1(\buff1_reg[10]__2_n_0 ),
        .O(\buff2[44]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[44]_i_3 
       (.I0(buff1_reg__3_n_79),
        .I1(\buff1_reg[9]__2_n_0 ),
        .O(\buff2[44]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[44]_i_4 
       (.I0(buff1_reg__3_n_80),
        .I1(\buff1_reg[8]__2_n_0 ),
        .O(\buff2[44]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[44]_i_5 
       (.I0(buff1_reg__3_n_81),
        .I1(\buff1_reg[7]__2_n_0 ),
        .O(\buff2[44]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[48]_i_2 
       (.I0(buff1_reg__3_n_74),
        .I1(\buff1_reg[14]__2_n_0 ),
        .O(\buff2[48]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[48]_i_3 
       (.I0(buff1_reg__3_n_75),
        .I1(\buff1_reg[13]__2_n_0 ),
        .O(\buff2[48]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[48]_i_4 
       (.I0(buff1_reg__3_n_76),
        .I1(\buff1_reg[12]__2_n_0 ),
        .O(\buff2[48]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[48]_i_5 
       (.I0(buff1_reg__3_n_77),
        .I1(\buff1_reg[11]__2_n_0 ),
        .O(\buff2[48]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \buff2[52]_i_2 
       (.I0(buff1_reg__3_n_70),
        .I1(\buff1_reg[1]__1_n_0 ),
        .I2(buff1_reg__2_n_104),
        .O(\buff2[52]_i_2_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \buff2[52]_i_3 
       (.I0(\buff1_reg[1]__1_n_0 ),
        .I1(buff1_reg__2_n_104),
        .I2(buff1_reg__3_n_70),
        .I3(buff1_reg__2_n_105),
        .I4(\buff1_reg[0]__1_n_0 ),
        .O(\buff2[52]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \buff2[52]_i_4 
       (.I0(\buff1_reg[0]__1_n_0 ),
        .I1(buff1_reg__2_n_105),
        .I2(buff1_reg__3_n_71),
        .O(\buff2[52]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[52]_i_5 
       (.I0(buff1_reg__3_n_72),
        .I1(\buff1_reg[16]__2_n_0 ),
        .O(\buff2[52]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[52]_i_6 
       (.I0(buff1_reg__3_n_73),
        .I1(\buff1_reg[15]__2_n_0 ),
        .O(\buff2[52]_i_6_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[56]_i_2 
       (.I0(\buff1_reg[4]__1_n_0 ),
        .I1(buff1_reg__2_n_101),
        .I2(buff1_reg__3_n_67),
        .O(\buff2[56]_i_2_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[56]_i_3 
       (.I0(\buff1_reg[3]__1_n_0 ),
        .I1(buff1_reg__2_n_102),
        .I2(buff1_reg__3_n_68),
        .O(\buff2[56]_i_3_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[56]_i_4 
       (.I0(\buff1_reg[2]__1_n_0 ),
        .I1(buff1_reg__2_n_103),
        .I2(buff1_reg__3_n_69),
        .O(\buff2[56]_i_4_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[56]_i_5 
       (.I0(\buff1_reg[1]__1_n_0 ),
        .I1(buff1_reg__2_n_104),
        .I2(buff1_reg__3_n_70),
        .O(\buff2[56]_i_5_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[56]_i_6 
       (.I0(\buff1_reg[5]__1_n_0 ),
        .I1(buff1_reg__2_n_100),
        .I2(buff1_reg__3_n_66),
        .I3(\buff2[56]_i_2_n_0 ),
        .O(\buff2[56]_i_6_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[56]_i_7 
       (.I0(\buff1_reg[4]__1_n_0 ),
        .I1(buff1_reg__2_n_101),
        .I2(buff1_reg__3_n_67),
        .I3(\buff2[56]_i_3_n_0 ),
        .O(\buff2[56]_i_7_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[56]_i_8 
       (.I0(\buff1_reg[3]__1_n_0 ),
        .I1(buff1_reg__2_n_102),
        .I2(buff1_reg__3_n_68),
        .I3(\buff2[56]_i_4_n_0 ),
        .O(\buff2[56]_i_8_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[56]_i_9 
       (.I0(\buff1_reg[2]__1_n_0 ),
        .I1(buff1_reg__2_n_103),
        .I2(buff1_reg__3_n_69),
        .I3(\buff2[56]_i_5_n_0 ),
        .O(\buff2[56]_i_9_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[60]_i_2 
       (.I0(\buff1_reg[8]__1_n_0 ),
        .I1(buff1_reg__2_n_97),
        .I2(buff1_reg__3_n_63),
        .O(\buff2[60]_i_2_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[60]_i_3 
       (.I0(\buff1_reg[7]__1_n_0 ),
        .I1(buff1_reg__2_n_98),
        .I2(buff1_reg__3_n_64),
        .O(\buff2[60]_i_3_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[60]_i_4 
       (.I0(\buff1_reg[6]__1_n_0 ),
        .I1(buff1_reg__2_n_99),
        .I2(buff1_reg__3_n_65),
        .O(\buff2[60]_i_4_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[60]_i_5 
       (.I0(\buff1_reg[5]__1_n_0 ),
        .I1(buff1_reg__2_n_100),
        .I2(buff1_reg__3_n_66),
        .O(\buff2[60]_i_5_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[60]_i_6 
       (.I0(\buff1_reg[9]__1_n_0 ),
        .I1(buff1_reg__2_n_96),
        .I2(buff1_reg__3_n_62),
        .I3(\buff2[60]_i_2_n_0 ),
        .O(\buff2[60]_i_6_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[60]_i_7 
       (.I0(\buff1_reg[8]__1_n_0 ),
        .I1(buff1_reg__2_n_97),
        .I2(buff1_reg__3_n_63),
        .I3(\buff2[60]_i_3_n_0 ),
        .O(\buff2[60]_i_7_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[60]_i_8 
       (.I0(\buff1_reg[7]__1_n_0 ),
        .I1(buff1_reg__2_n_98),
        .I2(buff1_reg__3_n_64),
        .I3(\buff2[60]_i_4_n_0 ),
        .O(\buff2[60]_i_8_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[60]_i_9 
       (.I0(\buff1_reg[6]__1_n_0 ),
        .I1(buff1_reg__2_n_99),
        .I2(buff1_reg__3_n_65),
        .I3(\buff2[60]_i_5_n_0 ),
        .O(\buff2[60]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \buff2[64]_i_2 
       (.I0(buff1_reg__3_n_58),
        .I1(buff1_reg__2_n_92),
        .I2(\buff1_reg[13]__1_n_0 ),
        .O(\buff2[64]_i_2_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[64]_i_3 
       (.I0(\buff1_reg[11]__1_n_0 ),
        .I1(buff1_reg__2_n_94),
        .I2(buff1_reg__3_n_60),
        .O(\buff2[64]_i_3_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[64]_i_4 
       (.I0(\buff1_reg[10]__1_n_0 ),
        .I1(buff1_reg__2_n_95),
        .I2(buff1_reg__3_n_61),
        .O(\buff2[64]_i_4_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \buff2[64]_i_5 
       (.I0(\buff1_reg[9]__1_n_0 ),
        .I1(buff1_reg__2_n_96),
        .I2(buff1_reg__3_n_62),
        .O(\buff2[64]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \buff2[64]_i_6 
       (.I0(buff1_reg__3_n_58),
        .I1(buff1_reg__2_n_92),
        .I2(\buff1_reg[13]__1_n_0 ),
        .I3(buff1_reg__3_n_59),
        .I4(buff1_reg__2_n_93),
        .I5(\buff1_reg[12]__1_n_0 ),
        .O(\buff2[64]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[64]_i_7 
       (.I0(\buff2[64]_i_3_n_0 ),
        .I1(buff1_reg__2_n_93),
        .I2(\buff1_reg[12]__1_n_0 ),
        .I3(buff1_reg__3_n_59),
        .O(\buff2[64]_i_7_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[64]_i_8 
       (.I0(\buff1_reg[11]__1_n_0 ),
        .I1(buff1_reg__2_n_94),
        .I2(buff1_reg__3_n_60),
        .I3(\buff2[64]_i_4_n_0 ),
        .O(\buff2[64]_i_8_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \buff2[64]_i_9 
       (.I0(\buff1_reg[10]__1_n_0 ),
        .I1(buff1_reg__2_n_95),
        .I2(buff1_reg__3_n_61),
        .I3(\buff2[64]_i_5_n_0 ),
        .O(\buff2[64]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[68]_i_2 
       (.I0(\buff1_reg[15]__1_n_0 ),
        .I1(buff1_reg__2_n_90),
        .I2(\buff1_reg[16]__1_n_0 ),
        .I3(buff1_reg__2_n_89),
        .O(\buff2[68]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[68]_i_3 
       (.I0(\buff1_reg[14]__1_n_0 ),
        .I1(buff1_reg__2_n_91),
        .I2(\buff1_reg[15]__1_n_0 ),
        .I3(buff1_reg__2_n_90),
        .O(\buff2[68]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[68]_i_4 
       (.I0(\buff1_reg[13]__1_n_0 ),
        .I1(buff1_reg__2_n_92),
        .I2(\buff1_reg[14]__1_n_0 ),
        .I3(buff1_reg__2_n_91),
        .O(\buff2[68]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \buff2[68]_i_5 
       (.I0(\buff1_reg[13]__1_n_0 ),
        .I1(buff1_reg__2_n_92),
        .I2(buff1_reg__3_n_58),
        .O(\buff2[68]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[68]_i_6 
       (.I0(buff1_reg__2_n_90),
        .I1(\buff1_reg[15]__1_n_0 ),
        .I2(buff1_reg__2_n_88),
        .I3(buff1_reg__1_n_105),
        .I4(buff1_reg__2_n_89),
        .I5(\buff1_reg[16]__1_n_0 ),
        .O(\buff2[68]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[68]_i_7 
       (.I0(buff1_reg__2_n_91),
        .I1(\buff1_reg[14]__1_n_0 ),
        .I2(buff1_reg__2_n_89),
        .I3(\buff1_reg[16]__1_n_0 ),
        .I4(buff1_reg__2_n_90),
        .I5(\buff1_reg[15]__1_n_0 ),
        .O(\buff2[68]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[68]_i_8 
       (.I0(buff1_reg__2_n_92),
        .I1(\buff1_reg[13]__1_n_0 ),
        .I2(buff1_reg__2_n_90),
        .I3(\buff1_reg[15]__1_n_0 ),
        .I4(buff1_reg__2_n_91),
        .I5(\buff1_reg[14]__1_n_0 ),
        .O(\buff2[68]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h693C3C96)) 
    \buff2[68]_i_9 
       (.I0(buff1_reg__3_n_58),
        .I1(buff1_reg__2_n_91),
        .I2(\buff1_reg[14]__1_n_0 ),
        .I3(buff1_reg__2_n_92),
        .I4(\buff1_reg[13]__1_n_0 ),
        .O(\buff2[68]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[72]_i_2 
       (.I0(buff1_reg__1_n_103),
        .I1(buff1_reg__2_n_86),
        .I2(buff1_reg__1_n_102),
        .I3(buff1_reg__2_n_85),
        .O(\buff2[72]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[72]_i_3 
       (.I0(buff1_reg__1_n_104),
        .I1(buff1_reg__2_n_87),
        .I2(buff1_reg__1_n_103),
        .I3(buff1_reg__2_n_86),
        .O(\buff2[72]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[72]_i_4 
       (.I0(buff1_reg__1_n_105),
        .I1(buff1_reg__2_n_88),
        .I2(buff1_reg__1_n_104),
        .I3(buff1_reg__2_n_87),
        .O(\buff2[72]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[72]_i_5 
       (.I0(\buff1_reg[16]__1_n_0 ),
        .I1(buff1_reg__2_n_89),
        .I2(buff1_reg__1_n_105),
        .I3(buff1_reg__2_n_88),
        .O(\buff2[72]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[72]_i_6 
       (.I0(buff1_reg__2_n_86),
        .I1(buff1_reg__1_n_103),
        .I2(buff1_reg__2_n_84),
        .I3(buff1_reg__1_n_101),
        .I4(buff1_reg__2_n_85),
        .I5(buff1_reg__1_n_102),
        .O(\buff2[72]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[72]_i_7 
       (.I0(buff1_reg__2_n_87),
        .I1(buff1_reg__1_n_104),
        .I2(buff1_reg__2_n_85),
        .I3(buff1_reg__1_n_102),
        .I4(buff1_reg__2_n_86),
        .I5(buff1_reg__1_n_103),
        .O(\buff2[72]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[72]_i_8 
       (.I0(buff1_reg__2_n_88),
        .I1(buff1_reg__1_n_105),
        .I2(buff1_reg__2_n_86),
        .I3(buff1_reg__1_n_103),
        .I4(buff1_reg__2_n_87),
        .I5(buff1_reg__1_n_104),
        .O(\buff2[72]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[72]_i_9 
       (.I0(buff1_reg__2_n_89),
        .I1(\buff1_reg[16]__1_n_0 ),
        .I2(buff1_reg__2_n_87),
        .I3(buff1_reg__1_n_104),
        .I4(buff1_reg__2_n_88),
        .I5(buff1_reg__1_n_105),
        .O(\buff2[72]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[76]_i_2 
       (.I0(buff1_reg__1_n_99),
        .I1(buff1_reg__2_n_82),
        .I2(buff1_reg__1_n_98),
        .I3(buff1_reg__2_n_81),
        .O(\buff2[76]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[76]_i_3 
       (.I0(buff1_reg__1_n_100),
        .I1(buff1_reg__2_n_83),
        .I2(buff1_reg__1_n_99),
        .I3(buff1_reg__2_n_82),
        .O(\buff2[76]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[76]_i_4 
       (.I0(buff1_reg__1_n_101),
        .I1(buff1_reg__2_n_84),
        .I2(buff1_reg__1_n_100),
        .I3(buff1_reg__2_n_83),
        .O(\buff2[76]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[76]_i_5 
       (.I0(buff1_reg__1_n_102),
        .I1(buff1_reg__2_n_85),
        .I2(buff1_reg__1_n_101),
        .I3(buff1_reg__2_n_84),
        .O(\buff2[76]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[76]_i_6 
       (.I0(buff1_reg__2_n_82),
        .I1(buff1_reg__1_n_99),
        .I2(buff1_reg__2_n_80),
        .I3(buff1_reg__1_n_97),
        .I4(buff1_reg__2_n_81),
        .I5(buff1_reg__1_n_98),
        .O(\buff2[76]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[76]_i_7 
       (.I0(buff1_reg__2_n_83),
        .I1(buff1_reg__1_n_100),
        .I2(buff1_reg__2_n_81),
        .I3(buff1_reg__1_n_98),
        .I4(buff1_reg__2_n_82),
        .I5(buff1_reg__1_n_99),
        .O(\buff2[76]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[76]_i_8 
       (.I0(buff1_reg__2_n_84),
        .I1(buff1_reg__1_n_101),
        .I2(buff1_reg__2_n_82),
        .I3(buff1_reg__1_n_99),
        .I4(buff1_reg__2_n_83),
        .I5(buff1_reg__1_n_100),
        .O(\buff2[76]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[76]_i_9 
       (.I0(buff1_reg__2_n_85),
        .I1(buff1_reg__1_n_102),
        .I2(buff1_reg__2_n_83),
        .I3(buff1_reg__1_n_100),
        .I4(buff1_reg__2_n_84),
        .I5(buff1_reg__1_n_101),
        .O(\buff2[76]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[80]_i_2 
       (.I0(buff1_reg__1_n_95),
        .I1(buff1_reg__2_n_78),
        .I2(buff1_reg__1_n_94),
        .I3(buff1_reg__2_n_77),
        .O(\buff2[80]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[80]_i_3 
       (.I0(buff1_reg__1_n_96),
        .I1(buff1_reg__2_n_79),
        .I2(buff1_reg__1_n_95),
        .I3(buff1_reg__2_n_78),
        .O(\buff2[80]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[80]_i_4 
       (.I0(buff1_reg__1_n_97),
        .I1(buff1_reg__2_n_80),
        .I2(buff1_reg__1_n_96),
        .I3(buff1_reg__2_n_79),
        .O(\buff2[80]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[80]_i_5 
       (.I0(buff1_reg__1_n_98),
        .I1(buff1_reg__2_n_81),
        .I2(buff1_reg__1_n_97),
        .I3(buff1_reg__2_n_80),
        .O(\buff2[80]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[80]_i_6 
       (.I0(buff1_reg__2_n_78),
        .I1(buff1_reg__1_n_95),
        .I2(buff1_reg__2_n_76),
        .I3(buff1_reg__1_n_93),
        .I4(buff1_reg__2_n_77),
        .I5(buff1_reg__1_n_94),
        .O(\buff2[80]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[80]_i_7 
       (.I0(buff1_reg__2_n_79),
        .I1(buff1_reg__1_n_96),
        .I2(buff1_reg__2_n_77),
        .I3(buff1_reg__1_n_94),
        .I4(buff1_reg__2_n_78),
        .I5(buff1_reg__1_n_95),
        .O(\buff2[80]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[80]_i_8 
       (.I0(buff1_reg__2_n_80),
        .I1(buff1_reg__1_n_97),
        .I2(buff1_reg__2_n_78),
        .I3(buff1_reg__1_n_95),
        .I4(buff1_reg__2_n_79),
        .I5(buff1_reg__1_n_96),
        .O(\buff2[80]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[80]_i_9 
       (.I0(buff1_reg__2_n_81),
        .I1(buff1_reg__1_n_98),
        .I2(buff1_reg__2_n_79),
        .I3(buff1_reg__1_n_96),
        .I4(buff1_reg__2_n_80),
        .I5(buff1_reg__1_n_97),
        .O(\buff2[80]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[83]_i_2 
       (.I0(buff1_reg__1_n_91),
        .I1(buff1_reg__2_n_74),
        .I2(buff1_reg__1_n_90),
        .I3(buff1_reg__2_n_73),
        .O(\buff2[83]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[83]_i_3 
       (.I0(buff1_reg__1_n_92),
        .I1(buff1_reg__2_n_75),
        .I2(buff1_reg__1_n_91),
        .I3(buff1_reg__2_n_74),
        .O(\buff2[83]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[83]_i_4 
       (.I0(buff1_reg__1_n_93),
        .I1(buff1_reg__2_n_76),
        .I2(buff1_reg__1_n_92),
        .I3(buff1_reg__2_n_75),
        .O(\buff2[83]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[83]_i_5 
       (.I0(buff1_reg__1_n_94),
        .I1(buff1_reg__2_n_77),
        .I2(buff1_reg__1_n_93),
        .I3(buff1_reg__2_n_76),
        .O(\buff2[83]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[83]_i_6 
       (.I0(buff1_reg__2_n_74),
        .I1(buff1_reg__1_n_91),
        .I2(buff1_reg__2_n_72),
        .I3(buff1_reg__1_n_89),
        .I4(buff1_reg__2_n_73),
        .I5(buff1_reg__1_n_90),
        .O(\buff2[83]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[83]_i_7 
       (.I0(buff1_reg__2_n_75),
        .I1(buff1_reg__1_n_92),
        .I2(buff1_reg__2_n_73),
        .I3(buff1_reg__1_n_90),
        .I4(buff1_reg__2_n_74),
        .I5(buff1_reg__1_n_91),
        .O(\buff2[83]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[83]_i_8 
       (.I0(buff1_reg__2_n_76),
        .I1(buff1_reg__1_n_93),
        .I2(buff1_reg__2_n_74),
        .I3(buff1_reg__1_n_91),
        .I4(buff1_reg__2_n_75),
        .I5(buff1_reg__1_n_92),
        .O(\buff2[83]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[83]_i_9 
       (.I0(buff1_reg__2_n_77),
        .I1(buff1_reg__1_n_94),
        .I2(buff1_reg__2_n_75),
        .I3(buff1_reg__1_n_92),
        .I4(buff1_reg__2_n_76),
        .I5(buff1_reg__1_n_93),
        .O(\buff2[83]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[87]_i_2 
       (.I0(\buff1_reg[2]__0_n_0 ),
        .I1(\buff2_reg[91]_i_6_n_5 ),
        .O(\buff2[87]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[87]_i_3 
       (.I0(\buff1_reg[1]__0_n_0 ),
        .I1(\buff2_reg[91]_i_6_n_6 ),
        .O(\buff2[87]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[87]_i_4 
       (.I0(\buff1_reg[0]__0_n_0 ),
        .I1(\buff2_reg[91]_i_6_n_7 ),
        .O(\buff2[87]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[91]_i_10 
       (.I0(buff1_reg__1_n_90),
        .I1(buff1_reg__2_n_73),
        .I2(buff1_reg__1_n_89),
        .I3(buff1_reg__2_n_72),
        .O(\buff2[91]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[91]_i_11 
       (.I0(buff1_reg__2_n_70),
        .I1(buff1_reg__1_n_87),
        .I2(buff1_reg__2_n_68),
        .I3(buff1_reg__1_n_85),
        .I4(buff1_reg__2_n_69),
        .I5(buff1_reg__1_n_86),
        .O(\buff2[91]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[91]_i_12 
       (.I0(buff1_reg__2_n_71),
        .I1(buff1_reg__1_n_88),
        .I2(buff1_reg__2_n_69),
        .I3(buff1_reg__1_n_86),
        .I4(buff1_reg__2_n_70),
        .I5(buff1_reg__1_n_87),
        .O(\buff2[91]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[91]_i_13 
       (.I0(buff1_reg__2_n_72),
        .I1(buff1_reg__1_n_89),
        .I2(buff1_reg__2_n_70),
        .I3(buff1_reg__1_n_87),
        .I4(buff1_reg__2_n_71),
        .I5(buff1_reg__1_n_88),
        .O(\buff2[91]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[91]_i_14 
       (.I0(buff1_reg__2_n_73),
        .I1(buff1_reg__1_n_90),
        .I2(buff1_reg__2_n_71),
        .I3(buff1_reg__1_n_88),
        .I4(buff1_reg__2_n_72),
        .I5(buff1_reg__1_n_89),
        .O(\buff2[91]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[91]_i_2 
       (.I0(\buff1_reg[6]__0_n_0 ),
        .I1(\buff2_reg[95]_i_6_n_5 ),
        .O(\buff2[91]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[91]_i_3 
       (.I0(\buff1_reg[5]__0_n_0 ),
        .I1(\buff2_reg[95]_i_6_n_6 ),
        .O(\buff2[91]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[91]_i_4 
       (.I0(\buff1_reg[4]__0_n_0 ),
        .I1(\buff2_reg[95]_i_6_n_7 ),
        .O(\buff2[91]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[91]_i_5 
       (.I0(\buff1_reg[3]__0_n_0 ),
        .I1(\buff2_reg[91]_i_6_n_4 ),
        .O(\buff2[91]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[91]_i_7 
       (.I0(buff1_reg__1_n_87),
        .I1(buff1_reg__2_n_70),
        .I2(buff1_reg__1_n_86),
        .I3(buff1_reg__2_n_69),
        .O(\buff2[91]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[91]_i_8 
       (.I0(buff1_reg__1_n_88),
        .I1(buff1_reg__2_n_71),
        .I2(buff1_reg__1_n_87),
        .I3(buff1_reg__2_n_70),
        .O(\buff2[91]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[91]_i_9 
       (.I0(buff1_reg__1_n_89),
        .I1(buff1_reg__2_n_72),
        .I2(buff1_reg__1_n_88),
        .I3(buff1_reg__2_n_71),
        .O(\buff2[91]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[95]_i_10 
       (.I0(buff1_reg__1_n_86),
        .I1(buff1_reg__2_n_69),
        .I2(buff1_reg__1_n_85),
        .I3(buff1_reg__2_n_68),
        .O(\buff2[95]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[95]_i_11 
       (.I0(buff1_reg__2_n_66),
        .I1(buff1_reg__1_n_83),
        .I2(buff1_reg__2_n_64),
        .I3(buff1_reg__1_n_81),
        .I4(buff1_reg__2_n_65),
        .I5(buff1_reg__1_n_82),
        .O(\buff2[95]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[95]_i_12 
       (.I0(buff1_reg__2_n_67),
        .I1(buff1_reg__1_n_84),
        .I2(buff1_reg__2_n_65),
        .I3(buff1_reg__1_n_82),
        .I4(buff1_reg__2_n_66),
        .I5(buff1_reg__1_n_83),
        .O(\buff2[95]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[95]_i_13 
       (.I0(buff1_reg__2_n_68),
        .I1(buff1_reg__1_n_85),
        .I2(buff1_reg__2_n_66),
        .I3(buff1_reg__1_n_83),
        .I4(buff1_reg__2_n_67),
        .I5(buff1_reg__1_n_84),
        .O(\buff2[95]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[95]_i_14 
       (.I0(buff1_reg__2_n_69),
        .I1(buff1_reg__1_n_86),
        .I2(buff1_reg__2_n_67),
        .I3(buff1_reg__1_n_84),
        .I4(buff1_reg__2_n_68),
        .I5(buff1_reg__1_n_85),
        .O(\buff2[95]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[95]_i_2 
       (.I0(\buff1_reg[10]__0_n_0 ),
        .I1(\buff2_reg[99]_i_6_n_5 ),
        .O(\buff2[95]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[95]_i_3 
       (.I0(\buff1_reg[9]__0_n_0 ),
        .I1(\buff2_reg[99]_i_6_n_6 ),
        .O(\buff2[95]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[95]_i_4 
       (.I0(\buff1_reg[8]__0_n_0 ),
        .I1(\buff2_reg[99]_i_6_n_7 ),
        .O(\buff2[95]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[95]_i_5 
       (.I0(\buff1_reg[7]__0_n_0 ),
        .I1(\buff2_reg[95]_i_6_n_4 ),
        .O(\buff2[95]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[95]_i_7 
       (.I0(buff1_reg__1_n_83),
        .I1(buff1_reg__2_n_66),
        .I2(buff1_reg__1_n_82),
        .I3(buff1_reg__2_n_65),
        .O(\buff2[95]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[95]_i_8 
       (.I0(buff1_reg__1_n_84),
        .I1(buff1_reg__2_n_67),
        .I2(buff1_reg__1_n_83),
        .I3(buff1_reg__2_n_66),
        .O(\buff2[95]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[95]_i_9 
       (.I0(buff1_reg__1_n_85),
        .I1(buff1_reg__2_n_68),
        .I2(buff1_reg__1_n_84),
        .I3(buff1_reg__2_n_67),
        .O(\buff2[95]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[99]_i_10 
       (.I0(buff1_reg__1_n_82),
        .I1(buff1_reg__2_n_65),
        .I2(buff1_reg__1_n_81),
        .I3(buff1_reg__2_n_64),
        .O(\buff2[99]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[99]_i_11 
       (.I0(buff1_reg__2_n_62),
        .I1(buff1_reg__1_n_79),
        .I2(buff1_reg__2_n_60),
        .I3(buff1_reg__1_n_77),
        .I4(buff1_reg__2_n_61),
        .I5(buff1_reg__1_n_78),
        .O(\buff2[99]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[99]_i_12 
       (.I0(buff1_reg__2_n_63),
        .I1(buff1_reg__1_n_80),
        .I2(buff1_reg__2_n_61),
        .I3(buff1_reg__1_n_78),
        .I4(buff1_reg__2_n_62),
        .I5(buff1_reg__1_n_79),
        .O(\buff2[99]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[99]_i_13 
       (.I0(buff1_reg__2_n_64),
        .I1(buff1_reg__1_n_81),
        .I2(buff1_reg__2_n_62),
        .I3(buff1_reg__1_n_79),
        .I4(buff1_reg__2_n_63),
        .I5(buff1_reg__1_n_80),
        .O(\buff2[99]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \buff2[99]_i_14 
       (.I0(buff1_reg__2_n_65),
        .I1(buff1_reg__1_n_82),
        .I2(buff1_reg__2_n_63),
        .I3(buff1_reg__1_n_80),
        .I4(buff1_reg__2_n_64),
        .I5(buff1_reg__1_n_81),
        .O(\buff2[99]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[99]_i_2 
       (.I0(\buff1_reg[14]__0_n_0 ),
        .I1(\buff2_reg[103]_i_7_n_5 ),
        .O(\buff2[99]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[99]_i_3 
       (.I0(\buff1_reg[13]__0_n_0 ),
        .I1(\buff2_reg[103]_i_7_n_6 ),
        .O(\buff2[99]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[99]_i_4 
       (.I0(\buff1_reg[12]__0_n_0 ),
        .I1(\buff2_reg[103]_i_7_n_7 ),
        .O(\buff2[99]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff2[99]_i_5 
       (.I0(\buff1_reg[11]__0_n_0 ),
        .I1(\buff2_reg[99]_i_6_n_4 ),
        .O(\buff2[99]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[99]_i_7 
       (.I0(buff1_reg__1_n_79),
        .I1(buff1_reg__2_n_62),
        .I2(buff1_reg__1_n_78),
        .I3(buff1_reg__2_n_61),
        .O(\buff2[99]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[99]_i_8 
       (.I0(buff1_reg__1_n_80),
        .I1(buff1_reg__2_n_63),
        .I2(buff1_reg__1_n_79),
        .I3(buff1_reg__2_n_62),
        .O(\buff2[99]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \buff2[99]_i_9 
       (.I0(buff1_reg__1_n_81),
        .I1(buff1_reg__2_n_64),
        .I2(buff1_reg__1_n_80),
        .I3(buff1_reg__2_n_63),
        .O(\buff2[99]_i_9_n_0 ));
  FDRE \buff2_reg[0] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(\buff1_reg[0]__3_n_0 ),
        .Q(\buff2_reg[127]_0 [0]),
        .R(1'b0));
  FDRE \buff2_reg[100] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[100]),
        .Q(\buff2_reg[127]_0 [100]),
        .R(1'b0));
  FDRE \buff2_reg[101] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[101]),
        .Q(\buff2_reg[127]_0 [101]),
        .R(1'b0));
  FDRE \buff2_reg[102] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[102]),
        .Q(\buff2_reg[127]_0 [102]),
        .R(1'b0));
  FDRE \buff2_reg[103] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[103]),
        .Q(\buff2_reg[127]_0 [103]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buff2_reg[103]_i_1 
       (.CI(\buff2_reg[99]_i_1_n_0 ),
        .CO({\buff2_reg[103]_i_1_n_0 ,\buff2_reg[103]_i_1_n_1 ,\buff2_reg[103]_i_1_n_2 ,\buff2_reg[103]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff2[103]_i_2_n_0 ,buff1_reg__0_n_105,\buff1_reg[16]__0_n_0 ,\buff1_reg[15]__0_n_0 }),
        .O(buff1_reg__5[103:100]),
        .S({\buff2[103]_i_3_n_0 ,\buff2[103]_i_4_n_0 ,\buff2[103]_i_5_n_0 ,\buff2[103]_i_6_n_0 }));
  CARRY4 \buff2_reg[103]_i_7 
       (.CI(\buff2_reg[99]_i_6_n_0 ),
        .CO({\buff2_reg[103]_i_7_n_0 ,\buff2_reg[103]_i_7_n_1 ,\buff2_reg[103]_i_7_n_2 ,\buff2_reg[103]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({buff1_reg__1_n_74,\buff2[103]_i_8_n_0 ,\buff2[103]_i_9_n_0 ,\buff2[103]_i_10_n_0 }),
        .O({\buff2_reg[103]_i_7_n_4 ,\buff2_reg[103]_i_7_n_5 ,\buff2_reg[103]_i_7_n_6 ,\buff2_reg[103]_i_7_n_7 }),
        .S({\buff2[103]_i_11_n_0 ,\buff2[103]_i_12_n_0 ,\buff2[103]_i_13_n_0 ,\buff2[103]_i_14_n_0 }));
  FDRE \buff2_reg[104] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[104]),
        .Q(\buff2_reg[127]_0 [104]),
        .R(1'b0));
  FDRE \buff2_reg[105] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[105]),
        .Q(\buff2_reg[127]_0 [105]),
        .R(1'b0));
  FDRE \buff2_reg[106] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[106]),
        .Q(\buff2_reg[127]_0 [106]),
        .R(1'b0));
  FDRE \buff2_reg[107] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[107]),
        .Q(\buff2_reg[127]_0 [107]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buff2_reg[107]_i_1 
       (.CI(\buff2_reg[103]_i_1_n_0 ),
        .CO({\buff2_reg[107]_i_1_n_0 ,\buff2_reg[107]_i_1_n_1 ,\buff2_reg[107]_i_1_n_2 ,\buff2_reg[107]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff2[107]_i_2_n_0 ,\buff2[107]_i_3_n_0 ,\buff2[107]_i_4_n_0 ,\buff2[107]_i_5_n_0 }),
        .O(buff1_reg__5[107:104]),
        .S({\buff2[107]_i_6_n_0 ,\buff2[107]_i_7_n_0 ,\buff2[107]_i_8_n_0 ,\buff2[107]_i_9_n_0 }));
  CARRY4 \buff2_reg[107]_i_10 
       (.CI(\buff2_reg[103]_i_7_n_0 ),
        .CO({\buff2_reg[107]_i_10_n_0 ,\buff2_reg[107]_i_10_n_1 ,\buff2_reg[107]_i_10_n_2 ,\buff2_reg[107]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({buff1_reg__1_n_70,buff1_reg__1_n_71,buff1_reg__1_n_72,buff1_reg__1_n_73}),
        .O({\buff2_reg[107]_i_10_n_4 ,\buff2_reg[107]_i_10_n_5 ,\buff2_reg[107]_i_10_n_6 ,\buff2_reg[107]_i_10_n_7 }),
        .S({\buff2[107]_i_11_n_0 ,\buff2[107]_i_12_n_0 ,\buff2[107]_i_13_n_0 ,\buff2[107]_i_14_n_0 }));
  FDRE \buff2_reg[108] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[108]),
        .Q(\buff2_reg[127]_0 [108]),
        .R(1'b0));
  FDRE \buff2_reg[109] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[109]),
        .Q(\buff2_reg[127]_0 [109]),
        .R(1'b0));
  FDRE \buff2_reg[10] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(\buff1_reg[10]__3_n_0 ),
        .Q(\buff2_reg[127]_0 [10]),
        .R(1'b0));
  FDRE \buff2_reg[110] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[110]),
        .Q(\buff2_reg[127]_0 [110]),
        .R(1'b0));
  FDRE \buff2_reg[111] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[111]),
        .Q(\buff2_reg[127]_0 [111]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buff2_reg[111]_i_1 
       (.CI(\buff2_reg[107]_i_1_n_0 ),
        .CO({\buff2_reg[111]_i_1_n_0 ,\buff2_reg[111]_i_1_n_1 ,\buff2_reg[111]_i_1_n_2 ,\buff2_reg[111]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff2[111]_i_2_n_0 ,\buff2[111]_i_3_n_0 ,\buff2[111]_i_4_n_0 ,\buff2[111]_i_5_n_0 }),
        .O(buff1_reg__5[111:108]),
        .S({\buff2[111]_i_6_n_0 ,\buff2[111]_i_7_n_0 ,\buff2[111]_i_8_n_0 ,\buff2[111]_i_9_n_0 }));
  CARRY4 \buff2_reg[111]_i_10 
       (.CI(\buff2_reg[107]_i_10_n_0 ),
        .CO({\buff2_reg[111]_i_10_n_0 ,\buff2_reg[111]_i_10_n_1 ,\buff2_reg[111]_i_10_n_2 ,\buff2_reg[111]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({buff1_reg__1_n_66,buff1_reg__1_n_67,buff1_reg__1_n_68,buff1_reg__1_n_69}),
        .O({\buff2_reg[111]_i_10_n_4 ,\buff2_reg[111]_i_10_n_5 ,\buff2_reg[111]_i_10_n_6 ,\buff2_reg[111]_i_10_n_7 }),
        .S({\buff2[111]_i_11_n_0 ,\buff2[111]_i_12_n_0 ,\buff2[111]_i_13_n_0 ,\buff2[111]_i_14_n_0 }));
  FDRE \buff2_reg[112] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[112]),
        .Q(\buff2_reg[127]_0 [112]),
        .R(1'b0));
  FDRE \buff2_reg[113] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[113]),
        .Q(\buff2_reg[127]_0 [113]),
        .R(1'b0));
  FDRE \buff2_reg[114] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[114]),
        .Q(\buff2_reg[127]_0 [114]),
        .R(1'b0));
  FDRE \buff2_reg[115] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[115]),
        .Q(\buff2_reg[127]_0 [115]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buff2_reg[115]_i_1 
       (.CI(\buff2_reg[111]_i_1_n_0 ),
        .CO({\buff2_reg[115]_i_1_n_0 ,\buff2_reg[115]_i_1_n_1 ,\buff2_reg[115]_i_1_n_2 ,\buff2_reg[115]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff2[115]_i_2_n_0 ,\buff2[115]_i_3_n_0 ,\buff2[115]_i_4_n_0 ,\buff2[115]_i_5_n_0 }),
        .O(buff1_reg__5[115:112]),
        .S({\buff2[115]_i_6_n_0 ,\buff2[115]_i_7_n_0 ,\buff2[115]_i_8_n_0 ,\buff2[115]_i_9_n_0 }));
  CARRY4 \buff2_reg[115]_i_10 
       (.CI(\buff2_reg[111]_i_10_n_0 ),
        .CO({\buff2_reg[115]_i_10_n_0 ,\buff2_reg[115]_i_10_n_1 ,\buff2_reg[115]_i_10_n_2 ,\buff2_reg[115]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({buff1_reg__1_n_62,buff1_reg__1_n_63,buff1_reg__1_n_64,buff1_reg__1_n_65}),
        .O({\buff2_reg[115]_i_10_n_4 ,\buff2_reg[115]_i_10_n_5 ,\buff2_reg[115]_i_10_n_6 ,\buff2_reg[115]_i_10_n_7 }),
        .S({\buff2[115]_i_11_n_0 ,\buff2[115]_i_12_n_0 ,\buff2[115]_i_13_n_0 ,\buff2[115]_i_14_n_0 }));
  FDRE \buff2_reg[116] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[116]),
        .Q(\buff2_reg[127]_0 [116]),
        .R(1'b0));
  FDRE \buff2_reg[117] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[117]),
        .Q(\buff2_reg[127]_0 [117]),
        .R(1'b0));
  FDRE \buff2_reg[118] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[118]),
        .Q(\buff2_reg[127]_0 [118]),
        .R(1'b0));
  FDRE \buff2_reg[119] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[119]),
        .Q(\buff2_reg[127]_0 [119]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buff2_reg[119]_i_1 
       (.CI(\buff2_reg[115]_i_1_n_0 ),
        .CO({\buff2_reg[119]_i_1_n_0 ,\buff2_reg[119]_i_1_n_1 ,\buff2_reg[119]_i_1_n_2 ,\buff2_reg[119]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff2[119]_i_2_n_0 ,\buff2[119]_i_3_n_0 ,\buff2[119]_i_4_n_0 ,\buff2[119]_i_5_n_0 }),
        .O(buff1_reg__5[119:116]),
        .S({\buff2[119]_i_6_n_0 ,\buff2[119]_i_7_n_0 ,\buff2[119]_i_8_n_0 ,\buff2[119]_i_9_n_0 }));
  FDRE \buff2_reg[11] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(\buff1_reg[11]__3_n_0 ),
        .Q(\buff2_reg[127]_0 [11]),
        .R(1'b0));
  FDRE \buff2_reg[120] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[120]),
        .Q(\buff2_reg[127]_0 [120]),
        .R(1'b0));
  FDRE \buff2_reg[121] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[121]),
        .Q(\buff2_reg[127]_0 [121]),
        .R(1'b0));
  FDRE \buff2_reg[122] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[122]),
        .Q(\buff2_reg[127]_0 [122]),
        .R(1'b0));
  FDRE \buff2_reg[123] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[123]),
        .Q(\buff2_reg[127]_0 [123]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buff2_reg[123]_i_1 
       (.CI(\buff2_reg[119]_i_1_n_0 ),
        .CO({\buff2_reg[123]_i_1_n_0 ,\buff2_reg[123]_i_1_n_1 ,\buff2_reg[123]_i_1_n_2 ,\buff2_reg[123]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff2[123]_i_2_n_0 ,\buff2[123]_i_3_n_0 ,\buff2[123]_i_4_n_0 ,\buff2[123]_i_5_n_0 }),
        .O(buff1_reg__5[123:120]),
        .S({\buff2[123]_i_6_n_0 ,\buff2[123]_i_7_n_0 ,\buff2[123]_i_8_n_0 ,\buff2[123]_i_9_n_0 }));
  FDRE \buff2_reg[124] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[124]),
        .Q(\buff2_reg[127]_0 [124]),
        .R(1'b0));
  FDRE \buff2_reg[125] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[125]),
        .Q(\buff2_reg[127]_0 [125]),
        .R(1'b0));
  FDRE \buff2_reg[126] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[126]),
        .Q(\buff2_reg[127]_0 [126]),
        .R(1'b0));
  FDRE \buff2_reg[127] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[127]),
        .Q(\buff2_reg[127]_0 [127]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buff2_reg[127]_i_1 
       (.CI(\buff2_reg[123]_i_1_n_0 ),
        .CO({\NLW_buff2_reg[127]_i_1_CO_UNCONNECTED [3],\buff2_reg[127]_i_1_n_1 ,\buff2_reg[127]_i_1_n_2 ,\buff2_reg[127]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\buff2[127]_i_2_n_0 ,\buff2[127]_i_3_n_0 ,\buff2[127]_i_4_n_0 }),
        .O(buff1_reg__5[127:124]),
        .S({\buff2[127]_i_5_n_0 ,\buff2[127]_i_6_n_0 ,\buff2[127]_i_7_n_0 ,\buff2[127]_i_8_n_0 }));
  CARRY4 \buff2_reg[127]_i_9 
       (.CI(\buff2_reg[115]_i_10_n_0 ),
        .CO({\buff2_reg[127]_i_9_n_0 ,\NLW_buff2_reg[127]_i_9_CO_UNCONNECTED [2],\buff2_reg[127]_i_9_n_2 ,\buff2_reg[127]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,buff1_reg__1_n_59,buff1_reg__1_n_60,buff1_reg__1_n_61}),
        .O({\NLW_buff2_reg[127]_i_9_O_UNCONNECTED [3],\buff2_reg[127]_i_9_n_5 ,\buff2_reg[127]_i_9_n_6 ,\buff2_reg[127]_i_9_n_7 }),
        .S({1'b1,\buff2[127]_i_10_n_0 ,\buff2[127]_i_11_n_0 ,\buff2[127]_i_12_n_0 }));
  FDRE \buff2_reg[12] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(\buff1_reg[12]__3_n_0 ),
        .Q(\buff2_reg[127]_0 [12]),
        .R(1'b0));
  FDRE \buff2_reg[13] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(\buff1_reg[13]__3_n_0 ),
        .Q(\buff2_reg[127]_0 [13]),
        .R(1'b0));
  FDRE \buff2_reg[14] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(\buff1_reg[14]__3_n_0 ),
        .Q(\buff2_reg[127]_0 [14]),
        .R(1'b0));
  FDRE \buff2_reg[15] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(\buff1_reg[15]__3_n_0 ),
        .Q(\buff2_reg[127]_0 [15]),
        .R(1'b0));
  FDRE \buff2_reg[16] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(\buff1_reg[16]__3_n_0 ),
        .Q(\buff2_reg[127]_0 [16]),
        .R(1'b0));
  FDRE \buff2_reg[17] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__3_n_105),
        .Q(\buff2_reg[127]_0 [17]),
        .R(1'b0));
  FDRE \buff2_reg[18] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__3_n_104),
        .Q(\buff2_reg[127]_0 [18]),
        .R(1'b0));
  FDRE \buff2_reg[19] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__3_n_103),
        .Q(\buff2_reg[127]_0 [19]),
        .R(1'b0));
  FDRE \buff2_reg[1] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(\buff1_reg[1]__3_n_0 ),
        .Q(\buff2_reg[127]_0 [1]),
        .R(1'b0));
  FDRE \buff2_reg[20] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__3_n_102),
        .Q(\buff2_reg[127]_0 [20]),
        .R(1'b0));
  FDRE \buff2_reg[21] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__3_n_101),
        .Q(\buff2_reg[127]_0 [21]),
        .R(1'b0));
  FDRE \buff2_reg[22] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__3_n_100),
        .Q(\buff2_reg[127]_0 [22]),
        .R(1'b0));
  FDRE \buff2_reg[23] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__3_n_99),
        .Q(\buff2_reg[127]_0 [23]),
        .R(1'b0));
  FDRE \buff2_reg[24] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__3_n_98),
        .Q(\buff2_reg[127]_0 [24]),
        .R(1'b0));
  FDRE \buff2_reg[25] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__3_n_97),
        .Q(\buff2_reg[127]_0 [25]),
        .R(1'b0));
  FDRE \buff2_reg[26] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__3_n_96),
        .Q(\buff2_reg[127]_0 [26]),
        .R(1'b0));
  FDRE \buff2_reg[27] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__3_n_95),
        .Q(\buff2_reg[127]_0 [27]),
        .R(1'b0));
  FDRE \buff2_reg[28] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__3_n_94),
        .Q(\buff2_reg[127]_0 [28]),
        .R(1'b0));
  FDRE \buff2_reg[29] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__3_n_93),
        .Q(\buff2_reg[127]_0 [29]),
        .R(1'b0));
  FDRE \buff2_reg[2] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(\buff1_reg[2]__3_n_0 ),
        .Q(\buff2_reg[127]_0 [2]),
        .R(1'b0));
  FDRE \buff2_reg[30] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__3_n_92),
        .Q(\buff2_reg[127]_0 [30]),
        .R(1'b0));
  FDRE \buff2_reg[31] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__3_n_91),
        .Q(\buff2_reg[127]_0 [31]),
        .R(1'b0));
  FDRE \buff2_reg[32] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__3_n_90),
        .Q(\buff2_reg[127]_0 [32]),
        .R(1'b0));
  FDRE \buff2_reg[33] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[33]),
        .Q(\buff2_reg[127]_0 [33]),
        .R(1'b0));
  FDRE \buff2_reg[34] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[34]),
        .Q(\buff2_reg[127]_0 [34]),
        .R(1'b0));
  FDRE \buff2_reg[35] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[35]),
        .Q(\buff2_reg[127]_0 [35]),
        .R(1'b0));
  FDRE \buff2_reg[36] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[36]),
        .Q(\buff2_reg[127]_0 [36]),
        .R(1'b0));
  CARRY4 \buff2_reg[36]_i_1 
       (.CI(1'b0),
        .CO({\buff2_reg[36]_i_1_n_0 ,\buff2_reg[36]_i_1_n_1 ,\buff2_reg[36]_i_1_n_2 ,\buff2_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({buff1_reg__3_n_86,buff1_reg__3_n_87,buff1_reg__3_n_88,1'b0}),
        .O(buff1_reg__5[36:33]),
        .S({\buff2[36]_i_2_n_0 ,\buff2[36]_i_3_n_0 ,\buff2[36]_i_4_n_0 ,buff1_reg__3_n_89}));
  FDRE \buff2_reg[37] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[37]),
        .Q(\buff2_reg[127]_0 [37]),
        .R(1'b0));
  FDRE \buff2_reg[38] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[38]),
        .Q(\buff2_reg[127]_0 [38]),
        .R(1'b0));
  FDRE \buff2_reg[39] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[39]),
        .Q(\buff2_reg[127]_0 [39]),
        .R(1'b0));
  FDRE \buff2_reg[3] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(\buff1_reg[3]__3_n_0 ),
        .Q(\buff2_reg[127]_0 [3]),
        .R(1'b0));
  FDRE \buff2_reg[40] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[40]),
        .Q(\buff2_reg[127]_0 [40]),
        .R(1'b0));
  CARRY4 \buff2_reg[40]_i_1 
       (.CI(\buff2_reg[36]_i_1_n_0 ),
        .CO({\buff2_reg[40]_i_1_n_0 ,\buff2_reg[40]_i_1_n_1 ,\buff2_reg[40]_i_1_n_2 ,\buff2_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({buff1_reg__3_n_82,buff1_reg__3_n_83,buff1_reg__3_n_84,buff1_reg__3_n_85}),
        .O(buff1_reg__5[40:37]),
        .S({\buff2[40]_i_2_n_0 ,\buff2[40]_i_3_n_0 ,\buff2[40]_i_4_n_0 ,\buff2[40]_i_5_n_0 }));
  FDRE \buff2_reg[41] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[41]),
        .Q(\buff2_reg[127]_0 [41]),
        .R(1'b0));
  FDRE \buff2_reg[42] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[42]),
        .Q(\buff2_reg[127]_0 [42]),
        .R(1'b0));
  FDRE \buff2_reg[43] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[43]),
        .Q(\buff2_reg[127]_0 [43]),
        .R(1'b0));
  FDRE \buff2_reg[44] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[44]),
        .Q(\buff2_reg[127]_0 [44]),
        .R(1'b0));
  CARRY4 \buff2_reg[44]_i_1 
       (.CI(\buff2_reg[40]_i_1_n_0 ),
        .CO({\buff2_reg[44]_i_1_n_0 ,\buff2_reg[44]_i_1_n_1 ,\buff2_reg[44]_i_1_n_2 ,\buff2_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({buff1_reg__3_n_78,buff1_reg__3_n_79,buff1_reg__3_n_80,buff1_reg__3_n_81}),
        .O(buff1_reg__5[44:41]),
        .S({\buff2[44]_i_2_n_0 ,\buff2[44]_i_3_n_0 ,\buff2[44]_i_4_n_0 ,\buff2[44]_i_5_n_0 }));
  FDRE \buff2_reg[45] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[45]),
        .Q(\buff2_reg[127]_0 [45]),
        .R(1'b0));
  FDRE \buff2_reg[46] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[46]),
        .Q(\buff2_reg[127]_0 [46]),
        .R(1'b0));
  FDRE \buff2_reg[47] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[47]),
        .Q(\buff2_reg[127]_0 [47]),
        .R(1'b0));
  FDRE \buff2_reg[48] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[48]),
        .Q(\buff2_reg[127]_0 [48]),
        .R(1'b0));
  CARRY4 \buff2_reg[48]_i_1 
       (.CI(\buff2_reg[44]_i_1_n_0 ),
        .CO({\buff2_reg[48]_i_1_n_0 ,\buff2_reg[48]_i_1_n_1 ,\buff2_reg[48]_i_1_n_2 ,\buff2_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({buff1_reg__3_n_74,buff1_reg__3_n_75,buff1_reg__3_n_76,buff1_reg__3_n_77}),
        .O(buff1_reg__5[48:45]),
        .S({\buff2[48]_i_2_n_0 ,\buff2[48]_i_3_n_0 ,\buff2[48]_i_4_n_0 ,\buff2[48]_i_5_n_0 }));
  FDRE \buff2_reg[49] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[49]),
        .Q(\buff2_reg[127]_0 [49]),
        .R(1'b0));
  FDRE \buff2_reg[4] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(\buff1_reg[4]__3_n_0 ),
        .Q(\buff2_reg[127]_0 [4]),
        .R(1'b0));
  FDRE \buff2_reg[50] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[50]),
        .Q(\buff2_reg[127]_0 [50]),
        .R(1'b0));
  FDRE \buff2_reg[51] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[51]),
        .Q(\buff2_reg[127]_0 [51]),
        .R(1'b0));
  FDRE \buff2_reg[52] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[52]),
        .Q(\buff2_reg[127]_0 [52]),
        .R(1'b0));
  CARRY4 \buff2_reg[52]_i_1 
       (.CI(\buff2_reg[48]_i_1_n_0 ),
        .CO({\buff2_reg[52]_i_1_n_0 ,\buff2_reg[52]_i_1_n_1 ,\buff2_reg[52]_i_1_n_2 ,\buff2_reg[52]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff2[52]_i_2_n_0 ,buff1_reg__3_n_71,buff1_reg__3_n_72,buff1_reg__3_n_73}),
        .O(buff1_reg__5[52:49]),
        .S({\buff2[52]_i_3_n_0 ,\buff2[52]_i_4_n_0 ,\buff2[52]_i_5_n_0 ,\buff2[52]_i_6_n_0 }));
  FDRE \buff2_reg[53] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[53]),
        .Q(\buff2_reg[127]_0 [53]),
        .R(1'b0));
  FDRE \buff2_reg[54] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[54]),
        .Q(\buff2_reg[127]_0 [54]),
        .R(1'b0));
  FDRE \buff2_reg[55] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[55]),
        .Q(\buff2_reg[127]_0 [55]),
        .R(1'b0));
  FDRE \buff2_reg[56] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[56]),
        .Q(\buff2_reg[127]_0 [56]),
        .R(1'b0));
  CARRY4 \buff2_reg[56]_i_1 
       (.CI(\buff2_reg[52]_i_1_n_0 ),
        .CO({\buff2_reg[56]_i_1_n_0 ,\buff2_reg[56]_i_1_n_1 ,\buff2_reg[56]_i_1_n_2 ,\buff2_reg[56]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff2[56]_i_2_n_0 ,\buff2[56]_i_3_n_0 ,\buff2[56]_i_4_n_0 ,\buff2[56]_i_5_n_0 }),
        .O(buff1_reg__5[56:53]),
        .S({\buff2[56]_i_6_n_0 ,\buff2[56]_i_7_n_0 ,\buff2[56]_i_8_n_0 ,\buff2[56]_i_9_n_0 }));
  FDRE \buff2_reg[57] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[57]),
        .Q(\buff2_reg[127]_0 [57]),
        .R(1'b0));
  FDRE \buff2_reg[58] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[58]),
        .Q(\buff2_reg[127]_0 [58]),
        .R(1'b0));
  FDRE \buff2_reg[59] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[59]),
        .Q(\buff2_reg[127]_0 [59]),
        .R(1'b0));
  FDRE \buff2_reg[5] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(\buff1_reg[5]__3_n_0 ),
        .Q(\buff2_reg[127]_0 [5]),
        .R(1'b0));
  FDRE \buff2_reg[60] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[60]),
        .Q(\buff2_reg[127]_0 [60]),
        .R(1'b0));
  CARRY4 \buff2_reg[60]_i_1 
       (.CI(\buff2_reg[56]_i_1_n_0 ),
        .CO({\buff2_reg[60]_i_1_n_0 ,\buff2_reg[60]_i_1_n_1 ,\buff2_reg[60]_i_1_n_2 ,\buff2_reg[60]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff2[60]_i_2_n_0 ,\buff2[60]_i_3_n_0 ,\buff2[60]_i_4_n_0 ,\buff2[60]_i_5_n_0 }),
        .O(buff1_reg__5[60:57]),
        .S({\buff2[60]_i_6_n_0 ,\buff2[60]_i_7_n_0 ,\buff2[60]_i_8_n_0 ,\buff2[60]_i_9_n_0 }));
  FDRE \buff2_reg[61] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[61]),
        .Q(\buff2_reg[127]_0 [61]),
        .R(1'b0));
  FDRE \buff2_reg[62] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[62]),
        .Q(\buff2_reg[127]_0 [62]),
        .R(1'b0));
  FDRE \buff2_reg[63] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[63]),
        .Q(\buff2_reg[127]_0 [63]),
        .R(1'b0));
  FDRE \buff2_reg[64] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[64]),
        .Q(\buff2_reg[127]_0 [64]),
        .R(1'b0));
  CARRY4 \buff2_reg[64]_i_1 
       (.CI(\buff2_reg[60]_i_1_n_0 ),
        .CO({\buff2_reg[64]_i_1_n_0 ,\buff2_reg[64]_i_1_n_1 ,\buff2_reg[64]_i_1_n_2 ,\buff2_reg[64]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff2[64]_i_2_n_0 ,\buff2[64]_i_3_n_0 ,\buff2[64]_i_4_n_0 ,\buff2[64]_i_5_n_0 }),
        .O(buff1_reg__5[64:61]),
        .S({\buff2[64]_i_6_n_0 ,\buff2[64]_i_7_n_0 ,\buff2[64]_i_8_n_0 ,\buff2[64]_i_9_n_0 }));
  FDRE \buff2_reg[65] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[65]),
        .Q(\buff2_reg[127]_0 [65]),
        .R(1'b0));
  FDRE \buff2_reg[66] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[66]),
        .Q(\buff2_reg[127]_0 [66]),
        .R(1'b0));
  FDRE \buff2_reg[67] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[67]),
        .Q(\buff2_reg[127]_0 [67]),
        .R(1'b0));
  FDRE \buff2_reg[68] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[68]),
        .Q(\buff2_reg[127]_0 [68]),
        .R(1'b0));
  CARRY4 \buff2_reg[68]_i_1 
       (.CI(\buff2_reg[64]_i_1_n_0 ),
        .CO({\buff2_reg[68]_i_1_n_0 ,\buff2_reg[68]_i_1_n_1 ,\buff2_reg[68]_i_1_n_2 ,\buff2_reg[68]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff2[68]_i_2_n_0 ,\buff2[68]_i_3_n_0 ,\buff2[68]_i_4_n_0 ,\buff2[68]_i_5_n_0 }),
        .O(buff1_reg__5[68:65]),
        .S({\buff2[68]_i_6_n_0 ,\buff2[68]_i_7_n_0 ,\buff2[68]_i_8_n_0 ,\buff2[68]_i_9_n_0 }));
  FDRE \buff2_reg[69] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[69]),
        .Q(\buff2_reg[127]_0 [69]),
        .R(1'b0));
  FDRE \buff2_reg[6] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(\buff1_reg[6]__3_n_0 ),
        .Q(\buff2_reg[127]_0 [6]),
        .R(1'b0));
  FDRE \buff2_reg[70] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[70]),
        .Q(\buff2_reg[127]_0 [70]),
        .R(1'b0));
  FDRE \buff2_reg[71] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[71]),
        .Q(\buff2_reg[127]_0 [71]),
        .R(1'b0));
  FDRE \buff2_reg[72] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[72]),
        .Q(\buff2_reg[127]_0 [72]),
        .R(1'b0));
  CARRY4 \buff2_reg[72]_i_1 
       (.CI(\buff2_reg[68]_i_1_n_0 ),
        .CO({\buff2_reg[72]_i_1_n_0 ,\buff2_reg[72]_i_1_n_1 ,\buff2_reg[72]_i_1_n_2 ,\buff2_reg[72]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff2[72]_i_2_n_0 ,\buff2[72]_i_3_n_0 ,\buff2[72]_i_4_n_0 ,\buff2[72]_i_5_n_0 }),
        .O(buff1_reg__5[72:69]),
        .S({\buff2[72]_i_6_n_0 ,\buff2[72]_i_7_n_0 ,\buff2[72]_i_8_n_0 ,\buff2[72]_i_9_n_0 }));
  FDRE \buff2_reg[73] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[73]),
        .Q(\buff2_reg[127]_0 [73]),
        .R(1'b0));
  FDRE \buff2_reg[74] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[74]),
        .Q(\buff2_reg[127]_0 [74]),
        .R(1'b0));
  FDRE \buff2_reg[75] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[75]),
        .Q(\buff2_reg[127]_0 [75]),
        .R(1'b0));
  FDRE \buff2_reg[76] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[76]),
        .Q(\buff2_reg[127]_0 [76]),
        .R(1'b0));
  CARRY4 \buff2_reg[76]_i_1 
       (.CI(\buff2_reg[72]_i_1_n_0 ),
        .CO({\buff2_reg[76]_i_1_n_0 ,\buff2_reg[76]_i_1_n_1 ,\buff2_reg[76]_i_1_n_2 ,\buff2_reg[76]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff2[76]_i_2_n_0 ,\buff2[76]_i_3_n_0 ,\buff2[76]_i_4_n_0 ,\buff2[76]_i_5_n_0 }),
        .O(buff1_reg__5[76:73]),
        .S({\buff2[76]_i_6_n_0 ,\buff2[76]_i_7_n_0 ,\buff2[76]_i_8_n_0 ,\buff2[76]_i_9_n_0 }));
  FDRE \buff2_reg[77] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[77]),
        .Q(\buff2_reg[127]_0 [77]),
        .R(1'b0));
  FDRE \buff2_reg[78] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[78]),
        .Q(\buff2_reg[127]_0 [78]),
        .R(1'b0));
  FDRE \buff2_reg[79] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[79]),
        .Q(\buff2_reg[127]_0 [79]),
        .R(1'b0));
  FDRE \buff2_reg[7] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(\buff1_reg[7]__3_n_0 ),
        .Q(\buff2_reg[127]_0 [7]),
        .R(1'b0));
  FDRE \buff2_reg[80] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[80]),
        .Q(\buff2_reg[127]_0 [80]),
        .R(1'b0));
  CARRY4 \buff2_reg[80]_i_1 
       (.CI(\buff2_reg[76]_i_1_n_0 ),
        .CO({\buff2_reg[80]_i_1_n_0 ,\buff2_reg[80]_i_1_n_1 ,\buff2_reg[80]_i_1_n_2 ,\buff2_reg[80]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff2[80]_i_2_n_0 ,\buff2[80]_i_3_n_0 ,\buff2[80]_i_4_n_0 ,\buff2[80]_i_5_n_0 }),
        .O(buff1_reg__5[80:77]),
        .S({\buff2[80]_i_6_n_0 ,\buff2[80]_i_7_n_0 ,\buff2[80]_i_8_n_0 ,\buff2[80]_i_9_n_0 }));
  FDRE \buff2_reg[81] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[81]),
        .Q(\buff2_reg[127]_0 [81]),
        .R(1'b0));
  FDRE \buff2_reg[82] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[82]),
        .Q(\buff2_reg[127]_0 [82]),
        .R(1'b0));
  FDRE \buff2_reg[83] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[83]),
        .Q(\buff2_reg[127]_0 [83]),
        .R(1'b0));
  CARRY4 \buff2_reg[83]_i_1 
       (.CI(\buff2_reg[80]_i_1_n_0 ),
        .CO({\buff2_reg[83]_i_1_n_0 ,\buff2_reg[83]_i_1_n_1 ,\buff2_reg[83]_i_1_n_2 ,\buff2_reg[83]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff2[83]_i_2_n_0 ,\buff2[83]_i_3_n_0 ,\buff2[83]_i_4_n_0 ,\buff2[83]_i_5_n_0 }),
        .O({\buff2_reg[83]_i_1_n_4 ,buff1_reg__5[83:81]}),
        .S({\buff2[83]_i_6_n_0 ,\buff2[83]_i_7_n_0 ,\buff2[83]_i_8_n_0 ,\buff2[83]_i_9_n_0 }));
  FDRE \buff2_reg[84] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[84]),
        .Q(\buff2_reg[127]_0 [84]),
        .R(1'b0));
  FDRE \buff2_reg[85] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[85]),
        .Q(\buff2_reg[127]_0 [85]),
        .R(1'b0));
  FDRE \buff2_reg[86] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[86]),
        .Q(\buff2_reg[127]_0 [86]),
        .R(1'b0));
  FDRE \buff2_reg[87] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[87]),
        .Q(\buff2_reg[127]_0 [87]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buff2_reg[87]_i_1 
       (.CI(1'b0),
        .CO({\buff2_reg[87]_i_1_n_0 ,\buff2_reg[87]_i_1_n_1 ,\buff2_reg[87]_i_1_n_2 ,\buff2_reg[87]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff1_reg[2]__0_n_0 ,\buff1_reg[1]__0_n_0 ,\buff1_reg[0]__0_n_0 ,1'b0}),
        .O(buff1_reg__5[87:84]),
        .S({\buff2[87]_i_2_n_0 ,\buff2[87]_i_3_n_0 ,\buff2[87]_i_4_n_0 ,\buff2_reg[83]_i_1_n_4 }));
  FDRE \buff2_reg[88] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[88]),
        .Q(\buff2_reg[127]_0 [88]),
        .R(1'b0));
  FDRE \buff2_reg[89] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[89]),
        .Q(\buff2_reg[127]_0 [89]),
        .R(1'b0));
  FDRE \buff2_reg[8] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(\buff1_reg[8]__3_n_0 ),
        .Q(\buff2_reg[127]_0 [8]),
        .R(1'b0));
  FDRE \buff2_reg[90] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[90]),
        .Q(\buff2_reg[127]_0 [90]),
        .R(1'b0));
  FDRE \buff2_reg[91] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[91]),
        .Q(\buff2_reg[127]_0 [91]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buff2_reg[91]_i_1 
       (.CI(\buff2_reg[87]_i_1_n_0 ),
        .CO({\buff2_reg[91]_i_1_n_0 ,\buff2_reg[91]_i_1_n_1 ,\buff2_reg[91]_i_1_n_2 ,\buff2_reg[91]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff1_reg[6]__0_n_0 ,\buff1_reg[5]__0_n_0 ,\buff1_reg[4]__0_n_0 ,\buff1_reg[3]__0_n_0 }),
        .O(buff1_reg__5[91:88]),
        .S({\buff2[91]_i_2_n_0 ,\buff2[91]_i_3_n_0 ,\buff2[91]_i_4_n_0 ,\buff2[91]_i_5_n_0 }));
  CARRY4 \buff2_reg[91]_i_6 
       (.CI(\buff2_reg[83]_i_1_n_0 ),
        .CO({\buff2_reg[91]_i_6_n_0 ,\buff2_reg[91]_i_6_n_1 ,\buff2_reg[91]_i_6_n_2 ,\buff2_reg[91]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff2[91]_i_7_n_0 ,\buff2[91]_i_8_n_0 ,\buff2[91]_i_9_n_0 ,\buff2[91]_i_10_n_0 }),
        .O({\buff2_reg[91]_i_6_n_4 ,\buff2_reg[91]_i_6_n_5 ,\buff2_reg[91]_i_6_n_6 ,\buff2_reg[91]_i_6_n_7 }),
        .S({\buff2[91]_i_11_n_0 ,\buff2[91]_i_12_n_0 ,\buff2[91]_i_13_n_0 ,\buff2[91]_i_14_n_0 }));
  FDRE \buff2_reg[92] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[92]),
        .Q(\buff2_reg[127]_0 [92]),
        .R(1'b0));
  FDRE \buff2_reg[93] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[93]),
        .Q(\buff2_reg[127]_0 [93]),
        .R(1'b0));
  FDRE \buff2_reg[94] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[94]),
        .Q(\buff2_reg[127]_0 [94]),
        .R(1'b0));
  FDRE \buff2_reg[95] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[95]),
        .Q(\buff2_reg[127]_0 [95]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buff2_reg[95]_i_1 
       (.CI(\buff2_reg[91]_i_1_n_0 ),
        .CO({\buff2_reg[95]_i_1_n_0 ,\buff2_reg[95]_i_1_n_1 ,\buff2_reg[95]_i_1_n_2 ,\buff2_reg[95]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff1_reg[10]__0_n_0 ,\buff1_reg[9]__0_n_0 ,\buff1_reg[8]__0_n_0 ,\buff1_reg[7]__0_n_0 }),
        .O(buff1_reg__5[95:92]),
        .S({\buff2[95]_i_2_n_0 ,\buff2[95]_i_3_n_0 ,\buff2[95]_i_4_n_0 ,\buff2[95]_i_5_n_0 }));
  CARRY4 \buff2_reg[95]_i_6 
       (.CI(\buff2_reg[91]_i_6_n_0 ),
        .CO({\buff2_reg[95]_i_6_n_0 ,\buff2_reg[95]_i_6_n_1 ,\buff2_reg[95]_i_6_n_2 ,\buff2_reg[95]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff2[95]_i_7_n_0 ,\buff2[95]_i_8_n_0 ,\buff2[95]_i_9_n_0 ,\buff2[95]_i_10_n_0 }),
        .O({\buff2_reg[95]_i_6_n_4 ,\buff2_reg[95]_i_6_n_5 ,\buff2_reg[95]_i_6_n_6 ,\buff2_reg[95]_i_6_n_7 }),
        .S({\buff2[95]_i_11_n_0 ,\buff2[95]_i_12_n_0 ,\buff2[95]_i_13_n_0 ,\buff2[95]_i_14_n_0 }));
  FDRE \buff2_reg[96] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[96]),
        .Q(\buff2_reg[127]_0 [96]),
        .R(1'b0));
  FDRE \buff2_reg[97] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[97]),
        .Q(\buff2_reg[127]_0 [97]),
        .R(1'b0));
  FDRE \buff2_reg[98] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[98]),
        .Q(\buff2_reg[127]_0 [98]),
        .R(1'b0));
  FDRE \buff2_reg[99] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(buff1_reg__5[99]),
        .Q(\buff2_reg[127]_0 [99]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buff2_reg[99]_i_1 
       (.CI(\buff2_reg[95]_i_1_n_0 ),
        .CO({\buff2_reg[99]_i_1_n_0 ,\buff2_reg[99]_i_1_n_1 ,\buff2_reg[99]_i_1_n_2 ,\buff2_reg[99]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff1_reg[14]__0_n_0 ,\buff1_reg[13]__0_n_0 ,\buff1_reg[12]__0_n_0 ,\buff1_reg[11]__0_n_0 }),
        .O(buff1_reg__5[99:96]),
        .S({\buff2[99]_i_2_n_0 ,\buff2[99]_i_3_n_0 ,\buff2[99]_i_4_n_0 ,\buff2[99]_i_5_n_0 }));
  CARRY4 \buff2_reg[99]_i_6 
       (.CI(\buff2_reg[95]_i_6_n_0 ),
        .CO({\buff2_reg[99]_i_6_n_0 ,\buff2_reg[99]_i_6_n_1 ,\buff2_reg[99]_i_6_n_2 ,\buff2_reg[99]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff2[99]_i_7_n_0 ,\buff2[99]_i_8_n_0 ,\buff2[99]_i_9_n_0 ,\buff2[99]_i_10_n_0 }),
        .O({\buff2_reg[99]_i_6_n_4 ,\buff2_reg[99]_i_6_n_5 ,\buff2_reg[99]_i_6_n_6 ,\buff2_reg[99]_i_6_n_7 }),
        .S({\buff2[99]_i_11_n_0 ,\buff2[99]_i_12_n_0 ,\buff2[99]_i_13_n_0 ,\buff2[99]_i_14_n_0 }));
  FDRE \buff2_reg[9] 
       (.C(ap_clk),
        .CE(buff0_reg__3_0),
        .D(\buff1_reg[9]__3_n_0 ),
        .Q(\buff2_reg[127]_0 [9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 16}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp_product
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_TDATA_int_regslice[118:102]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q[31],Q[31],Q[31],Q[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ack_out),
        .CEA2(buff0_reg__3_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ack_out),
        .CEB2(buff0_reg__3_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(buff0_reg__3_0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product_OVERFLOW_UNCONNECTED),
        .P(NLW_tmp_product_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_tmp_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({buff0_reg_n_106,buff0_reg_n_107,buff0_reg_n_108,buff0_reg_n_109,buff0_reg_n_110,buff0_reg_n_111,buff0_reg_n_112,buff0_reg_n_113,buff0_reg_n_114,buff0_reg_n_115,buff0_reg_n_116,buff0_reg_n_117,buff0_reg_n_118,buff0_reg_n_119,buff0_reg_n_120,buff0_reg_n_121,buff0_reg_n_122,buff0_reg_n_123,buff0_reg_n_124,buff0_reg_n_125,buff0_reg_n_126,buff0_reg_n_127,buff0_reg_n_128,buff0_reg_n_129,buff0_reg_n_130,buff0_reg_n_131,buff0_reg_n_132,buff0_reg_n_133,buff0_reg_n_134,buff0_reg_n_135,buff0_reg_n_136,buff0_reg_n_137,buff0_reg_n_138,buff0_reg_n_139,buff0_reg_n_140,buff0_reg_n_141,buff0_reg_n_142,buff0_reg_n_143,buff0_reg_n_144,buff0_reg_n_145,buff0_reg_n_146,buff0_reg_n_147,buff0_reg_n_148,buff0_reg_n_149,buff0_reg_n_150,buff0_reg_n_151,buff0_reg_n_152,buff0_reg_n_153}),
        .PCOUT({tmp_product_n_106,tmp_product_n_107,tmp_product_n_108,tmp_product_n_109,tmp_product_n_110,tmp_product_n_111,tmp_product_n_112,tmp_product_n_113,tmp_product_n_114,tmp_product_n_115,tmp_product_n_116,tmp_product_n_117,tmp_product_n_118,tmp_product_n_119,tmp_product_n_120,tmp_product_n_121,tmp_product_n_122,tmp_product_n_123,tmp_product_n_124,tmp_product_n_125,tmp_product_n_126,tmp_product_n_127,tmp_product_n_128,tmp_product_n_129,tmp_product_n_130,tmp_product_n_131,tmp_product_n_132,tmp_product_n_133,tmp_product_n_134,tmp_product_n_135,tmp_product_n_136,tmp_product_n_137,tmp_product_n_138,tmp_product_n_139,tmp_product_n_140,tmp_product_n_141,tmp_product_n_142,tmp_product_n_143,tmp_product_n_144,tmp_product_n_145,tmp_product_n_146,tmp_product_n_147,tmp_product_n_148,tmp_product_n_149,tmp_product_n_150,tmp_product_n_151,tmp_product_n_152,tmp_product_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp_product__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_TDATA_int_regslice[101:85]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_product__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ack_out),
        .CEA2(buff0_reg__3_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ack_out),
        .CEB2(buff0_reg__3_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(buff0_reg__3_0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product__0_OVERFLOW_UNCONNECTED),
        .P({tmp_product__0_n_58,tmp_product__0_n_59,tmp_product__0_n_60,tmp_product__0_n_61,tmp_product__0_n_62,tmp_product__0_n_63,tmp_product__0_n_64,tmp_product__0_n_65,tmp_product__0_n_66,tmp_product__0_n_67,tmp_product__0_n_68,tmp_product__0_n_69,tmp_product__0_n_70,tmp_product__0_n_71,tmp_product__0_n_72,tmp_product__0_n_73,tmp_product__0_n_74,tmp_product__0_n_75,tmp_product__0_n_76,tmp_product__0_n_77,tmp_product__0_n_78,tmp_product__0_n_79,tmp_product__0_n_80,tmp_product__0_n_81,tmp_product__0_n_82,tmp_product__0_n_83,tmp_product__0_n_84,tmp_product__0_n_85,tmp_product__0_n_86,tmp_product__0_n_87,tmp_product__0_n_88,tmp_product__0_n_89,tmp_product__0_n_90,tmp_product__0_n_91,tmp_product__0_n_92,tmp_product__0_n_93,tmp_product__0_n_94,tmp_product__0_n_95,tmp_product__0_n_96,tmp_product__0_n_97,tmp_product__0_n_98,tmp_product__0_n_99,tmp_product__0_n_100,tmp_product__0_n_101,tmp_product__0_n_102,tmp_product__0_n_103,tmp_product__0_n_104,tmp_product__0_n_105}),
        .PATTERNBDETECT(NLW_tmp_product__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({buff0_reg__0_n_106,buff0_reg__0_n_107,buff0_reg__0_n_108,buff0_reg__0_n_109,buff0_reg__0_n_110,buff0_reg__0_n_111,buff0_reg__0_n_112,buff0_reg__0_n_113,buff0_reg__0_n_114,buff0_reg__0_n_115,buff0_reg__0_n_116,buff0_reg__0_n_117,buff0_reg__0_n_118,buff0_reg__0_n_119,buff0_reg__0_n_120,buff0_reg__0_n_121,buff0_reg__0_n_122,buff0_reg__0_n_123,buff0_reg__0_n_124,buff0_reg__0_n_125,buff0_reg__0_n_126,buff0_reg__0_n_127,buff0_reg__0_n_128,buff0_reg__0_n_129,buff0_reg__0_n_130,buff0_reg__0_n_131,buff0_reg__0_n_132,buff0_reg__0_n_133,buff0_reg__0_n_134,buff0_reg__0_n_135,buff0_reg__0_n_136,buff0_reg__0_n_137,buff0_reg__0_n_138,buff0_reg__0_n_139,buff0_reg__0_n_140,buff0_reg__0_n_141,buff0_reg__0_n_142,buff0_reg__0_n_143,buff0_reg__0_n_144,buff0_reg__0_n_145,buff0_reg__0_n_146,buff0_reg__0_n_147,buff0_reg__0_n_148,buff0_reg__0_n_149,buff0_reg__0_n_150,buff0_reg__0_n_151,buff0_reg__0_n_152,buff0_reg__0_n_153}),
        .PCOUT({tmp_product__0_n_106,tmp_product__0_n_107,tmp_product__0_n_108,tmp_product__0_n_109,tmp_product__0_n_110,tmp_product__0_n_111,tmp_product__0_n_112,tmp_product__0_n_113,tmp_product__0_n_114,tmp_product__0_n_115,tmp_product__0_n_116,tmp_product__0_n_117,tmp_product__0_n_118,tmp_product__0_n_119,tmp_product__0_n_120,tmp_product__0_n_121,tmp_product__0_n_122,tmp_product__0_n_123,tmp_product__0_n_124,tmp_product__0_n_125,tmp_product__0_n_126,tmp_product__0_n_127,tmp_product__0_n_128,tmp_product__0_n_129,tmp_product__0_n_130,tmp_product__0_n_131,tmp_product__0_n_132,tmp_product__0_n_133,tmp_product__0_n_134,tmp_product__0_n_135,tmp_product__0_n_136,tmp_product__0_n_137,tmp_product__0_n_138,tmp_product__0_n_139,tmp_product__0_n_140,tmp_product__0_n_141,tmp_product__0_n_142,tmp_product__0_n_143,tmp_product__0_n_144,tmp_product__0_n_145,tmp_product__0_n_146,tmp_product__0_n_147,tmp_product__0_n_148,tmp_product__0_n_149,tmp_product__0_n_150,tmp_product__0_n_151,tmp_product__0_n_152,tmp_product__0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 16}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp_product__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_TDATA_int_regslice[67:51]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_product__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q[31],Q[31],Q[31],Q[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ack_out),
        .CEA2(buff0_reg__3_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ack_out),
        .CEB2(buff0_reg__3_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(buff0_reg__3_0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product__1_OVERFLOW_UNCONNECTED),
        .P(NLW_tmp_product__1_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_tmp_product__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({buff0_reg__1_n_106,buff0_reg__1_n_107,buff0_reg__1_n_108,buff0_reg__1_n_109,buff0_reg__1_n_110,buff0_reg__1_n_111,buff0_reg__1_n_112,buff0_reg__1_n_113,buff0_reg__1_n_114,buff0_reg__1_n_115,buff0_reg__1_n_116,buff0_reg__1_n_117,buff0_reg__1_n_118,buff0_reg__1_n_119,buff0_reg__1_n_120,buff0_reg__1_n_121,buff0_reg__1_n_122,buff0_reg__1_n_123,buff0_reg__1_n_124,buff0_reg__1_n_125,buff0_reg__1_n_126,buff0_reg__1_n_127,buff0_reg__1_n_128,buff0_reg__1_n_129,buff0_reg__1_n_130,buff0_reg__1_n_131,buff0_reg__1_n_132,buff0_reg__1_n_133,buff0_reg__1_n_134,buff0_reg__1_n_135,buff0_reg__1_n_136,buff0_reg__1_n_137,buff0_reg__1_n_138,buff0_reg__1_n_139,buff0_reg__1_n_140,buff0_reg__1_n_141,buff0_reg__1_n_142,buff0_reg__1_n_143,buff0_reg__1_n_144,buff0_reg__1_n_145,buff0_reg__1_n_146,buff0_reg__1_n_147,buff0_reg__1_n_148,buff0_reg__1_n_149,buff0_reg__1_n_150,buff0_reg__1_n_151,buff0_reg__1_n_152,buff0_reg__1_n_153}),
        .PCOUT({tmp_product__1_n_106,tmp_product__1_n_107,tmp_product__1_n_108,tmp_product__1_n_109,tmp_product__1_n_110,tmp_product__1_n_111,tmp_product__1_n_112,tmp_product__1_n_113,tmp_product__1_n_114,tmp_product__1_n_115,tmp_product__1_n_116,tmp_product__1_n_117,tmp_product__1_n_118,tmp_product__1_n_119,tmp_product__1_n_120,tmp_product__1_n_121,tmp_product__1_n_122,tmp_product__1_n_123,tmp_product__1_n_124,tmp_product__1_n_125,tmp_product__1_n_126,tmp_product__1_n_127,tmp_product__1_n_128,tmp_product__1_n_129,tmp_product__1_n_130,tmp_product__1_n_131,tmp_product__1_n_132,tmp_product__1_n_133,tmp_product__1_n_134,tmp_product__1_n_135,tmp_product__1_n_136,tmp_product__1_n_137,tmp_product__1_n_138,tmp_product__1_n_139,tmp_product__1_n_140,tmp_product__1_n_141,tmp_product__1_n_142,tmp_product__1_n_143,tmp_product__1_n_144,tmp_product__1_n_145,tmp_product__1_n_146,tmp_product__1_n_147,tmp_product__1_n_148,tmp_product__1_n_149,tmp_product__1_n_150,tmp_product__1_n_151,tmp_product__1_n_152,tmp_product__1_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp_product__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_TDATA_int_regslice[50:34]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_product__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ack_out),
        .CEA2(buff0_reg__3_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ack_out),
        .CEB2(buff0_reg__3_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(buff0_reg__3_0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product__2_OVERFLOW_UNCONNECTED),
        .P({tmp_product__2_n_58,tmp_product__2_n_59,tmp_product__2_n_60,tmp_product__2_n_61,tmp_product__2_n_62,tmp_product__2_n_63,tmp_product__2_n_64,tmp_product__2_n_65,tmp_product__2_n_66,tmp_product__2_n_67,tmp_product__2_n_68,tmp_product__2_n_69,tmp_product__2_n_70,tmp_product__2_n_71,tmp_product__2_n_72,tmp_product__2_n_73,tmp_product__2_n_74,tmp_product__2_n_75,tmp_product__2_n_76,tmp_product__2_n_77,tmp_product__2_n_78,tmp_product__2_n_79,tmp_product__2_n_80,tmp_product__2_n_81,tmp_product__2_n_82,tmp_product__2_n_83,tmp_product__2_n_84,tmp_product__2_n_85,tmp_product__2_n_86,tmp_product__2_n_87,tmp_product__2_n_88,tmp_product__2_n_89,tmp_product__2_n_90,tmp_product__2_n_91,tmp_product__2_n_92,tmp_product__2_n_93,tmp_product__2_n_94,tmp_product__2_n_95,tmp_product__2_n_96,tmp_product__2_n_97,tmp_product__2_n_98,tmp_product__2_n_99,tmp_product__2_n_100,tmp_product__2_n_101,tmp_product__2_n_102,tmp_product__2_n_103,tmp_product__2_n_104,tmp_product__2_n_105}),
        .PATTERNBDETECT(NLW_tmp_product__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({buff0_reg__2_n_106,buff0_reg__2_n_107,buff0_reg__2_n_108,buff0_reg__2_n_109,buff0_reg__2_n_110,buff0_reg__2_n_111,buff0_reg__2_n_112,buff0_reg__2_n_113,buff0_reg__2_n_114,buff0_reg__2_n_115,buff0_reg__2_n_116,buff0_reg__2_n_117,buff0_reg__2_n_118,buff0_reg__2_n_119,buff0_reg__2_n_120,buff0_reg__2_n_121,buff0_reg__2_n_122,buff0_reg__2_n_123,buff0_reg__2_n_124,buff0_reg__2_n_125,buff0_reg__2_n_126,buff0_reg__2_n_127,buff0_reg__2_n_128,buff0_reg__2_n_129,buff0_reg__2_n_130,buff0_reg__2_n_131,buff0_reg__2_n_132,buff0_reg__2_n_133,buff0_reg__2_n_134,buff0_reg__2_n_135,buff0_reg__2_n_136,buff0_reg__2_n_137,buff0_reg__2_n_138,buff0_reg__2_n_139,buff0_reg__2_n_140,buff0_reg__2_n_141,buff0_reg__2_n_142,buff0_reg__2_n_143,buff0_reg__2_n_144,buff0_reg__2_n_145,buff0_reg__2_n_146,buff0_reg__2_n_147,buff0_reg__2_n_148,buff0_reg__2_n_149,buff0_reg__2_n_150,buff0_reg__2_n_151,buff0_reg__2_n_152,buff0_reg__2_n_153}),
        .PCOUT({tmp_product__2_n_106,tmp_product__2_n_107,tmp_product__2_n_108,tmp_product__2_n_109,tmp_product__2_n_110,tmp_product__2_n_111,tmp_product__2_n_112,tmp_product__2_n_113,tmp_product__2_n_114,tmp_product__2_n_115,tmp_product__2_n_116,tmp_product__2_n_117,tmp_product__2_n_118,tmp_product__2_n_119,tmp_product__2_n_120,tmp_product__2_n_121,tmp_product__2_n_122,tmp_product__2_n_123,tmp_product__2_n_124,tmp_product__2_n_125,tmp_product__2_n_126,tmp_product__2_n_127,tmp_product__2_n_128,tmp_product__2_n_129,tmp_product__2_n_130,tmp_product__2_n_131,tmp_product__2_n_132,tmp_product__2_n_133,tmp_product__2_n_134,tmp_product__2_n_135,tmp_product__2_n_136,tmp_product__2_n_137,tmp_product__2_n_138,tmp_product__2_n_139,tmp_product__2_n_140,tmp_product__2_n_141,tmp_product__2_n_142,tmp_product__2_n_143,tmp_product__2_n_144,tmp_product__2_n_145,tmp_product__2_n_146,tmp_product__2_n_147,tmp_product__2_n_148,tmp_product__2_n_149,tmp_product__2_n_150,tmp_product__2_n_151,tmp_product__2_n_152,tmp_product__2_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product__2_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 16}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp_product__3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_TDATA_int_regslice[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_product__3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q[31],Q[31],Q[31],Q[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product__3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product__3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product__3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ack_out),
        .CEA2(buff0_reg__3_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ack_out),
        .CEB2(buff0_reg__3_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(buff0_reg__3_0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product__3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product__3_OVERFLOW_UNCONNECTED),
        .P(NLW_tmp_product__3_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_tmp_product__3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product__3_PATTERNDETECT_UNCONNECTED),
        .PCIN({buff0_reg__3_n_106,buff0_reg__3_n_107,buff0_reg__3_n_108,buff0_reg__3_n_109,buff0_reg__3_n_110,buff0_reg__3_n_111,buff0_reg__3_n_112,buff0_reg__3_n_113,buff0_reg__3_n_114,buff0_reg__3_n_115,buff0_reg__3_n_116,buff0_reg__3_n_117,buff0_reg__3_n_118,buff0_reg__3_n_119,buff0_reg__3_n_120,buff0_reg__3_n_121,buff0_reg__3_n_122,buff0_reg__3_n_123,buff0_reg__3_n_124,buff0_reg__3_n_125,buff0_reg__3_n_126,buff0_reg__3_n_127,buff0_reg__3_n_128,buff0_reg__3_n_129,buff0_reg__3_n_130,buff0_reg__3_n_131,buff0_reg__3_n_132,buff0_reg__3_n_133,buff0_reg__3_n_134,buff0_reg__3_n_135,buff0_reg__3_n_136,buff0_reg__3_n_137,buff0_reg__3_n_138,buff0_reg__3_n_139,buff0_reg__3_n_140,buff0_reg__3_n_141,buff0_reg__3_n_142,buff0_reg__3_n_143,buff0_reg__3_n_144,buff0_reg__3_n_145,buff0_reg__3_n_146,buff0_reg__3_n_147,buff0_reg__3_n_148,buff0_reg__3_n_149,buff0_reg__3_n_150,buff0_reg__3_n_151,buff0_reg__3_n_152,buff0_reg__3_n_153}),
        .PCOUT({tmp_product__3_n_106,tmp_product__3_n_107,tmp_product__3_n_108,tmp_product__3_n_109,tmp_product__3_n_110,tmp_product__3_n_111,tmp_product__3_n_112,tmp_product__3_n_113,tmp_product__3_n_114,tmp_product__3_n_115,tmp_product__3_n_116,tmp_product__3_n_117,tmp_product__3_n_118,tmp_product__3_n_119,tmp_product__3_n_120,tmp_product__3_n_121,tmp_product__3_n_122,tmp_product__3_n_123,tmp_product__3_n_124,tmp_product__3_n_125,tmp_product__3_n_126,tmp_product__3_n_127,tmp_product__3_n_128,tmp_product__3_n_129,tmp_product__3_n_130,tmp_product__3_n_131,tmp_product__3_n_132,tmp_product__3_n_133,tmp_product__3_n_134,tmp_product__3_n_135,tmp_product__3_n_136,tmp_product__3_n_137,tmp_product__3_n_138,tmp_product__3_n_139,tmp_product__3_n_140,tmp_product__3_n_141,tmp_product__3_n_142,tmp_product__3_n_143,tmp_product__3_n_144,tmp_product__3_n_145,tmp_product__3_n_146,tmp_product__3_n_147,tmp_product__3_n_148,tmp_product__3_n_149,tmp_product__3_n_150,tmp_product__3_n_151,tmp_product__3_n_152,tmp_product__3_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product__3_UNDERFLOW_UNCONNECTED));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both
   (\B_V_data_1_state_reg[1]_0 ,
    vld_out,
    D,
    E,
    din_TDATA_int_regslice,
    ARESET,
    ap_clk,
    ap_rst_n,
    Q,
    din_TVALID,
    \ap_CS_fsm_reg[1] ,
    din_TDATA);
  output \B_V_data_1_state_reg[1]_0 ;
  output vld_out;
  output [0:0]D;
  output [0:0]E;
  output [127:0]din_TDATA_int_regslice;
  input ARESET;
  input ap_clk;
  input ap_rst_n;
  input [2:0]Q;
  input din_TVALID;
  input \ap_CS_fsm_reg[1] ;
  input [127:0]din_TDATA;

  wire ARESET;
  wire B_V_data_1_load_B;
  wire \B_V_data_1_payload_A[127]_i_1_n_0 ;
  wire \B_V_data_1_payload_A_reg_n_0_[0] ;
  wire \B_V_data_1_payload_A_reg_n_0_[100] ;
  wire \B_V_data_1_payload_A_reg_n_0_[101] ;
  wire \B_V_data_1_payload_A_reg_n_0_[102] ;
  wire \B_V_data_1_payload_A_reg_n_0_[103] ;
  wire \B_V_data_1_payload_A_reg_n_0_[104] ;
  wire \B_V_data_1_payload_A_reg_n_0_[105] ;
  wire \B_V_data_1_payload_A_reg_n_0_[106] ;
  wire \B_V_data_1_payload_A_reg_n_0_[107] ;
  wire \B_V_data_1_payload_A_reg_n_0_[108] ;
  wire \B_V_data_1_payload_A_reg_n_0_[109] ;
  wire \B_V_data_1_payload_A_reg_n_0_[10] ;
  wire \B_V_data_1_payload_A_reg_n_0_[110] ;
  wire \B_V_data_1_payload_A_reg_n_0_[111] ;
  wire \B_V_data_1_payload_A_reg_n_0_[112] ;
  wire \B_V_data_1_payload_A_reg_n_0_[113] ;
  wire \B_V_data_1_payload_A_reg_n_0_[114] ;
  wire \B_V_data_1_payload_A_reg_n_0_[115] ;
  wire \B_V_data_1_payload_A_reg_n_0_[116] ;
  wire \B_V_data_1_payload_A_reg_n_0_[117] ;
  wire \B_V_data_1_payload_A_reg_n_0_[118] ;
  wire \B_V_data_1_payload_A_reg_n_0_[119] ;
  wire \B_V_data_1_payload_A_reg_n_0_[11] ;
  wire \B_V_data_1_payload_A_reg_n_0_[120] ;
  wire \B_V_data_1_payload_A_reg_n_0_[121] ;
  wire \B_V_data_1_payload_A_reg_n_0_[122] ;
  wire \B_V_data_1_payload_A_reg_n_0_[123] ;
  wire \B_V_data_1_payload_A_reg_n_0_[124] ;
  wire \B_V_data_1_payload_A_reg_n_0_[125] ;
  wire \B_V_data_1_payload_A_reg_n_0_[126] ;
  wire \B_V_data_1_payload_A_reg_n_0_[127] ;
  wire \B_V_data_1_payload_A_reg_n_0_[12] ;
  wire \B_V_data_1_payload_A_reg_n_0_[13] ;
  wire \B_V_data_1_payload_A_reg_n_0_[14] ;
  wire \B_V_data_1_payload_A_reg_n_0_[15] ;
  wire \B_V_data_1_payload_A_reg_n_0_[16] ;
  wire \B_V_data_1_payload_A_reg_n_0_[17] ;
  wire \B_V_data_1_payload_A_reg_n_0_[18] ;
  wire \B_V_data_1_payload_A_reg_n_0_[19] ;
  wire \B_V_data_1_payload_A_reg_n_0_[1] ;
  wire \B_V_data_1_payload_A_reg_n_0_[20] ;
  wire \B_V_data_1_payload_A_reg_n_0_[21] ;
  wire \B_V_data_1_payload_A_reg_n_0_[22] ;
  wire \B_V_data_1_payload_A_reg_n_0_[23] ;
  wire \B_V_data_1_payload_A_reg_n_0_[24] ;
  wire \B_V_data_1_payload_A_reg_n_0_[25] ;
  wire \B_V_data_1_payload_A_reg_n_0_[26] ;
  wire \B_V_data_1_payload_A_reg_n_0_[27] ;
  wire \B_V_data_1_payload_A_reg_n_0_[28] ;
  wire \B_V_data_1_payload_A_reg_n_0_[29] ;
  wire \B_V_data_1_payload_A_reg_n_0_[2] ;
  wire \B_V_data_1_payload_A_reg_n_0_[30] ;
  wire \B_V_data_1_payload_A_reg_n_0_[31] ;
  wire \B_V_data_1_payload_A_reg_n_0_[32] ;
  wire \B_V_data_1_payload_A_reg_n_0_[33] ;
  wire \B_V_data_1_payload_A_reg_n_0_[34] ;
  wire \B_V_data_1_payload_A_reg_n_0_[35] ;
  wire \B_V_data_1_payload_A_reg_n_0_[36] ;
  wire \B_V_data_1_payload_A_reg_n_0_[37] ;
  wire \B_V_data_1_payload_A_reg_n_0_[38] ;
  wire \B_V_data_1_payload_A_reg_n_0_[39] ;
  wire \B_V_data_1_payload_A_reg_n_0_[3] ;
  wire \B_V_data_1_payload_A_reg_n_0_[40] ;
  wire \B_V_data_1_payload_A_reg_n_0_[41] ;
  wire \B_V_data_1_payload_A_reg_n_0_[42] ;
  wire \B_V_data_1_payload_A_reg_n_0_[43] ;
  wire \B_V_data_1_payload_A_reg_n_0_[44] ;
  wire \B_V_data_1_payload_A_reg_n_0_[45] ;
  wire \B_V_data_1_payload_A_reg_n_0_[46] ;
  wire \B_V_data_1_payload_A_reg_n_0_[47] ;
  wire \B_V_data_1_payload_A_reg_n_0_[48] ;
  wire \B_V_data_1_payload_A_reg_n_0_[49] ;
  wire \B_V_data_1_payload_A_reg_n_0_[4] ;
  wire \B_V_data_1_payload_A_reg_n_0_[50] ;
  wire \B_V_data_1_payload_A_reg_n_0_[51] ;
  wire \B_V_data_1_payload_A_reg_n_0_[52] ;
  wire \B_V_data_1_payload_A_reg_n_0_[53] ;
  wire \B_V_data_1_payload_A_reg_n_0_[54] ;
  wire \B_V_data_1_payload_A_reg_n_0_[55] ;
  wire \B_V_data_1_payload_A_reg_n_0_[56] ;
  wire \B_V_data_1_payload_A_reg_n_0_[57] ;
  wire \B_V_data_1_payload_A_reg_n_0_[58] ;
  wire \B_V_data_1_payload_A_reg_n_0_[59] ;
  wire \B_V_data_1_payload_A_reg_n_0_[5] ;
  wire \B_V_data_1_payload_A_reg_n_0_[60] ;
  wire \B_V_data_1_payload_A_reg_n_0_[61] ;
  wire \B_V_data_1_payload_A_reg_n_0_[62] ;
  wire \B_V_data_1_payload_A_reg_n_0_[63] ;
  wire \B_V_data_1_payload_A_reg_n_0_[64] ;
  wire \B_V_data_1_payload_A_reg_n_0_[65] ;
  wire \B_V_data_1_payload_A_reg_n_0_[66] ;
  wire \B_V_data_1_payload_A_reg_n_0_[67] ;
  wire \B_V_data_1_payload_A_reg_n_0_[68] ;
  wire \B_V_data_1_payload_A_reg_n_0_[69] ;
  wire \B_V_data_1_payload_A_reg_n_0_[6] ;
  wire \B_V_data_1_payload_A_reg_n_0_[70] ;
  wire \B_V_data_1_payload_A_reg_n_0_[71] ;
  wire \B_V_data_1_payload_A_reg_n_0_[72] ;
  wire \B_V_data_1_payload_A_reg_n_0_[73] ;
  wire \B_V_data_1_payload_A_reg_n_0_[74] ;
  wire \B_V_data_1_payload_A_reg_n_0_[75] ;
  wire \B_V_data_1_payload_A_reg_n_0_[76] ;
  wire \B_V_data_1_payload_A_reg_n_0_[77] ;
  wire \B_V_data_1_payload_A_reg_n_0_[78] ;
  wire \B_V_data_1_payload_A_reg_n_0_[79] ;
  wire \B_V_data_1_payload_A_reg_n_0_[7] ;
  wire \B_V_data_1_payload_A_reg_n_0_[80] ;
  wire \B_V_data_1_payload_A_reg_n_0_[81] ;
  wire \B_V_data_1_payload_A_reg_n_0_[82] ;
  wire \B_V_data_1_payload_A_reg_n_0_[83] ;
  wire \B_V_data_1_payload_A_reg_n_0_[84] ;
  wire \B_V_data_1_payload_A_reg_n_0_[85] ;
  wire \B_V_data_1_payload_A_reg_n_0_[86] ;
  wire \B_V_data_1_payload_A_reg_n_0_[87] ;
  wire \B_V_data_1_payload_A_reg_n_0_[88] ;
  wire \B_V_data_1_payload_A_reg_n_0_[89] ;
  wire \B_V_data_1_payload_A_reg_n_0_[8] ;
  wire \B_V_data_1_payload_A_reg_n_0_[90] ;
  wire \B_V_data_1_payload_A_reg_n_0_[91] ;
  wire \B_V_data_1_payload_A_reg_n_0_[92] ;
  wire \B_V_data_1_payload_A_reg_n_0_[93] ;
  wire \B_V_data_1_payload_A_reg_n_0_[94] ;
  wire \B_V_data_1_payload_A_reg_n_0_[95] ;
  wire \B_V_data_1_payload_A_reg_n_0_[96] ;
  wire \B_V_data_1_payload_A_reg_n_0_[97] ;
  wire \B_V_data_1_payload_A_reg_n_0_[98] ;
  wire \B_V_data_1_payload_A_reg_n_0_[99] ;
  wire \B_V_data_1_payload_A_reg_n_0_[9] ;
  wire \B_V_data_1_payload_B_reg_n_0_[0] ;
  wire \B_V_data_1_payload_B_reg_n_0_[100] ;
  wire \B_V_data_1_payload_B_reg_n_0_[101] ;
  wire \B_V_data_1_payload_B_reg_n_0_[102] ;
  wire \B_V_data_1_payload_B_reg_n_0_[103] ;
  wire \B_V_data_1_payload_B_reg_n_0_[104] ;
  wire \B_V_data_1_payload_B_reg_n_0_[105] ;
  wire \B_V_data_1_payload_B_reg_n_0_[106] ;
  wire \B_V_data_1_payload_B_reg_n_0_[107] ;
  wire \B_V_data_1_payload_B_reg_n_0_[108] ;
  wire \B_V_data_1_payload_B_reg_n_0_[109] ;
  wire \B_V_data_1_payload_B_reg_n_0_[10] ;
  wire \B_V_data_1_payload_B_reg_n_0_[110] ;
  wire \B_V_data_1_payload_B_reg_n_0_[111] ;
  wire \B_V_data_1_payload_B_reg_n_0_[112] ;
  wire \B_V_data_1_payload_B_reg_n_0_[113] ;
  wire \B_V_data_1_payload_B_reg_n_0_[114] ;
  wire \B_V_data_1_payload_B_reg_n_0_[115] ;
  wire \B_V_data_1_payload_B_reg_n_0_[116] ;
  wire \B_V_data_1_payload_B_reg_n_0_[117] ;
  wire \B_V_data_1_payload_B_reg_n_0_[118] ;
  wire \B_V_data_1_payload_B_reg_n_0_[119] ;
  wire \B_V_data_1_payload_B_reg_n_0_[11] ;
  wire \B_V_data_1_payload_B_reg_n_0_[120] ;
  wire \B_V_data_1_payload_B_reg_n_0_[121] ;
  wire \B_V_data_1_payload_B_reg_n_0_[122] ;
  wire \B_V_data_1_payload_B_reg_n_0_[123] ;
  wire \B_V_data_1_payload_B_reg_n_0_[124] ;
  wire \B_V_data_1_payload_B_reg_n_0_[125] ;
  wire \B_V_data_1_payload_B_reg_n_0_[126] ;
  wire \B_V_data_1_payload_B_reg_n_0_[127] ;
  wire \B_V_data_1_payload_B_reg_n_0_[12] ;
  wire \B_V_data_1_payload_B_reg_n_0_[13] ;
  wire \B_V_data_1_payload_B_reg_n_0_[14] ;
  wire \B_V_data_1_payload_B_reg_n_0_[15] ;
  wire \B_V_data_1_payload_B_reg_n_0_[16] ;
  wire \B_V_data_1_payload_B_reg_n_0_[17] ;
  wire \B_V_data_1_payload_B_reg_n_0_[18] ;
  wire \B_V_data_1_payload_B_reg_n_0_[19] ;
  wire \B_V_data_1_payload_B_reg_n_0_[1] ;
  wire \B_V_data_1_payload_B_reg_n_0_[20] ;
  wire \B_V_data_1_payload_B_reg_n_0_[21] ;
  wire \B_V_data_1_payload_B_reg_n_0_[22] ;
  wire \B_V_data_1_payload_B_reg_n_0_[23] ;
  wire \B_V_data_1_payload_B_reg_n_0_[24] ;
  wire \B_V_data_1_payload_B_reg_n_0_[25] ;
  wire \B_V_data_1_payload_B_reg_n_0_[26] ;
  wire \B_V_data_1_payload_B_reg_n_0_[27] ;
  wire \B_V_data_1_payload_B_reg_n_0_[28] ;
  wire \B_V_data_1_payload_B_reg_n_0_[29] ;
  wire \B_V_data_1_payload_B_reg_n_0_[2] ;
  wire \B_V_data_1_payload_B_reg_n_0_[30] ;
  wire \B_V_data_1_payload_B_reg_n_0_[31] ;
  wire \B_V_data_1_payload_B_reg_n_0_[32] ;
  wire \B_V_data_1_payload_B_reg_n_0_[33] ;
  wire \B_V_data_1_payload_B_reg_n_0_[34] ;
  wire \B_V_data_1_payload_B_reg_n_0_[35] ;
  wire \B_V_data_1_payload_B_reg_n_0_[36] ;
  wire \B_V_data_1_payload_B_reg_n_0_[37] ;
  wire \B_V_data_1_payload_B_reg_n_0_[38] ;
  wire \B_V_data_1_payload_B_reg_n_0_[39] ;
  wire \B_V_data_1_payload_B_reg_n_0_[3] ;
  wire \B_V_data_1_payload_B_reg_n_0_[40] ;
  wire \B_V_data_1_payload_B_reg_n_0_[41] ;
  wire \B_V_data_1_payload_B_reg_n_0_[42] ;
  wire \B_V_data_1_payload_B_reg_n_0_[43] ;
  wire \B_V_data_1_payload_B_reg_n_0_[44] ;
  wire \B_V_data_1_payload_B_reg_n_0_[45] ;
  wire \B_V_data_1_payload_B_reg_n_0_[46] ;
  wire \B_V_data_1_payload_B_reg_n_0_[47] ;
  wire \B_V_data_1_payload_B_reg_n_0_[48] ;
  wire \B_V_data_1_payload_B_reg_n_0_[49] ;
  wire \B_V_data_1_payload_B_reg_n_0_[4] ;
  wire \B_V_data_1_payload_B_reg_n_0_[50] ;
  wire \B_V_data_1_payload_B_reg_n_0_[51] ;
  wire \B_V_data_1_payload_B_reg_n_0_[52] ;
  wire \B_V_data_1_payload_B_reg_n_0_[53] ;
  wire \B_V_data_1_payload_B_reg_n_0_[54] ;
  wire \B_V_data_1_payload_B_reg_n_0_[55] ;
  wire \B_V_data_1_payload_B_reg_n_0_[56] ;
  wire \B_V_data_1_payload_B_reg_n_0_[57] ;
  wire \B_V_data_1_payload_B_reg_n_0_[58] ;
  wire \B_V_data_1_payload_B_reg_n_0_[59] ;
  wire \B_V_data_1_payload_B_reg_n_0_[5] ;
  wire \B_V_data_1_payload_B_reg_n_0_[60] ;
  wire \B_V_data_1_payload_B_reg_n_0_[61] ;
  wire \B_V_data_1_payload_B_reg_n_0_[62] ;
  wire \B_V_data_1_payload_B_reg_n_0_[63] ;
  wire \B_V_data_1_payload_B_reg_n_0_[64] ;
  wire \B_V_data_1_payload_B_reg_n_0_[65] ;
  wire \B_V_data_1_payload_B_reg_n_0_[66] ;
  wire \B_V_data_1_payload_B_reg_n_0_[67] ;
  wire \B_V_data_1_payload_B_reg_n_0_[68] ;
  wire \B_V_data_1_payload_B_reg_n_0_[69] ;
  wire \B_V_data_1_payload_B_reg_n_0_[6] ;
  wire \B_V_data_1_payload_B_reg_n_0_[70] ;
  wire \B_V_data_1_payload_B_reg_n_0_[71] ;
  wire \B_V_data_1_payload_B_reg_n_0_[72] ;
  wire \B_V_data_1_payload_B_reg_n_0_[73] ;
  wire \B_V_data_1_payload_B_reg_n_0_[74] ;
  wire \B_V_data_1_payload_B_reg_n_0_[75] ;
  wire \B_V_data_1_payload_B_reg_n_0_[76] ;
  wire \B_V_data_1_payload_B_reg_n_0_[77] ;
  wire \B_V_data_1_payload_B_reg_n_0_[78] ;
  wire \B_V_data_1_payload_B_reg_n_0_[79] ;
  wire \B_V_data_1_payload_B_reg_n_0_[7] ;
  wire \B_V_data_1_payload_B_reg_n_0_[80] ;
  wire \B_V_data_1_payload_B_reg_n_0_[81] ;
  wire \B_V_data_1_payload_B_reg_n_0_[82] ;
  wire \B_V_data_1_payload_B_reg_n_0_[83] ;
  wire \B_V_data_1_payload_B_reg_n_0_[84] ;
  wire \B_V_data_1_payload_B_reg_n_0_[85] ;
  wire \B_V_data_1_payload_B_reg_n_0_[86] ;
  wire \B_V_data_1_payload_B_reg_n_0_[87] ;
  wire \B_V_data_1_payload_B_reg_n_0_[88] ;
  wire \B_V_data_1_payload_B_reg_n_0_[89] ;
  wire \B_V_data_1_payload_B_reg_n_0_[8] ;
  wire \B_V_data_1_payload_B_reg_n_0_[90] ;
  wire \B_V_data_1_payload_B_reg_n_0_[91] ;
  wire \B_V_data_1_payload_B_reg_n_0_[92] ;
  wire \B_V_data_1_payload_B_reg_n_0_[93] ;
  wire \B_V_data_1_payload_B_reg_n_0_[94] ;
  wire \B_V_data_1_payload_B_reg_n_0_[95] ;
  wire \B_V_data_1_payload_B_reg_n_0_[96] ;
  wire \B_V_data_1_payload_B_reg_n_0_[97] ;
  wire \B_V_data_1_payload_B_reg_n_0_[98] ;
  wire \B_V_data_1_payload_B_reg_n_0_[99] ;
  wire \B_V_data_1_payload_B_reg_n_0_[9] ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1_n_0;
  wire \B_V_data_1_state[0]_i_1__2_n_0 ;
  wire \B_V_data_1_state[1]_i_2_n_0 ;
  wire \B_V_data_1_state_reg[1]_0 ;
  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire \ap_CS_fsm_reg[1] ;
  wire ap_clk;
  wire ap_rst_n;
  wire [127:0]din_TDATA;
  wire [127:0]din_TDATA_int_regslice;
  wire din_TVALID;
  wire vld_out;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[127]_i_1 
       (.I0(vld_out),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(\B_V_data_1_payload_A[127]_i_1_n_0 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[0]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[100] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[100]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[100] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[101] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[101]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[101] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[102] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[102]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[102] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[103] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[103]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[103] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[104] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[104]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[104] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[105] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[105]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[105] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[106] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[106]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[106] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[107] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[107]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[107] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[108] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[108]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[108] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[109] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[109]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[109] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[10]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[110] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[110]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[110] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[111] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[111]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[111] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[112] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[112]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[112] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[113] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[113]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[113] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[114] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[114]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[114] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[115] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[115]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[115] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[116] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[116]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[116] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[117] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[117]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[117] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[118] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[118]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[118] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[119] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[119]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[119] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[11]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[120] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[120]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[120] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[121] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[121]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[121] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[122] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[122]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[122] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[123] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[123]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[123] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[124] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[124]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[124] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[125] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[125]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[125] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[126] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[126]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[126] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[127] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[127]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[127] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[12]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[13]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[14]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[15]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[16]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[17]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[18]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[19]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[1]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[20]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[21]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[22]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[23]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[24]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[25]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[26]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[27]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[28]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[29]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[2]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[30]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[31]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[32] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[32]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[33] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[33]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[34] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[34]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[35] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[35]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[36] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[36]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[37] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[37]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[38] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[38]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[39] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[39]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[3]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[40] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[40]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[41] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[41]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[42] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[42]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[43] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[43]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[44] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[44]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[45] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[45]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[46] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[46]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[47] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[47]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[48] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[48]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[49] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[49]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[4]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[50] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[50]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[51] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[51]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[52] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[52]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[53] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[53]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[54] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[54]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[55] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[55]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[56] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[56]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[57] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[57]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[58] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[58]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[58] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[59] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[59]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[59] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[5]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[60] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[60]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[60] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[61] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[61]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[61] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[62] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[62]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[62] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[63] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[63]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[63] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[64] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[64]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[64] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[65] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[65]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[65] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[66] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[66]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[66] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[67] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[67]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[67] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[68] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[68]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[68] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[69] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[69]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[69] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[6]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[70] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[70]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[70] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[71] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[71]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[71] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[72] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[72]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[72] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[73] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[73]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[73] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[74] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[74]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[74] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[75] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[75]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[75] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[76] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[76]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[76] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[77] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[77]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[77] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[78] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[78]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[78] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[79] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[79]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[79] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[7]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[80] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[80]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[80] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[81] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[81]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[81] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[82] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[82]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[82] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[83] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[83]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[83] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[84] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[84]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[84] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[85] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[85]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[85] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[86] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[86]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[86] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[87] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[87]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[87] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[88] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[88]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[88] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[89] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[89]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[89] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[8]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[90] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[90]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[90] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[91] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[91]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[91] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[92] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[92]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[92] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[93] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[93]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[93] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[94] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[94]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[94] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[95] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[95]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[95] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[96] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[96]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[96] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[97] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[97]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[97] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[98] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[98]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[98] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[99] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[99]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[99] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1_n_0 ),
        .D(din_TDATA[9]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \B_V_data_1_payload_B[127]_i_1 
       (.I0(B_V_data_1_sel_wr),
        .I1(vld_out),
        .I2(\B_V_data_1_state_reg[1]_0 ),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[0]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[100] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[100]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[100] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[101] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[101]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[101] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[102] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[102]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[102] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[103] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[103]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[103] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[104] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[104]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[104] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[105] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[105]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[105] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[106] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[106]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[106] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[107] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[107]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[107] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[108] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[108]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[108] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[109] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[109]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[109] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[10]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[110] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[110]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[110] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[111] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[111]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[111] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[112] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[112]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[112] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[113] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[113]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[113] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[114] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[114]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[114] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[115] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[115]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[115] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[116] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[116]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[116] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[117] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[117]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[117] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[118] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[118]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[118] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[119] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[119]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[119] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[11]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[120] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[120]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[120] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[121] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[121]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[121] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[122] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[122]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[122] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[123] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[123]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[123] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[124] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[124]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[124] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[125] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[125]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[125] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[126] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[126]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[126] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[127] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[127]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[127] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[12]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[13]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[14]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[15]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[16]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[17]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[18]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[19]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[1]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[20]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[21]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[22]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[23]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[24]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[25]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[26]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[27]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[28]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[29]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[2]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[30]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[31]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[32] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[32]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[33] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[33]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[34] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[34]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[35] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[35]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[36] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[36]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[37] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[37]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[38] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[38]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[39] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[39]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[3]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[40] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[40]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[41] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[41]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[42] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[42]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[43] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[43]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[44] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[44]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[45] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[45]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[46] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[46]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[47] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[47]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[48] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[48]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[49] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[49]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[4]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[50] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[50]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[51] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[51]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[52] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[52]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[53] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[53]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[54] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[54]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[55] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[55]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[56] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[56]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[57] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[57]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[58] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[58]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[58] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[59] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[59]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[59] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[5]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[60] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[60]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[60] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[61] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[61]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[61] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[62] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[62]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[62] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[63] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[63]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[63] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[64] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[64]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[64] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[65] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[65]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[65] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[66] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[66]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[66] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[67] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[67]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[67] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[68] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[68]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[68] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[69] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[69]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[69] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[6]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[70] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[70]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[70] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[71] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[71]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[71] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[72] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[72]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[72] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[73] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[73]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[73] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[74] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[74]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[74] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[75] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[75]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[75] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[76] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[76]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[76] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[77] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[77]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[77] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[78] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[78]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[78] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[79] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[79]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[79] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[7]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[80] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[80]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[80] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[81] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[81]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[81] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[82] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[82]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[82] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[83] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[83]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[83] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[84] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[84]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[84] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[85] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[85]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[85] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[86] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[86]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[86] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[87] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[87]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[87] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[88] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[88]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[88] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[89] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[89]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[89] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[8]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[90] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[90]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[90] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[91] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[91]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[91] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[92] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[92]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[92] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[93] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[93]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[93] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[94] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[94]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[94] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[95] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[95]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[95] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[96] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[96]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[96] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[97] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[97]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[97] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[98] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[98]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[98] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[99] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[99]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[99] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TDATA[9]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1
       (.I0(Q[0]),
        .I1(vld_out),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1_n_0),
        .Q(B_V_data_1_sel),
        .R(ARESET));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1
       (.I0(din_TVALID),
        .I1(\B_V_data_1_state_reg[1]_0 ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ARESET));
  LUT5 #(
    .INIT(32'hA2AAA000)) 
    \B_V_data_1_state[0]_i_1__2 
       (.I0(ap_rst_n),
        .I1(Q[0]),
        .I2(din_TVALID),
        .I3(\B_V_data_1_state_reg[1]_0 ),
        .I4(vld_out),
        .O(\B_V_data_1_state[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hBBFB)) 
    \B_V_data_1_state[1]_i_2 
       (.I0(Q[0]),
        .I1(vld_out),
        .I2(\B_V_data_1_state_reg[1]_0 ),
        .I3(din_TVALID),
        .O(\B_V_data_1_state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__2_n_0 ),
        .Q(vld_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[1]_i_2_n_0 ),
        .Q(\B_V_data_1_state_reg[1]_0 ),
        .R(ARESET));
  LUT5 #(
    .INIT(32'h00001000)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(vld_out),
        .I4(\ap_CS_fsm_reg[1] ),
        .O(D));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__0_i_1
       (.I0(\B_V_data_1_payload_B_reg_n_0_[84] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[84] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[84]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__0_i_10
       (.I0(\B_V_data_1_payload_B_reg_n_0_[75] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[75] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[75]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__0_i_11
       (.I0(\B_V_data_1_payload_B_reg_n_0_[74] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[74] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[74]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__0_i_12
       (.I0(\B_V_data_1_payload_B_reg_n_0_[73] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[73] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[73]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__0_i_13
       (.I0(\B_V_data_1_payload_B_reg_n_0_[72] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[72] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[72]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__0_i_14
       (.I0(\B_V_data_1_payload_B_reg_n_0_[71] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[71] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[71]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__0_i_15
       (.I0(\B_V_data_1_payload_B_reg_n_0_[70] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[70] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[70]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__0_i_16
       (.I0(\B_V_data_1_payload_B_reg_n_0_[69] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[69] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[69]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__0_i_17
       (.I0(\B_V_data_1_payload_B_reg_n_0_[68] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[68] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[68]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__0_i_2
       (.I0(\B_V_data_1_payload_B_reg_n_0_[83] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[83] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[83]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__0_i_3
       (.I0(\B_V_data_1_payload_B_reg_n_0_[82] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[82] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[82]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__0_i_4
       (.I0(\B_V_data_1_payload_B_reg_n_0_[81] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[81] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[81]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__0_i_5
       (.I0(\B_V_data_1_payload_B_reg_n_0_[80] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[80] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[80]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__0_i_6
       (.I0(\B_V_data_1_payload_B_reg_n_0_[79] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[79] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[79]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__0_i_7
       (.I0(\B_V_data_1_payload_B_reg_n_0_[78] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[78] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[78]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__0_i_8
       (.I0(\B_V_data_1_payload_B_reg_n_0_[77] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[77] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[77]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__0_i_9
       (.I0(\B_V_data_1_payload_B_reg_n_0_[76] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[76] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[76]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__1_i_1
       (.I0(\B_V_data_1_payload_B_reg_n_0_[67] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[67] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[67]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__1_i_10
       (.I0(\B_V_data_1_payload_B_reg_n_0_[58] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[58] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[58]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__1_i_11
       (.I0(\B_V_data_1_payload_B_reg_n_0_[57] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[57] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[57]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__1_i_12
       (.I0(\B_V_data_1_payload_B_reg_n_0_[56] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[56] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[56]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__1_i_13
       (.I0(\B_V_data_1_payload_B_reg_n_0_[55] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[55] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[55]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__1_i_14
       (.I0(\B_V_data_1_payload_B_reg_n_0_[54] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[54] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[54]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__1_i_15
       (.I0(\B_V_data_1_payload_B_reg_n_0_[53] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[53] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[53]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__1_i_16
       (.I0(\B_V_data_1_payload_B_reg_n_0_[52] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[52] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[52]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__1_i_17
       (.I0(\B_V_data_1_payload_B_reg_n_0_[51] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[51] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[51]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__1_i_2
       (.I0(\B_V_data_1_payload_B_reg_n_0_[66] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[66] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[66]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__1_i_3
       (.I0(\B_V_data_1_payload_B_reg_n_0_[65] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[65] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[65]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__1_i_4
       (.I0(\B_V_data_1_payload_B_reg_n_0_[64] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[64] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[64]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__1_i_5
       (.I0(\B_V_data_1_payload_B_reg_n_0_[63] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[63] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[63]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__1_i_6
       (.I0(\B_V_data_1_payload_B_reg_n_0_[62] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[62] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[62]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__1_i_7
       (.I0(\B_V_data_1_payload_B_reg_n_0_[61] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[61] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[61]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__1_i_8
       (.I0(\B_V_data_1_payload_B_reg_n_0_[60] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[60] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[60]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__1_i_9
       (.I0(\B_V_data_1_payload_B_reg_n_0_[59] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[59] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[59]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__2_i_1
       (.I0(\B_V_data_1_payload_B_reg_n_0_[33] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[33] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[33]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__2_i_10
       (.I0(\B_V_data_1_payload_B_reg_n_0_[24] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[24] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[24]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__2_i_11
       (.I0(\B_V_data_1_payload_B_reg_n_0_[23] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[23] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[23]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__2_i_12
       (.I0(\B_V_data_1_payload_B_reg_n_0_[22] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[22] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[22]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__2_i_13
       (.I0(\B_V_data_1_payload_B_reg_n_0_[21] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[21] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[21]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__2_i_14
       (.I0(\B_V_data_1_payload_B_reg_n_0_[20] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[20] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[20]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__2_i_15
       (.I0(\B_V_data_1_payload_B_reg_n_0_[19] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[19] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[19]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__2_i_16
       (.I0(\B_V_data_1_payload_B_reg_n_0_[18] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[18] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[18]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__2_i_17
       (.I0(\B_V_data_1_payload_B_reg_n_0_[17] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[17] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[17]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__2_i_2
       (.I0(\B_V_data_1_payload_B_reg_n_0_[32] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[32] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[32]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__2_i_3
       (.I0(\B_V_data_1_payload_B_reg_n_0_[31] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[31] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[31]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__2_i_4
       (.I0(\B_V_data_1_payload_B_reg_n_0_[30] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[30] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[30]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__2_i_5
       (.I0(\B_V_data_1_payload_B_reg_n_0_[29] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[29] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[29]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__2_i_6
       (.I0(\B_V_data_1_payload_B_reg_n_0_[28] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[28] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[28]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__2_i_7
       (.I0(\B_V_data_1_payload_B_reg_n_0_[27] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[27] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[27]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__2_i_8
       (.I0(\B_V_data_1_payload_B_reg_n_0_[26] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[26] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[26]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__2_i_9
       (.I0(\B_V_data_1_payload_B_reg_n_0_[25] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[25] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[25]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__3_i_1
       (.I0(\B_V_data_1_payload_B_reg_n_0_[16] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[16] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[16]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__3_i_10
       (.I0(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__3_i_11
       (.I0(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__3_i_12
       (.I0(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__3_i_13
       (.I0(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__3_i_14
       (.I0(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__3_i_15
       (.I0(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__3_i_16
       (.I0(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__3_i_17
       (.I0(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__3_i_2
       (.I0(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__3_i_3
       (.I0(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__3_i_4
       (.I0(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__3_i_5
       (.I0(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__3_i_6
       (.I0(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__3_i_7
       (.I0(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__3_i_8
       (.I0(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg__3_i_9
       (.I0(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[8]));
  LUT2 #(
    .INIT(4'h8)) 
    buff0_reg_i_1
       (.I0(Q[0]),
        .I1(vld_out),
        .O(E));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg_i_10
       (.I0(\B_V_data_1_payload_B_reg_n_0_[111] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[111] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[111]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg_i_11
       (.I0(\B_V_data_1_payload_B_reg_n_0_[110] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[110] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[110]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg_i_12
       (.I0(\B_V_data_1_payload_B_reg_n_0_[109] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[109] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[109]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg_i_13
       (.I0(\B_V_data_1_payload_B_reg_n_0_[108] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[108] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[108]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg_i_14
       (.I0(\B_V_data_1_payload_B_reg_n_0_[107] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[107] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[107]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg_i_15
       (.I0(\B_V_data_1_payload_B_reg_n_0_[106] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[106] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[106]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg_i_16
       (.I0(\B_V_data_1_payload_B_reg_n_0_[105] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[105] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[105]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg_i_17
       (.I0(\B_V_data_1_payload_B_reg_n_0_[104] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[104] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[104]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg_i_18
       (.I0(\B_V_data_1_payload_B_reg_n_0_[103] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[103] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[103]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg_i_19
       (.I0(\B_V_data_1_payload_B_reg_n_0_[102] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[102] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[102]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg_i_3
       (.I0(\B_V_data_1_payload_B_reg_n_0_[118] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[118] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[118]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg_i_4
       (.I0(\B_V_data_1_payload_B_reg_n_0_[117] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[117] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[117]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg_i_5
       (.I0(\B_V_data_1_payload_B_reg_n_0_[116] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[116] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[116]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg_i_6
       (.I0(\B_V_data_1_payload_B_reg_n_0_[115] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[115] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[115]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg_i_7
       (.I0(\B_V_data_1_payload_B_reg_n_0_[114] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[114] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[114]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg_i_8
       (.I0(\B_V_data_1_payload_B_reg_n_0_[113] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[113] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[113]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff0_reg_i_9
       (.I0(\B_V_data_1_payload_B_reg_n_0_[112] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[112] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[112]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff1_reg_i_1
       (.I0(\B_V_data_1_payload_B_reg_n_0_[127] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[127] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[127]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff1_reg_i_2
       (.I0(\B_V_data_1_payload_B_reg_n_0_[126] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[126] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[126]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff1_reg_i_3
       (.I0(\B_V_data_1_payload_B_reg_n_0_[125] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[125] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[125]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff1_reg_i_4
       (.I0(\B_V_data_1_payload_B_reg_n_0_[124] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[124] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[124]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff1_reg_i_5
       (.I0(\B_V_data_1_payload_B_reg_n_0_[123] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[123] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[123]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff1_reg_i_6
       (.I0(\B_V_data_1_payload_B_reg_n_0_[122] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[122] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[122]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff1_reg_i_7
       (.I0(\B_V_data_1_payload_B_reg_n_0_[121] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[121] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[121]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff1_reg_i_8
       (.I0(\B_V_data_1_payload_B_reg_n_0_[120] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[120] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[120]));
  LUT3 #(
    .INIT(8'hAC)) 
    buff1_reg_i_9
       (.I0(\B_V_data_1_payload_B_reg_n_0_[119] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[119] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[119]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__0_i_1
       (.I0(\B_V_data_1_payload_B_reg_n_0_[101] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[101] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[101]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__0_i_10
       (.I0(\B_V_data_1_payload_B_reg_n_0_[92] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[92] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[92]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__0_i_11
       (.I0(\B_V_data_1_payload_B_reg_n_0_[91] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[91] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[91]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__0_i_12
       (.I0(\B_V_data_1_payload_B_reg_n_0_[90] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[90] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[90]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__0_i_13
       (.I0(\B_V_data_1_payload_B_reg_n_0_[89] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[89] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[89]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__0_i_14
       (.I0(\B_V_data_1_payload_B_reg_n_0_[88] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[88] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[88]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__0_i_15
       (.I0(\B_V_data_1_payload_B_reg_n_0_[87] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[87] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[87]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__0_i_16
       (.I0(\B_V_data_1_payload_B_reg_n_0_[86] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[86] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[86]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__0_i_17
       (.I0(\B_V_data_1_payload_B_reg_n_0_[85] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[85] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[85]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__0_i_2
       (.I0(\B_V_data_1_payload_B_reg_n_0_[100] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[100] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[100]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__0_i_3
       (.I0(\B_V_data_1_payload_B_reg_n_0_[99] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[99] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[99]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__0_i_4
       (.I0(\B_V_data_1_payload_B_reg_n_0_[98] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[98] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[98]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__0_i_5
       (.I0(\B_V_data_1_payload_B_reg_n_0_[97] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[97] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[97]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__0_i_6
       (.I0(\B_V_data_1_payload_B_reg_n_0_[96] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[96] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[96]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__0_i_7
       (.I0(\B_V_data_1_payload_B_reg_n_0_[95] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[95] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[95]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__0_i_8
       (.I0(\B_V_data_1_payload_B_reg_n_0_[94] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[94] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[94]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__0_i_9
       (.I0(\B_V_data_1_payload_B_reg_n_0_[93] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[93] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[93]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__2_i_1
       (.I0(\B_V_data_1_payload_B_reg_n_0_[50] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[50] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[50]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__2_i_10
       (.I0(\B_V_data_1_payload_B_reg_n_0_[41] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[41] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[41]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__2_i_11
       (.I0(\B_V_data_1_payload_B_reg_n_0_[40] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[40] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[40]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__2_i_12
       (.I0(\B_V_data_1_payload_B_reg_n_0_[39] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[39] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[39]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__2_i_13
       (.I0(\B_V_data_1_payload_B_reg_n_0_[38] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[38] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[38]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__2_i_14
       (.I0(\B_V_data_1_payload_B_reg_n_0_[37] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[37] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[37]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__2_i_15
       (.I0(\B_V_data_1_payload_B_reg_n_0_[36] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[36] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[36]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__2_i_16
       (.I0(\B_V_data_1_payload_B_reg_n_0_[35] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[35] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[35]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__2_i_17
       (.I0(\B_V_data_1_payload_B_reg_n_0_[34] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[34] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[34]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__2_i_2
       (.I0(\B_V_data_1_payload_B_reg_n_0_[49] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[49] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[49]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__2_i_3
       (.I0(\B_V_data_1_payload_B_reg_n_0_[48] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[48] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[48]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__2_i_4
       (.I0(\B_V_data_1_payload_B_reg_n_0_[47] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[47] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[47]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__2_i_5
       (.I0(\B_V_data_1_payload_B_reg_n_0_[46] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[46] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[46]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__2_i_6
       (.I0(\B_V_data_1_payload_B_reg_n_0_[45] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[45] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[45]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__2_i_7
       (.I0(\B_V_data_1_payload_B_reg_n_0_[44] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[44] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[44]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__2_i_8
       (.I0(\B_V_data_1_payload_B_reg_n_0_[43] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[43] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[43]));
  LUT3 #(
    .INIT(8'hAC)) 
    tmp_product__2_i_9
       (.I0(\B_V_data_1_payload_B_reg_n_0_[42] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[42] ),
        .I2(B_V_data_1_sel),
        .O(din_TDATA_int_regslice[42]));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both_0
   (dout_TREADY_int_regslice,
    \B_V_data_1_state_reg[0]_0 ,
    D,
    \ap_CS_fsm_reg[6] ,
    dout_TDATA,
    ARESET,
    ap_clk,
    Q,
    dout_TREADY,
    vld_out,
    ap_rst_n,
    \B_V_data_1_payload_A_reg[127]_0 );
  output dout_TREADY_int_regslice;
  output \B_V_data_1_state_reg[0]_0 ;
  output [2:0]D;
  output \ap_CS_fsm_reg[6] ;
  output [127:0]dout_TDATA;
  input ARESET;
  input ap_clk;
  input [3:0]Q;
  input dout_TREADY;
  input vld_out;
  input ap_rst_n;
  input [127:0]\B_V_data_1_payload_A_reg[127]_0 ;

  wire ARESET;
  wire B_V_data_1_load_B;
  wire \B_V_data_1_payload_A[127]_i_1__0_n_0 ;
  wire [127:0]\B_V_data_1_payload_A_reg[127]_0 ;
  wire \B_V_data_1_payload_A_reg_n_0_[0] ;
  wire \B_V_data_1_payload_A_reg_n_0_[100] ;
  wire \B_V_data_1_payload_A_reg_n_0_[101] ;
  wire \B_V_data_1_payload_A_reg_n_0_[102] ;
  wire \B_V_data_1_payload_A_reg_n_0_[103] ;
  wire \B_V_data_1_payload_A_reg_n_0_[104] ;
  wire \B_V_data_1_payload_A_reg_n_0_[105] ;
  wire \B_V_data_1_payload_A_reg_n_0_[106] ;
  wire \B_V_data_1_payload_A_reg_n_0_[107] ;
  wire \B_V_data_1_payload_A_reg_n_0_[108] ;
  wire \B_V_data_1_payload_A_reg_n_0_[109] ;
  wire \B_V_data_1_payload_A_reg_n_0_[10] ;
  wire \B_V_data_1_payload_A_reg_n_0_[110] ;
  wire \B_V_data_1_payload_A_reg_n_0_[111] ;
  wire \B_V_data_1_payload_A_reg_n_0_[112] ;
  wire \B_V_data_1_payload_A_reg_n_0_[113] ;
  wire \B_V_data_1_payload_A_reg_n_0_[114] ;
  wire \B_V_data_1_payload_A_reg_n_0_[115] ;
  wire \B_V_data_1_payload_A_reg_n_0_[116] ;
  wire \B_V_data_1_payload_A_reg_n_0_[117] ;
  wire \B_V_data_1_payload_A_reg_n_0_[118] ;
  wire \B_V_data_1_payload_A_reg_n_0_[119] ;
  wire \B_V_data_1_payload_A_reg_n_0_[11] ;
  wire \B_V_data_1_payload_A_reg_n_0_[120] ;
  wire \B_V_data_1_payload_A_reg_n_0_[121] ;
  wire \B_V_data_1_payload_A_reg_n_0_[122] ;
  wire \B_V_data_1_payload_A_reg_n_0_[123] ;
  wire \B_V_data_1_payload_A_reg_n_0_[124] ;
  wire \B_V_data_1_payload_A_reg_n_0_[125] ;
  wire \B_V_data_1_payload_A_reg_n_0_[126] ;
  wire \B_V_data_1_payload_A_reg_n_0_[127] ;
  wire \B_V_data_1_payload_A_reg_n_0_[12] ;
  wire \B_V_data_1_payload_A_reg_n_0_[13] ;
  wire \B_V_data_1_payload_A_reg_n_0_[14] ;
  wire \B_V_data_1_payload_A_reg_n_0_[15] ;
  wire \B_V_data_1_payload_A_reg_n_0_[16] ;
  wire \B_V_data_1_payload_A_reg_n_0_[17] ;
  wire \B_V_data_1_payload_A_reg_n_0_[18] ;
  wire \B_V_data_1_payload_A_reg_n_0_[19] ;
  wire \B_V_data_1_payload_A_reg_n_0_[1] ;
  wire \B_V_data_1_payload_A_reg_n_0_[20] ;
  wire \B_V_data_1_payload_A_reg_n_0_[21] ;
  wire \B_V_data_1_payload_A_reg_n_0_[22] ;
  wire \B_V_data_1_payload_A_reg_n_0_[23] ;
  wire \B_V_data_1_payload_A_reg_n_0_[24] ;
  wire \B_V_data_1_payload_A_reg_n_0_[25] ;
  wire \B_V_data_1_payload_A_reg_n_0_[26] ;
  wire \B_V_data_1_payload_A_reg_n_0_[27] ;
  wire \B_V_data_1_payload_A_reg_n_0_[28] ;
  wire \B_V_data_1_payload_A_reg_n_0_[29] ;
  wire \B_V_data_1_payload_A_reg_n_0_[2] ;
  wire \B_V_data_1_payload_A_reg_n_0_[30] ;
  wire \B_V_data_1_payload_A_reg_n_0_[31] ;
  wire \B_V_data_1_payload_A_reg_n_0_[32] ;
  wire \B_V_data_1_payload_A_reg_n_0_[33] ;
  wire \B_V_data_1_payload_A_reg_n_0_[34] ;
  wire \B_V_data_1_payload_A_reg_n_0_[35] ;
  wire \B_V_data_1_payload_A_reg_n_0_[36] ;
  wire \B_V_data_1_payload_A_reg_n_0_[37] ;
  wire \B_V_data_1_payload_A_reg_n_0_[38] ;
  wire \B_V_data_1_payload_A_reg_n_0_[39] ;
  wire \B_V_data_1_payload_A_reg_n_0_[3] ;
  wire \B_V_data_1_payload_A_reg_n_0_[40] ;
  wire \B_V_data_1_payload_A_reg_n_0_[41] ;
  wire \B_V_data_1_payload_A_reg_n_0_[42] ;
  wire \B_V_data_1_payload_A_reg_n_0_[43] ;
  wire \B_V_data_1_payload_A_reg_n_0_[44] ;
  wire \B_V_data_1_payload_A_reg_n_0_[45] ;
  wire \B_V_data_1_payload_A_reg_n_0_[46] ;
  wire \B_V_data_1_payload_A_reg_n_0_[47] ;
  wire \B_V_data_1_payload_A_reg_n_0_[48] ;
  wire \B_V_data_1_payload_A_reg_n_0_[49] ;
  wire \B_V_data_1_payload_A_reg_n_0_[4] ;
  wire \B_V_data_1_payload_A_reg_n_0_[50] ;
  wire \B_V_data_1_payload_A_reg_n_0_[51] ;
  wire \B_V_data_1_payload_A_reg_n_0_[52] ;
  wire \B_V_data_1_payload_A_reg_n_0_[53] ;
  wire \B_V_data_1_payload_A_reg_n_0_[54] ;
  wire \B_V_data_1_payload_A_reg_n_0_[55] ;
  wire \B_V_data_1_payload_A_reg_n_0_[56] ;
  wire \B_V_data_1_payload_A_reg_n_0_[57] ;
  wire \B_V_data_1_payload_A_reg_n_0_[58] ;
  wire \B_V_data_1_payload_A_reg_n_0_[59] ;
  wire \B_V_data_1_payload_A_reg_n_0_[5] ;
  wire \B_V_data_1_payload_A_reg_n_0_[60] ;
  wire \B_V_data_1_payload_A_reg_n_0_[61] ;
  wire \B_V_data_1_payload_A_reg_n_0_[62] ;
  wire \B_V_data_1_payload_A_reg_n_0_[63] ;
  wire \B_V_data_1_payload_A_reg_n_0_[64] ;
  wire \B_V_data_1_payload_A_reg_n_0_[65] ;
  wire \B_V_data_1_payload_A_reg_n_0_[66] ;
  wire \B_V_data_1_payload_A_reg_n_0_[67] ;
  wire \B_V_data_1_payload_A_reg_n_0_[68] ;
  wire \B_V_data_1_payload_A_reg_n_0_[69] ;
  wire \B_V_data_1_payload_A_reg_n_0_[6] ;
  wire \B_V_data_1_payload_A_reg_n_0_[70] ;
  wire \B_V_data_1_payload_A_reg_n_0_[71] ;
  wire \B_V_data_1_payload_A_reg_n_0_[72] ;
  wire \B_V_data_1_payload_A_reg_n_0_[73] ;
  wire \B_V_data_1_payload_A_reg_n_0_[74] ;
  wire \B_V_data_1_payload_A_reg_n_0_[75] ;
  wire \B_V_data_1_payload_A_reg_n_0_[76] ;
  wire \B_V_data_1_payload_A_reg_n_0_[77] ;
  wire \B_V_data_1_payload_A_reg_n_0_[78] ;
  wire \B_V_data_1_payload_A_reg_n_0_[79] ;
  wire \B_V_data_1_payload_A_reg_n_0_[7] ;
  wire \B_V_data_1_payload_A_reg_n_0_[80] ;
  wire \B_V_data_1_payload_A_reg_n_0_[81] ;
  wire \B_V_data_1_payload_A_reg_n_0_[82] ;
  wire \B_V_data_1_payload_A_reg_n_0_[83] ;
  wire \B_V_data_1_payload_A_reg_n_0_[84] ;
  wire \B_V_data_1_payload_A_reg_n_0_[85] ;
  wire \B_V_data_1_payload_A_reg_n_0_[86] ;
  wire \B_V_data_1_payload_A_reg_n_0_[87] ;
  wire \B_V_data_1_payload_A_reg_n_0_[88] ;
  wire \B_V_data_1_payload_A_reg_n_0_[89] ;
  wire \B_V_data_1_payload_A_reg_n_0_[8] ;
  wire \B_V_data_1_payload_A_reg_n_0_[90] ;
  wire \B_V_data_1_payload_A_reg_n_0_[91] ;
  wire \B_V_data_1_payload_A_reg_n_0_[92] ;
  wire \B_V_data_1_payload_A_reg_n_0_[93] ;
  wire \B_V_data_1_payload_A_reg_n_0_[94] ;
  wire \B_V_data_1_payload_A_reg_n_0_[95] ;
  wire \B_V_data_1_payload_A_reg_n_0_[96] ;
  wire \B_V_data_1_payload_A_reg_n_0_[97] ;
  wire \B_V_data_1_payload_A_reg_n_0_[98] ;
  wire \B_V_data_1_payload_A_reg_n_0_[99] ;
  wire \B_V_data_1_payload_A_reg_n_0_[9] ;
  wire \B_V_data_1_payload_B_reg_n_0_[0] ;
  wire \B_V_data_1_payload_B_reg_n_0_[100] ;
  wire \B_V_data_1_payload_B_reg_n_0_[101] ;
  wire \B_V_data_1_payload_B_reg_n_0_[102] ;
  wire \B_V_data_1_payload_B_reg_n_0_[103] ;
  wire \B_V_data_1_payload_B_reg_n_0_[104] ;
  wire \B_V_data_1_payload_B_reg_n_0_[105] ;
  wire \B_V_data_1_payload_B_reg_n_0_[106] ;
  wire \B_V_data_1_payload_B_reg_n_0_[107] ;
  wire \B_V_data_1_payload_B_reg_n_0_[108] ;
  wire \B_V_data_1_payload_B_reg_n_0_[109] ;
  wire \B_V_data_1_payload_B_reg_n_0_[10] ;
  wire \B_V_data_1_payload_B_reg_n_0_[110] ;
  wire \B_V_data_1_payload_B_reg_n_0_[111] ;
  wire \B_V_data_1_payload_B_reg_n_0_[112] ;
  wire \B_V_data_1_payload_B_reg_n_0_[113] ;
  wire \B_V_data_1_payload_B_reg_n_0_[114] ;
  wire \B_V_data_1_payload_B_reg_n_0_[115] ;
  wire \B_V_data_1_payload_B_reg_n_0_[116] ;
  wire \B_V_data_1_payload_B_reg_n_0_[117] ;
  wire \B_V_data_1_payload_B_reg_n_0_[118] ;
  wire \B_V_data_1_payload_B_reg_n_0_[119] ;
  wire \B_V_data_1_payload_B_reg_n_0_[11] ;
  wire \B_V_data_1_payload_B_reg_n_0_[120] ;
  wire \B_V_data_1_payload_B_reg_n_0_[121] ;
  wire \B_V_data_1_payload_B_reg_n_0_[122] ;
  wire \B_V_data_1_payload_B_reg_n_0_[123] ;
  wire \B_V_data_1_payload_B_reg_n_0_[124] ;
  wire \B_V_data_1_payload_B_reg_n_0_[125] ;
  wire \B_V_data_1_payload_B_reg_n_0_[126] ;
  wire \B_V_data_1_payload_B_reg_n_0_[127] ;
  wire \B_V_data_1_payload_B_reg_n_0_[12] ;
  wire \B_V_data_1_payload_B_reg_n_0_[13] ;
  wire \B_V_data_1_payload_B_reg_n_0_[14] ;
  wire \B_V_data_1_payload_B_reg_n_0_[15] ;
  wire \B_V_data_1_payload_B_reg_n_0_[16] ;
  wire \B_V_data_1_payload_B_reg_n_0_[17] ;
  wire \B_V_data_1_payload_B_reg_n_0_[18] ;
  wire \B_V_data_1_payload_B_reg_n_0_[19] ;
  wire \B_V_data_1_payload_B_reg_n_0_[1] ;
  wire \B_V_data_1_payload_B_reg_n_0_[20] ;
  wire \B_V_data_1_payload_B_reg_n_0_[21] ;
  wire \B_V_data_1_payload_B_reg_n_0_[22] ;
  wire \B_V_data_1_payload_B_reg_n_0_[23] ;
  wire \B_V_data_1_payload_B_reg_n_0_[24] ;
  wire \B_V_data_1_payload_B_reg_n_0_[25] ;
  wire \B_V_data_1_payload_B_reg_n_0_[26] ;
  wire \B_V_data_1_payload_B_reg_n_0_[27] ;
  wire \B_V_data_1_payload_B_reg_n_0_[28] ;
  wire \B_V_data_1_payload_B_reg_n_0_[29] ;
  wire \B_V_data_1_payload_B_reg_n_0_[2] ;
  wire \B_V_data_1_payload_B_reg_n_0_[30] ;
  wire \B_V_data_1_payload_B_reg_n_0_[31] ;
  wire \B_V_data_1_payload_B_reg_n_0_[32] ;
  wire \B_V_data_1_payload_B_reg_n_0_[33] ;
  wire \B_V_data_1_payload_B_reg_n_0_[34] ;
  wire \B_V_data_1_payload_B_reg_n_0_[35] ;
  wire \B_V_data_1_payload_B_reg_n_0_[36] ;
  wire \B_V_data_1_payload_B_reg_n_0_[37] ;
  wire \B_V_data_1_payload_B_reg_n_0_[38] ;
  wire \B_V_data_1_payload_B_reg_n_0_[39] ;
  wire \B_V_data_1_payload_B_reg_n_0_[3] ;
  wire \B_V_data_1_payload_B_reg_n_0_[40] ;
  wire \B_V_data_1_payload_B_reg_n_0_[41] ;
  wire \B_V_data_1_payload_B_reg_n_0_[42] ;
  wire \B_V_data_1_payload_B_reg_n_0_[43] ;
  wire \B_V_data_1_payload_B_reg_n_0_[44] ;
  wire \B_V_data_1_payload_B_reg_n_0_[45] ;
  wire \B_V_data_1_payload_B_reg_n_0_[46] ;
  wire \B_V_data_1_payload_B_reg_n_0_[47] ;
  wire \B_V_data_1_payload_B_reg_n_0_[48] ;
  wire \B_V_data_1_payload_B_reg_n_0_[49] ;
  wire \B_V_data_1_payload_B_reg_n_0_[4] ;
  wire \B_V_data_1_payload_B_reg_n_0_[50] ;
  wire \B_V_data_1_payload_B_reg_n_0_[51] ;
  wire \B_V_data_1_payload_B_reg_n_0_[52] ;
  wire \B_V_data_1_payload_B_reg_n_0_[53] ;
  wire \B_V_data_1_payload_B_reg_n_0_[54] ;
  wire \B_V_data_1_payload_B_reg_n_0_[55] ;
  wire \B_V_data_1_payload_B_reg_n_0_[56] ;
  wire \B_V_data_1_payload_B_reg_n_0_[57] ;
  wire \B_V_data_1_payload_B_reg_n_0_[58] ;
  wire \B_V_data_1_payload_B_reg_n_0_[59] ;
  wire \B_V_data_1_payload_B_reg_n_0_[5] ;
  wire \B_V_data_1_payload_B_reg_n_0_[60] ;
  wire \B_V_data_1_payload_B_reg_n_0_[61] ;
  wire \B_V_data_1_payload_B_reg_n_0_[62] ;
  wire \B_V_data_1_payload_B_reg_n_0_[63] ;
  wire \B_V_data_1_payload_B_reg_n_0_[64] ;
  wire \B_V_data_1_payload_B_reg_n_0_[65] ;
  wire \B_V_data_1_payload_B_reg_n_0_[66] ;
  wire \B_V_data_1_payload_B_reg_n_0_[67] ;
  wire \B_V_data_1_payload_B_reg_n_0_[68] ;
  wire \B_V_data_1_payload_B_reg_n_0_[69] ;
  wire \B_V_data_1_payload_B_reg_n_0_[6] ;
  wire \B_V_data_1_payload_B_reg_n_0_[70] ;
  wire \B_V_data_1_payload_B_reg_n_0_[71] ;
  wire \B_V_data_1_payload_B_reg_n_0_[72] ;
  wire \B_V_data_1_payload_B_reg_n_0_[73] ;
  wire \B_V_data_1_payload_B_reg_n_0_[74] ;
  wire \B_V_data_1_payload_B_reg_n_0_[75] ;
  wire \B_V_data_1_payload_B_reg_n_0_[76] ;
  wire \B_V_data_1_payload_B_reg_n_0_[77] ;
  wire \B_V_data_1_payload_B_reg_n_0_[78] ;
  wire \B_V_data_1_payload_B_reg_n_0_[79] ;
  wire \B_V_data_1_payload_B_reg_n_0_[7] ;
  wire \B_V_data_1_payload_B_reg_n_0_[80] ;
  wire \B_V_data_1_payload_B_reg_n_0_[81] ;
  wire \B_V_data_1_payload_B_reg_n_0_[82] ;
  wire \B_V_data_1_payload_B_reg_n_0_[83] ;
  wire \B_V_data_1_payload_B_reg_n_0_[84] ;
  wire \B_V_data_1_payload_B_reg_n_0_[85] ;
  wire \B_V_data_1_payload_B_reg_n_0_[86] ;
  wire \B_V_data_1_payload_B_reg_n_0_[87] ;
  wire \B_V_data_1_payload_B_reg_n_0_[88] ;
  wire \B_V_data_1_payload_B_reg_n_0_[89] ;
  wire \B_V_data_1_payload_B_reg_n_0_[8] ;
  wire \B_V_data_1_payload_B_reg_n_0_[90] ;
  wire \B_V_data_1_payload_B_reg_n_0_[91] ;
  wire \B_V_data_1_payload_B_reg_n_0_[92] ;
  wire \B_V_data_1_payload_B_reg_n_0_[93] ;
  wire \B_V_data_1_payload_B_reg_n_0_[94] ;
  wire \B_V_data_1_payload_B_reg_n_0_[95] ;
  wire \B_V_data_1_payload_B_reg_n_0_[96] ;
  wire \B_V_data_1_payload_B_reg_n_0_[97] ;
  wire \B_V_data_1_payload_B_reg_n_0_[98] ;
  wire \B_V_data_1_payload_B_reg_n_0_[99] ;
  wire \B_V_data_1_payload_B_reg_n_0_[9] ;
  wire B_V_data_1_sel_rd_i_1__2_n_0;
  wire B_V_data_1_sel_rd_reg_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__2_n_0;
  wire \B_V_data_1_state[0]_i_1_n_0 ;
  wire \B_V_data_1_state[1]_i_1__0_n_0 ;
  wire \B_V_data_1_state_reg[0]_0 ;
  wire [2:0]D;
  wire [3:0]Q;
  wire \ap_CS_fsm_reg[6] ;
  wire ap_clk;
  wire ap_rst_n;
  wire [127:0]dout_TDATA;
  wire dout_TREADY;
  wire dout_TREADY_int_regslice;
  wire vld_out;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[127]_i_1__0 
       (.I0(\B_V_data_1_state_reg[0]_0 ),
        .I1(dout_TREADY_int_regslice),
        .I2(B_V_data_1_sel_wr),
        .O(\B_V_data_1_payload_A[127]_i_1__0_n_0 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [0]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[100] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [100]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[100] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[101] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [101]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[101] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[102] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [102]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[102] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[103] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [103]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[103] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[104] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [104]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[104] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[105] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [105]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[105] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[106] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [106]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[106] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[107] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [107]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[107] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[108] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [108]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[108] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[109] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [109]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[109] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [10]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[110] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [110]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[110] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[111] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [111]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[111] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[112] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [112]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[112] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[113] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [113]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[113] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[114] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [114]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[114] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[115] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [115]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[115] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[116] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [116]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[116] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[117] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [117]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[117] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[118] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [118]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[118] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[119] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [119]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[119] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [11]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[120] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [120]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[120] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[121] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [121]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[121] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[122] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [122]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[122] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[123] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [123]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[123] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[124] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [124]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[124] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[125] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [125]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[125] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[126] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [126]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[126] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[127] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [127]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[127] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [12]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [13]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [14]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [15]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [16]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [17]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [18]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [19]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [1]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [20]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [21]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [22]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [23]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [24]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [25]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [26]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [27]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [28]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [29]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [2]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [30]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [31]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[32] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [32]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[33] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [33]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[34] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [34]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[35] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [35]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[36] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [36]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[37] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [37]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[38] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [38]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[39] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [39]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [3]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[40] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [40]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[41] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [41]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[42] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [42]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[43] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [43]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[44] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [44]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[45] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [45]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[46] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [46]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[47] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [47]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[48] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [48]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[49] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [49]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [4]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[50] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [50]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[51] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [51]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[52] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [52]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[53] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [53]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[54] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [54]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[55] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [55]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[56] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [56]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[57] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [57]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[58] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [58]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[58] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[59] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [59]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[59] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [5]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[60] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [60]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[60] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[61] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [61]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[61] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[62] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [62]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[62] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[63] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [63]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[63] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[64] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [64]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[64] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[65] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [65]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[65] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[66] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [66]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[66] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[67] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [67]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[67] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[68] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [68]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[68] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[69] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [69]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[69] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [6]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[70] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [70]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[70] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[71] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [71]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[71] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[72] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [72]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[72] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[73] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [73]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[73] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[74] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [74]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[74] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[75] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [75]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[75] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[76] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [76]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[76] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[77] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [77]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[77] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[78] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [78]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[78] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[79] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [79]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[79] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [7]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[80] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [80]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[80] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[81] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [81]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[81] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[82] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [82]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[82] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[83] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [83]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[83] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[84] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [84]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[84] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[85] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [85]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[85] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[86] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [86]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[86] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[87] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [87]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[87] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[88] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [88]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[88] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[89] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [89]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[89] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [8]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[90] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [90]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[90] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[91] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [91]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[91] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[92] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [92]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[92] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[93] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [93]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[93] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[94] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [94]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[94] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[95] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [95]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[95] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[96] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [96]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[96] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[97] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [97]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[97] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[98] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [98]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[98] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[99] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [99]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[99] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[127]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[127]_0 [9]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \B_V_data_1_payload_B[127]_i_1__0 
       (.I0(B_V_data_1_sel_wr),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(dout_TREADY_int_regslice),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [0]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[100] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [100]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[100] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[101] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [101]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[101] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[102] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [102]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[102] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[103] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [103]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[103] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[104] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [104]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[104] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[105] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [105]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[105] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[106] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [106]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[106] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[107] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [107]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[107] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[108] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [108]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[108] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[109] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [109]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[109] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [10]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[110] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [110]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[110] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[111] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [111]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[111] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[112] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [112]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[112] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[113] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [113]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[113] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[114] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [114]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[114] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[115] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [115]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[115] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[116] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [116]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[116] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[117] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [117]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[117] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[118] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [118]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[118] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[119] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [119]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[119] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [11]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[120] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [120]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[120] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[121] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [121]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[121] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[122] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [122]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[122] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[123] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [123]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[123] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[124] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [124]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[124] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[125] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [125]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[125] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[126] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [126]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[126] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[127] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [127]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[127] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [12]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [13]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [14]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [15]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [16]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [17]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [18]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [19]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [1]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [20]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [21]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [22]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [23]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [24]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [25]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [26]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [27]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [28]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [29]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [2]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [30]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [31]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[32] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [32]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[33] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [33]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[34] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [34]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[35] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [35]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[36] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [36]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[37] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [37]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[38] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [38]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[39] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [39]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [3]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[40] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [40]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[41] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [41]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[42] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [42]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[43] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [43]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[44] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [44]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[45] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [45]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[46] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [46]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[47] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [47]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[48] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [48]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[49] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [49]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [4]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[50] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [50]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[51] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [51]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[52] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [52]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[53] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [53]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[54] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [54]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[55] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [55]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[56] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [56]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[57] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [57]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[58] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [58]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[58] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[59] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [59]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[59] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [5]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[60] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [60]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[60] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[61] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [61]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[61] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[62] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [62]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[62] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[63] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [63]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[63] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[64] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [64]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[64] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[65] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [65]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[65] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[66] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [66]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[66] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[67] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [67]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[67] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[68] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [68]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[68] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[69] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [69]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[69] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [6]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[70] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [70]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[70] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[71] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [71]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[71] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[72] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [72]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[72] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[73] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [73]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[73] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[74] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [74]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[74] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[75] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [75]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[75] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[76] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [76]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[76] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[77] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [77]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[77] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[78] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [78]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[78] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[79] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [79]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[79] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [7]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[80] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [80]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[80] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[81] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [81]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[81] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[82] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [82]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[82] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[83] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [83]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[83] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[84] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [84]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[84] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[85] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [85]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[85] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[86] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [86]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[86] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[87] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [87]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[87] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[88] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [88]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[88] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[89] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [89]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[89] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [8]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[90] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [90]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[90] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[91] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [91]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[91] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[92] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [92]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[92] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[93] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [93]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[93] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[94] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [94]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[94] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[95] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [95]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[95] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[96] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [96]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[96] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[97] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [97]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[97] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[98] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [98]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[98] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[99] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [99]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[99] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[127]_0 [9]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__2
       (.I0(dout_TREADY),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(B_V_data_1_sel_rd_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__2_n_0),
        .Q(B_V_data_1_sel_rd_reg_n_0),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__2
       (.I0(Q[2]),
        .I1(dout_TREADY_int_regslice),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__2_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ARESET));
  LUT5 #(
    .INIT(32'hA2AAA000)) 
    \B_V_data_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(dout_TREADY),
        .I2(Q[2]),
        .I3(dout_TREADY_int_regslice),
        .I4(\B_V_data_1_state_reg[0]_0 ),
        .O(\B_V_data_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hBBFB)) 
    \B_V_data_1_state[1]_i_1__0 
       (.I0(dout_TREADY),
        .I1(\B_V_data_1_state_reg[0]_0 ),
        .I2(dout_TREADY_int_regslice),
        .I3(Q[2]),
        .O(\B_V_data_1_state[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1_n_0 ),
        .Q(\B_V_data_1_state_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[1]_i_1__0_n_0 ),
        .Q(dout_TREADY_int_regslice),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hF2222222F222F222)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(Q[0]),
        .I1(vld_out),
        .I2(Q[3]),
        .I3(dout_TREADY_int_regslice),
        .I4(dout_TREADY),
        .I5(\B_V_data_1_state_reg[0]_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(dout_TREADY_int_regslice),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hACECACAC)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(dout_TREADY_int_regslice),
        .I3(dout_TREADY),
        .I4(\B_V_data_1_state_reg[0]_0 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h1101)) 
    buff0_reg_i_2
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(dout_TREADY_int_regslice),
        .O(\ap_CS_fsm_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[0]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[100]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[100] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[100] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[100]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[101]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[101] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[101] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[101]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[102]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[102] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[102] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[102]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[103]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[103] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[103] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[103]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[104]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[104] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[104] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[104]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[105]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[105] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[105] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[105]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[106]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[106] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[106] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[106]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[107]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[107] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[107] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[107]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[108]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[108] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[108] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[108]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[109]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[109] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[109] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[109]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[10]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[110]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[110] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[110] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[110]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[111]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[111] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[111] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[111]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[112]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[112] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[112] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[112]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[113]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[113] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[113] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[113]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[114]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[114] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[114] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[114]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[115]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[115] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[115] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[115]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[116]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[116] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[116] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[116]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[117]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[117] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[117] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[117]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[118]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[118] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[118] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[118]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[119]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[119] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[119] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[119]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[11]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[120]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[120] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[120] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[120]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[121]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[121] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[121] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[121]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[122]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[122] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[122] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[122]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[123]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[123] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[123] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[123]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[124]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[124] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[124] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[124]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[125]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[125] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[125] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[125]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[126]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[126] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[126] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[126]));
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[127]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[127] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[127] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[127]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[12]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[13]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[14]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[15]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[16]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[16] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[16] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[17]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[17] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[17] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[18]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[18] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[18] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[19]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[19] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[19] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[1]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[20]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[20] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[20] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[21]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[21] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[21] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[22]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[22] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[22] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[23]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[23] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[23] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[24]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[24] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[24] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[25]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[25] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[25] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[26]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[26] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[26] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[27]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[27] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[27] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[28]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[28] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[28] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[29]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[29] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[29] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[2]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[30]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[30] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[30] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[30]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[31]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[31] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[31] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[32]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[32] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[32] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[32]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[33]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[33] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[33] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[33]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[34]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[34] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[34] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[34]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[35]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[35] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[35] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[35]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[36]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[36] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[36] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[36]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[37]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[37] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[37] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[37]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[38]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[38] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[38] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[38]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[39]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[39] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[39] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[39]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[3]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[40]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[40] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[40] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[40]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[41]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[41] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[41] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[41]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[42]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[42] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[42] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[42]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[43]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[43] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[43] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[43]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[44]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[44] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[44] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[44]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[45]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[45] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[45] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[45]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[46]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[46] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[46] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[46]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[47]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[47] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[47] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[47]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[48]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[48] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[48] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[48]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[49]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[49] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[49] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[49]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[4]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[50]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[50] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[50] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[50]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[51]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[51] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[51] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[51]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[52]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[52] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[52] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[52]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[53]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[53] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[53] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[53]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[54]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[54] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[54] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[54]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[55]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[55] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[55] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[55]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[56]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[56] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[56] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[56]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[57]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[57] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[57] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[57]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[58]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[58] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[58] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[58]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[59]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[59] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[59] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[59]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[5]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[60]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[60] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[60] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[60]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[61]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[61] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[61] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[61]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[62]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[62] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[62] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[62]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[63]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[63] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[63] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[63]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[64]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[64] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[64] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[64]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[65]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[65] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[65] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[65]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[66]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[66] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[66] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[66]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[67]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[67] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[67] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[67]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[68]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[68] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[68] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[68]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[69]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[69] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[69] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[69]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[6]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[70]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[70] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[70] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[70]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[71]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[71] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[71] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[71]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[72]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[72] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[72] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[72]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[73]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[73] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[73] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[73]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[74]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[74] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[74] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[74]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[75]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[75] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[75] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[75]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[76]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[76] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[76] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[76]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[77]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[77] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[77] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[77]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[78]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[78] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[78] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[78]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[79]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[79] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[79] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[79]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[7]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[80]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[80] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[80] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[80]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[81]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[81] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[81] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[81]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[82]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[82] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[82] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[82]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[83]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[83] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[83] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[83]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[84]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[84] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[84] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[84]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[85]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[85] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[85] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[85]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[86]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[86] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[86] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[86]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[87]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[87] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[87] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[87]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[88]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[88] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[88] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[88]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[89]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[89] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[89] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[89]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[8]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[90]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[90] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[90] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[90]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[91]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[91] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[91] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[91]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[92]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[92] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[92] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[92]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[93]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[93] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[93] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[93]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[94]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[94] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[94] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[94]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[95]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[95] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[95] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[95]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[96]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[96] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[96] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[96]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[97]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[97] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[97] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[97]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[98]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[98] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[98] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[98]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[99]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[99] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[99] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[99]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TDATA[9]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TDATA[9]));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized1
   (D,
    ARESET,
    ap_clk,
    ap_rst_n,
    vld_out,
    Q,
    din_TVALID,
    din_TKEEP);
  output [15:0]D;
  input ARESET;
  input ap_clk;
  input ap_rst_n;
  input vld_out;
  input [0:0]Q;
  input din_TVALID;
  input [15:0]din_TKEEP;

  wire ARESET;
  wire B_V_data_1_load_B;
  wire \B_V_data_1_payload_A[15]_i_1_n_0 ;
  wire \B_V_data_1_payload_A_reg_n_0_[0] ;
  wire \B_V_data_1_payload_A_reg_n_0_[10] ;
  wire \B_V_data_1_payload_A_reg_n_0_[11] ;
  wire \B_V_data_1_payload_A_reg_n_0_[12] ;
  wire \B_V_data_1_payload_A_reg_n_0_[13] ;
  wire \B_V_data_1_payload_A_reg_n_0_[14] ;
  wire \B_V_data_1_payload_A_reg_n_0_[15] ;
  wire \B_V_data_1_payload_A_reg_n_0_[1] ;
  wire \B_V_data_1_payload_A_reg_n_0_[2] ;
  wire \B_V_data_1_payload_A_reg_n_0_[3] ;
  wire \B_V_data_1_payload_A_reg_n_0_[4] ;
  wire \B_V_data_1_payload_A_reg_n_0_[5] ;
  wire \B_V_data_1_payload_A_reg_n_0_[6] ;
  wire \B_V_data_1_payload_A_reg_n_0_[7] ;
  wire \B_V_data_1_payload_A_reg_n_0_[8] ;
  wire \B_V_data_1_payload_A_reg_n_0_[9] ;
  wire \B_V_data_1_payload_B_reg_n_0_[0] ;
  wire \B_V_data_1_payload_B_reg_n_0_[10] ;
  wire \B_V_data_1_payload_B_reg_n_0_[11] ;
  wire \B_V_data_1_payload_B_reg_n_0_[12] ;
  wire \B_V_data_1_payload_B_reg_n_0_[13] ;
  wire \B_V_data_1_payload_B_reg_n_0_[14] ;
  wire \B_V_data_1_payload_B_reg_n_0_[15] ;
  wire \B_V_data_1_payload_B_reg_n_0_[1] ;
  wire \B_V_data_1_payload_B_reg_n_0_[2] ;
  wire \B_V_data_1_payload_B_reg_n_0_[3] ;
  wire \B_V_data_1_payload_B_reg_n_0_[4] ;
  wire \B_V_data_1_payload_B_reg_n_0_[5] ;
  wire \B_V_data_1_payload_B_reg_n_0_[6] ;
  wire \B_V_data_1_payload_B_reg_n_0_[7] ;
  wire \B_V_data_1_payload_B_reg_n_0_[8] ;
  wire \B_V_data_1_payload_B_reg_n_0_[9] ;
  wire B_V_data_1_sel_rd_i_1__0_n_0;
  wire B_V_data_1_sel_rd_reg_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__0_n_0;
  wire \B_V_data_1_state[0]_i_1__4_n_0 ;
  wire \B_V_data_1_state[1]_i_1__3_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire [15:0]D;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire [15:0]din_TKEEP;
  wire din_TVALID;
  wire vld_out;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[15]_i_1 
       (.I0(\B_V_data_1_state_reg_n_0_[0] ),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(\B_V_data_1_payload_A[15]_i_1_n_0 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1_n_0 ),
        .D(din_TKEEP[0]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1_n_0 ),
        .D(din_TKEEP[10]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1_n_0 ),
        .D(din_TKEEP[11]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1_n_0 ),
        .D(din_TKEEP[12]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1_n_0 ),
        .D(din_TKEEP[13]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1_n_0 ),
        .D(din_TKEEP[14]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1_n_0 ),
        .D(din_TKEEP[15]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1_n_0 ),
        .D(din_TKEEP[1]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1_n_0 ),
        .D(din_TKEEP[2]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1_n_0 ),
        .D(din_TKEEP[3]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1_n_0 ),
        .D(din_TKEEP[4]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1_n_0 ),
        .D(din_TKEEP[5]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1_n_0 ),
        .D(din_TKEEP[6]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1_n_0 ),
        .D(din_TKEEP[7]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1_n_0 ),
        .D(din_TKEEP[8]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1_n_0 ),
        .D(din_TKEEP[9]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \B_V_data_1_payload_B[15]_i_1 
       (.I0(B_V_data_1_sel_wr),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TKEEP[0]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TKEEP[10]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TKEEP[11]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TKEEP[12]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TKEEP[13]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TKEEP[14]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TKEEP[15]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TKEEP[1]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TKEEP[2]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TKEEP[3]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TKEEP[4]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TKEEP[5]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TKEEP[6]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TKEEP[7]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TKEEP[8]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(din_TKEEP[9]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F80)) 
    B_V_data_1_sel_rd_i_1__0
       (.I0(Q),
        .I1(vld_out),
        .I2(\B_V_data_1_state_reg_n_0_[0] ),
        .I3(B_V_data_1_sel_rd_reg_n_0),
        .O(B_V_data_1_sel_rd_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__0_n_0),
        .Q(B_V_data_1_sel_rd_reg_n_0),
        .R(ARESET));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__0
       (.I0(din_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__0_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hAA2AAAAAAA000000)) 
    \B_V_data_1_state[0]_i_1__4 
       (.I0(ap_rst_n),
        .I1(vld_out),
        .I2(Q),
        .I3(din_TVALID),
        .I4(\B_V_data_1_state_reg_n_0_[1] ),
        .I5(\B_V_data_1_state_reg_n_0_[0] ),
        .O(\B_V_data_1_state[0]_i_1__4_n_0 ));
  LUT5 #(
    .INIT(32'h8F8FFF8F)) 
    \B_V_data_1_state[1]_i_1__3 
       (.I0(Q),
        .I1(vld_out),
        .I2(\B_V_data_1_state_reg_n_0_[0] ),
        .I3(\B_V_data_1_state_reg_n_0_[1] ),
        .I4(din_TVALID),
        .O(\B_V_data_1_state[1]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__4_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[1]_i_1__3_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pkt_keep_V_reg_108[0]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pkt_keep_V_reg_108[10]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pkt_keep_V_reg_108[11]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pkt_keep_V_reg_108[12]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pkt_keep_V_reg_108[13]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pkt_keep_V_reg_108[14]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pkt_keep_V_reg_108[15]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pkt_keep_V_reg_108[1]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pkt_keep_V_reg_108[2]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pkt_keep_V_reg_108[3]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pkt_keep_V_reg_108[4]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pkt_keep_V_reg_108[5]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pkt_keep_V_reg_108[6]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pkt_keep_V_reg_108[7]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pkt_keep_V_reg_108[8]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pkt_keep_V_reg_108[9]_i_1 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(D[9]));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized1_1
   (dout_TKEEP,
    ARESET,
    ap_clk,
    ap_rst_n,
    dout_TREADY,
    Q,
    dout_TREADY_int_regslice,
    \B_V_data_1_payload_A_reg[15]_0 );
  output [15:0]dout_TKEEP;
  input ARESET;
  input ap_clk;
  input ap_rst_n;
  input dout_TREADY;
  input [0:0]Q;
  input dout_TREADY_int_regslice;
  input [15:0]\B_V_data_1_payload_A_reg[15]_0 ;

  wire ARESET;
  wire B_V_data_1_load_B;
  wire \B_V_data_1_payload_A[15]_i_1__0_n_0 ;
  wire [15:0]\B_V_data_1_payload_A_reg[15]_0 ;
  wire \B_V_data_1_payload_A_reg_n_0_[0] ;
  wire \B_V_data_1_payload_A_reg_n_0_[10] ;
  wire \B_V_data_1_payload_A_reg_n_0_[11] ;
  wire \B_V_data_1_payload_A_reg_n_0_[12] ;
  wire \B_V_data_1_payload_A_reg_n_0_[13] ;
  wire \B_V_data_1_payload_A_reg_n_0_[14] ;
  wire \B_V_data_1_payload_A_reg_n_0_[15] ;
  wire \B_V_data_1_payload_A_reg_n_0_[1] ;
  wire \B_V_data_1_payload_A_reg_n_0_[2] ;
  wire \B_V_data_1_payload_A_reg_n_0_[3] ;
  wire \B_V_data_1_payload_A_reg_n_0_[4] ;
  wire \B_V_data_1_payload_A_reg_n_0_[5] ;
  wire \B_V_data_1_payload_A_reg_n_0_[6] ;
  wire \B_V_data_1_payload_A_reg_n_0_[7] ;
  wire \B_V_data_1_payload_A_reg_n_0_[8] ;
  wire \B_V_data_1_payload_A_reg_n_0_[9] ;
  wire \B_V_data_1_payload_B_reg_n_0_[0] ;
  wire \B_V_data_1_payload_B_reg_n_0_[10] ;
  wire \B_V_data_1_payload_B_reg_n_0_[11] ;
  wire \B_V_data_1_payload_B_reg_n_0_[12] ;
  wire \B_V_data_1_payload_B_reg_n_0_[13] ;
  wire \B_V_data_1_payload_B_reg_n_0_[14] ;
  wire \B_V_data_1_payload_B_reg_n_0_[15] ;
  wire \B_V_data_1_payload_B_reg_n_0_[1] ;
  wire \B_V_data_1_payload_B_reg_n_0_[2] ;
  wire \B_V_data_1_payload_B_reg_n_0_[3] ;
  wire \B_V_data_1_payload_B_reg_n_0_[4] ;
  wire \B_V_data_1_payload_B_reg_n_0_[5] ;
  wire \B_V_data_1_payload_B_reg_n_0_[6] ;
  wire \B_V_data_1_payload_B_reg_n_0_[7] ;
  wire \B_V_data_1_payload_B_reg_n_0_[8] ;
  wire \B_V_data_1_payload_B_reg_n_0_[9] ;
  wire B_V_data_1_sel_rd_i_1__3_n_0;
  wire B_V_data_1_sel_rd_reg_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__3_n_0;
  wire \B_V_data_1_state[0]_i_1__1_n_0 ;
  wire \B_V_data_1_state[1]_i_1__2_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire [15:0]dout_TKEEP;
  wire dout_TREADY;
  wire dout_TREADY_int_regslice;

  LUT3 #(
    .INIT(8'h0D)) 
    \B_V_data_1_payload_A[15]_i_1__0 
       (.I0(\B_V_data_1_state_reg_n_0_[0] ),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(\B_V_data_1_payload_A[15]_i_1__0_n_0 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[15]_0 [0]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[15]_0 [10]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[15]_0 [11]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[15]_0 [12]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[15]_0 [13]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[15]_0 [14]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[15]_0 [15]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[15]_0 [1]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[15]_0 [2]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[15]_0 [3]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[15]_0 [4]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[15]_0 [5]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[15]_0 [6]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[15]_0 [7]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[15]_0 [8]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(\B_V_data_1_payload_A[15]_i_1__0_n_0 ),
        .D(\B_V_data_1_payload_A_reg[15]_0 [9]),
        .Q(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \B_V_data_1_payload_B[15]_i_1__0 
       (.I0(B_V_data_1_sel_wr),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .O(B_V_data_1_load_B));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[15]_0 [0]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[15]_0 [10]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[15]_0 [11]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[15]_0 [12]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[15]_0 [13]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[15]_0 [14]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[15]_0 [15]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[15]_0 [1]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[15]_0 [2]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[15]_0 [3]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[15]_0 [4]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[15]_0 [5]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[15]_0 [6]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[15]_0 [7]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[15]_0 [8]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \B_V_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(B_V_data_1_load_B),
        .D(\B_V_data_1_payload_A_reg[15]_0 [9]),
        .Q(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__3
       (.I0(dout_TREADY),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(B_V_data_1_sel_rd_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__3_n_0),
        .Q(B_V_data_1_sel_rd_reg_n_0),
        .R(ARESET));
  LUT4 #(
    .INIT(16'h7F80)) 
    B_V_data_1_sel_wr_i_1__3
       (.I0(Q),
        .I1(dout_TREADY_int_regslice),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__3_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hA222AAAAA0000000)) 
    \B_V_data_1_state[0]_i_1__1 
       (.I0(ap_rst_n),
        .I1(dout_TREADY),
        .I2(Q),
        .I3(dout_TREADY_int_regslice),
        .I4(\B_V_data_1_state_reg_n_0_[1] ),
        .I5(\B_V_data_1_state_reg_n_0_[0] ),
        .O(\B_V_data_1_state[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hBBFBFBFB)) 
    \B_V_data_1_state[1]_i_1__2 
       (.I0(dout_TREADY),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(dout_TREADY_int_regslice),
        .I4(Q),
        .O(\B_V_data_1_state[1]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__1_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[1]_i_1__2_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TKEEP[0]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[0] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[0] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TKEEP[0]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TKEEP[10]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[10] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[10] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TKEEP[10]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TKEEP[11]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[11] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[11] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TKEEP[11]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TKEEP[12]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[12] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[12] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TKEEP[12]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TKEEP[13]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[13] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[13] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TKEEP[13]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TKEEP[14]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[14] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[14] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TKEEP[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TKEEP[15]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[15] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[15] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TKEEP[15]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TKEEP[1]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[1] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TKEEP[1]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TKEEP[2]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[2] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[2] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TKEEP[2]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TKEEP[3]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[3] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[3] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TKEEP[3]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TKEEP[4]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[4] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[4] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TKEEP[4]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TKEEP[5]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[5] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[5] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TKEEP[5]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TKEEP[6]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[6] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[6] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TKEEP[6]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TKEEP[7]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[7] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[7] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TKEEP[7]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TKEEP[8]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[8] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[8] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TKEEP[8]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_TKEEP[9]_INST_0 
       (.I0(\B_V_data_1_payload_B_reg_n_0_[9] ),
        .I1(\B_V_data_1_payload_A_reg_n_0_[9] ),
        .I2(B_V_data_1_sel_rd_reg_n_0),
        .O(dout_TKEEP[9]));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized3
   (din_TLAST_int_regslice,
    ARESET,
    ap_clk,
    ap_rst_n,
    vld_out,
    Q,
    din_TVALID,
    din_TLAST);
  output din_TLAST_int_regslice;
  input ARESET;
  input ap_clk;
  input ap_rst_n;
  input vld_out;
  input [0:0]Q;
  input din_TVALID;
  input [0:0]din_TLAST;

  wire ARESET;
  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1_n_0 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1_n_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__1_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__1_n_0;
  wire \B_V_data_1_state[0]_i_1__3_n_0 ;
  wire \B_V_data_1_state[1]_i_1__4_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]din_TLAST;
  wire din_TLAST_int_regslice;
  wire din_TVALID;
  wire vld_out;

  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \B_V_data_1_payload_A[0]_i_1 
       (.I0(din_TLAST),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1_n_0 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1_n_0 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBFB8808)) 
    \B_V_data_1_payload_B[0]_i_1 
       (.I0(din_TLAST),
        .I1(B_V_data_1_sel_wr),
        .I2(\B_V_data_1_state_reg_n_0_[0] ),
        .I3(\B_V_data_1_state_reg_n_0_[1] ),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1_n_0 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1_n_0 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F80)) 
    B_V_data_1_sel_rd_i_1__1
       (.I0(Q),
        .I1(vld_out),
        .I2(\B_V_data_1_state_reg_n_0_[0] ),
        .I3(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__1_n_0),
        .Q(B_V_data_1_sel),
        .R(ARESET));
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_wr_i_1__1
       (.I0(din_TVALID),
        .I1(\B_V_data_1_state_reg_n_0_[1] ),
        .I2(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__1_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hAA2AAAAAAA000000)) 
    \B_V_data_1_state[0]_i_1__3 
       (.I0(ap_rst_n),
        .I1(vld_out),
        .I2(Q),
        .I3(din_TVALID),
        .I4(\B_V_data_1_state_reg_n_0_[1] ),
        .I5(\B_V_data_1_state_reg_n_0_[0] ),
        .O(\B_V_data_1_state[0]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h8F8FFF8F)) 
    \B_V_data_1_state[1]_i_1__4 
       (.I0(Q),
        .I1(vld_out),
        .I2(\B_V_data_1_state_reg_n_0_[0] ),
        .I3(\B_V_data_1_state_reg_n_0_[1] ),
        .I4(din_TVALID),
        .O(\B_V_data_1_state[1]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__3_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[1]_i_1__4_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ARESET));
  LUT3 #(
    .INIT(8'hB8)) 
    \pkt_last_V_reg_113[0]_i_1 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(din_TLAST_int_regslice));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both__parameterized3_2
   (dout_TLAST,
    ARESET,
    ap_clk,
    ap_rst_n,
    dout_TREADY,
    Q,
    dout_TREADY_int_regslice,
    pkt_last_V_reg_113);
  output [0:0]dout_TLAST;
  input ARESET;
  input ap_clk;
  input ap_rst_n;
  input dout_TREADY;
  input [0:0]Q;
  input dout_TREADY_int_regslice;
  input pkt_last_V_reg_113;

  wire ARESET;
  wire B_V_data_1_payload_A;
  wire \B_V_data_1_payload_A[0]_i_1__0_n_0 ;
  wire B_V_data_1_payload_B;
  wire \B_V_data_1_payload_B[0]_i_1__0_n_0 ;
  wire B_V_data_1_sel;
  wire B_V_data_1_sel_rd_i_1__4_n_0;
  wire B_V_data_1_sel_wr;
  wire B_V_data_1_sel_wr_i_1__4_n_0;
  wire \B_V_data_1_state[0]_i_1__0_n_0 ;
  wire \B_V_data_1_state[1]_i_1__1_n_0 ;
  wire \B_V_data_1_state_reg_n_0_[0] ;
  wire \B_V_data_1_state_reg_n_0_[1] ;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]dout_TLAST;
  wire dout_TREADY;
  wire dout_TREADY_int_regslice;
  wire pkt_last_V_reg_113;

  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \B_V_data_1_payload_A[0]_i_1__0 
       (.I0(pkt_last_V_reg_113),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .I4(B_V_data_1_payload_A),
        .O(\B_V_data_1_payload_A[0]_i_1__0_n_0 ));
  FDRE \B_V_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_A[0]_i_1__0_n_0 ),
        .Q(B_V_data_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBFB8808)) 
    \B_V_data_1_payload_B[0]_i_1__0 
       (.I0(pkt_last_V_reg_113),
        .I1(B_V_data_1_sel_wr),
        .I2(\B_V_data_1_state_reg_n_0_[0] ),
        .I3(\B_V_data_1_state_reg_n_0_[1] ),
        .I4(B_V_data_1_payload_B),
        .O(\B_V_data_1_payload_B[0]_i_1__0_n_0 ));
  FDRE \B_V_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_payload_B[0]_i_1__0_n_0 ),
        .Q(B_V_data_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h78)) 
    B_V_data_1_sel_rd_i_1__4
       (.I0(dout_TREADY),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(B_V_data_1_sel),
        .O(B_V_data_1_sel_rd_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    B_V_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_rd_i_1__4_n_0),
        .Q(B_V_data_1_sel),
        .R(ARESET));
  LUT4 #(
    .INIT(16'h7F80)) 
    B_V_data_1_sel_wr_i_1__4
       (.I0(Q),
        .I1(dout_TREADY_int_regslice),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(B_V_data_1_sel_wr),
        .O(B_V_data_1_sel_wr_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    B_V_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(B_V_data_1_sel_wr_i_1__4_n_0),
        .Q(B_V_data_1_sel_wr),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hA222AAAAA0000000)) 
    \B_V_data_1_state[0]_i_1__0 
       (.I0(ap_rst_n),
        .I1(dout_TREADY),
        .I2(Q),
        .I3(dout_TREADY_int_regslice),
        .I4(\B_V_data_1_state_reg_n_0_[1] ),
        .I5(\B_V_data_1_state_reg_n_0_[0] ),
        .O(\B_V_data_1_state[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hBBFBFBFB)) 
    \B_V_data_1_state[1]_i_1__1 
       (.I0(dout_TREADY),
        .I1(\B_V_data_1_state_reg_n_0_[0] ),
        .I2(\B_V_data_1_state_reg_n_0_[1] ),
        .I3(dout_TREADY_int_regslice),
        .I4(Q),
        .O(\B_V_data_1_state[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[0]_i_1__0_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \B_V_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\B_V_data_1_state[1]_i_1__1_n_0 ),
        .Q(\B_V_data_1_state_reg_n_0_[1] ),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout_TLAST[0]_INST_0 
       (.I0(B_V_data_1_payload_B),
        .I1(B_V_data_1_sel),
        .I2(B_V_data_1_payload_A),
        .O(dout_TLAST));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
