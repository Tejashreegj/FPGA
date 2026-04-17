------------------------------------------------------------------------------------
---- Company: 
---- Engineer: 
---- 
---- Create Date: 15.04.2026 13:34:06
---- Design Name: 
---- Module Name: logics - Behavioral
---- Project Name: 
---- Target Devices: 
---- Tool Versions: 
---- Description: 
---- 
---- Dependencies: 
---- 
---- Revision:
---- Revision 0.01 - File Created
---- Additional Comments:
---- 
------------------------------------------------------------------------------------


--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

---- Uncomment the following library declaration if using
---- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx leaf cells in this code.
----library UNISIM;
----use UNISIM.VCompnents.all;

--entity logics_op is
--  Port (    A : in std_logic;
--            B : in std_logic;
--            Cin : in std_logic;
--            sel : in op_type;
--            Y0 : out std_logic;
--            Y1 : out std_logic           
--  );
--end logics_op;

--architecture Behavioral of logics_op is

--type logic_type is (   AND_OP, 
--                    OR_OP, 
--                    NOT_OP, 
--                    NAND_OP, 
--                    NOR_OP, 
--                    XOR_OP, 
--                    HA_OP, 
--                    FA_OP
--                    );
--begin

--process(A, B, Cin, sel)
--begin
--Y0 <= '0';
--Y1 <= '0';

--case sel is
--    when AND_OP =>
--        Y0 <= A and B;
--    when OR_OP =>
--        Y0 <= A or B;
--    when NOT_OP =>
--        Y0 <= not A;
--    when NAND_OP => 
--        Y0 <= A nand B;
--    when NOR_OP => 
--        Y0 <= A nor B;
--    when XOR_OP => 
--        Y0 <= A xor B; 
--    when HA_OP => 
--        Y0 <= A xor B; 
--        Y1 <= A and B;
--    when FA_OP => 
--        Y0 <= A xor B xor Cin; 
--        Y1 <= (A and B) or (B and Cin) or (A and Cin);
--    when others =>
--        Y0 <= '0';
--        Y1 <= '0';
--end case;
--end process;
--end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity logics_op is
  Port (    
        A   : in std_logic;
        B   : in std_logic;
        Cin : in std_logic;
        sel : in std_logic_vector (2 downto 0);
        Y0  : out std_logic;
        Y1  : out std_logic           
  );
end logics_op;

architecture Behavioral of logics_op is
type op_type is (NO_OP, AND_OP, OR_OP, NOT_OP, NAND_OP, NOR_OP, XOR_OP, HA_OP, FA_OP );

signal operation : op_type;

begin

process(A, B, Cin, sel)
begin
    Y0 <= '0';
    Y1 <= '0';
    operation <= NO_OP;
    
    case sel is
        when "000" =>
            operation <= AND_OP;
            Y0 <= A and B;
            
        when "001" =>
            operation <= OR_OP;
            Y0 <= A or B;

        when "010" =>
            operation <= NOT_OP;
            Y0 <= not A;

        when "011" => 
            operation <= NAND_OP;
            Y0 <= A nand B;

        when "100" =>
            operation <= NOR_OP; 
            Y0 <= A nor B;

        when "101" =>
            operation <= XOR_OP; 
            Y0 <= A xor B; 

        when "110" =>
            operation <= HA_OP; 
            Y0 <= A xor B; 
            Y1 <= A and B;

        when "111" =>
            operation <= FA_OP; 
            Y0 <= A xor B xor Cin; 
            Y1 <= (A and B) or (B and Cin) or (A and Cin);
        
        when others =>
             Y0 <= '0';
             Y1 <= '0';
             
    end case;
end process;

end Behavioral;