library ieee;
use ieee.std_logic_1164.all;

entity test_not_A_and_b is port(
	input_A,input_B :in std_logic;
	result :out std_logic
);
end test_not_A_and_b;

architecture rtl of test_not_A_and_b is 
	begin 
		result <= (not input_A) and input_B;
	end rtl;
	