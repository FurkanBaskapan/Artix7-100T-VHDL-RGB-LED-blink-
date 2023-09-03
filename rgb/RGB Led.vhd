----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2022 01:28:42 PM
-- Design Name: 
-- Module Name: rgb - Behavioral
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

entity rgb is
  Port ( reset : in std_logic;
         clock : in std_logic;
         A : out std_logic_vector( 2 downto 0) 
);
end rgb;

architecture Behavioral of rgb is
 signal b : integer := 0 ;
 signal yan : integer :=0;
begin
process(clock,reset)
     begin
       
       
       if (rising_edge(clock)) then
       b <= b + 1;
         if(b = 200000000)then 
            b <= 0;
          yan <= yan + 1;
           end if;
             if (yan = 3) then
             yan <= 0;
             end if;
           
            case yan is
                   when  0 => A <= "100";
                   
                   when  1 => A <= "010"  ; 
                   
                   when  2 => A <= "001" ;
                   
                   when  others => A <= "000" ;
          
                   
                    end case;
       end if;
       end process;         
           
end Behavioral;
