/*
 * sram_spartan: a Wishbone wrapper 
 */
`include "../cpu/defines.v"

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

`define SRAM_IDLE 3'b000
`define SRAM_READ0   3'b001
`define SRAM_READ1   3'b010
`define SRAM_WRITE0   3'b011
`define SRAM_WRITE1   3'b100
`define SRAM_WRITE2   3'b101
`define PART_WRITE0   3'b110
`define REnable  1'b0
`define RDisable 1'b1
`define RamSel 22
`define RamBus 22:0

module sram(
	input wire clk,	input wire rst,	

	input wire[`WordBus]           wishbone_addr_i,
	input wire[`WordBus]           wishbone_data_i,
	input wire                    wishbone_we_i,
	input wire[3:0]               wishbone_sel_i,
	input wire                    wishbone_stb_i,
	input wire                    wishbone_cyc_i,
	
	output reg[`WordBus]           wishbone_data_o,
	output reg                    wishbone_ack_o,

	output wire[5:0] debug,
	// Ports of 2 SRAM chips
	output wire[19:0] ram0_addr, ram1_addr, 	// addr bus
	output wire ram0_oe, ram1_oe,
	output wire ram0_ce, ram1_ce,
	output wire ram0_we, ram1_we,
	inout wire[31:0] ram0_data, ram1_data		// data bus

);

	wire reading, writing;
	// output buffer

	reg oe, ce, we;
	reg [19:0] addr;
	reg [31:0] databuf;
	wire [31:0] datain[1:0];
	reg [2:0] state;
	wire chipnum;

	// Internal Assignments
	assign reading  = wishbone_stb_i & wishbone_cyc_i & ~wishbone_we_i;
	assign writing = wishbone_stb_i & wishbone_cyc_i & wishbone_we_i;
	
	// ram wires
	assign chipnum = wishbone_addr_i[`RamBus];
	assign ram0_oe = (~chipnum) ? oe : `RDisable;
	assign ram0_ce = (~chipnum) ? ce : `RDisable;
	assign ram0_we = (~chipnum) ? we : `RDisable;
	assign ram1_oe = chipnum ? oe : `RDisable;
	assign ram1_ce = chipnum ? ce : `RDisable;
	assign ram1_we = chipnum ? we : `RDisable;

	assign ram0_addr = (~chipnum) ? addr : 20'h0;
	assign ram1_addr = chipnum ? addr : 20'h0;

	assign ram0_data = ram0_oe == `RDisable ? databuf : 32'hz;
	assign ram1_data = ram1_oe == `RDisable ? databuf : 32'hz;

	assign datain[0] = sram_data0;
	assign datain[1] = sram_data1;

	assign debug = {wb_is_read, wb_is_write, wishbone_ack_o, state};

	always @ (posedge clk)
	begin
		if (rst == `Enable)
			state <= `SRAM_IDLE;
		else
			case (state)
				`SRAM_IDLE: begin
					if (wb_is_read)
						state <= `SRAM_READ0;
					else if (wb_is_write)
						if (wishbone_sel_i == 4'b1111)
							state <= `SRAM_WRITE0;
						else
							state <= `PART_WRITE0;
					else
						state <= `SRAM_IDLE;
				end
				`SRAM_READ0: state <= `SRAM_READ1;
				`SRAM_READ1: state <= `SRAM_IDLE;
				`SRAM_WRITE0: state <= `SRAM_WRITE1;
				`SRAM_WRITE1: state <= `SRAM_WRITE2;
				`SRAM_WRITE2: state <= `SRAM_IDLE;
				`PART_WRITE0: state <= `SRAM_WRITE0;
			endcase
	end

	always @ (posedge clk)
	begin
		if (rst == `Enable) begin
			oe <= `RDisable;
			ce <= `RDisable;
			we <= `RDisable;
		end else if (state == `SRAM_IDLE) begin
			if (wb_is_read) begin
				// READ with wishbone_addr_i
				ce <= `REnsable;
				we <= `RDisable;
				oe <= `REnsable;
				addr <= wishbone_addr_i[21:2];
			end else if (writing) begin
				if (wishbone_sel_i != 4'b1111) begin
					// Partial WRITE. Read from the given addr first
					ce <= `REnsable;
					we <= `RDisable;
					oe <= `REnsable;
					addr <= wishbone_addr_i[21:2];
				end
				else begin
					// Full WRITE. Set up data and wait for one cycle
					ce <= `REnsable;
					we <= `RDisable;
					oe <= `RDisable;
					addr <= wishbone_addr_i[21:2];
					databuf <= wishbone_data_i;
				end
			end
			else begin // IDLE, no request
				sram_ce_r <= `RDisable;
				sram_we_r <= `RDisable;
				sram_oe_r <= `RDisable;
			end
		end else if (state == `PART_WRITE0)
		begin
			// write with previously read data and input
			// set up data and wait for 1c
			ce <= `REnsable;
			we <= `RDisable;
			oe <= `RDisable;
			addr <= wishbone_addr_i[21:2];
			// mask 
			if (wishbone_sel_i[0] == 1'b1)
				databuf[7:0] <= wishbone_data_i[7:0];
			else
				databuf[7:0] <= sram_data_in[chipnum][7:0];
			if (wishbone_sel_i[1] == 1'b1)
				databuf[15:8] <= wishbone_data_i[15:8];
			else
				databuf[15:8] <= sram_data_in[chipnum][15:8];
			if (wishbone_sel_i[2] == 1'b1)
				databuf[23:16] <= wishbone_data_i[23:16];
			else
				databuf[23:16] <= sram_data_in[chipnum][23:16];
			if (wishbone_sel_i[3] == 1'b1)
				databuf[31:24] <= wishbone_data_i[31:24];
			else
				databuf[31:24] <= sram_data_in[chipnum][31:24];
		end
		else 
		if (state == `SRAM_WRITE0) begin
			we <= `REnsable;
		end
		else begin // R0, W1: unset controller
			oe <= `RDisable;
			ce <= `RDisable;
			we <= `RDisable;
		end
	end

	// output signals
	always @ (posedge clk)
	begin
		if (rst == `Enable)
		begin
			wishbone_data_o <= `Zero;
			wishbone_ack_o <= 0;
		end
		else case (state)
			// 1-cycle ack when entering R1/W1
			`SRAM_READ0: begin
				wishbone_ack_o <= 1'b1;
				wishbone_data_o <= datain[chipnum];
			end
			`SRAM_WRITE1: begin
				wishbone_ack_o <= 1'b1;
			end
			default: begin // R1, W2: unset ack; other states & no request: maintain
				wishbone_ack_o <= 1'b0;
			end
		endcase
	end
	 
endmodule