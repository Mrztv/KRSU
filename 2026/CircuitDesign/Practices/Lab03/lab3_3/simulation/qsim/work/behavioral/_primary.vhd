library verilog;
use verilog.vl_types.all;
entity behavioral is
    port(
        F_sop           : out    vl_logic;
        F_pos           : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic
    );
end behavioral;
