library verilog;
use verilog.vl_types.all;
entity test is
    port(
        input_1         : in     vl_logic;
        input_2         : in     vl_logic;
        or_result       : out    vl_logic
    );
end test;
