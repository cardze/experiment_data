library verilog;
use verilog.vl_types.all;
entity test_ab_and_bc_vlg_sample_tst is
    port(
        input_A         : in     vl_logic;
        input_B         : in     vl_logic;
        input_C         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end test_ab_and_bc_vlg_sample_tst;
