library ieee;
use ieee.std_logic_1164.all;

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
		if x='1' then 
			case pre_result is 
				when "000"=>temp<="001";
				when "001"=>temp<="010";
				when "010"=>temp<="011";
				when "011"=>temp<="100";
				when "100"=>temp<="101";
				when "101"=>temp<="110";
				when "110"=>temp<="111";
				when "111"=>temp<="000";
				
				when others => temp<="000";
			end case;
		elsif x='0' then 
			case pre_result is 
				when "000"=>temp<="000";
				when "001"=>temp<="001";
				when "010"=>temp<="010";
				when "011"=>temp<="011";
				when "100"=>temp<="100";
				when "101"=>temp<="101";
				when "110"=>temp<="110";
				when "111"=>temp<="111";
				
				when others => temp<="000";
			end case;
		end if ;
	end if ;
	out_put<=temp;
	end process;
end bruh;