----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.04.2026 14:58:22
-- Design Name: 
-- Module Name: half_adder_tb - Behavioral
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

entity half_adder_tb is
--  Port ( );
end half_adder_tb;

architecture Behavioral of half_adder_tb is

signal A_tb , B_tb : STD_LOGIC := '0';
signal SUM_tb, CARRY_tb : STD_LOGIC := '0';

begin

uut: entity work.half_adder
Port map (
            A => A_tb,
            B => B_tb,
            SUM => SUM_tb,
            CARRY => CARRY_tb
            );
            
process
begin

A_tb <= '0'; B_tb <= '0'; wait for 10 ns;

A_tb <= '0'; B_tb <= '1'; wait for 10 ns;

A_tb <= '1'; B_tb <= '0'; wait for 10 ns;

A_tb <= '1'; B_tb <= '1'; wait for 10 ns;


       

end process;
end Behavioral;
