----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.04.2026 14:55:29
-- Design Name: 
-- Module Name: half_adder - Behavioral
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

entity half_adder is
  Port (
            A : in std_logic;
            B : in std_logic;
            SUM_HA : out std_logic;
            CARRY_HA : out std_logic
   );
end half_adder;

architecture Behavioral of half_adder is

type adder_type is (Half_Adder);
signal adder : adder_type;

begin

adder <= Half_Adder;

SUM_HA <= A xor B;
CARRY_HA <= A and B;

end Behavioral;
