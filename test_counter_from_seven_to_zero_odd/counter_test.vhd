library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity counter_test is 
	port(
		clk,x:in std_logic;
		pre_result:in std_logic_vector(2 downto 0);
		out_put:out std_logic_vector(2 downto 0)
	);
end counter_test;

architecture bruh of counter_test is 
signal temp:std_logic_vector(2 downto 0);
begin 

process(clk)
	begin
	if clk'event and clk='1' then
		if x = '1' then 
			temp <= temp-2;
		end if;	
	end if ;
	out_put<=temp;
	end process;
end bruh;