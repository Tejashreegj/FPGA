----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.04.2026 14:43:26
-- Design Name: 
-- Module Name: xor_gate_tb - Behavioral
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

entity xor_gate_tb is
--  Port ( );
end xor_gate_tb;

architecture Behavioral of xor_gate_tb is

signal A_tb , B_tb : STD_LOGIC :='0';
signal Y_tb : STD_LOGIC :='0';

begin

uut : entity work.xor_gate
Port map (
            A => A_tb,
            B => B_tb,
            Y => Y_tb
);

process
begin

A_tb <= '0'; B_tb <= '0'; wait for 10 ns;

A_tb <= '0'; B_tb <= '1'; wait for 10 ns;

A_tb <= '1'; B_tb <= '0'; wait for 10 ns;

A_tb <= '1'; B_tb <= '1'; wait for 10 ns;


end process;
end Behavioral;
