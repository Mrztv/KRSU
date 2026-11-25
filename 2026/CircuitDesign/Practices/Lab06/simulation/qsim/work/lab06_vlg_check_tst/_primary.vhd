library verilog;
use verilog.vl_types.all;
entity lab06_vlg_check_tst is
    port(
        HEX0            : in     vl_logic_vector(0 to 6);
        HEX1            : in     vl_logic_vector(0 to 6);
        HEX2            : in     vl_logic_vector(0 to 6);
        HEX3            : in     vl_logic_vector(0 to 6);
        LEDG            : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end lab06_vlg_check_tst;
