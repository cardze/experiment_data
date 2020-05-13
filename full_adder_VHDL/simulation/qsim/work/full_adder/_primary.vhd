library verilog;
use verilog.vl_types.all;
entity full_adder is
    port(
        X               : in     vl_logic_vector(2 downto 0);
        Y               : out    vl_logic_vector(1 downto 0)
    );
end full_adder;
