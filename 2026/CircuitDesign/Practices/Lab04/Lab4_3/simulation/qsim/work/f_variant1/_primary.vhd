library verilog;
use verilog.vl_types.all;
entity f_variant1 is
    port(
        f               : out    vl_logic;
        x1              : in     vl_logic;
        x2              : in     vl_logic;
        x3              : in     vl_logic
    );
end f_variant1;
