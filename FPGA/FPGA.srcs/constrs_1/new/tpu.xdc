#create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports clk]
# ----------------------------------------------------------------------------
# User LEDs - Bank 33
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN T22 [get_ports {led[0]}];  # "LD0"
#set_property PACKAGE_PIN T21 [get_ports {led[1]}];  # "LD1"
#set_property PACKAGE_PIN U22 [get_ports {led[2]}];  # "LD2"
#set_property PACKAGE_PIN U21 [get_ports {led[3]}];  # "LD3"
#set_property PACKAGE_PIN V22 [get_ports {LD4}];  # "LD4"
#set_property PACKAGE_PIN W22 [get_ports {LD5}];  # "LD5"
#set_property PACKAGE_PIN U19 [get_ports {LD6}];  # "LD6"
#set_property PACKAGE_PIN U14 [get_ports {LD7}];  # "LD7"
# ----------------------------------------------------------------------------
# User Push Buttons - Bank 34
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN P16 [get_ports {BTNC}];  # "BTNC"
#set_property PACKAGE_PIN R16 [get_ports {BTND}];  # "BTND"
#set_property PACKAGE_PIN N15 [get_ports {BTNL}];  # "BTNL"
#set_property PACKAGE_PIN R18 [get_ports {BTNR}];  # "BTNR"
#set_property PACKAGE_PIN T18 [get_ports {BTNU}];  # "BTNU"
# ----------------------------------------------------------------------------
# User Push Buttons - Bank 34
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN P16 [get_ports {start_vld}];  # "BTNC"
#set_property PACKAGE_PIN R16 [get_ports {rst_n}];  # "BTND"
#set_property PACKAGE_PIN N15 [get_ports {wfi}];  # "BTNL"
#set_property PACKAGE_PIN R18 [get_ports {BTNR}];  # "BTNR"
#set_property PACKAGE_PIN T18 [get_ports {BTNU}];  # "BTNU"

#clk
set_property -dict { PACKAGE_PIN Y9   IOSTANDARD LVCMOS33 } [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0.000 5.000} [get_ports clk]
#create_clock -period 10.000 -name clk -waveform {0.000 5.000} -add [get_ports clk]
#set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports clk_in]
#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_in]

#button
set_property PACKAGE_PIN T18 [get_ports {rst_n_in}]
set_property IOSTANDARD LVCMOS33 [get_ports {rst_n_in}]
set_property PACKAGE_PIN P16 [get_ports {start_vld_in}]
set_property IOSTANDARD LVCMOS33 [get_ports {start_vld_in}]

# Led0
set_property PACKAGE_PIN T22 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property PACKAGE_PIN T21 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property PACKAGE_PIN U22 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property PACKAGE_PIN U21 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property PACKAGE_PIN U14 [get_ports {wfi}]
set_property IOSTANDARD LVCMOS33 [get_ports {wfi}]

#solve combinational loop
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets u_lsu/ff_lsu_mxu_act_vld/q_reg[0]_1];
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets u_alu/ff_alu_lsu_wb_vld/lsu_riscv_finish];
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets u_lsu/ff_lsu_mxu_act_vld/q_reg[0]_90];