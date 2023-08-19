library verilog;
use verilog.vl_types.all;
entity count_4digits_vlg_sample_tst is
    port(
        clk_gen         : in     vl_logic;
        ini_but         : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end count_4digits_vlg_sample_tst;
