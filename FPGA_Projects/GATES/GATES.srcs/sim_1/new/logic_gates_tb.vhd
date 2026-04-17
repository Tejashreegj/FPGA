----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.04.2026 15:03:10
-- Design Name: 
-- Module Name: logic_gates_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity logic_gates_tb is
--  Port ( );
end logic_gates_tb;

architecture Behavioral of logic_gates_tb is

type op_type is ( AND_OP, NAND_OP, NOR_OP, NOT_OP, OR_OP, XOR_OP );
signal operation_tb : op_type;

signal A_tb , B_tb : STD_LOGIC :='0';
signal Y_tb : STD_LOGIC :='0';

begin
--uut_and : entity work.and_gate
--Port map (
--            A => A_tb,
--            B => B_tb,
--            Y => Y_tb
--);
--operation_tb <= AND_OP;

--uut_nand : entity work.nand_gate
--Port map (
--            A => A_tb,
--            B => B_tb,
--            Y => Y_tb
--);
----operation_tb <= NAND_OP;

--uut_nor : entity work.nor_gate
--Port map (
--            A => A_tb,
--            B => B_tb,
--            Y => Y_tb
--);
----operation_tb <= NOR_OP;

--uut_not : entity work.not_gate
--Port map (
--            A => A_tb,
--            Y => Y_tb
--);
----operation_tb <= NOT_OP;

--uut_or : entity work.or_gate
--Port map (
--            A => A_tb,
--            B => B_tb,
--            Y => Y_tb
--);
----operation_tb <= OR_OP;

--uut_xor : entity work.xor_gate
--Port map (
--            A => A_tb,
--            B => B_tb,
--            Y => Y_tb
--);
--operation_tb <= XOR_OP;

process
begin

A_tb <= '0'; B_tb <= '0'; wait for 10 ns;

A_tb <= '0'; B_tb <= '1'; wait for 10 ns;

A_tb <= '1'; B_tb <= '0'; wait for 10 ns;

A_tb <= '1'; B_tb <= '1'; wait;

end process;
end Behavioral;
