#Clock
set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS33} [get_ports clk] ;#50MHz main clock in
create_clock -period 20.000 -name clk -waveform {0.000 10.000} [get_ports clk] ;


set_property IOSTANDARD LVCMOS33 [get_ports rst] ;
set_property PACKAGE_PIN F22 [get_ports rst] ;#BTN6
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets rst_IBUF]

#set_property IOSTANDARD LVCMOS33 [get_ports clk] ;
#set_property PACKAGE_PIN H19 [get_ports clk] ;#BTN5
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]

set_property IOSTANDARD LVCMOS33 [get_ports {debug[*]}]
set_property PACKAGE_PIN N3 [get_ports {debug[0]}]
set_property PACKAGE_PIN N4 [get_ports {debug[1]}]
set_property PACKAGE_PIN P3 [get_ports {debug[2]}]
set_property PACKAGE_PIN P4 [get_ports {debug[3]}]
set_property PACKAGE_PIN R5 [get_ports {debug[4]}]

#led
set_property IOSTANDARD LVCMOS33 [get_ports {led[*]}]
set_property PACKAGE_PIN A17 [get_ports {led[0]}]
set_property PACKAGE_PIN G16 [get_ports {led[1]}]
set_property PACKAGE_PIN E16 [get_ports {led[2]}]
set_property PACKAGE_PIN H17 [get_ports {led[3]}]
set_property PACKAGE_PIN G17 [get_ports {led[4]}]
set_property PACKAGE_PIN F18 [get_ports {led[5]}]
set_property PACKAGE_PIN F19 [get_ports {led[6]}]
set_property PACKAGE_PIN F20 [get_ports {led[7]}]
set_property PACKAGE_PIN C17 [get_ports {led[8]}]
set_property PACKAGE_PIN F17 [get_ports {led[9]}]
set_property PACKAGE_PIN B17 [get_ports {led[10]}]
set_property PACKAGE_PIN D19 [get_ports {led[11]}]
set_property PACKAGE_PIN A18 [get_ports {led[12]}]
set_property PACKAGE_PIN A19 [get_ports {led[13]}]
set_property PACKAGE_PIN E17 [get_ports {led[14]}]
set_property PACKAGE_PIN E18 [get_ports {led[15]}]

#DPY0
set_property PACKAGE_PIN D16 [get_ports {led[16]}]
set_property PACKAGE_PIN F15 [get_ports {led[17]}]
set_property PACKAGE_PIN H15 [get_ports {led[18]}]
set_property PACKAGE_PIN G15 [get_ports {led[19]}]
set_property PACKAGE_PIN H16 [get_ports {led[20]}]
set_property PACKAGE_PIN H14 [get_ports {led[21]}]
set_property PACKAGE_PIN G19 [get_ports {led[22]}]
set_property PACKAGE_PIN J8 [get_ports {led[23]}]

#DPY2
set_property PACKAGE_PIN H9 [get_ports {led[24]}]
set_property PACKAGE_PIN G8 [get_ports {led[25]}]
set_property PACKAGE_PIN G7 [get_ports {led[26]}]
set_property PACKAGE_PIN G6 [get_ports {led[27]}]
set_property PACKAGE_PIN D6 [get_ports {led[28]}]
set_property PACKAGE_PIN E5 [get_ports {led[29]}]
set_property PACKAGE_PIN F4 [get_ports {led[30]}]
set_property PACKAGE_PIN G5 [get_ports {led[31]}]


set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]