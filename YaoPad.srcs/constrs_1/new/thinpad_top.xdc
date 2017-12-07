#Clock
set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS33} [get_ports clk100] ;#50MHz main clock in
create_clock -period 20.000 -name clk -waveform {0.000 10.000} [get_ports clk100] ;

set_property -dict {PACKAGE_PIN C18 IOSTANDARD LVCMOS33} [get_ports clk_uart_in] ;#11.0592MHz clock for UART
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_uart_in_IBUF]
create_clock -period 90.422 -name clk_uart_in -waveform {0.000 45.211} [get_ports clk_uart_in]


set_property IOSTANDARD LVCMOS33 [get_ports rst] ;
set_property PACKAGE_PIN F22 [get_ports rst] ;#BTN6
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets rst_IBUF]


set_property IOSTANDARD LVCMOS33 [get_ports click] ;
set_property PACKAGE_PIN H19 [get_ports click] ;#BTN5
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets click_IBUF]

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

#CPLD
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports {uart_wrn}]
set_property -dict {PACKAGE_PIN K22 IOSTANDARD LVCMOS33} [get_ports {uart_rdn}]
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS33} [get_ports {uart_tbre}]
set_property -dict {PACKAGE_PIN M16 IOSTANDARD LVCMOS33} [get_ports {uart_tsre}]
set_property -dict {PACKAGE_PIN J24 IOSTANDARD LVCMOS33} [get_ports {uart_dataready}]

#Ext serial
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN L19} [get_ports txd] ;#GPIO5
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN K21} [get_ports rxd] ;#GPIO6


