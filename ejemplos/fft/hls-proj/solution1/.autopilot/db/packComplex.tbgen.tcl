set moduleName packComplex
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {packComplex}
set C_modelType { void 0 }
set C_modelArgList {
	{ dst int 128 regular {fifo 1 volatile }  }
	{ eos int 1 regular {fifo 1 volatile }  }
	{ real_V_data_V int 64 regular {axi_s 0 volatile  { real_in Data } }  }
	{ real_V_keep_V int 8 regular {axi_s 0 volatile  { real_in Keep } }  }
	{ real_V_last_V int 1 regular {axi_s 0 volatile  { real_in Last } }  }
	{ imag_V_data_V int 64 regular {axi_s 0 volatile  { imag_in Data } }  }
	{ imag_V_keep_V int 8 regular {axi_s 0 volatile  { imag_in Keep } }  }
	{ imag_V_last_V int 1 regular {axi_s 0 volatile  { imag_in Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dst", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "eos", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "real_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "real_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "real_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "imag_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "imag_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "imag_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ dst_din sc_out sc_lv 128 signal 0 } 
	{ dst_full_n sc_in sc_logic 1 signal 0 } 
	{ dst_write sc_out sc_logic 1 signal 0 } 
	{ eos_din sc_out sc_lv 1 signal 1 } 
	{ eos_full_n sc_in sc_logic 1 signal 1 } 
	{ eos_write sc_out sc_logic 1 signal 1 } 
	{ real_in_TDATA sc_in sc_lv 64 signal 2 } 
	{ real_in_TVALID sc_in sc_logic 1 invld 4 } 
	{ real_in_TREADY sc_out sc_logic 1 inacc 4 } 
	{ real_in_TKEEP sc_in sc_lv 8 signal 3 } 
	{ real_in_TLAST sc_in sc_lv 1 signal 4 } 
	{ imag_in_TDATA sc_in sc_lv 64 signal 5 } 
	{ imag_in_TVALID sc_in sc_logic 1 invld 7 } 
	{ imag_in_TREADY sc_out sc_logic 1 inacc 7 } 
	{ imag_in_TKEEP sc_in sc_lv 8 signal 6 } 
	{ imag_in_TLAST sc_in sc_lv 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "dst_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "dst", "role": "din" }} , 
 	{ "name": "dst_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "full_n" }} , 
 	{ "name": "dst_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "write" }} , 
 	{ "name": "eos_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eos", "role": "din" }} , 
 	{ "name": "eos_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eos", "role": "full_n" }} , 
 	{ "name": "eos_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eos", "role": "write" }} , 
 	{ "name": "real_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "real_V_data_V", "role": "default" }} , 
 	{ "name": "real_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "real_V_last_V", "role": "" }} , 
 	{ "name": "real_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "real_V_last_V", "role": "" }} , 
 	{ "name": "real_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "real_V_keep_V", "role": "default" }} , 
 	{ "name": "real_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "real_V_last_V", "role": "default" }} , 
 	{ "name": "imag_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imag_V_data_V", "role": "default" }} , 
 	{ "name": "imag_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "imag_V_last_V", "role": "" }} , 
 	{ "name": "imag_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "imag_V_last_V", "role": "" }} , 
 	{ "name": "imag_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imag_V_keep_V", "role": "default" }} , 
 	{ "name": "imag_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "packComplex",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "dst", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "dst_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eos", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64",
				"BlockSignal" : [
					{"Name" : "eos_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "real_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "real_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "real_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "real_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "imag_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imag_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imag_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "imag_V_last_V", "Type" : "Axis", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_64ns_64_6_no_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_64ns_64_6_no_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_real_V_data_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_real_V_keep_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_real_V_last_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_imag_V_data_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_imag_V_keep_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_imag_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	packComplex {
		dst {Type O LastRead -1 FirstWrite 7}
		eos {Type O LastRead -1 FirstWrite 2}
		real_V_data_V {Type I LastRead 1 FirstWrite -1}
		real_V_keep_V {Type I LastRead 1 FirstWrite -1}
		real_V_last_V {Type I LastRead 1 FirstWrite -1}
		imag_V_data_V {Type I LastRead 1 FirstWrite -1}
		imag_V_keep_V {Type I LastRead 1 FirstWrite -1}
		imag_V_last_V {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	dst { ap_fifo {  { dst_din fifo_data 1 128 }  { dst_full_n fifo_status 0 1 }  { dst_write fifo_update 1 1 } } }
	eos { ap_fifo {  { eos_din fifo_data 1 1 }  { eos_full_n fifo_status 0 1 }  { eos_write fifo_update 1 1 } } }
	real_V_data_V { axis {  { real_in_TDATA in_data 0 64 } } }
	real_V_keep_V { axis {  { real_in_TKEEP in_data 0 8 } } }
	real_V_last_V { axis {  { real_in_TVALID in_vld 0 1 }  { real_in_TREADY in_acc 1 1 }  { real_in_TLAST in_data 0 1 } } }
	imag_V_data_V { axis {  { imag_in_TDATA in_data 0 64 } } }
	imag_V_keep_V { axis {  { imag_in_TKEEP in_data 0 8 } } }
	imag_V_last_V { axis {  { imag_in_TVALID in_vld 0 1 }  { imag_in_TREADY in_acc 1 1 }  { imag_in_TLAST in_data 0 1 } } }
}
