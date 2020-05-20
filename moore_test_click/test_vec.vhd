library ieee;
use ieee.std_logic_1164.all;

entity test_vec is 
port(
	input_x :in std_logic_vector(3 downto 0);
	result_y : out std_logic_vector(6 downto 0)
);
end test_vec;

architecture rtl of test_vec is
begin 
	with input_x select
		result_y <="1111110"when"0000",
					  "0110000"when"0001",
					  "1101101"when"0010",
					  "1111001"when"0011",
					  "0110011"when"0100",
					  "1011011"when"0101",
					  "1011111"when"0110",
					  "1110010"when"0111",
					  "1111111"when"1000",
					  "1111011"when"1001",
					  "0000000"when others;
end rtl;					  