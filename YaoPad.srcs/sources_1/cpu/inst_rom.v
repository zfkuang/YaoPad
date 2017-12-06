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
// Module:  inst_rom
// File:    inst_rom.v
// Author:  Lei Silei
// E-mail:  leishangwen@163.com
// Description: ָ��洢��
// Revision: 1.0
//////////////////////////////////////////////////////////////////////

`include "defines.vh"

module inst_rom(

//	input	wire										clk,
	input wire                    ce,
	input wire[`WordBus]			addr,
	output reg[`WordBus]					inst,
	output reg ack
	
);

	reg[`WordBus]  inst_mem[0:1000];

	initial $readmemh ( "inst_rom.data", inst_mem );

	always @ (*) begin
		if (ce == `Disable) begin
			inst <= `Zero;
			ack <= `Disable;
	  end else begin
		  inst <= inst_mem[addr[`MemNumLog+1:2]]; //gao wei bu 0
		  ack <= `Enable;
		end
	end

endmodule