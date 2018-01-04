//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2014 leishangwen@163.com                       ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
// Module:  openmips_min_sopc
// File:    openmips_min_sopc.v
// Author:  Lei Silei
// E-mail:  leishangwen@163.com
// Description: ����OpenMIPS��������һ����SOPC��������֤�߱���
//              wishbone���߽ӿڵ�openmips����SOPC����openmips��
//              wb_conmax��GPIO controller��flash controller��uart 
//              controller���Լ���������flash��ģ��flashmem��������
//              �洢ָ����������ⲿram��ģ��datamem�������д洢
//              ���ݣ����Ҿ���wishbone���߽ӿ�    
// Revision: 1.0
//////////////////////////////////////////////////////////////////////

`include "defines.vh"
`include "cpu/cpu.v"
`include "cpu/data_ram.v"
`include "controller/sram_controller.v"
`include "controller/led_controller.v"
`include "wb_conmax.v"
`include "controller/uart_header.v"
//`include "clk_wiz_0.xci"

module openmips_min_sopc(

	input wire clk,
	input wire rst,
	input wire click,
	input wire clk100,
	input wire rxd,
	output wire txd,

	inout wire[`WordBus] base_ram_data, // [7:0] also connected to CPLD
	output wire[19:0] base_ram_addr,
	output wire[3:0] base_ram_be_n,
	output wire base_ram_ce_n,
	output wire base_ram_oe_n,
	output wire base_ram_we_n,

	inout wire[`WordBus] ext_ram_data,
	output wire[19:0] ext_ram_addr,
	output wire[3:0] ext_ram_be_n,
	output wire ext_ram_ce_n,
	output wire ext_ram_oe_n,
	output wire ext_ram_we_n,


	input wire[`DebugBus] debug,
	output wire[`WordBus] led_o

);

  //����ָ��洢�?
  wire[`WordBus] inst_addr;
  wire[`WordBus] inst;
  wire rom_ce;

  wire mem_we_i;
  wire[`WordBus] mem_addr_i;
  wire[`WordBus] mem_data_i;
  wire[`WordBus] mem_data_o;
  wire[3:0] mem_sel_i;  
  wire mem_ce_i;  
  wire timer_int;
  wire[5:0] int = {5'b00000, timer_int};
  

 
//  wire clk40 ;
// clk_wiz_0 clk_wiz_00(
//     .clk_out1(clk40),
//     .reset(rst),
//     .clk_in1(clk)
// );
 
 reg[25:0] slowclk ;
 // initial begin slowclk = 22'b0 ;end
 always @ (posedge clk) begin
      slowclk <= slowclk+1 ;
 end
 reg halfclk ;
 always @ ( posedge clk ) begin
    halfclk <= ~halfclk ;
 end
 reg[`WordBus] inst_get;
 
always @(*)
    if (rom_ce)
        inst_get <= base_ram_data;
 
//assign led[31:16] = base_ram_addr[15:0];
//assign led[15:8] = inst_get[7:0];
 wire[`WordBus] debugdata;
 wire[`WordBus] ramdebugdata;
 wire[`WordBus] leddebugdata;
 wire[`WordBus] cp0debugdata ;
 assign led_o = (debug[9]==0) ? ((debug[8]==0) ? ( (debug[7]==0) ? ((debug[6] == 0) ? debugdata : ramdebugdata) : ((debug[6] == 0) ? leddebugdata : cp0debugdata) ) : uart_debug) : dwb_debug;
 //assign led[31:24] = inst_get[7:0];

wire[`WordBus] wb_m0_data_i ;
wire[`WordBus] wb_m0_addr_i ;
wire[3:0] wb_m0_sel_i ;
wire wb_m0_stb_i ;
wire wb_m0_cyc_i ;
wire wb_m0_we_i ;
wire[`WordBus] wb_m0_data_o ;
wire wb_m0_ack_o ;

wire[`WordBus] wb_m1_data_i ;
wire[`WordBus] wb_m1_addr_i ;
wire[3:0] wb_m1_sel_i ;
wire wb_m1_stb_i ;
wire wb_m1_cyc_i ;
wire wb_m1_we_i ;
wire[`WordBus] wb_m1_data_o ;
wire wb_m1_ack_o ;

