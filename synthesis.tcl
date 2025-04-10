# Set the design name
set design rsa_top

# Set library paths and target libraries
set_db init_hdl_search_path {/home/student/test/typical/Synthesis }
set_db lib_search_path { /home/student/test/typical/Synthesis }
set_db library { typical.lib } 
set_db lef_library { gsclib045_tech.lef gsclib045_macro.lef }
 
 
# Read Verilog files
read_hdl mod_exp.v
read_hdl rsa_encrypt.v
read_hdl rsa_decrypt.v
read_hdl rsa_top.v

# Elaborate the design
elaborate  rsa_top
create_clock -name clk -period 800 [get_ports clk ]
current_design rsa_top


set power_effort high
set mvthresh_optimize true
set optimize_clock_power true
set dont_use power_hungry_cells.lib
set dynamic_power_effort high


    
syn_gen

syn_map

syn_opt


# Generate reports
report timing >>   reports_new/timing.rpt
report area   >>   reports_new/area  .rpt
report power  >>   reports_new/power .rpt
#report clock_gating >> reports/clock_gating.rpt


# Write synthesized netlist
write_hdl >> outputs_new/rsa_netlist.v
write_sdc >> outputs_new/rsa_synthesized.sdc
write_sdf >> outputs_new/delays.sdf

