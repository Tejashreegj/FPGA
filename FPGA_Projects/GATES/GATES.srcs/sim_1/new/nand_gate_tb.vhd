----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.04.2026 14:15:09
-- Design Name: 
-- Module Name: nand_gate_tb - Behavioral
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

entity nand_gate_tb is
--  Port ( );
end nand_gate_tb;

architecture Behavioral of nand_gate_tb is
   -- Component Declaration
component nand_gate is
 Port (  A : in std_logic;
         B : in std_logic;
         Y : out std_logic
 );
end component nand_gate;

-- Signals
 signal A_tb : STD_LOGIC := '0';
 signal B_tb : STD_LOGIC := '0';
 signal Y_tb : STD_LOGIC;
 
begin

-- Instantiate the Unit Under Test (UUT)
 uut: nand_gate
     Port map (
         A => A_tb,
         B => B_tb,
         Y => Y_tb
     );
     
process
begin

A_tb <= '0'; 
B_tb <= '0';
wait for 10 ns;

A_tb <= '0'; 
B_tb <= '1';
wait for 10 ns;

A_tb <= '1'; 
B_tb <= '0';
wait for 10 ns;

A_tb <= '1'; 
B_tb <= '1';
wait for 10 ns;

end process;
end Behavioral;
