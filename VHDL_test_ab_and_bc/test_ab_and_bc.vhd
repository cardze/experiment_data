library ieee;
use ieee.std_logic_1164.all;
 
entity test_ab_and_bc is
  port (
    input_A    : in  std_logic;
    input_B    : in  std_logic;
	 input_C    : in  std_logic;
    result : out std_logic
    );
end test_ab_and_bc;
 
architecture rtl of test_ab_and_bc is
  signal gate_1,gate_2 : std_logic;
begin
	gate_1 <= input_A and input_B;
	gate_2 <=input_B and input_C;
	result <=gate_1 or gate_2;
end rtl;