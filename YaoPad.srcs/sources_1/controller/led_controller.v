/*
 * sram_spartan: a Wishbone wrapper 
 */
`include "defines.vh"

/* 
States:

IDLE<-----------------------------
|                                |
|                                |
|-> PartWrite  					 |
|     |							 |
|     v							 |
|->	Write0 -> Write1 -> Write2 --|
|                                |
|                                |
-->	Read0 -> Read1 ---------------

 */

module led(
	input wire clk,	input wire rst,	

	input wire[`WordBus]           wishbone_addr_i,
	input wire[`WordBus]           wishbone_data_i,
	input wire                    wishbone_we_i,
	input wire[3:0]               wishbone_sel_i,
	input wire                    wishbone_stb_i,
	input wire                    wishbone_cyc_i,
	
	output reg[`WordBus]           wishbone_data_o,
	output reg                    wishbone_ack_o,

	output reg[`WordBus] led_o
);

	wire writing;

	// Internal Assignments
	assign writing = wishbone_stb_i & wishbone_cyc_i & wishbone_we_i;

	always @ (posedge clk)
	begin
		if (rst == `Enable) begin
			led_o <= `Zero ;
			wishbone_ack_o <= `Disable ;
			wishbone_data_o <= `Zero ;
		end else if(wishbone_ack_o == `Enable) begin
			wishbone_ack_o <= `Disable ;
		end else if(writing) begin
			wishbone_ack_o <= `Enable ;
			if (wishbone_sel_i[0] == 1'b1)
				led_o[7:0] <= wishbone_data_i[7:0];
			if (wishbone_sel_i[1] == 1'b1)
				led_o[15:8] <= wishbone_data_i[15:8];
			if (wishbone_sel_i[2] == 1'b1)
				led_o[23:16] <= wishbone_data_i[23:16];
			if (wishbone_sel_i[3] == 1'b1)
				led_o[31:24] <= wishbone_data_i[31:24];			
			wishbone_data_o <= wishbone_data_i ;
		end
	end
	 
endmodule