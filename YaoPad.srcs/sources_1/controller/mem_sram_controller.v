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

`define SRAM_IDLE 2'b00
`define SRAM_READ 2'b01
`define SRAM_WRITE 2'b11


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
			state <= `SRAM_IDLE;
		else
			case (state)
				`SRAM_IDLE: begin
					if (reading)
						state <= `SRAM_READ;
					else if (writing)
						state <= `SRAM_WRITE;
					else
						state <= `SRAM_IDLE;
				end
				`SRAM_READ: state <= `SRAM_IDLE;
				`SRAM_WRITE: state <= `SRAM_IDLE;
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
				if(ram_ce_i) begin
					oe <= `Enable;
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
				oe <= `Enable;
				we <= `Enable;
				ce <= `Enable;
			end
			default: begin
			end
		endcase
	end



endmodule