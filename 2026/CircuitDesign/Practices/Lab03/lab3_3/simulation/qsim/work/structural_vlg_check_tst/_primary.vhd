library verilog;
use verilog.vl_types.all;
entity structural_vlg_check_tst is
    port(
        F_pos           : in     vl_logic;
        F_sop           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end structural_vlg_check_tst;
