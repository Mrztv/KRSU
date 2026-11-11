library verilog;
use verilog.vl_types.all;
entity blended is
    port(
        f               : out    vl_logic;
        x1              : out    vl_logic;
        z1              : in     vl_logic;
        z2              : in     vl_logic;
        z3              : in     vl_logic;
        z4              : in     vl_logic;
        x2              : in     vl_logic;
        x3              : out    vl_logic
    );
end blended;
