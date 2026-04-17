// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Apr 17 16:03:09 2026
// Host        : LAPTOP-SJJL5V1S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GITDEMO/FPGA_Projects/GATES/GATES.srcs/sources_1/bd/design_1/ip/design_1_nand_gate_0_0/design_1_nand_gate_0_0_stub.v
// Design      : design_1_nand_gate_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "nand_gate,Vivado 2018.1" *)
module design_1_nand_gate_0_0(A, B, Y_nand)
/* synthesis syn_black_box black_box_pad_pin="A,B,Y_nand" */;
  input A;
  input B;
  output Y_nand;
endmodule
