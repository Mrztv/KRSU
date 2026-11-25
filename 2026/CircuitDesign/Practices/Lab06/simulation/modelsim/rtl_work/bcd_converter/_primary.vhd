library verilog;
use verilog.vl_types.all;
entity bcd_converter is
    port(
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        S2              : in     vl_logic;
        S3              : in     vl_logic;
        C0              : in     vl_logic;
        N2X3            : out    vl_logic;
        N2X2            : out    vl_logic;
        N2X1            : out    vl_logic;
        N2X0            : out    vl_logic;
        N1X3            : out    vl_logic;
        N1X2            : out    vl_logic;
        N1X1            : out    vl_logic;
        N1X0            : out    vl_logic
    );
end bcd_converter;
