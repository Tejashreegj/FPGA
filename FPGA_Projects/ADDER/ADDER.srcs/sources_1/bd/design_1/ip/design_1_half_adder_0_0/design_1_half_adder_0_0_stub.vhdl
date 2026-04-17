-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Fri Apr 17 16:37:48 2026
-- Host        : LAPTOP-SJJL5V1S running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/GITDEMO/FPGA_Projects/ADDER/ADDER.srcs/sources_1/bd/design_1/ip/design_1_half_adder_0_0/design_1_half_adder_0_0_stub.vhdl
-- Design      : design_1_half_adder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_half_adder_0_0 is
  Port ( 
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    SUM_HA : out STD_LOGIC;
    CARRY_HA : out STD_LOGIC
  );

end design_1_half_adder_0_0;

architecture stub of design_1_half_adder_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A,B,SUM_HA,CARRY_HA";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "half_adder,Vivado 2018.1";
begin
end;
