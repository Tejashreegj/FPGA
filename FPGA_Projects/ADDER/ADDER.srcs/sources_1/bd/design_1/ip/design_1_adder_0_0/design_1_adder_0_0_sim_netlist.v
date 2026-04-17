// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Apr 14 15:57:26 2026
// Host        : LAPTOP-SJJL5V1S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/tejashree
//               jadhav/OneDrive/Desktop/FPGA_project/ADDER/ADDER.srcs/sources_1/bd/design_1/ip/design_1_adder_0_0/design_1_adder_0_0_sim_netlist.v}
// Design      : design_1_adder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_adder_0_0,adder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "adder,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module design_1_adder_0_0
   (A,
    B,
    Cin,
    SUM_HA,
    CARRY_HA,
    SUM_FA,
    CARRY_FA);
  input A;
  input B;
  input Cin;
  output SUM_HA;
  output CARRY_HA;
  output SUM_FA;
  output CARRY_FA;

  wire A;
  wire B;
  wire CARRY_FA;
  wire CARRY_HA;
  wire Cin;
  wire SUM_FA;
  wire SUM_HA;

  LUT2 #(
    .INIT(4'h8)) 
    CARRY_HA_INST_0
       (.I0(A),
        .I1(B),
        .O(CARRY_HA));
  LUT3 #(
    .INIT(8'h96)) 
    SUM_FA_INST_0
       (.I0(Cin),
        .I1(A),
        .I2(B),
        .O(SUM_FA));
  LUT2 #(
    .INIT(4'h6)) 
    SUM_HA_INST_0
       (.I0(B),
        .I1(A),
        .O(SUM_HA));
  design_1_adder_0_0_adder inst
       (.A(A),
        .B(B),
        .CARRY_FA(CARRY_FA),
        .Cin(Cin));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module design_1_adder_0_0_adder
   (CARRY_FA,
    B,
    Cin,
    A);
  output CARRY_FA;
  input B;
  input Cin;
  input A;

  wire A;
  wire B;
  wire CARRY_FA;
  wire Cin;

  LUT3 #(
    .INIT(8'hE8)) 
    CARRY_FA__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(CARRY_FA));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