wire[`WordBus] debug_base_ram_data ;
wire[`WordBus] debug_ext_ram_data ;

 cpu cpu0(
		.clk(clk),
    .clk100(clk),
		.rst(rst),

		.iwishbone_addr_o(wb_m1_addr_i),
		.iwishbone_data_i(wb_m1_data_o),
		.iwishbone_data_o(wb_m1_data_i),
    .iwishbone_sel_o(wb_m1_sel_i),
		.iwishbone_ack_i(wb_m1_ack_o),
		.iwishbone_stb_o(wb_m1_stb_i),
		.iwishbone_cyc_o(wb_m1_cyc_i),
		.iwishbone_we_o(wb_m1_we_i),

		.dwishbone_data_i(wb_m0_data_o),
    .dwishbone_data_o(wb_m0_data_i),
    .dwishbone_addr_o(wb_m0_addr_i),
    .dwishbone_sel_o(wb_m0_sel_i),
    .dwishbone_we_o(wb_m0_we_i),
		.dwishbone_ack_i(wb_m0_ack_o),
		.dwishbone_stb_o(wb_m0_stb_i),
		.dwishbone_cyc_o(wb_m0_cyc_i),

    .base_ram_addr(base_ram_addr), 
    .base_ram_oe_n(base_ram_oe_n),
    .base_ram_ce_n(base_ram_ce_n),
    .base_ram_we_n(base_ram_we_n), 
    .base_ram_be_n(base_ram_be_n),
    .base_ram_data(base_ram_data),

    .ext_ram_addr(ext_ram_addr), 
    .ext_ram_oe_n(ext_ram_oe_n), 
    .ext_ram_ce_n(ext_ram_ce_n), 
    .ext_ram_we_n(ext_ram_we_n),
    .ext_ram_be_n(ext_ram_be_n),
    .ext_ram_data(ext_ram_data),

  	.timer_int_o(timer_int),
  	.int_i(int),
    .debugdata(debugdata),
    .cp0debugdata(cp0debugdata),
    .debug(debug)
	);

  wire[`WordBus] wb_s0_data_o ;
  wire[`WordBus] wb_s0_addr_o ;
  wire[3:0] wb_s0_sel_o ;
  wire wb_s0_stb_o ;
  wire wb_s0_cyc_o ;
  wire wb_s0_we_o ;
  wire[`WordBus] wb_s0_data_i ;
  wire wb_s0_ack_i ;

  wire[`WordBus] wb_s11_data_o ;
  wire[`WordBus] wb_s11_addr_o ;
  wire[3:0] wb_s11_sel_o ;
  wire wb_s11_stb_o ;
  wire wb_s11_cyc_o ;
  wire wb_s11_we_o ;
  wire[`WordBus] wb_s11_data_i ;
  wire wb_s11_ack_i ;

    wire[31:0] s1_data_i;
      wire[31:0] s1_data_o;
      wire[31:0] s1_addr_o;
      wire[3:0]  s1_sel_o;
      wire       s1_we_o; 
      wire       s1_cyc_o; 
      wire       s1_stb_o;
      wire       s1_ack_i;
      
  wire[31:0] uart_debug;
  assign uart_debug = debug[0]==0 ? {s1_data_o[7:0], s1_data_i[7:0], s1_we_o, s1_stb_o, s1_cyc_o, s1_ack_i, s1_sel_o, 3'b0, s1_addr_o[4:0]} : s1_addr_o;

  wire[31:0] dwb_debug;
  assign dwb_debug = {wb_m0_data_o[7:0], wb_m0_data_i[7:0], wb_m0_we_i, wb_m0_stb_i, wb_m0_cyc_i, wb_m0_ack_o, wb_m0_sel_i, 3'b0, wb_m0_addr_i[4:0]};

  wire[31:0] uart_data_o;
  assign s1_data_i = {uart_data_o[7:0],uart_data_o[15:8],uart_data_o[23:16],uart_data_o[31:24]};
  //assign s1_data_i = uart_data_o;
  uart_top uart_top0(
              .wb_clk_i(clk), 
              .wb_rst_i(rst),
              .wb_adr_i(s1_addr_o[4:0]),
              .wb_dat_i(s1_data_o),
              .wb_dat_o(uart_data_o), 
              .wb_we_i(s1_we_o), 
              .wb_stb_i(s1_stb_o), 
              .wb_cyc_i(s1_cyc_o),
              .wb_ack_o(s1_ack_i),
              .wb_sel_i({s1_sel_o[0],s1_sel_o[1],s1_sel_o[2],s1_sel_o[3]}),
              //.wb_sel_i(s1_sel_o),
              .int_o(uart_int),
              .stx_pad_o(txd),
              .srx_pad_i(rxd),
              .cts_pad_i(1'b0),
              .dsr_pad_i(1'b0), 
              .ri_pad_i(1'b0), 
              .dcd_pad_i(1'b0),
              .rts_pad_o(),
              .dtr_pad_o()
          );

  // used interfaces: m0, m1, s0(sram)
  wb_conmax_top wb_conmax0(
    .clk_i(clk), 
    .rst_i(rst),

    .m0_data_i(wb_m0_data_i),
    .m0_data_o(wb_m0_data_o),
    .m0_addr_i(wb_m0_addr_i),
    .m0_sel_i(wb_m0_sel_i),
    .m0_we_i(wb_m0_we_i),
    .m0_cyc_i(wb_m0_cyc_i),
    .m0_stb_i(wb_m0_stb_i),
    .m0_ack_o(wb_m0_ack_o),
    .m0_err_o(),
    .m0_rty_o(),

    .m1_data_i(wb_m1_data_i),
    .m1_data_o(wb_m1_data_o),
    .m1_addr_i(wb_m1_addr_i),
    .m1_sel_i(wb_m1_sel_i),
    .m1_we_i(wb_m1_we_i),
    .m1_cyc_i(wb_m1_cyc_i),
    .m1_stb_i(wb_m1_stb_i),
    .m1_ack_o(wb_m1_ack_o),
    .m1_err_o(),
    .m1_rty_o(),

    .m2_data_i(`Zero),
    .m2_addr_i(`Zero),
    .m2_sel_i(4'b0000),
    .m2_we_i(`Disable),
    .m2_cyc_i(`Disable),
    .m2_stb_i(`Disable),

    .m3_data_i(`Zero),
    .m3_addr_i(`Zero),
    .m3_sel_i(4'b0000),
    .m3_we_i(`Disable),
    .m3_cyc_i(`Disable),
    .m3_stb_i(`Disable),

    .m4_data_i(`Zero),
    .m4_addr_i(`Zero),
    .m4_sel_i(4'b0000),
    .m4_we_i(`Disable),
    .m4_cyc_i(`Disable),
    .m4_stb_i(`Disable),

    .m5_data_i(`Zero),
    .m5_addr_i(`Zero),
    .m5_sel_i(4'b0000),
    .m5_we_i(`Disable),
    .m5_cyc_i(`Disable),
    .m5_stb_i(`Disable),

    .m6_data_i(`Zero),
    .m6_addr_i(`Zero),
    .m6_sel_i(4'b0000),
    .m6_we_i(`Disable),
    .m6_cyc_i(`Disable),
    .m6_stb_i(`Disable),

    .m7_data_i(`Zero),
    .m7_addr_i(`Zero),
    .m7_sel_i(4'b0000),
    .m7_we_i(`Disable),
    .m7_cyc_i(`Disable),
    .m7_stb_i(`Disable),

/*
    .s0_data_o(wb_s0_data_o),
    .s0_addr_o(wb_s0_addr_o),
    .s0_sel_o(wb_s0_sel_o),
    .s0_we_o(wb_s0_we_o),
    .s0_cyc_o(wb_s0_cyc_o),
    .s0_stb_o(wb_s0_stb_o),
    .s0_data_i(wb_s0_data_i),
    .s0_ack_i(wb_s0_ack_i),
    .s0_err_i(`Disable),
    .s0_rty_i(`Disable),
*/
    .s0_ack_i(`Disable),
    .s0_err_i(`Disable),
    .s0_rty_i(`Disable),

    .s1_data_i(s1_data_i),
    .s1_data_o(s1_data_o),
    .s1_addr_o(s1_addr_o),
    .s1_sel_o(s1_sel_o),
    .s1_we_o(s1_we_o),
    .s1_cyc_o(s1_cyc_o),
    .s1_stb_o(s1_stb_o),
    .s1_ack_i(s1_ack_i),
    .s1_err_i(1'b0), 
    .s1_rty_i(1'b0),

    .s2_ack_i(`Disable),
    .s2_err_i(`Disable),
    .s2_rty_i(`Disable),

    .s3_ack_i(`Disable),
    .s3_err_i(`Disable),
    .s3_rty_i(`Disable),

    .s4_ack_i(`Disable),
    .s4_err_i(`Disable),
    .s4_rty_i(`Disable),

    .s5_ack_i(`Disable),
    .s5_err_i(`Disable),
    .s5_rty_i(`Disable),

    .s6_ack_i(`Disable),
    .s6_err_i(`Disable),
    .s6_rty_i(`Disable),

    .s7_ack_i(`Disable),
    .s7_err_i(`Disable),
    .s7_rty_i(`Disable),

    .s8_ack_i(`Disable),
    .s8_err_i(`Disable),
    .s8_rty_i(`Disable),

    .s9_ack_i(`Disable),
    .s9_err_i(`Disable),
    .s9_rty_i(`Disable),

    .s10_ack_i(`Disable),
    .s10_err_i(`Disable),
    .s10_rty_i(`Disable),

    .s11_data_o(wb_s11_data_o),
    .s11_addr_o(wb_s11_addr_o),
    .s11_sel_o(wb_s11_sel_o),
    .s11_we_o(wb_s11_we_o),
    .s11_cyc_o(wb_s11_cyc_o),
    .s11_stb_o(wb_s11_stb_o),
    .s11_data_i(wb_s11_data_i),
    .s11_ack_i(wb_s11_ack_i),
    .s11_err_i(`Disable),
    .s11_rty_i(`Disable),

    .s12_ack_i(`Disable),
    .s12_err_i(`Disable),
    .s12_rty_i(`Disable),

    .s13_ack_i(`Disable),
    .s13_err_i(`Disable),
    .s13_rty_i(`Disable),

    .s14_ack_i(`Disable),
    .s14_err_i(`Disable),
    .s14_rty_i(`Disable),

    .s15_ack_i(`Disable),
    .s15_err_i(`Disable),
    .s15_rty_i(`Disable)
  );

  // assign base_ram_be_n = 4'b0000;
  // assign ext_ram_be_n = 4'b0000;
  /*
  sram sram0(
    .clk(clk), .rst(rst), 

    .wishbone_addr_i(wb_s0_addr_o),
    .wishbone_data_i(wb_s0_data_o),
    .wishbone_we_i(wb_s0_we_o),
    .wishbone_sel_i(wb_s0_sel_o),
    .wishbone_stb_i(wb_s0_stb_o),
    .wishbone_cyc_i(wb_s0_cyc_o),
    
    .wishbone_data_o(wb_s0_data_i),
    .wishbone_ack_o(wb_s0_ack_i),

    .ram0_addr(base_ram_addr), 
    .ram0_oe(base_ram_oe_n),
    .ram0_ce(base_ram_ce_n),
    .ram0_we(base_ram_we_n), 
    .ram0_data(base_ram_data),

    .ram1_addr(ext_ram_addr), 
    .ram1_oe(ext_ram_oe_n), 
    .ram1_ce(ext_ram_ce_n), 
    .ram1_we(ext_ram_we_n),
    .ram1_data(ext_ram_data),
    
    .debugdata(ramdebugdata)
    );
    */

  led led0(
    .clk(clk), .rst(rst), 

    .wishbone_addr_i(wb_s11_addr_o),
    .wishbone_data_i(wb_s11_data_o),
    .wishbone_we_i(wb_s11_we_o),
    .wishbone_sel_i(wb_s11_sel_o),
    .wishbone_stb_i(wb_s11_stb_o),
    .wishbone_cyc_i(wb_s11_cyc_o),
    
    .wishbone_data_o(wb_s11_data_i),
    .wishbone_ack_o(wb_s11_ack_i),

    .led_o(leddebugdata)
    );
   
   //fake mem
	// data_ram data_ram0(
    // .clk(clk),
	// 	.we(~base_ram_we_n),
    // .sel(~base_ram_be_n),
    // .ce(~base_ram_ce_n),
	// 	.addr(base_ram_addr),
	// 	.data(debug_base_ram_data)
	// );
endmodule
