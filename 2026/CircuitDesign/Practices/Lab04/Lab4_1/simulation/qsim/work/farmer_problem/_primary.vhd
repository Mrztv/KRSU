library verilog;
use verilog.vl_types.all;
entity farmer_problem is
    port(
        A               : out    vl_logic;
        F               : in     vl_logic;
        C               : in     vl_logic;
        G               : in     vl_logic;
        W               : in     vl_logic
    );
end farmer_problem;
