//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Fri Apr 17 16:01:15 2026
//Host        : LAPTOP-SJJL5V1S running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (A_0,
    B_0,
    Y_and_0,
    Y_nand_0,
    Y_nor_0,
    Y_not_0,
    Y_or_0,
    Y_xor_0,
    sys_diff_clock_clk_n,
    sys_diff_clock_clk_p);
  input A_0;
  input B_0;
  output Y_and_0;
  output Y_nand_0;
  output Y_nor_0;
  output Y_not_0;
  output Y_or_0;
  output Y_xor_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_diff_clock CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_diff_clock, CAN_DEBUG false, FREQ_HZ 200000000" *) input sys_diff_clock_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_diff_clock CLK_P" *) input sys_diff_clock_clk_p;

  wire A_0_1;
  wire B_0_1;
  wire and_gate_0_Y_and;
  wire clk_wiz_0_clk_out1;
  wire nand_gate_0_Y_nand;
  wire nor_gate_0_Y_nor;
  wire not_gate_0_Y_not;
  wire or_gate_0_Y_or;
  wire sys_diff_clock_1_CLK_N;
  wire sys_diff_clock_1_CLK_P;
  wire xor_gate_0_Y_xor;

  assign A_0_1 = A_0;
  assign B_0_1 = B_0;
  assign Y_and_0 = and_gate_0_Y_and;
  assign Y_nand_0 = nand_gate_0_Y_nand;
  assign Y_nor_0 = nor_gate_0_Y_nor;
  assign Y_not_0 = not_gate_0_Y_not;
  assign Y_or_0 = or_gate_0_Y_or;
  assign Y_xor_0 = xor_gate_0_Y_xor;
  assign sys_diff_clock_1_CLK_N = sys_diff_clock_clk_n;
  assign sys_diff_clock_1_CLK_P = sys_diff_clock_clk_p;
  design_1_and_gate_0_0 and_gate_0
       (.A(A_0_1),
        .B(B_0_1),
        .Y_and(and_gate_0_Y_and));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1_n(sys_diff_clock_1_CLK_N),
        .clk_in1_p(sys_diff_clock_1_CLK_P),
        .clk_out1(clk_wiz_0_clk_out1));
  design_1_ila_0_0 ila_0
       (.clk(clk_wiz_0_clk_out1),
        .probe0(A_0_1),
        .probe1(B_0_1),
        .probe2(and_gate_0_Y_and),
        .probe3(nand_gate_0_Y_nand),
        .probe4(nor_gate_0_Y_nor),
        .probe5(or_gate_0_Y_or),
        .probe6(xor_gate_0_Y_xor),
        .probe7(not_gate_0_Y_not));
  design_1_nand_gate_0_0 nand_gate_0
       (.A(A_0_1),
        .B(B_0_1),
        .Y_nand(nand_gate_0_Y_nand));
  design_1_nor_gate_0_0 nor_gate_0
       (.A(A_0_1),
        .B(B_0_1),
        .Y_nor(nor_gate_0_Y_nor));
  design_1_not_gate_0_0 not_gate_0
       (.A(A_0_1),
        .Y_not(not_gate_0_Y_not));
  design_1_or_gate_0_0 or_gate_0
       (.A(A_0_1),
        .B(B_0_1),
        .Y_or(or_gate_0_Y_or));
  design_1_xor_gate_0_0 xor_gate_0
       (.A(A_0_1),
        .B(B_0_1),
        .Y_xor(xor_gate_0_Y_xor));
endmodule
