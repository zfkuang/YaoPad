`include "defines.vh"

 /*
States:
>---WRITE--->-<---READ----<
^            |            ^
^            |            ^
<----------IDLE----------->
           |  |
		   |  |
		   >-->
 */

`define SRAM_BEGIN 3'b100
`define SRAM_IDLE 3'b000
`define SRAM_READ 3'b001
`define SRAM_WRITE 3'b010
`define SRAM_WRITE_TO_READ 3'b011


module mem_sram(
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
    output wire[3:0] ram0_be_n, ram1_be_n,

    output wire[`WordBus] debugdata
);

    assign debugdata = {24'b0, reading, writing, ram0_oe, ram1_oe, ram0_ce, ram1_ce, ram0_we, ram1_we} ;
	wire reading, writing;
	// output buffer

	reg oe, ce, we;
	//reg [`RamAddrBus] addr;
	//reg [`WordBus] databuf;
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
    assign ram0_be_n = ~((~chipnum) ? be_n : `Disable);
	assign ram1_oe = ~(chipnum ? oe : `Disable);
	assign ram1_ce = ~(chipnum ? ce : `Disable);
	assign ram1_we = ~(chipnum ? we : `Disable);
    assign ram1_be_n = ~(chipnum ? be_n : `Disable);

	assign ram0_addr = (~chipnum) ? addr[21:2] : 20'h0;
	assign ram1_addr = chipnum ? addr[21:2] : 20'h0;

	//assign ram0_data = ram0_oe == `RDisable ? databuf : 32'hz;
	//assign ram1_data = ram1_oe == `RDisable ? databuf : 32'hz;
    assign ram0_data = ram0_oe == `RDisable ? ram_data_i : 32'hz;
	assign ram1_data = ram1_oe == `RDisable ? ram_data_i : 32'hz;

	assign datain[0] = ram0_data;
	assign datain[1] = ram1_data;

	assign ram_data_o = datain[chipnum];


    wire be_n;
    wire[`RamAddrBus] addr;
    assign be_n = ~ram_sel_i;
    assign addr = ram_addr_i[`RamAddrBus];


    reg is_rst;
    always @ (negedge clk) begin
        is_rst <= rst;
    end

	always @ (posedge clk or negedge clk)
	begin
		if (is_rst == `Enable)
			state <= `SRAM_BEGIN;
		else
			case (state)
				`SRAM_BEGIN: state <= `SRAM_IDLE;
				`SRAM_IDLE: begin
					if (reading)
						state <= `SRAM_READ;
					else if (writing)
						state <= `SRAM_WRITE;
					else
						state <= `SRAM_IDLE;
				end
				`SRAM_READ: state <= `SRAM_IDLE;
				`SRAM_WRITE: state <= `SRAM_WRITE_TO_READ;
				`SRAM_WRITE_TO_READ: state<= `SRAM_READ;
				default: begin
				end
			endcase
	end

	always @ (*)
	begin
		if (rst == `Enable) begin
			oe <= `Disable;
			ce <= `Disable;
			we <= `Disable;
		end
		else 
		case (state)
			`SRAM_IDLE: begin
                ce <= `Disable;
                we <= `Disable;
				if(reading) begin
					oe <= `Enable;
				end else if(writing) begin
					oe <= `Disable;
					ce <= `Enable;
					we <= `Enable;
				end else begin // IDLE, no request
					oe <= `Disable;
				end
			end
            `SRAM_READ: begin
				oe <= `Enable;
				we <= `Disable;
				ce <= `Enable;
            end
			`SRAM_WRITE: begin
				oe <= `Disable;
				we <= `Disable;
				ce <= `Disable;
			end
			`SRAM_WRITE_TO_READ: begin
                ce <= `Disable;
                we <= `Disable;
				oe <= `Enable;
			end
			default: begin
			end
		endcase
	end



endmodule