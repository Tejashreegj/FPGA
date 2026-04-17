----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.04.2026 13:34:06
-- Design Name: 
-- Module Name: logics - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity logics is
  Port (    A : in std_logic;
            B : in std_logic;
            Cin : in std_logic;
            sel : in std_logic_vector(2 downto 0);
            Y0 : out std_logic;
            Y1 : out std_logic           
  );
end logics;

architecture Behavioral of logics is

begin
process(A, B, Cin, sel)
begin
Y0 <= '0';
Y1 <= '0';

case sel is
    when "000" =>
        Y0 <= A and B;
    when "001" =>
        Y0 <= A or B;
    when "010" =>
        Y0 <= not A;
    when "011" => 
        Y0 <= A nand B;
    when "100" => 
        Y0 <= A nor B;
    when "101" => 
        Y0 <= A xor B; 
    when "110" => 
        Y0 <= A xor B; 
        Y1 <= A and B;
    when "111" => 
        Y0 <= A xor B xor Cin; 
        Y1 <= (A and B) or (B and Cin) or (A and Cin);
    when others =>
        Y0 <= '0';
        Y1 <= '0';
end case;
end process;
end Behavioral;