set_property IOSTANDARD LVCMOS33 [get_ports {base_ram_addr[*]}]
set_property PACKAGE_PIN F24 [get_ports {base_ram_addr[0]}]
set_property PACKAGE_PIN G24 [get_ports {base_ram_addr[1]}]
set_property PACKAGE_PIN L24 [get_ports {base_ram_addr[2]}]
set_property PACKAGE_PIN L23 [get_ports {base_ram_addr[3]}]
set_property PACKAGE_PIN N16 [get_ports {base_ram_addr[4]}]
set_property PACKAGE_PIN G21 [get_ports {base_ram_addr[5]}]
set_property PACKAGE_PIN K17 [get_ports {base_ram_addr[6]}]
set_property PACKAGE_PIN L17 [get_ports {base_ram_addr[7]}]
set_property PACKAGE_PIN J15 [get_ports {base_ram_addr[8]}]
set_property PACKAGE_PIN H23 [get_ports {base_ram_addr[9]}]
set_property PACKAGE_PIN P14 [get_ports {base_ram_addr[10]}]
set_property PACKAGE_PIN L14 [get_ports {base_ram_addr[11]}]
set_property PACKAGE_PIN L15 [get_ports {base_ram_addr[12]}]
set_property PACKAGE_PIN K15 [get_ports {base_ram_addr[13]}]
set_property PACKAGE_PIN J14 [get_ports {base_ram_addr[14]}]
set_property PACKAGE_PIN M24 [get_ports {base_ram_addr[15]}]
set_property PACKAGE_PIN N17 [get_ports {base_ram_addr[16]}]
set_property PACKAGE_PIN N23 [get_ports {base_ram_addr[17]}]
set_property PACKAGE_PIN N24 [get_ports {base_ram_addr[18]}]
set_property PACKAGE_PIN P23 [get_ports {base_ram_addr[19]}]
set_property IOSTANDARD LVCMOS33 [get_ports {base_ram_be_n[*]}]
set_property PACKAGE_PIN M26 [get_ports {base_ram_be_n[0]}]
set_property PACKAGE_PIN L25 [get_ports {base_ram_be_n[1]}]
set_property PACKAGE_PIN D26 [get_ports {base_ram_be_n[2]}]
set_property PACKAGE_PIN D25 [get_ports {base_ram_be_n[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {base_ram_data[*]}]
set_property PACKAGE_PIN M22 [get_ports {base_ram_data[24]}]
set_property PACKAGE_PIN N14 [get_ports {base_ram_data[25]}]
set_property PACKAGE_PIN N22 [get_ports {base_ram_data[26]}]
set_property PACKAGE_PIN R20 [get_ports {base_ram_data[27]}]
set_property PACKAGE_PIN M25 [get_ports {base_ram_data[28]}]
set_property PACKAGE_PIN N26 [get_ports {base_ram_data[29]}]
set_property PACKAGE_PIN P26 [get_ports {base_ram_data[30]}]
set_property PACKAGE_PIN P25 [get_ports {base_ram_data[31]}]
set_property PACKAGE_PIN J23 [get_ports {base_ram_data[16]}]
set_property PACKAGE_PIN J18 [get_ports {base_ram_data[17]}]
set_property PACKAGE_PIN E26 [get_ports {base_ram_data[18]}]
set_property PACKAGE_PIN H21 [get_ports {base_ram_data[19]}]
set_property PACKAGE_PIN H22 [get_ports {base_ram_data[20]}]
set_property PACKAGE_PIN H18 [get_ports {base_ram_data[21]}]
set_property PACKAGE_PIN G22 [get_ports {base_ram_data[22]}]
set_property PACKAGE_PIN J16 [get_ports {base_ram_data[23]}]
set_property PACKAGE_PIN N19 [get_ports {base_ram_data[8]}]
set_property PACKAGE_PIN P18 [get_ports {base_ram_data[9]}]
set_property PACKAGE_PIN P19 [get_ports {base_ram_data[10]}]
set_property PACKAGE_PIN R18 [get_ports {base_ram_data[11]}]
set_property PACKAGE_PIN K20 [get_ports {base_ram_data[12]}]
set_property PACKAGE_PIN M19 [get_ports {base_ram_data[13]}]
set_property PACKAGE_PIN L22 [get_ports {base_ram_data[14]}]
set_property PACKAGE_PIN M21 [get_ports {base_ram_data[15]}]
set_property PACKAGE_PIN K26 [get_ports {base_ram_data[0]}]
set_property PACKAGE_PIN K25 [get_ports {base_ram_data[1]}]
set_property PACKAGE_PIN J26 [get_ports {base_ram_data[2]}]
set_property PACKAGE_PIN J25 [get_ports {base_ram_data[3]}]
set_property PACKAGE_PIN H26 [get_ports {base_ram_data[4]}]
set_property PACKAGE_PIN G26 [get_ports {base_ram_data[5]}]
set_property PACKAGE_PIN G25 [get_ports {base_ram_data[6]}]
set_property PACKAGE_PIN F25 [get_ports {base_ram_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports base_ram_ce_n]
set_property PACKAGE_PIN K18 [get_ports base_ram_ce_n]
set_property IOSTANDARD LVCMOS33 [get_ports base_ram_oe_n]
set_property PACKAGE_PIN K16 [get_ports base_ram_oe_n]
set_property IOSTANDARD LVCMOS33 [get_ports base_ram_we_n]
set_property PACKAGE_PIN P24 [get_ports base_ram_we_n]

set_property IOSTANDARD LVCMOS33 [get_ports {ext_ram_addr[*]}]
set_property PACKAGE_PIN Y21 [get_ports {ext_ram_addr[0]}]
set_property PACKAGE_PIN Y26 [get_ports {ext_ram_addr[1]}]
set_property PACKAGE_PIN AA25 [get_ports {ext_ram_addr[2]}]
set_property PACKAGE_PIN Y22 [get_ports {ext_ram_addr[3]}]
set_property PACKAGE_PIN Y23 [get_ports {ext_ram_addr[4]}]
set_property PACKAGE_PIN T18 [get_ports {ext_ram_addr[5]}]
set_property PACKAGE_PIN T23 [get_ports {ext_ram_addr[6]}]
set_property PACKAGE_PIN T24 [get_ports {ext_ram_addr[7]}]
set_property PACKAGE_PIN U19 [get_ports {ext_ram_addr[8]}]
set_property PACKAGE_PIN V24 [get_ports {ext_ram_addr[9]}]
set_property PACKAGE_PIN W26 [get_ports {ext_ram_addr[10]}]
set_property PACKAGE_PIN W24 [get_ports {ext_ram_addr[11]}]
set_property PACKAGE_PIN Y25 [get_ports {ext_ram_addr[12]}]
set_property PACKAGE_PIN W23 [get_ports {ext_ram_addr[13]}]
set_property PACKAGE_PIN W21 [get_ports {ext_ram_addr[14]}]
set_property PACKAGE_PIN V14 [get_ports {ext_ram_addr[15]}]
set_property PACKAGE_PIN U14 [get_ports {ext_ram_addr[16]}]
set_property PACKAGE_PIN T14 [get_ports {ext_ram_addr[17]}]
set_property PACKAGE_PIN U15 [get_ports {ext_ram_addr[18]}]
set_property PACKAGE_PIN T15 [get_ports {ext_ram_addr[19]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ext_ram_be_n[*]}]
set_property PACKAGE_PIN U26 [get_ports {ext_ram_be_n[0]}]
set_property PACKAGE_PIN T25 [get_ports {ext_ram_be_n[1]}]
set_property PACKAGE_PIN R17 [get_ports {ext_ram_be_n[2]}]
set_property PACKAGE_PIN R21 [get_ports {ext_ram_be_n[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ext_ram_data[*]}]
set_property PACKAGE_PIN W20 [get_ports {ext_ram_data[0]}]
set_property PACKAGE_PIN W19 [get_ports {ext_ram_data[1]}]
set_property PACKAGE_PIN V19 [get_ports {ext_ram_data[2]}]
set_property PACKAGE_PIN W18 [get_ports {ext_ram_data[3]}]
set_property PACKAGE_PIN V18 [get_ports {ext_ram_data[4]}]
set_property PACKAGE_PIN T17 [get_ports {ext_ram_data[5]}]
set_property PACKAGE_PIN V16 [get_ports {ext_ram_data[6]}]
set_property PACKAGE_PIN V17 [get_ports {ext_ram_data[7]}]
set_property PACKAGE_PIN V22 [get_ports {ext_ram_data[8]}]
set_property PACKAGE_PIN W25 [get_ports {ext_ram_data[9]}]
set_property PACKAGE_PIN V23 [get_ports {ext_ram_data[10]}]
set_property PACKAGE_PIN V21 [get_ports {ext_ram_data[11]}]
set_property PACKAGE_PIN U22 [get_ports {ext_ram_data[12]}]
set_property PACKAGE_PIN V26 [get_ports {ext_ram_data[13]}]
set_property PACKAGE_PIN U21 [get_ports {ext_ram_data[14]}]
set_property PACKAGE_PIN U25 [get_ports {ext_ram_data[15]}]
set_property PACKAGE_PIN AC24 [get_ports {ext_ram_data[16]}]
set_property PACKAGE_PIN AC26 [get_ports {ext_ram_data[17]}]
set_property PACKAGE_PIN AB25 [get_ports {ext_ram_data[18]}]
set_property PACKAGE_PIN AB24 [get_ports {ext_ram_data[19]}]
set_property PACKAGE_PIN AA22 [get_ports {ext_ram_data[20]}]
set_property PACKAGE_PIN AA24 [get_ports {ext_ram_data[21]}]
set_property PACKAGE_PIN AB26 [get_ports {ext_ram_data[22]}]
set_property PACKAGE_PIN AA23 [get_ports {ext_ram_data[23]}]
set_property PACKAGE_PIN R25 [get_ports {ext_ram_data[24]}]
set_property PACKAGE_PIN R23 [get_ports {ext_ram_data[25]}]
set_property PACKAGE_PIN R26 [get_ports {ext_ram_data[26]}]
set_property PACKAGE_PIN U20 [get_ports {ext_ram_data[27]}]
set_property PACKAGE_PIN T22 [get_ports {ext_ram_data[28]}]
set_property PACKAGE_PIN R22 [get_ports {ext_ram_data[29]}]
set_property PACKAGE_PIN T20 [get_ports {ext_ram_data[30]}]
set_property PACKAGE_PIN R14 [get_ports {ext_ram_data[31]}]
set_property IOSTANDARD LVCMOS33 [get_ports ext_ram_ce_n]
set_property PACKAGE_PIN Y20 [get_ports ext_ram_ce_n]
set_property IOSTANDARD LVCMOS33 [get_ports ext_ram_oe_n]
set_property PACKAGE_PIN U24 [get_ports ext_ram_oe_n]
set_property IOSTANDARD LVCMOS33 [get_ports ext_ram_we_n]
set_property PACKAGE_PIN U16 [get_ports ext_ram_we_n]



set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]