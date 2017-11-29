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

	input	wire										clk,
	input wire										rst
	
);

  //����ָ��洢��
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

 cpu cpu0(
		.clk(clk),
		.rst(rst),
	
		.iwishbone_addr_o(inst_addr),
		.iwishbone_data_i(inst),
		.iwishbone_data_o(inst),
		//.rom_ce_o(rom_ce),
		//.iwishbone_ack_i(`Enable),
		//.iwishbone_stb_o(`Enable),
		//.iwishbone_cyc_o(`Enable),
		//.iwishbone_we_o(`Enable),

		.dwishbone_data_i(mem_data_o),
    	.dwishbone_data_o(mem_data_i),
    	.dwishbone_addr_o(mem_addr_i),
    	.dwishbone_sel_o(mem_sel_i),
    	.dwishbone_we_o(mem_we_i),
    	//.ram_ce_o(mem_ce_i),
		//.dwishbone_ack_i(`Enable),
		//.dwishbone_stb_o(`Enable),
		//.dwishbone_cyc_o(`Enable),

    	.timer_int_o(timer_int),
    	.int_i(int) 

	);
	
	inst_rom inst_rom0(
		.addr(inst_addr),
		.inst(inst),
		.ce(rom_ce)	
	);

	data_ram data_ram0(
		.clk(clk),
		.we(mem_we_i),
		.addr(mem_addr_i),
		.sel(mem_sel_i),
		.data_i(mem_data_i),
		.data_o(mem_data_o),
		.ce(mem_ce_i)		
	);
endmodule
