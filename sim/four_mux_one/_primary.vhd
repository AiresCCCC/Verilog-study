library verilog;
use verilog.vl_types.all;
entity four_mux_one is
    port(
        d1              : in     vl_logic;
        d2              : in     vl_logic;
        d3              : in     vl_logic;
        d4              : in     vl_logic;
        sel             : in     vl_logic_vector(1 downto 0);
        \out\           : out    vl_logic
    );
end four_mux_one;
