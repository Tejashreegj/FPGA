//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Fri Apr 17 16:01:15 2026
//Host        : LAPTOP-SJJL5V1S running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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
  input sys_diff_clock_clk_n;
  input sys_diff_clock_clk_p;

  wire A_0;
  wire B_0;
  wire Y_and_0;
  wire Y_nand_0;
  wire Y_nor_0;
  wire Y_not_0;
  wire Y_or_0;
  wire Y_xor_0;
  wire sys_diff_clock_clk_n;
  wire sys_diff_clock_clk_p;

  design_1 design_1_i
       (.A_0(A_0),
        .B_0(B_0),
        .Y_and_0(Y_and_0),
        .Y_nand_0(Y_nand_0),
        .Y_nor_0(Y_nor_0),
        .Y_not_0(Y_not_0),
        .Y_or_0(Y_or_0),
        .Y_xor_0(Y_xor_0),
        .sys_diff_clock_clk_n(sys_diff_clock_clk_n),
        .sys_diff_clock_clk_p(sys_diff_clock_clk_p));
endmodule
