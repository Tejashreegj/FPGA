----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.04.2026 15:04:50
-- Design Name: 
-- Module Name: full_adder - Behavioral
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

entity full_adder is
  Port (    A : in std_logic;
            B : in std_logic;
            Cin : in std_logic;
            SUM : out std_logic;
            CARRY : out std_logic 
  );
end full_adder;

architecture Behavioral of full_adder is

begin

SUM <= A xor B xor Cin;
CARRY <= (A and B) or (B and Cin) or (A and Cin);

end Behavioral;
