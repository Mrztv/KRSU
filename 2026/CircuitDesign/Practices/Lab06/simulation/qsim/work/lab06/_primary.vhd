library verilog;
use verilog.vl_types.all;
entity lab06 is
    port(
        HEX0            : out    vl_logic_vector(0 to 6);
        SW              : in     vl_logic_vector(0 to 8);
        HEX1            : out    vl_logic_vector(0 to 6);
        HEX2            : out    vl_logic_vector(0 to 6);
        HEX3            : out    vl_logic_vector(0 to 6);
        LEDG            : out    vl_logic_vector(4 downto 0)
    );
end lab06;
