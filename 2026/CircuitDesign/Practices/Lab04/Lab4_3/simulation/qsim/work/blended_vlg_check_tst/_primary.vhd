library verilog;
use verilog.vl_types.all;
entity blended_vlg_check_tst is
    port(
        f               : in     vl_logic;
        x1              : in     vl_logic;
        x3              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end blended_vlg_check_tst;
