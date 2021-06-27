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
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    din_TDATA : IN STD_LOGIC_VECTOR (127 downto 0);
    din_TVALID : IN STD_LOGIC;
    din_TREADY : OUT STD_LOGIC;
    din_TKEEP : IN STD_LOGIC_VECTOR (15 downto 0);
    din_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    dout_TDATA : OUT STD_LOGIC_VECTOR (127 downto 0);
    dout_TVALID : OUT STD_LOGIC;
    dout_TREADY : IN STD_LOGIC;
    dout_TKEEP : OUT STD_LOGIC_VECTOR (15 downto 0);
    dout_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
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
    s_axi_control_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0) );
end;


architecture behav of fft is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "fft_fft,hls_ip_2020_1_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.978000,HLS_SYN_LAT=6,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=693,HLS_SYN_LUT=419,HLS_VERSION=2020_1_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_rst_n_inv : STD_LOGIC;
    signal size : STD_LOGIC_VECTOR (31 downto 0);
    signal din_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal dout_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal size_read_reg_98 : STD_LOGIC_VECTOR (31 downto 0);
    signal pkt_data_V_reg_103 : STD_LOGIC_VECTOR (127 downto 0);
    signal pkt_keep_V_reg_108 : STD_LOGIC_VECTOR (15 downto 0);
    signal pkt_last_V_reg_113 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_fu_92_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal grp_fu_92_ce : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);
    signal regslice_both_dout_V_data_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_din_V_data_V_U_apdone_blk : STD_LOGIC;
    signal din_TDATA_int_regslice : STD_LOGIC_VECTOR (127 downto 0);
    signal din_TVALID_int_regslice : STD_LOGIC;
    signal din_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_din_V_data_V_U_ack_in : STD_LOGIC;
    signal regslice_both_din_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal din_TKEEP_int_regslice : STD_LOGIC_VECTOR (15 downto 0);
    signal regslice_both_din_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_din_V_keep_V_U_ack_in : STD_LOGIC;
    signal regslice_both_din_V_last_V_U_apdone_blk : STD_LOGIC;
    signal din_TLAST_int_regslice : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_din_V_last_V_U_vld_out : STD_LOGIC;
    signal regslice_both_din_V_last_V_U_ack_in : STD_LOGIC;
    signal dout_TVALID_int_regslice : STD_LOGIC;
    signal dout_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_dout_V_data_V_U_vld_out : STD_LOGIC;
    signal regslice_both_dout_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_dout_V_keep_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_dout_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_dout_V_last_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_dout_V_last_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_dout_V_last_V_U_vld_out : STD_LOGIC;

    component fft_mul_128s_32s_128_5_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (127 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (127 downto 0) );
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


    component regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
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

    mul_128s_32s_128_5_1_U1 : component fft_mul_128s_32s_128_5_1
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 128,
        din1_WIDTH => 32,
        dout_WIDTH => 128)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        din0 => pkt_data_V_reg_103,
        din1 => size_read_reg_98,
        ce => grp_fu_92_ce,
        dout => grp_fu_92_p2);

    regslice_both_din_V_data_V_U : component regslice_both
    generic map (
        DataWidth => 128)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => din_TDATA,
        vld_in => din_TVALID,
        ack_in => regslice_both_din_V_data_V_U_ack_in,
        data_out => din_TDATA_int_regslice,
        vld_out => din_TVALID_int_regslice,
        ack_out => din_TREADY_int_regslice,
        apdone_blk => regslice_both_din_V_data_V_U_apdone_blk);

    regslice_both_din_V_keep_V_U : component regslice_both
    generic map (
        DataWidth => 16)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => din_TKEEP,
        vld_in => din_TVALID,
        ack_in => regslice_both_din_V_keep_V_U_ack_in,
        data_out => din_TKEEP_int_regslice,
        vld_out => regslice_both_din_V_keep_V_U_vld_out,
        ack_out => din_TREADY_int_regslice,
        apdone_blk => regslice_both_din_V_keep_V_U_apdone_blk);

    regslice_both_din_V_last_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => din_TLAST,
        vld_in => din_TVALID,
        ack_in => regslice_both_din_V_last_V_U_ack_in,
        data_out => din_TLAST_int_regslice,
        vld_out => regslice_both_din_V_last_V_U_vld_out,
        ack_out => din_TREADY_int_regslice,
        apdone_blk => regslice_both_din_V_last_V_U_apdone_blk);

    regslice_both_dout_V_data_V_U : component regslice_both
    generic map (
        DataWidth => 128)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => grp_fu_92_p2,
        vld_in => dout_TVALID_int_regslice,
        ack_in => dout_TREADY_int_regslice,
        data_out => dout_TDATA,
        vld_out => regslice_both_dout_V_data_V_U_vld_out,
        ack_out => dout_TREADY,
        apdone_blk => regslice_both_dout_V_data_V_U_apdone_blk);

    regslice_both_dout_V_keep_V_U : component regslice_both
    generic map (
        DataWidth => 16)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => pkt_keep_V_reg_108,
        vld_in => dout_TVALID_int_regslice,
        ack_in => regslice_both_dout_V_keep_V_U_ack_in_dummy,
        data_out => dout_TKEEP,
        vld_out => regslice_both_dout_V_keep_V_U_vld_out,
        ack_out => dout_TREADY,
        apdone_blk => regslice_both_dout_V_keep_V_U_apdone_blk);

    regslice_both_dout_V_last_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => pkt_last_V_reg_113,
        vld_in => dout_TVALID_int_regslice,
        ack_in => regslice_both_dout_V_last_V_U_ack_in_dummy,
        data_out => dout_TLAST,
        vld_out => regslice_both_dout_V_last_V_U_vld_out,
        ack_out => dout_TREADY,
        apdone_blk => regslice_both_dout_V_last_V_U_apdone_blk);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (din_TVALID_int_regslice = ap_const_logic_1))) then
                pkt_data_V_reg_103 <= din_TDATA_int_regslice;
                pkt_keep_V_reg_108 <= din_TKEEP_int_regslice;
                pkt_last_V_reg_113 <= din_TLAST_int_regslice;
                size_read_reg_98 <= size;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state6, ap_CS_fsm_state7, regslice_both_dout_V_data_V_U_apdone_blk, din_TVALID_int_regslice, dout_TREADY_int_regslice)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (din_TVALID_int_regslice = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (dout_TREADY_int_regslice = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state7 => 
                if ((not(((dout_TREADY_int_regslice = ap_const_logic_0) or (regslice_both_dout_V_data_V_U_apdone_blk = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;


    din_TDATA_blk_n_assign_proc : process(ap_CS_fsm_state1, din_TVALID_int_regslice)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            din_TDATA_blk_n <= din_TVALID_int_regslice;
        else 
            din_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    din_TREADY <= regslice_both_din_V_data_V_U_ack_in;

    din_TREADY_int_regslice_assign_proc : process(ap_CS_fsm_state1, din_TVALID_int_regslice)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (din_TVALID_int_regslice = ap_const_logic_1))) then 
            din_TREADY_int_regslice <= ap_const_logic_1;
        else 
            din_TREADY_int_regslice <= ap_const_logic_0;
        end if; 
    end process;


    dout_TDATA_blk_n_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state7, dout_TREADY_int_regslice)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            dout_TDATA_blk_n <= dout_TREADY_int_regslice;
        else 
            dout_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dout_TVALID <= regslice_both_dout_V_data_V_U_vld_out;

    dout_TVALID_int_regslice_assign_proc : process(ap_CS_fsm_state6, dout_TREADY_int_regslice)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (dout_TREADY_int_regslice = ap_const_logic_1))) then 
            dout_TVALID_int_regslice <= ap_const_logic_1;
        else 
            dout_TVALID_int_regslice <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_92_ce_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state6, ap_CS_fsm_state7, dout_TREADY_int_regslice)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state1) or ((ap_const_logic_1 = ap_CS_fsm_state6) and (dout_TREADY_int_regslice = ap_const_logic_0)))) then 
            grp_fu_92_ce <= ap_const_logic_0;
        else 
            grp_fu_92_ce <= ap_const_logic_1;
        end if; 
    end process;

end behav;