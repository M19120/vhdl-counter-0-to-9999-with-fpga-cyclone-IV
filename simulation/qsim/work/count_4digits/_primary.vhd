library verilog;
use verilog.vl_types.all;
entity count_4digits is
    port(
        clk_gen         : in     vl_logic;
        reset           : in     vl_logic;
        ini_but         : in     vl_logic;
        numbers         : out    vl_logic_vector(7 downto 0);
        digit           : out    vl_logic_vector(3 downto 0)
    );
end count_4digits;
