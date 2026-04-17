//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Tue Apr 14 15:56:26 2026
//Host        : LAPTOP-SJJL5V1S running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (sys_diff_clock_clk_n,
    sys_diff_clock_clk_p);
  input sys_diff_clock_clk_n;
  input sys_diff_clock_clk_p;

  wire sys_diff_clock_clk_n;
  wire sys_diff_clock_clk_p;

  design_1 design_1_i
       (.sys_diff_clock_clk_n(sys_diff_clock_clk_n),
        .sys_diff_clock_clk_p(sys_diff_clock_clk_p));
endmodule
