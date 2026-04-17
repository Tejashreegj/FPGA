----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2026 16:16:47
-- Design Name: 
-- Module Name: or_gate_tb - Behavioral
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

entity or_gate_tb is
--  Port ( );
end or_gate_tb;

architecture Behavioral of or_gate_tb is

type op_type is ( OR_OP );
signal operation : op_type;

    -- Component Declaration
component or_gate is
Port (  A : in std_logic;
        B : in std_logic;
        Y : out std_logic
);
end component or_gate;

-- Signals
    signal A_tb : std_logic := '0';
    signal B_tb : std_logic := '0';
    signal Y_tb : std_logic;

begin

-- Instantiate the Unit Under Test (UUT)
uut : or_gate
Port map (
    A => A_tb,
    B => B_tb,
    Y => Y_tb
);
process
begin

operation <= OR_OP;

A_tb <= '0';  B_tb <= '0'; wait for 10 ns;
 
A_tb <= '0';  B_tb <= '1'; wait for 10 ns;
  
A_tb <= '1';  B_tb <= '0'; wait for 10 ns;
   
A_tb <= '1';  B_tb <= '1'; wait;

end process;
end Behavioral;
