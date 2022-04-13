library verilog;
use verilog.vl_types.all;
entity look_door_01_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        reset           : in     vl_logic;
        sw0             : in     vl_logic;
        sw1             : in     vl_logic;
        sw2             : in     vl_logic;
        sw3             : in     vl_logic;
        sw4             : in     vl_logic;
        sw5             : in     vl_logic;
        sw6             : in     vl_logic;
        sw7             : in     vl_logic;
        sw8             : in     vl_logic;
        sw9             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end look_door_01_vlg_sample_tst;
