library ieee;
use ieee.std_logic_1164.all;

entity full_adder is 
	port(
		X:in std_logic_vector(2 downto 0);
		Y:out std_logic_vector(1 downto 0)
	);
end full_adder;

architecture whatever of full_adder is 
begin 
	with X select
		Y<="01" when "001",
			"01" when "010",
			"10" when "011",
			"01" when "100",
			"10" when "101",
			"10" when "110",
			"11" when "111",
			"00" when others;
end whatever;			