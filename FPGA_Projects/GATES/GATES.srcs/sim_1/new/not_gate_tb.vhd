----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.04.2026 14:44:09
-- Design Name: 
-- Module Name: not_gate_tb - Behavioral
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

entity not_gate_tb is
--  Port ( );
end not_gate_tb;

architecture Behavioral of not_gate_tb is

type op_type is ( NOT_OP );
signal operation : op_type;

 -- Component Declaration
component not_gate is
   Port (  A : in std_logic;
           Y : out std_logic
   );
end component not_gate;

-- Signals
   signal A_tb : STD_LOGIC := '0';
   signal Y_tb : STD_LOGIC;
   
begin

-- Instantiate the Unit Under Test (UUT)
   uut: not_gate
       Port map (
           A => A_tb,
           Y => Y_tb
       );
       
process
begin

operation <= NOT_OP;

A_tb <= '0'; 
wait for 10 ns;
 
A_tb <= '1'; 
wait;

end process;
end Behavioral;
