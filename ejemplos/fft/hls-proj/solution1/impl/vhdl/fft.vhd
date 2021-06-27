-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fft is
generic (
    C_S_AXI_CONTROL_ADDR_WIDTH : INTEGER := 5;
    C_S_AXI_CONTROL_DATA_WIDTH : INTEGER := 32 );
port (
    s_axi_control_AWVALID : IN STD_LOGIC;
    s_axi_control_AWREADY : OUT STD_LOGIC;
    s_axi_control_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_ADDR_WIDTH-1 downto 0);
    s_axi_control_WVALID : IN STD_LOGIC;
    s_axi_control_WREADY : OUT STD_LOGIC;
    s_axi_control_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH-1 downto 0);
    s_axi_control_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH/8-1 downto 0);
    s_axi_control_ARVALID : IN STD_LOGIC;
    s_axi_control_ARREADY : OUT STD_LOGIC;
    s_axi_control_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_ADDR_WIDTH-1 downto 0);
    s_axi_control_RVALID : OUT STD_LOGIC;
    s_axi_control_RREADY : IN STD_LOGIC;
    s_axi_control_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH-1 downto 0);
    s_axi_control_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_control_BVALID : OUT STD_LOGIC;
    s_axi_control_BREADY : IN STD_LOGIC;
    s_axi_control_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    real_in_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
    real_in_TKEEP : IN STD_LOGIC_VECTOR (7 downto 0);
    real_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    imag_in_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
    imag_in_TKEEP : IN STD_LOGIC_VECTOR (7 downto 0);
    imag_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    real_out_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
    real_out_TKEEP : OUT STD_LOGIC_VECTOR (7 downto 0);
    real_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    imag_out_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
    imag_out_TKEEP : OUT STD_LOGIC_VECTOR (7 downto 0);
    imag_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    real_in_TVALID : IN STD_LOGIC;
    real_in_TREADY : OUT STD_LOGIC;
    imag_in_TVALID : IN STD_LOGIC;
    imag_in_TREADY : OUT STD_LOGIC;
    real_out_TVALID : OUT STD_LOGIC;
    real_out_TREADY : IN STD_LOGIC;
    imag_out_TVALID : OUT STD_LOGIC;
    imag_out_TREADY : IN STD_LOGIC );
end;


