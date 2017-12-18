/*
 * sram_spartan: a ram wrapper 
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
---------->	Read --------------->
 */

`define SRAM_IDLE 3'b000
`define SRAM_READ 3'b001
`define SRAM_WRITE0 3'b010
`define SRAM_WRITE1 3'b011
`define PART_WRITE 3'b110

module sram(
	input wire clk,	
	input wire rst,	

    input wire ram_ce_i,
	input wire[`WordBus] ram_addr_i,
	input wire[`WordBus] ram_data_i,
	input wire ram_we_i,
	input wire[3:0] ram_sel_i,
	
	output wire[`WordBus] ram_data_o,

	// Ports of 2 SRAM chips
	output wire[19:0] ram0_addr, ram1_addr, 	// addr bus
	output wire ram0_oe, ram1_oe,
	output wire ram0_ce, ram1_ce,
	output wire ram0_we, ram1_we,
	inout wire[`WordBus] ram0_data, ram1_data,		// data bus

    output wire[`WordBus] debugdata
);

    assign debugdata = {24'b0, reading, writing, ram0_oe, ram1_oe, ram0_ce, ram1_ce, ram0_we, ram1_we} ;
	wire reading, writing;
	// output buffer

	reg oe, ce, we;
	reg [`RamAddrBus] addr;
	reg [`WordBus] databuf;
	wire [`WordBus] datain[1:0];
	reg [2:0] state;
	wire chipnum;

	// Internal Assignments
	assign reading  = ram_ce_i & ~ram_we_i;
	assign writing = ram_ce_i & ram_we_i;
	
	// ram wires
	assign chipnum = ram_addr_i[`RamAddrLog];
	assign ram0_oe = ~((~chipnum) ? oe : `Disable);
	assign ram0_ce = ~((~chipnum) ? ce : `Disable);
	assign ram0_we = ~((~chipnum) ? we : `Disable);
	assign ram1_oe = ~(chipnum ? oe : `Disable);
	assign ram1_ce = ~(chipnum ? ce : `Disable);
	assign ram1_we = ~(chipnum ? we : `Disable);

	assign ram0_addr = (~chipnum) ? addr[21:2] : 20'h0;
	assign ram1_addr = chipnum ? addr[21:2] : 20'h0;

	assign ram0_data = ram0_oe == `RDisable ? databuf : 32'hz;
	assign ram1_data = ram1_oe == `RDisable ? databuf : 32'hz;

	assign datain[0] = ram0_data;
	assign datain[1] = ram1_data;

	assign ram_data_o = datain[chipnum];

	always @ (posedge clk)
	begin
		if (rst == `Enable)
			state <= `SRAM_IDLE;
		else
			case (state)
				`SRAM_IDLE: begin
					if (reading)
						state <= `SRAM_READ;
					else if (writing)
						if (ram_sel_i == 4'b1111)
							state <= `SRAM_WRITE0;
						else
							state <= `PART_WRITE;
					else
						state <= `SRAM_IDLE;
				end
				`SRAM_READ: state <= `SRAM_IDLE;
				`SRAM_WRITE0: state <= `SRAM_WRITE1;
				`SRAM_WRITE1: state <= `SRAM_IDLE;
				`PART_WRITE: state <= `SRAM_WRITE0;
			endcase
	end

	always @ (posedge clk)
	begin
		if (rst == `Enable) begin
			oe <= `Disable;
			ce <= `Disable;
			we <= `Disable;
		end
		else 
		case (state)
			`SRAM_IDLE: begin
				if(reading) begin
					// READ with ram_addr_i
					ce <= `Enable;
					we <= `Disable;
					oe <= `Enable;
					addr <= ram_addr_i[`RamAddrBus];
				end else if (writing) begin
					if (ram_sel_i != 4'b1111) begin
						// Partial WRITE. Read from the given addr first
						ce <= `Enable;
						we <= `Disable;
						oe <= `Enable;
						addr <= ram_addr_i[`RamAddrBus];
					end
					else begin
						// Full WRITE. Set up data and wait for one cycle
						ce <= `Enable;
						we <= `Disable;
						oe <= `Disable;
						addr <= ram_addr_i[`RamAddrBus];
						databuf <= ram_data_i;
					end
				end
				else begin // IDLE, no request
					ce <= `Disable;
					we <= `Disable;
					oe <= `Disable;
				end
			end
			`PART_WRITE: begin
				// write with previously read data and input
				// set up data and wait for 1c
				ce <= `Enable;
				we <= `Disable;
				oe <= `Disable;
				addr <= ram_addr_i[`RamAddrBus];
				// mask 
				if (ram_sel_i[0] == 1'b1)
					databuf[7:0] <= ram_data_i[7:0];
				else
					databuf[7:0] <= datain[chipnum][7:0];
				if (ram_sel_i[1] == 1'b1)
					databuf[15:8] <= ram_data_i[15:8];
				else
					databuf[15:8] <= datain[chipnum][15:8];
				if (ram_sel_i[2] == 1'b1)
					databuf[23:16] <= ram_data_i[23:16];
				else
					databuf[23:16] <= datain[chipnum][23:16];
				if (ram_sel_i[3] == 1'b1)
					databuf[31:24] <= ram_data_i[31:24];
				else
					databuf[31:24] <= datain[chipnum][31:24];
			end 
			`SRAM_WRITE0: begin
				we <= `Enable;
			end
			default: begin // READ, W1: unset controller
				oe <= `Disable;
				ce <= `Disable;
				we <= `Disable;
			end
		endcase
	end

endmodule