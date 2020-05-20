library ieee;
use ieee.std_logic_1164.all;

entity one_five_seven_six is 
	port(
		clk,x:in std_logic;
		pre_result:in std_logic_vector(3 downto 0);
		out_put:out std_logic_vector(3 downto 0)
	);
end one_five_seven_six;

architecture bruh of one_five_seven_six is 
signal temp:std_logic_vector(3 downto 0);
begin 

process(clk)
	begin
	if clk'event and clk='1' then
		if x='1' then 
			case pre_result is 
				when "0001"=>temp<="0101";
				when "0101"=>temp<="0111";
				when "0111"=>temp<="0110";
				when "0110"=>temp<="0001";
				when others => temp<="0001";
			end case;
		elsif x='0' then 
			case pre_result is 
				when "0001"=>temp<="0001";
				when "0101"=>temp<="0101";
				when "0111"=>temp<="0111";
				when "0110"=>temp<="0110";
				when others => temp<="0001";
			end case;
		end if ;
	end if ;
	out_put<=temp;
	end process;
end bruh;