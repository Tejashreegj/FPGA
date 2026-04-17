----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2026 15:47:05
-- Design Name: 
-- Module Name: and_gate_tb - Behavioral
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

entity and_gate_tb is
--  Port ( );
end and_gate_tb;

architecture Behavioral of and_gate_tb is

type op_type is ( AND_OP );
signal operation : op_type;

    -- Component Declaration
component and_gate is
    Port (  A : in std_logic;
            B : in std_logic;
            Y_and : out std_logic
    );
end component and_gate;

-- Signals
    signal A_tb : STD_LOGIC := '0';
    signal B_tb : STD_LOGIC := '0';
    signal Y_and_tb : STD_LOGIC;
    
begin

-- Instantiate the Unit Under Test (UUT)
    uut: and_gate
        Port map (
            A => A_tb,
            B => B_tb,
            Y_and => Y_and_tb
        );
        
process
begin

operation <= AND_OP;

A_tb <= '0';  B_tb <= '0'; wait for 10 ns;
 
A_tb <= '0';  B_tb <= '1'; wait for 10 ns;
  
A_tb <= '1';  B_tb <= '0'; wait for 10 ns;
   
A_tb <= '1'; B_tb <= '1'; wait for 10 ns;

A_tb <= 'X' ; B_tb <= 'X' ; wait;    --'X' unknown

end process;
end Behavioral;