architecture behav of fft is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "fft_fft,hls_ip_2020_1_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=23.017179,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=892,HLS_SYN_LUT=1739,HLS_VERSION=2020_1_1}";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant C_S_AXI_WSTRB_WIDTH : INTEGER range 63 downto 0 := 4;
    constant C_S_AXI_ADDR_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal ap_rst_n_inv : STD_LOGIC;
    signal size : STD_LOGIC_VECTOR (31 downto 0);
    signal packComplex_U0_ap_start : STD_LOGIC;
    signal packComplex_U0_ap_done : STD_LOGIC;
    signal packComplex_U0_ap_continue : STD_LOGIC;
    signal packComplex_U0_ap_idle : STD_LOGIC;
    signal packComplex_U0_ap_ready : STD_LOGIC;
    signal packComplex_U0_start_out : STD_LOGIC;
    signal packComplex_U0_start_write : STD_LOGIC;
    signal packComplex_U0_dst_din : STD_LOGIC_VECTOR (127 downto 0);
    signal packComplex_U0_dst_write : STD_LOGIC;
    signal packComplex_U0_eos_din : STD_LOGIC_VECTOR (0 downto 0);
    signal packComplex_U0_eos_write : STD_LOGIC;
    signal packComplex_U0_real_in_TREADY : STD_LOGIC;
    signal packComplex_U0_imag_in_TREADY : STD_LOGIC;
    signal unpackComplex_U0_ap_start : STD_LOGIC;
    signal unpackComplex_U0_ap_done : STD_LOGIC;
    signal unpackComplex_U0_ap_continue : STD_LOGIC;
    signal unpackComplex_U0_ap_idle : STD_LOGIC;
    signal unpackComplex_U0_ap_ready : STD_LOGIC;
    signal unpackComplex_U0_dst_read : STD_LOGIC;
    signal unpackComplex_U0_eos_read : STD_LOGIC;
    signal unpackComplex_U0_real_out_TDATA : STD_LOGIC_VECTOR (63 downto 0);
    signal unpackComplex_U0_real_out_TVALID : STD_LOGIC;
    signal unpackComplex_U0_real_out_TKEEP : STD_LOGIC_VECTOR (7 downto 0);
    signal unpackComplex_U0_real_out_TLAST : STD_LOGIC_VECTOR (0 downto 0);
    signal unpackComplex_U0_imag_out_TDATA : STD_LOGIC_VECTOR (63 downto 0);
    signal unpackComplex_U0_imag_out_TVALID : STD_LOGIC;
    signal unpackComplex_U0_imag_out_TKEEP : STD_LOGIC_VECTOR (7 downto 0);
    signal unpackComplex_U0_imag_out_TLAST : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sync_continue : STD_LOGIC;
    signal complex_stream_full_n : STD_LOGIC;
    signal complex_stream_dout : STD_LOGIC_VECTOR (127 downto 0);
    signal complex_stream_empty_n : STD_LOGIC;
    signal eos_full_n : STD_LOGIC;
    signal eos_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal eos_empty_n : STD_LOGIC;
    signal start_for_unpackComplex_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_unpackComplex_U0_full_n : STD_LOGIC;
    signal start_for_unpackComplex_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_unpackComplex_U0_empty_n : STD_LOGIC;
    signal unpackComplex_U0_start_full_n : STD_LOGIC;
    signal unpackComplex_U0_start_write : STD_LOGIC;

    component fft_packComplex IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        dst_din : OUT STD_LOGIC_VECTOR (127 downto 0);
        dst_full_n : IN STD_LOGIC;
        dst_write : OUT STD_LOGIC;
        eos_din : OUT STD_LOGIC_VECTOR (0 downto 0);
        eos_full_n : IN STD_LOGIC;
        eos_write : OUT STD_LOGIC;
        real_in_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
        real_in_TVALID : IN STD_LOGIC;
        real_in_TREADY : OUT STD_LOGIC;
        real_in_TKEEP : IN STD_LOGIC_VECTOR (7 downto 0);
        real_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
        imag_in_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
        imag_in_TVALID : IN STD_LOGIC;
        imag_in_TREADY : OUT STD_LOGIC;
        imag_in_TKEEP : IN STD_LOGIC_VECTOR (7 downto 0);
        imag_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component fft_unpackComplex IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        dst_dout : IN STD_LOGIC_VECTOR (127 downto 0);
        dst_empty_n : IN STD_LOGIC;
        dst_read : OUT STD_LOGIC;
        eos_dout : IN STD_LOGIC_VECTOR (0 downto 0);
        eos_empty_n : IN STD_LOGIC;
        eos_read : OUT STD_LOGIC;
        real_out_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
        real_out_TVALID : OUT STD_LOGIC;
        real_out_TREADY : IN STD_LOGIC;
        real_out_TKEEP : OUT STD_LOGIC_VECTOR (7 downto 0);
        real_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
        imag_out_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
        imag_out_TVALID : OUT STD_LOGIC;
        imag_out_TREADY : IN STD_LOGIC;
        imag_out_TKEEP : OUT STD_LOGIC_VECTOR (7 downto 0);
        imag_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component fft_fifo_w128_d2_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (127 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (127 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fft_fifo_w1_d64_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fft_start_for_unpackComplex_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fft_control_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        size : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    control_s_axi_U : component fft_control_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_CONTROL_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_CONTROL_DATA_WIDTH)
    port map (
        AWVALID => s_axi_control_AWVALID,
        AWREADY => s_axi_control_AWREADY,
        AWADDR => s_axi_control_AWADDR,
        WVALID => s_axi_control_WVALID,
        WREADY => s_axi_control_WREADY,
        WDATA => s_axi_control_WDATA,
        WSTRB => s_axi_control_WSTRB,
        ARVALID => s_axi_control_ARVALID,
        ARREADY => s_axi_control_ARREADY,
        ARADDR => s_axi_control_ARADDR,
        RVALID => s_axi_control_RVALID,
        RREADY => s_axi_control_RREADY,
        RDATA => s_axi_control_RDATA,
        RRESP => s_axi_control_RRESP,
        BVALID => s_axi_control_BVALID,
        BREADY => s_axi_control_BREADY,
        BRESP => s_axi_control_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        size => size);

    packComplex_U0 : component fft_packComplex
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => packComplex_U0_ap_start,
        start_full_n => start_for_unpackComplex_U0_full_n,
        ap_done => packComplex_U0_ap_done,
        ap_continue => packComplex_U0_ap_continue,
        ap_idle => packComplex_U0_ap_idle,
        ap_ready => packComplex_U0_ap_ready,
        start_out => packComplex_U0_start_out,
        start_write => packComplex_U0_start_write,
        dst_din => packComplex_U0_dst_din,
        dst_full_n => complex_stream_full_n,
        dst_write => packComplex_U0_dst_write,
        eos_din => packComplex_U0_eos_din,
        eos_full_n => eos_full_n,
        eos_write => packComplex_U0_eos_write,
        real_in_TDATA => real_in_TDATA,
        real_in_TVALID => real_in_TVALID,
        real_in_TREADY => packComplex_U0_real_in_TREADY,
        real_in_TKEEP => real_in_TKEEP,
        real_in_TLAST => real_in_TLAST,
        imag_in_TDATA => imag_in_TDATA,
        imag_in_TVALID => imag_in_TVALID,
        imag_in_TREADY => packComplex_U0_imag_in_TREADY,
        imag_in_TKEEP => imag_in_TKEEP,
        imag_in_TLAST => imag_in_TLAST);

    unpackComplex_U0 : component fft_unpackComplex
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => unpackComplex_U0_ap_start,
        ap_done => unpackComplex_U0_ap_done,
        ap_continue => unpackComplex_U0_ap_continue,
        ap_idle => unpackComplex_U0_ap_idle,
        ap_ready => unpackComplex_U0_ap_ready,
        dst_dout => complex_stream_dout,
        dst_empty_n => complex_stream_empty_n,
        dst_read => unpackComplex_U0_dst_read,
        eos_dout => eos_dout,
        eos_empty_n => eos_empty_n,
        eos_read => unpackComplex_U0_eos_read,
        real_out_TDATA => unpackComplex_U0_real_out_TDATA,
        real_out_TVALID => unpackComplex_U0_real_out_TVALID,
        real_out_TREADY => real_out_TREADY,
        real_out_TKEEP => unpackComplex_U0_real_out_TKEEP,
        real_out_TLAST => unpackComplex_U0_real_out_TLAST,
        imag_out_TDATA => unpackComplex_U0_imag_out_TDATA,
        imag_out_TVALID => unpackComplex_U0_imag_out_TVALID,
        imag_out_TREADY => imag_out_TREADY,
        imag_out_TKEEP => unpackComplex_U0_imag_out_TKEEP,
        imag_out_TLAST => unpackComplex_U0_imag_out_TLAST);

    complex_stream_U : component fft_fifo_w128_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => packComplex_U0_dst_din,
        if_full_n => complex_stream_full_n,
        if_write => packComplex_U0_dst_write,
        if_dout => complex_stream_dout,
        if_empty_n => complex_stream_empty_n,
        if_read => unpackComplex_U0_dst_read);

    eos_U : component fft_fifo_w1_d64_S
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => packComplex_U0_eos_din,
        if_full_n => eos_full_n,
        if_write => packComplex_U0_eos_write,
        if_dout => eos_dout,
        if_empty_n => eos_empty_n,
        if_read => unpackComplex_U0_eos_read);

    start_for_unpackComplex_U0_U : component fft_start_for_unpackComplex_U0
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_unpackComplex_U0_din,
        if_full_n => start_for_unpackComplex_U0_full_n,
        if_write => packComplex_U0_start_write,
        if_dout => start_for_unpackComplex_U0_dout,
        if_empty_n => start_for_unpackComplex_U0_empty_n,
        if_read => unpackComplex_U0_ap_ready);





    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    ap_sync_continue <= ap_const_logic_0;
    imag_in_TREADY <= packComplex_U0_imag_in_TREADY;
    imag_out_TDATA <= unpackComplex_U0_imag_out_TDATA;
    imag_out_TKEEP <= unpackComplex_U0_imag_out_TKEEP;
    imag_out_TLAST <= unpackComplex_U0_imag_out_TLAST;
    imag_out_TVALID <= unpackComplex_U0_imag_out_TVALID;
    packComplex_U0_ap_continue <= ap_const_logic_1;
    packComplex_U0_ap_start <= ap_const_logic_1;
    real_in_TREADY <= packComplex_U0_real_in_TREADY;
    real_out_TDATA <= unpackComplex_U0_real_out_TDATA;
    real_out_TKEEP <= unpackComplex_U0_real_out_TKEEP;
    real_out_TLAST <= unpackComplex_U0_real_out_TLAST;
    real_out_TVALID <= unpackComplex_U0_real_out_TVALID;
    start_for_unpackComplex_U0_din <= (0=>ap_const_logic_1, others=>'-');
    unpackComplex_U0_ap_continue <= ap_const_logic_1;
    unpackComplex_U0_ap_start <= start_for_unpackComplex_U0_empty_n;
    unpackComplex_U0_start_full_n <= ap_const_logic_1;
    unpackComplex_U0_start_write <= ap_const_logic_0;
end behav;