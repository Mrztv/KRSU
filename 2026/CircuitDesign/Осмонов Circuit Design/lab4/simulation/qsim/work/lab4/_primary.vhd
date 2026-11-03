library verilog;
use verilog.vl_types.all;
entity lab4 is
    port(
        F               : out    vl_logic;
        E               : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        G               : out    vl_logic;
        X               : in     vl_logic
    );
end lab4;
