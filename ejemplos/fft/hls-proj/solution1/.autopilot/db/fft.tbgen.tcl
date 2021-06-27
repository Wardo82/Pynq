set moduleName fft
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {fft}
set C_modelType { void 0 }
set C_modelArgList {
	{ real_in_V_data_V int 64 regular {axi_s 0 volatile  { real_in Data } }  }
	{ real_in_V_keep_V int 8 regular {axi_s 0 volatile  { real_in Keep } }  }
	{ real_in_V_last_V int 1 regular {axi_s 0 volatile  { real_in Last } }  }
	{ imag_in_V_data_V int 64 regular {axi_s 0 volatile  { imag_in Data } }  }
	{ imag_in_V_keep_V int 8 regular {axi_s 0 volatile  { imag_in Keep } }  }
	{ imag_in_V_last_V int 1 regular {axi_s 0 volatile  { imag_in Last } }  }
	{ real_out_V_data_V int 64 regular {axi_s 1 volatile  { real_out Data } }  }
	{ real_out_V_keep_V int 8 regular {axi_s 1 volatile  { real_out Keep } }  }
	{ real_out_V_last_V int 1 regular {axi_s 1 volatile  { real_out Last } }  }
	{ imag_out_V_data_V int 64 regular {axi_s 1 volatile  { imag_out Data } }  }
	{ imag_out_V_keep_V int 8 regular {axi_s 1 volatile  { imag_out Keep } }  }
	{ imag_out_V_last_V int 1 regular {axi_s 1 volatile  { imag_out Last } }  }
	{ size int 32 unused {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "real_in_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "real_in.V.data.V","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "real_in_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "real_in.V.keep.V","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "real_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "real_in.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "imag_in_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "imag_in.V.data.V","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "imag_in_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "imag_in.V.keep.V","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "imag_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "imag_in.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "real_out_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "real_out.V.data.V","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "real_out_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "real_out.V.keep.V","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "real_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "real_out.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "imag_out_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "imag_out.V.data.V","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "imag_out_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "imag_out.V.keep.V","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "imag_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "imag_out.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "size", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "size","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ real_in_TDATA sc_in sc_lv 64 signal 0 } 
	{ real_in_TKEEP sc_in sc_lv 8 signal 1 } 
	{ real_in_TLAST sc_in sc_lv 1 signal 2 } 
	{ imag_in_TDATA sc_in sc_lv 64 signal 3 } 
	{ imag_in_TKEEP sc_in sc_lv 8 signal 4 } 
	{ imag_in_TLAST sc_in sc_lv 1 signal 5 } 
	{ real_out_TDATA sc_out sc_lv 64 signal 6 } 
	{ real_out_TKEEP sc_out sc_lv 8 signal 7 } 
	{ real_out_TLAST sc_out sc_lv 1 signal 8 } 
	{ imag_out_TDATA sc_out sc_lv 64 signal 9 } 
	{ imag_out_TKEEP sc_out sc_lv 8 signal 10 } 
	{ imag_out_TLAST sc_out sc_lv 1 signal 11 } 
	{ real_in_TVALID sc_in sc_logic 1 invld 2 } 
	{ real_in_TREADY sc_out sc_logic 1 inacc 2 } 
	{ imag_in_TVALID sc_in sc_logic 1 invld 5 } 
	{ imag_in_TREADY sc_out sc_logic 1 inacc 5 } 
	{ real_out_TVALID sc_out sc_logic 1 outvld 8 } 
	{ real_out_TREADY sc_in sc_logic 1 outacc 8 } 
	{ imag_out_TVALID sc_out sc_logic 1 outvld 11 } 
	{ imag_out_TREADY sc_in sc_logic 1 outacc 11 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"size","role":"data","value":"16"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "real_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "real_in_V_data_V", "role": "default" }} , 
 	{ "name": "real_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "real_in_V_keep_V", "role": "default" }} , 
 	{ "name": "real_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "real_in_V_last_V", "role": "default" }} , 
 	{ "name": "imag_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imag_in_V_data_V", "role": "default" }} , 
 	{ "name": "imag_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imag_in_V_keep_V", "role": "default" }} , 
 	{ "name": "imag_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_in_V_last_V", "role": "default" }} , 
 	{ "name": "real_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "real_out_V_data_V", "role": "default" }} , 
 	{ "name": "real_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "real_out_V_keep_V", "role": "default" }} , 
 	{ "name": "real_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "real_out_V_last_V", "role": "default" }} , 
 	{ "name": "imag_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imag_out_V_data_V", "role": "default" }} , 
 	{ "name": "imag_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imag_out_V_keep_V", "role": "default" }} , 
 	{ "name": "imag_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imag_out_V_last_V", "role": "default" }} , 
 	{ "name": "real_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "real_in_V_last_V", "role": "default" }} , 
 	{ "name": "real_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "real_in_V_last_V", "role": "default" }} , 
 	{ "name": "imag_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "imag_in_V_last_V", "role": "default" }} , 
 	{ "name": "imag_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "imag_in_V_last_V", "role": "default" }} , 
 	{ "name": "real_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "real_out_V_last_V", "role": "default" }} , 
 	{ "name": "real_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "real_out_V_last_V", "role": "default" }} , 
 	{ "name": "imag_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "imag_out_V_last_V", "role": "default" }} , 
 	{ "name": "imag_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "imag_out_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "11", "18", "19", "20"],
		"CDFG" : "fft",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "packComplex_U0"}],
		"OutputProcess" : [
			{"ID" : "11", "Name" : "unpackComplex_U0"}],
		"Port" : [
			{"Name" : "real_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "packComplex_U0", "Port" : "real_V_data_V"}]},
			{"Name" : "real_in_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "packComplex_U0", "Port" : "real_V_keep_V"}]},
			{"Name" : "real_in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "packComplex_U0", "Port" : "real_V_last_V"}]},
			{"Name" : "imag_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "packComplex_U0", "Port" : "imag_V_data_V"}]},
			{"Name" : "imag_in_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "packComplex_U0", "Port" : "imag_V_keep_V"}]},
			{"Name" : "imag_in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "packComplex_U0", "Port" : "imag_V_last_V"}]},
			{"Name" : "real_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "unpackComplex_U0", "Port" : "real_V_data_V"}]},
			{"Name" : "real_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "unpackComplex_U0", "Port" : "real_V_keep_V"}]},
			{"Name" : "real_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "unpackComplex_U0", "Port" : "real_V_last_V"}]},
			{"Name" : "imag_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "unpackComplex_U0", "Port" : "imag_V_data_V"}]},
			{"Name" : "imag_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "unpackComplex_U0", "Port" : "imag_V_keep_V"}]},
			{"Name" : "imag_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "unpackComplex_U0", "Port" : "imag_V_last_V"}]},
			{"Name" : "size", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.packComplex_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10"],
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
			{"Name" : "dst", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "18", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "dst_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eos", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "19", "DependentChanDepth" : "64",
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packComplex_U0.sitodp_64ns_64_6_no_dsp_1_U1", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packComplex_U0.sitodp_64ns_64_6_no_dsp_1_U2", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packComplex_U0.regslice_both_real_V_data_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packComplex_U0.regslice_both_real_V_keep_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packComplex_U0.regslice_both_real_V_last_V_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packComplex_U0.regslice_both_imag_V_data_V_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packComplex_U0.regslice_both_imag_V_keep_V_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packComplex_U0.regslice_both_imag_V_last_V_U", "Parent" : "2"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unpackComplex_U0", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17"],
		"CDFG" : "unpackComplex",
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
		"StartSource" : "2",
		"StartFifo" : "start_for_unpackComplex_U0_U",
		"Port" : [
			{"Name" : "dst", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "18", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "dst_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eos", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "19", "DependentChanDepth" : "64",
				"BlockSignal" : [
					{"Name" : "eos_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "real_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "real_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "real_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "real_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "imag_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imag_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imag_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "imag_V_last_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.unpackComplex_U0.regslice_both_real_V_data_V_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.unpackComplex_U0.regslice_both_real_V_keep_V_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.unpackComplex_U0.regslice_both_real_V_last_V_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.unpackComplex_U0.regslice_both_imag_V_data_V_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.unpackComplex_U0.regslice_both_imag_V_keep_V_U", "Parent" : "11"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.unpackComplex_U0.regslice_both_imag_V_last_V_U", "Parent" : "11"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.complex_stream_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eos_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_unpackComplex_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fft {
		real_in_V_data_V {Type I LastRead 1 FirstWrite -1}
		real_in_V_keep_V {Type I LastRead 1 FirstWrite -1}
		real_in_V_last_V {Type I LastRead 1 FirstWrite -1}
		imag_in_V_data_V {Type I LastRead 1 FirstWrite -1}
		imag_in_V_keep_V {Type I LastRead 1 FirstWrite -1}
		imag_in_V_last_V {Type I LastRead 1 FirstWrite -1}
		real_out_V_data_V {Type O LastRead -1 FirstWrite 3}
		real_out_V_keep_V {Type O LastRead -1 FirstWrite 3}
		real_out_V_last_V {Type O LastRead -1 FirstWrite 3}
		imag_out_V_data_V {Type O LastRead -1 FirstWrite 3}
		imag_out_V_keep_V {Type O LastRead -1 FirstWrite 3}
		imag_out_V_last_V {Type O LastRead -1 FirstWrite 3}
		size {Type I LastRead -1 FirstWrite -1}}
	packComplex {
		dst {Type O LastRead -1 FirstWrite 7}
		eos {Type O LastRead -1 FirstWrite 2}
		real_V_data_V {Type I LastRead 1 FirstWrite -1}
		real_V_keep_V {Type I LastRead 1 FirstWrite -1}
		real_V_last_V {Type I LastRead 1 FirstWrite -1}
		imag_V_data_V {Type I LastRead 1 FirstWrite -1}
		imag_V_keep_V {Type I LastRead 1 FirstWrite -1}
		imag_V_last_V {Type I LastRead 1 FirstWrite -1}}
	unpackComplex {
		dst {Type I LastRead 1 FirstWrite -1}
		eos {Type I LastRead 1 FirstWrite -1}
		real_V_data_V {Type O LastRead -1 FirstWrite 3}
		real_V_keep_V {Type O LastRead -1 FirstWrite 3}
		real_V_last_V {Type O LastRead -1 FirstWrite 3}
		imag_V_data_V {Type O LastRead -1 FirstWrite 3}
		imag_V_keep_V {Type O LastRead -1 FirstWrite 3}
		imag_V_last_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	real_in_V_data_V { axis {  { real_in_TDATA in_data 0 64 } } }
	real_in_V_keep_V { axis {  { real_in_TKEEP in_data 0 8 } } }
	real_in_V_last_V { axis {  { real_in_TLAST in_data 0 1 }  { real_in_TVALID in_vld 0 1 }  { real_in_TREADY in_acc 1 1 } } }
	imag_in_V_data_V { axis {  { imag_in_TDATA in_data 0 64 } } }
	imag_in_V_keep_V { axis {  { imag_in_TKEEP in_data 0 8 } } }
	imag_in_V_last_V { axis {  { imag_in_TLAST in_data 0 1 }  { imag_in_TVALID in_vld 0 1 }  { imag_in_TREADY in_acc 1 1 } } }
	real_out_V_data_V { axis {  { real_out_TDATA out_data 1 64 } } }
	real_out_V_keep_V { axis {  { real_out_TKEEP out_data 1 8 } } }
	real_out_V_last_V { axis {  { real_out_TLAST out_data 1 1 }  { real_out_TVALID out_vld 1 1 }  { real_out_TREADY out_acc 0 1 } } }
	imag_out_V_data_V { axis {  { imag_out_TDATA out_data 1 64 } } }
	imag_out_V_keep_V { axis {  { imag_out_TKEEP out_data 1 8 } } }
	imag_out_V_last_V { axis {  { imag_out_TLAST out_data 1 1 }  { imag_out_TVALID out_vld 1 1 }  { imag_out_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
