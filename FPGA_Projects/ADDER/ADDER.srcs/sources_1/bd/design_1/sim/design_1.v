//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Tue Apr 14 15:56:26 2026
//Host        : LAPTOP-SJJL5V1S running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (sys_diff_clock_clk_n,
    sys_diff_clock_clk_p);
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_diff_clock CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_diff_clock, CAN_DEBUG false, FREQ_HZ 200000000" *) input sys_diff_clock_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_diff_clock CLK_P" *) input sys_diff_clock_clk_p;

  wire adder_0_CARRY_FA;
  wire adder_0_CARRY_HA;
  wire adder_0_SUM_FA;
  wire adder_0_SUM_HA;
  wire clk_wiz_0_clk_out1;
  wire sys_diff_clock_1_CLK_N;
  wire sys_diff_clock_1_CLK_P;
  wire [0:0]vio_0_probe_out0;
  wire [0:0]vio_0_probe_out1;
  wire [0:0]vio_0_probe_out2;

  assign sys_diff_clock_1_CLK_N = sys_diff_clock_clk_n;
  assign sys_diff_clock_1_CLK_P = sys_diff_clock_clk_p;
  design_1_adder_0_0 adder_0
       (.A(vio_0_probe_out0),
        .B(vio_0_probe_out1),
        .CARRY_FA(adder_0_CARRY_FA),
        .CARRY_HA(adder_0_CARRY_HA),
        .Cin(vio_0_probe_out2),
        .SUM_FA(adder_0_SUM_FA),
        .SUM_HA(adder_0_SUM_HA));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1_n(sys_diff_clock_1_CLK_N),
        .clk_in1_p(sys_diff_clock_1_CLK_P),
        .clk_out1(clk_wiz_0_clk_out1));
  design_1_ila_0_0 ila_0
       (.clk(clk_wiz_0_clk_out1),
        .probe0(vio_0_probe_out0),
        .probe1(vio_0_probe_out1),
        .probe2(vio_0_probe_out2),
        .probe3(adder_0_SUM_HA),
        .probe4(adder_0_CARRY_HA),
        .probe5(adder_0_SUM_FA),
        .probe6(adder_0_CARRY_FA));
  design_1_vio_0_0 vio_0
       (.clk(clk_wiz_0_clk_out1),
        .probe_out0(vio_0_probe_out0),
        .probe_out1(vio_0_probe_out1),
        .probe_out2(vio_0_probe_out2));
endmodule
