library verilog;
use verilog.vl_types.all;
entity task_vlg_sample_tst is
    port(
        C0              : in     vl_logic;
        C1              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end task_vlg_sample_tst;
