// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Jan 24 14:45:21 2023
// Host        : AiSiJi running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Laboratory/verilog_learn/sim_124/vivado_prj_124/at7/at7.gen/sources_1/ip/debug_vio/debug_vio_stub.v
// Design      : debug_vio
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2022.2" *)
module debug_vio(clk, probe_in0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[13:0]" */;
  input clk;
  input [13:0]probe_in0;
endmodule
