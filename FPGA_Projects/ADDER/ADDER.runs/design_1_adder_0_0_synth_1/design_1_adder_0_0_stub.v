// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Apr 14 15:57:26 2026
// Host        : LAPTOP-SJJL5V1S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_adder_0_0_stub.v
// Design      : design_1_adder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "adder,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(A, B, Cin, SUM_HA, CARRY_HA, SUM_FA, CARRY_FA)
/* synthesis syn_black_box black_box_pad_pin="A,B,Cin,SUM_HA,CARRY_HA,SUM_FA,CARRY_FA" */;
  input A;
  input B;
  input Cin;
  output SUM_HA;
  output CARRY_HA;
  output SUM_FA;
  output CARRY_FA;
endmodule
