###################################################################

# Created by write_sdc on Tue Dec 24 02:22:13 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance 1.000000e+04kOhm -capacitance 1.000000e-04pF    \
-voltage V -current uA
set_load -pin_load 0.05 [get_ports out_valid]
set_load -pin_load 0.05 [get_ports {O[12]}]
set_load -pin_load 0.05 [get_ports {O[11]}]
set_load -pin_load 0.05 [get_ports {O[10]}]
set_load -pin_load 0.05 [get_ports {O[9]}]
set_load -pin_load 0.05 [get_ports {O[8]}]
set_load -pin_load 0.05 [get_ports {O[7]}]
set_load -pin_load 0.05 [get_ports {O[6]}]
set_load -pin_load 0.05 [get_ports {O[5]}]
set_load -pin_load 0.05 [get_ports {O[4]}]
set_load -pin_load 0.05 [get_ports {O[3]}]
set_load -pin_load 0.05 [get_ports {O[2]}]
set_load -pin_load 0.05 [get_ports {O[1]}]
set_load -pin_load 0.05 [get_ports {O[0]}]
set_ideal_network -no_propagate  [get_ports clk]
create_clock [get_ports clk]  -period 700  -waveform {0 350}
set_input_delay -clock clk  0  [get_ports clk]
set_input_delay -clock clk  0  [get_ports rst_n]
set_input_delay -clock clk  350  [get_ports {P[8]}]
set_input_delay -clock clk  350  [get_ports {P[7]}]
set_input_delay -clock clk  350  [get_ports {P[6]}]
set_input_delay -clock clk  350  [get_ports {P[5]}]
set_input_delay -clock clk  350  [get_ports {P[4]}]
set_input_delay -clock clk  350  [get_ports {P[3]}]
set_input_delay -clock clk  350  [get_ports {P[2]}]
set_input_delay -clock clk  350  [get_ports {P[1]}]
set_input_delay -clock clk  350  [get_ports {P[0]}]
set_output_delay -clock clk  350  [get_ports out_valid]
set_output_delay -clock clk  350  [get_ports {O[12]}]
set_output_delay -clock clk  350  [get_ports {O[11]}]
set_output_delay -clock clk  350  [get_ports {O[10]}]
set_output_delay -clock clk  350  [get_ports {O[9]}]
set_output_delay -clock clk  350  [get_ports {O[8]}]
set_output_delay -clock clk  350  [get_ports {O[7]}]
set_output_delay -clock clk  350  [get_ports {O[6]}]
set_output_delay -clock clk  350  [get_ports {O[5]}]
set_output_delay -clock clk  350  [get_ports {O[4]}]
set_output_delay -clock clk  350  [get_ports {O[3]}]
set_output_delay -clock clk  350  [get_ports {O[2]}]
set_output_delay -clock clk  350  [get_ports {O[1]}]
set_output_delay -clock clk  350  [get_ports {O[0]}]
