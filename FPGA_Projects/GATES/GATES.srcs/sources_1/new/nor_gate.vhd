----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.04.2026 14:25:18
-- Design Name: 
-- Module Name: nor_gate - Behavioral
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

entity nor_gate is
  Port (
            A : in std_logic;
            B : in std_logic;
            Y_nor : out std_logic
   );
end nor_gate;

architecture Behavioral of nor_gate is

type op_type is ( NOR_OP );
signal operation : op_type;

begin

operation <= NOR_OP;
Y_nor <= A nor B;

end Behavioral;
