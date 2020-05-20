library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity counter_test is 
	port(
		clk,x:in std_logic;
		pre_result:in std_logic_vector(3 downto 0);
		out_put:out std_logic_vector(3 downto 0)
	);
end counter_test;

architecture bruh of counter_test is 
signal temp:std_logic_vector(3 downto 0);
begin 

process(clk)
	begin
	if clk'event and clk='1' then
		if x='1' then 
			case pre_result is 
				when "1010"=>temp<="0000";
				when "1011"=>temp<="0000";
				when "1100"=>temp<="0000";
				when "1101"=>temp<="0000";
				when "1110"=>temp<="0000";
				when "1111"=>temp<="0000";
				when others =>temp<=pre_result+1;
			end case;
		elsif x='0' then 
			temp<=temp;
		end if ;		
	end if ;
	out_put<=temp;
	end process;
end bruh;