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
// Description: 基于OpenMIPS处理器的一个简单SOPC，用于验证具备了
//              wishbone总线接口的openmips，该SOPC包含openmips、
//              wb_conmax、GPIO controller、flash controller，uart 
//              controller，以及用来仿真flash的模块flashmem，在其中
//              存储指令，用来仿真外部ram的模块datamem，在其中存储
//              数据，并且具有wishbone总线接口    
// Revision: 1.0
//////////////////////////////////////////////////////////////////////

`include "defines.vh"
`include "cpu/cpu.v"
`include "cpu/inst_rom.v"
`include "cpu/data_ram.v"

module openmips_min_sopc(

	input wire clk,
	input wire	rst,
	input wire	click,
	
	inout wire[31:0] base_ram_data, // [7:0] also connected to CPLD
    output wire[19:0] base_ram_addr,
    output wire[3:0] base_ram_be_n,
    output wire base_ram_ce_n,
    output wire base_ram_oe_n,
    output wire base_ram_we_n,
    
    inout wire[31:0] ext_ram_data,
    output wire[19:0] ext_ram_addr,
    output wire[3:0] ext_ram_be_n,
    output wire ext_ram_ce_n,
    output wire ext_ram_oe_n,
    output wire ext_ram_we_n,
    
    
	input wire[`RegAddrBus] debug,
	output wire[`WordBus] led
	
);

  //连接指令存储器
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
  
 assign  base_ram_addr = inst_addr[21:2];
 assign base_ram_ce_n =  1'b0;
 assign base_ram_oe_n =  1'b0;
 assign base_ram_we_n = 1'b1;
 assign base_ram_be_n = 4'b0000;
 assign base_ram_data = (base_ram_oe_n==1'b0) ? 32'bz : 32'b0;
 
 reg[31:0] inst_get;
 
always @(*)
    if (rom_ce)
        inst_get <= base_ram_data;
 
//assign led[31:16] = base_ram_addr[15:0];
//assign led[15:8] = inst_get[7:0];
 wire[31:0] debugdata;
 assign led[31:0] = debugdata[31:0];
 //assign led[31:24] = inst_get[7:0];
 cpu cpu0(
		.clk(click),
		.rst(rst),
	
		.rom_addr_o(inst_addr),
		.rom_data_i(inst_get),
		.rom_ce_o(rom_ce),

		.ram_data_i(mem_data_o),
    	.ram_data_o(mem_data_i),
    	.ram_addr_o(mem_addr_i),
    	.ram_sel_o(mem_sel_i),
    	.ram_we_o(mem_we_i),
    	.ram_ce_o(mem_ce_i),

    	.timer_int_o(timer_int),
    	.int_i(int),
        .debugdata(debugdata),
        .debug(debug)
	);
	/*
	
	inst_rom inst_rom0(
		.addr(inst_addr),
		.inst(inst),
		.ce(rom_ce)	
	);
    */
    //real mem
    reg[31:0] data_get;
    
   always @(*)
       if (ext_ram_we_n)
           data_get <= ext_ram_data;
    assign ext_ram_data = (mem_we_i == 1'b1) ? mem_data_i : 32'bz;
    assign ext_ram_addr = mem_addr_i[21:2];
    assign ext_ram_be_n = (~mem_sel_i);
    assign ext_ram_ce_n = (~mem_ce_i);
    assign ext_ram_oe_n = mem_we_i;
    assign ext_ram_we_n = (~mem_we_i);
    assign mem_data_o = data_get;
    
   /*
   // fake mem
	data_ram data_ram0(
		.clk(clk),
		.we(mem_we_i),
		.addr(mem_addr_i),
		.sel(mem_sel_i),
		.data_i(mem_data_i),
		.data_o(mem_data_o),
		.ce(mem_ce_i)		
	);
	*/
endmodule
