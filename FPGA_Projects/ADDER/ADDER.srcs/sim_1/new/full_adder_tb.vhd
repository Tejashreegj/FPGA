----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.04.2026 15:11:09
-- Design Name: 
-- Module Name: full_adder_tb - Behavioral
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

entity full_adder_tb is
--  Port ( );
end full_adder_tb;

architecture Behavioral of full_adder_tb is

type adder_type is (Full_Adder);
signal adder : adder_type;

signal A_tb, B_tb, Cin_tb : STD_LOGIC :='0';
signal SUM_FA_tb, CARRY_FA_tb : STD_LOGIC := '0';

begin

uut : entity work.full_adder
Port map (
            A => A_tb,
            B => B_tb,
            Cin => Cin_tb,
            SUM_FA => SUM_FA_tb,
            CARRY_FA => CARRY_FA_tb
            );
            
process
begin

adder <= Full_Adder;

A_tb <= '0'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
A_tb <= '0'; B_tb <= '0'; Cin_tb <='1'; wait for 10 ns;
A_tb <= '0'; B_tb <= '1'; Cin_tb <='0'; wait for 10 ns;
A_tb <= '0'; B_tb <= '1'; Cin_tb <='1'; wait for 10 ns;
A_tb <= '1'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
A_tb <= '1'; B_tb <= '0'; Cin_tb <='1'; wait for 10 ns;
A_tb <= '1'; B_tb <= '1'; Cin_tb <='0'; wait for 10 ns;
A_tb <= '1'; B_tb <= '1'; Cin_tb <='1'; wait for 10 ns;
A_tb <= 'X'; B_tb <= 'X'; Cin_tb <='X'; wait;

end process;
end Behavioral;
