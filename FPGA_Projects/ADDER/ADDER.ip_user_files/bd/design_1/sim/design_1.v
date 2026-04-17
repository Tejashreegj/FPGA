//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Fri Apr 17 16:36:59 2026
//Host        : LAPTOP-SJJL5V1S running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (A_0,
    B_0,
    CARRY_FA_0,
    CARRY_HA_0,
    Cin_0,
    SUM_FA_0,
    SUM_HA_0,
    sys_diff_clock_clk_n,
    sys_diff_clock_clk_p);
  input A_0;
  input B_0;
  output CARRY_FA_0;
  output CARRY_HA_0;
  input Cin_0;
  output SUM_FA_0;
  output SUM_HA_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_diff_clock CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_diff_clock, CAN_DEBUG false, FREQ_HZ 200000000" *) input sys_diff_clock_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_diff_clock CLK_P" *) input sys_diff_clock_clk_p;

  wire A_0_1;
  wire B_0_1;
  wire Cin_0_1;
  wire clk_wiz_0_clk_out1;
  wire full_adder_0_CARRY_FA;
  wire full_adder_0_SUM_FA;
  wire half_adder_0_CARRY_HA;
  wire half_adder_0_SUM_HA;
  wire sys_diff_clock_1_CLK_N;
  wire sys_diff_clock_1_CLK_P;

  assign A_0_1 = A_0;
  assign B_0_1 = B_0;
  assign CARRY_FA_0 = full_adder_0_CARRY_FA;
  assign CARRY_HA_0 = half_adder_0_CARRY_HA;
  assign Cin_0_1 = Cin_0;
  assign SUM_FA_0 = full_adder_0_SUM_FA;
  assign SUM_HA_0 = half_adder_0_SUM_HA;
  assign sys_diff_clock_1_CLK_N = sys_diff_clock_clk_n;
  assign sys_diff_clock_1_CLK_P = sys_diff_clock_clk_p;
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1_n(sys_diff_clock_1_CLK_N),
        .clk_in1_p(sys_diff_clock_1_CLK_P),
        .clk_out1(clk_wiz_0_clk_out1));
  design_1_full_adder_0_0 full_adder_0
       (.A(A_0_1),
        .B(B_0_1),
        .CARRY_FA(full_adder_0_CARRY_FA),
        .Cin(Cin_0_1),
        .SUM_FA(full_adder_0_SUM_FA));
  design_1_half_adder_0_0 half_adder_0
       (.A(A_0_1),
        .B(B_0_1),
        .CARRY_HA(half_adder_0_CARRY_HA),
        .SUM_HA(half_adder_0_SUM_HA));
  design_1_ila_0_0 ila_0
       (.clk(clk_wiz_0_clk_out1),
        .probe0(A_0_1),
        .probe1(B_0_1),
        .probe2(Cin_0_1),
        .probe3(half_adder_0_SUM_HA),
        .probe4(half_adder_0_CARRY_HA),
        .probe5(full_adder_0_SUM_FA),
        .probe6(full_adder_0_CARRY_FA));
endmodule
