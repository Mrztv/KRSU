library verilog;
use verilog.vl_types.all;
entity blended_vlg_sample_tst is
    port(
        x2              : in     vl_logic;
        z1              : in     vl_logic;
        z2              : in     vl_logic;
        z3              : in     vl_logic;
        z4              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end blended_vlg_sample_tst;
