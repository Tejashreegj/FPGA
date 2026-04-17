----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.04.2026 14:06:55
-- Design Name: 
-- Module Name: logics_tb - Behavioral
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

entity logics_op_tb is
--  Port ( );
end logics_op_tb;

architecture Behavioral of logics_op_tb is

type op_type is (NO_OP, AND_OP, OR_OP, NOT_OP, NAND_OP, NOR_OP, XOR_OP, HA_OP, FA_OP );

signal operation : op_type;
signal A_tb, B_tb, Cin_tb : STD_LOGIC :='0';
signal sel_tb : STD_LOGIC_VECTOR(2 downto 0) :="000";
signal Y0_tb, Y1_tb : STD_LOGIC := '0';

begin

uut: entity work.logics_op
Port map (
            A => A_tb,
            B => B_tb,
            Cin => Cin_tb,
            sel => sel_tb,
            Y0 => Y0_tb,
            Y1 => Y1_tb
);

process
begin
operation <= NO_OP;

--Test AND
sel_tb <= "000";
    operation <= AND_OP;
    A_tb <= '0'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '0'; B_tb <= '1'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '1'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '1'; B_tb <= '1'; Cin_tb <='0'; wait for 10 ns;
    
    A_tb <= '0'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    wait for 20 ns;
    
--Test OR 
sel_tb <= "001";
    operation <= OR_OP;
    A_tb <= '0'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '0'; B_tb <= '1'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '1'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '1'; B_tb <= '1'; Cin_tb <='0'; wait for 10 ns;
    
    A_tb <= '0'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    wait for 20 ns;
    
--Test NOT
sel_tb <= "010";
    operation <= NOT_OP;
    A_tb <= '0'; B_tb <='0'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '1'; B_tb <='0'; Cin_tb <='0'; wait for 10 ns;
    
    A_tb <= '0'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    wait for 20 ns;
    
--Test NAND 
sel_tb <= "011";
    operation <= NAND_OP;
    A_tb <= '0'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '0'; B_tb <= '1'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '1'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '1'; B_tb <= '1'; Cin_tb <='0'; wait for 10 ns;
    
    A_tb <= '0'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    wait for 20 ns;    

--Test NOR 
sel_tb <= "100";
    operation <= NOR_OP;
    A_tb <= '0'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '0'; B_tb <= '1'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '1'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '1'; B_tb <= '1'; Cin_tb <='0'; wait for 10 ns;
    
    A_tb <= '0'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    wait for 20 ns;

--Test XOR 
sel_tb <= "101";
    operation <= XOR_OP;
    A_tb <= '0'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '0'; B_tb <= '1'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '1'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '1'; B_tb <= '1'; Cin_tb <='0'; wait for 10 ns;
    
    A_tb <= '0'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    wait for 20 ns;
    
 --Test HA 
 sel_tb <= "110";
    operation <= HA_OP;
    A_tb <= '0'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '0'; B_tb <= '1'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '1'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '1'; B_tb <= '1'; Cin_tb <='0'; wait for 10 ns;
    
    A_tb <= '0'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    wait for 20 ns;   
   
 --Test FA
sel_tb <= "111";
    operation <= FA_OP;
    A_tb <= '0'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '0'; B_tb <= '0'; Cin_tb <='1'; wait for 10 ns;
    A_tb <= '0'; B_tb <= '1'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '0'; B_tb <= '1'; Cin_tb <='1'; wait for 10 ns;
    A_tb <= '1'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '1'; B_tb <= '0'; Cin_tb <='1'; wait for 10 ns;
    A_tb <= '1'; B_tb <= '1'; Cin_tb <='0'; wait for 10 ns;
    A_tb <= '1'; B_tb <= '1'; Cin_tb <='1'; wait for 10 ns;
    
    A_tb <= '0'; B_tb <= '0'; Cin_tb <='0'; wait for 10 ns;
    
wait; -- Stop simulation

end process;
end Behavioral;
