-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Tue Apr 14 15:57:26 2026
-- Host        : LAPTOP-SJJL5V1S running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/tejashree
--               jadhav/OneDrive/Desktop/FPGA_project/ADDER/ADDER.srcs/sources_1/bd/design_1/ip/design_1_adder_0_0/design_1_adder_0_0_sim_netlist.vhdl}
-- Design      : design_1_adder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_adder_0_0_adder is
  port (
    CARRY_FA : out STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    A : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_adder_0_0_adder : entity is "adder";
end design_1_adder_0_0_adder;

architecture STRUCTURE of design_1_adder_0_0_adder is
begin
\CARRY_FA__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => B,
      I1 => Cin,
      I2 => A,
      O => CARRY_FA
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_adder_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    SUM_HA : out STD_LOGIC;
    CARRY_HA : out STD_LOGIC;
    SUM_FA : out STD_LOGIC;
    CARRY_FA : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_adder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_adder_0_0 : entity is "design_1_adder_0_0,adder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_adder_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_adder_0_0 : entity is "adder,Vivado 2018.1";
end design_1_adder_0_0;

architecture STRUCTURE of design_1_adder_0_0 is
begin
CARRY_HA_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A,
      I1 => B,
      O => CARRY_HA
    );
SUM_FA_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Cin,
      I1 => A,
      I2 => B,
      O => SUM_FA
    );
SUM_HA_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B,
      I1 => A,
      O => SUM_HA
    );
inst: entity work.design_1_adder_0_0_adder
     port map (
      A => A,
      B => B,
      CARRY_FA => CARRY_FA,
      Cin => Cin
    );
end STRUCTURE;
