----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.04.2026 15:49:58
-- Design Name: 
-- Module Name: adder - Behavioral
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

entity adder is
  Port (    A : in std_logic;
            B : in std_logic;
            Cin : in std_logic;
            SUM_HA : out std_logic;
            CARRY_HA: out std_logic;
            SUM_FA : out std_logic;
            CARRY_FA: out std_logic 
   );
end adder;

architecture Behavioral of adder is

begin

SUM_HA <= A xor B;
CARRY_HA <= A and B;

SUM_FA <= A xor B xor Cin;
CARRY_FA <= (A and B) or (B and Cin) or (A and Cin);

end Behavioral;
