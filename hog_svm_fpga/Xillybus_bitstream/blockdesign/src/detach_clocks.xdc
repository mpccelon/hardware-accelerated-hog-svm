# Tell Vivado that the input and output of the stream_clk_gen clock
# synthesizer should be treated as unrelated

set_clock_groups -asynchronous \
    -group [get_clocks -include_generated_clocks -of [get_pins -hier -filter {name=~*/stream_clk_gen/clk_in1}] ] \
    -group [get_clocks -include_generated_clocks -of [get_pins -hier -filter {name=~*/stream_clk_gen/clk_out1}] ]
