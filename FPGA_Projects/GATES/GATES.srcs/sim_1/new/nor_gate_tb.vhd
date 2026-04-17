----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.04.2026 14:26:58
-- Design Name: 
-- Module Name: nor_gate_tb - Behavioral
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

entity nor_gate_tb is
--  Port ( );
end nor_gate_tb;

architecture Behavioral of nor_gate_tb is

type op_type is ( NOR_OP );
signal operation : op_type;

--component nor_gate is
--Port (      A : in std_logic;
--            B : in std_logic;
--            Y : out std_logic
--      );
--end component nor_gate;

signal A_tb : std_logic := '0';
signal B_tb : std_logic := '0';
signal Y_nor_tb : std_logic := '0';

begin

uut : entity work.nor_gate
Port map (
        A => A_tb,
        B => B_tb,
        Y_nor => Y_nor_tb
        );
   
process
begin

operation <= NOR_OP;

A_tb <= '0'; B_tb <= '0'; wait for 10 ns;

A_tb <= '0'; B_tb <= '1'; wait for 10 ns;

A_tb <= '1'; B_tb <= '0'; wait for 10 ns;

A_tb <= '1'; B_tb <= '1'; wait for 10 ns;

A_tb <= 'X' ; B_tb <= 'X' ; wait;    --'X' unknown
        
end process;
end Behavioral;
