----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2026 15:14:27
-- Design Name: 
-- Module Name: and_gate - Behavioral
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

entity and_gate is
  Port (
--            clk : in std_logic; 
            A : in std_logic;
            B : in std_logic;
            Y : out std_logic
  );
end and_gate;

architecture Behavioral of and_gate is

begin
--process(clk, A, B)
--process(A, B)

--begin
--if rising_edge(clk) then
        Y <= A and B;
--end if;
--end process;
end Behavioral;
