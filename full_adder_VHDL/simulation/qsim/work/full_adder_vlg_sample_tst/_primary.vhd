library verilog;
use verilog.vl_types.all;
entity full_adder_vlg_sample_tst is
    port(
        X               : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end full_adder_vlg_sample_tst;
