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
`include "cpu.v"
`include "inst_rom.v"
`include "data_ram.v"

module openmips_min_sopc(

	input wire clk,
	//input wire clk100,
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

  //����ָ��洢��?
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

  wire rom_ack;
  wire ram_ack;


  reg click2;

  always @ (posedge click or negedge rst) begin
	if(rst == `Enable) begin
		click2 <= `Disable;
	end
	else begin
		click2 = ~click2;
	end
  end
  
 assign  base_ram_addr = inst_addr[21:2];
 assign base_ram_ce_n =  1'b0;
 assign base_ram_oe_n =  1'b0;
 assign base_ram_we_n = 1'b1;
 assign base_ram_be_n = 4'b0000;
 assign base_ram_data = (base_ram_oe_n==1'b0) ? 32'bz : 32'b0;
 assign rom_ack = `Enable;
 assign ram_ack = `Enable;
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
		.clk(clk),
		.rst(rst),
		.clk100(clk),

		.iwishbone_addr_o(inst_addr),
		.iwishbone_data_i(inst_get),
		//.iwishbone_data_o(inst),
		//.rom_ce_o(rom_ce),
		.iwishbone_ack_i(rom_ack),
		//.iwishbone_stb_o(`Enable),
		//.iwishbone_cyc_o(`Enable),
		//.iwishbone_we_o(`Enable),

		.dwishbone_data_i(mem_data_o),
    	.dwishbone_data_o(mem_data_i),
    	.dwishbone_addr_o(mem_addr_i),
    	.dwishbone_sel_o(mem_sel_i),
    	.dwishbone_we_o(mem_we_i),
    	//.ram_ce_o(mem_ce_i),
		.dwishbone_ack_i(ram_ack),
		//.dwishbone_stb_o(`Enable),
		//.dwishbone_cyc_o(`Enable),

    	.timer_int_o(timer_int),
    	.int_i(int),
        .debugdata(debugdata),
        .debug(debug)
	);
	/*
	
	inst_rom inst_rom0(
		.addr(inst_addr),
		.inst(inst),
		.ce(rom_ce),
		.ack(rom_ack)
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
		.ce(mem_ce_i),
		.ack(ram_ack)
	);
	*/
endmodule
