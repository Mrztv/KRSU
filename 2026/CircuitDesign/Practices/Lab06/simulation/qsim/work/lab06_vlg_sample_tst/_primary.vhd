library verilog;
use verilog.vl_types.all;
entity lab06_vlg_sample_tst is
    port(
        SW              : in     vl_logic_vector(0 to 8);
        sampler_tx      : out    vl_logic
    );
end lab06_vlg_sample_tst;
