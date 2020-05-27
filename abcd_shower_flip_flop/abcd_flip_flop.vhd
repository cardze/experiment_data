library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity abcd_flip_flop is 
port(
		clk,x:in std_logic;
		pre_result:in std_logic_vector(3 downto 0);
		out_put:out std_logic_vector(3 downto 0)
	);
end abcd_flip_flop;

architecture bruh of abcd_flip_flop is 
signal temp:std_logic_vector(3 downto 0);
begin 

process(clk)
	begin
	if clk'event and clk='1' then
		if x='1' then 
			case pre_result is 
				when "0011"=>temp<="0000";
				when others =>temp<=pre_result+1;
			end case;
		end if ;		
	end if ;
	out_put<=temp;
	end process;
end bruh;