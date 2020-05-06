library verilog;
use verilog.vl_types.all;
entity test_ab_and_bc is
    port(
        input_A         : in     vl_logic;
        input_B         : in     vl_logic;
        input_C         : in     vl_logic;
        result          : out    vl_logic
    );
end test_ab_and_bc;
