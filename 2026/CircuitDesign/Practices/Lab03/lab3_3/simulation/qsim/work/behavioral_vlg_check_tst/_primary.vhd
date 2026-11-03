library verilog;
use verilog.vl_types.all;
entity behavioral_vlg_check_tst is
    port(
        F_pos           : in     vl_logic;
        F_sop           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end behavioral_vlg_check_tst;
