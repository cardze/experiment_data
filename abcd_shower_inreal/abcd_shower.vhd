library ieee;
use ieee.std_logic_1164.all;

entity abcd_shower is 
port(
	input_x :in std_logic_vector(3 downto 0);
	result_y : out std_logic_vector(6 downto 0)
);
end abcd_shower;

architecture rtl of abcd_shower is
begin 
	with input_x select
		result_y <="1111101"when"0000",
					  "0011111"when"0001",
					  "0001101"when"0010",
					  "0111101"when"0011",
					  "0000000"when others;
end rtl;					  