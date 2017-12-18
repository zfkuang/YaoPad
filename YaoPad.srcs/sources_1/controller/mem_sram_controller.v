`include "defines.vh"

 /*
States:
->------->READ0<---->READ1---------->
^                                   |
^                                   |
^               --->                |
^               |  |                |
<->------------>IDLE<-------------<->
^                                   |
^                                   |
^                                   |
<--------WRITE1<---->WRITE0<-------<-
 */

`define SRAM_IDLE 3'b000
`define SRAM_READ0 3'b001
`define SRAM_READ1 3'b011
`define SRAM_WRITE0 3'b010
`define SRAM_WRITE1 3'b110

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

	always @ (edge clk)
	begin
		if (rst == `Enable)
			state <= `SRAM_IDLE;
		else
			case (state)
				`SRAM_IDLE: begin
					if (reading)
						state <= `SRAM_READ0;
					else if (writing)
                        state <= `SRAM_WRITE0;
					else
						state <= `SRAM_IDLE;
				end
				`SRAM_READ0: state <= `SRAM_READ1;
                `SRAM_READ1: begin
					if (reading)
						state <= `SRAM_READ0;
					else if (writing)
                        state <= `SRAM_WRITE0;
					else
						state <= `SRAM_IDLE;
                end
				`SRAM_WRITE0: state <= `SRAM_WRITE1;
				`SRAM_WRITE1: begin:
					if (reading)
						state <= `SRAM_READ0;
					else if (writing)
                        state <= `SRAM_WRITE0;
					else
						state <= `SRAM_IDLE;
                end
			endcase
	end

	always @ (edge clk)
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
					ce <= `Enable;
					we <= `Disable;
					oe <= `Enable;
					addr <= ram_addr_i[`RamAddrBus];
				end else if (writing) begin
					// Full WRITE. Set up data and wait for one cycle
                    ce <= `Enable;
                    we <= `Disable;
                    oe <= `Disable;
                    addr <= ram_addr_i[`RamAddrBus];
                    databuf <= ram_data_i;
				end
				else begin // IDLE, no request
					ce <= `Disable;
					we <= `Disable;
					oe <= `Disable;
				end
			end
            `SRAM_READ0: begin
				oe <= `Disable;
				ce <= `Disable;
				we <= `Disable;
            end
            `SRAM_READ1: begin
				if(reading) begin
					ce <= `Enable;
					we <= `Disable;
					oe <= `Enable;
					addr <= ram_addr_i[`RamAddrBus];
				end else if (writing) begin
					// Full WRITE. Set up data and wait for one cycle
                    ce <= `Enable;
                    we <= `Disable;
                    oe <= `Disable;
                    addr <= ram_addr_i[`RamAddrBus];
                    databuf <= ram_data_i;
				end
				else begin // IDLE, no request
					ce <= `Disable;
					we <= `Disable;
					oe <= `Disable;
				end
            end
			`SRAM_WRITE0: begin
				we <= `Enable;
			end
            `SRAM_WRITE1: begin
				if(reading) begin
					ce <= `Enable;
					we <= `Disable;
					oe <= `Enable;
					addr <= ram_addr_i[`RamAddrBus];
				end else if (writing) begin
					// Full WRITE. Set up data and wait for one cycle
                    ce <= `Enable;
                    we <= `Disable;
                    oe <= `Disable;
                    addr <= ram_addr_i[`RamAddrBus];
                    databuf <= ram_data_i;
				end
				else begin // IDLE, no request
					ce <= `Disable;
					we <= `Disable;
					oe <= `Disable;
				end
            end
			default: begin
				oe <= `Disable;
				ce <= `Disable;
				we <= `Disable;
			end
		endcase
	end

endmodule