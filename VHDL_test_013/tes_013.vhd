library ieee;
use ieee.std_logic_1164.all;

entity tes_013 is port(
	input_A,input_B :in std_logic;
	result :out std_logic
);
end tes_013;

architecture rtl of tes_013 is 
	signal gateway_1 : std_logic;
	signal gateway_2 : std_logic;
	signal gateway_3 : std_logic;
	
	begin 
		gateway_1 <= (not input_A)and(not input_B);
		gateway_2 <= (not input_A)and( input_B);
		gateway_3 <= ( input_A)and( input_B);
		result <= gateway_1 or gateway_2 or gateway_3;
	end rtl;
	