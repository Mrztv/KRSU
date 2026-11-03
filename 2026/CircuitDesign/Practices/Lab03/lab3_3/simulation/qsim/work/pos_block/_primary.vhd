library verilog;
use verilog.vl_types.all;
entity pos_block is
    port(
        F               : out    vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        A               : in     vl_logic
    );
end pos_block;
