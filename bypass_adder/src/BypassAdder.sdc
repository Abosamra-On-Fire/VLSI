###############################################################################
# Created by write_sdc
###############################################################################
current_design BypassAdder
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clock -period 10.0000 
set_clock_uncertainty 0.2500 clock
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[0]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[10]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[11]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[12]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[13]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[14]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[15]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[16]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[17]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[18]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[19]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[1]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[20]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[21]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[22]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[23]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[24]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[25]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[26]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[27]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[28]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[29]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[2]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[30]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[31]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[3]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[4]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[5]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[6]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[7]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[8]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {A[9]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[0]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[10]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[11]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[12]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[13]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[14]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[15]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[16]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[17]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[18]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[19]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[1]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[20]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[21]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[22]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[23]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[24]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[25]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[26]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[27]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[28]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[29]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[2]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[30]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[31]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[3]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[4]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[5]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[6]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[7]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[8]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {B[9]}]
set_input_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Cin}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Cout}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[0]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[10]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[11]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[12]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[13]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[14]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[15]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[16]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[17]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[18]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[19]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[1]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[20]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[21]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[22]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[23]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[24]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[25]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[26]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[27]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[28]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[29]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[2]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[30]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[31]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[3]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[4]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[5]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[6]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[7]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[8]}]
set_output_delay 2.0000 -clock [get_clocks {clock}] -add_delay [get_ports {Sum[9]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {Cout}]
set_load -pin_load 0.0334 [get_ports {Sum[31]}]
set_load -pin_load 0.0334 [get_ports {Sum[30]}]
set_load -pin_load 0.0334 [get_ports {Sum[29]}]
set_load -pin_load 0.0334 [get_ports {Sum[28]}]
set_load -pin_load 0.0334 [get_ports {Sum[27]}]
set_load -pin_load 0.0334 [get_ports {Sum[26]}]
set_load -pin_load 0.0334 [get_ports {Sum[25]}]
set_load -pin_load 0.0334 [get_ports {Sum[24]}]
set_load -pin_load 0.0334 [get_ports {Sum[23]}]
set_load -pin_load 0.0334 [get_ports {Sum[22]}]
set_load -pin_load 0.0334 [get_ports {Sum[21]}]
set_load -pin_load 0.0334 [get_ports {Sum[20]}]
set_load -pin_load 0.0334 [get_ports {Sum[19]}]
set_load -pin_load 0.0334 [get_ports {Sum[18]}]
set_load -pin_load 0.0334 [get_ports {Sum[17]}]
set_load -pin_load 0.0334 [get_ports {Sum[16]}]
set_load -pin_load 0.0334 [get_ports {Sum[15]}]
set_load -pin_load 0.0334 [get_ports {Sum[14]}]
set_load -pin_load 0.0334 [get_ports {Sum[13]}]
set_load -pin_load 0.0334 [get_ports {Sum[12]}]
set_load -pin_load 0.0334 [get_ports {Sum[11]}]
set_load -pin_load 0.0334 [get_ports {Sum[10]}]
set_load -pin_load 0.0334 [get_ports {Sum[9]}]
set_load -pin_load 0.0334 [get_ports {Sum[8]}]
set_load -pin_load 0.0334 [get_ports {Sum[7]}]
set_load -pin_load 0.0334 [get_ports {Sum[6]}]
set_load -pin_load 0.0334 [get_ports {Sum[5]}]
set_load -pin_load 0.0334 [get_ports {Sum[4]}]
set_load -pin_load 0.0334 [get_ports {Sum[3]}]
set_load -pin_load 0.0334 [get_ports {Sum[2]}]
set_load -pin_load 0.0334 [get_ports {Sum[1]}]
set_load -pin_load 0.0334 [get_ports {Sum[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {Cin}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[31]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[30]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[29]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[28]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[27]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[26]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[25]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[24]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[23]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[22]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[21]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[20]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[19]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[18]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[17]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[16]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {A[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[31]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[30]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[29]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[28]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[27]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[26]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[25]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[24]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[23]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[22]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[21]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[20]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[19]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[18]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[17]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[16]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {B[0]}]
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_capacitance 0.2000 [current_design]
set_max_fanout 10.0000 [current_design]