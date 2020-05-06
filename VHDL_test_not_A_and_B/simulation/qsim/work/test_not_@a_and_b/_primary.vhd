library verilog;
use verilog.vl_types.all;
entity test_not_A_and_b is
    port(
        input_A         : in     vl_logic;
        input_B         : in     vl_logic;
        result          : out    vl_logic
    );
end test_not_A_and_b;
