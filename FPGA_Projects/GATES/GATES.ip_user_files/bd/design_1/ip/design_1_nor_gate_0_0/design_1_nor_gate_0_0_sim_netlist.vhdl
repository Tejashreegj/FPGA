-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Fri Apr 17 16:03:09 2026
-- Host        : LAPTOP-SJJL5V1S running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GITDEMO/FPGA_Projects/GATES/GATES.srcs/sources_1/bd/design_1/ip/design_1_nor_gate_0_0/design_1_nor_gate_0_0_sim_netlist.vhdl
-- Design      : design_1_nor_gate_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_nor_gate_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Y_nor : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_nor_gate_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_nor_gate_0_0 : entity is "design_1_nor_gate_0_0,nor_gate,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_nor_gate_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_nor_gate_0_0 : entity is "nor_gate,Vivado 2018.1";
end design_1_nor_gate_0_0;

architecture STRUCTURE of design_1_nor_gate_0_0 is
begin
Y_nor_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A,
      I1 => B,
      O => Y_nor
    );
end STRUCTURE;
