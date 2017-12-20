
`define DataMemNum 4096
`define DataMemNumLog2 12
module data_ram(
	input wire clk,
	input wire ce,
	input wire we,
	input wire[19:0] addr,
	input wire[3:0] sel,
	inout wire[`WordBus] data,
	output reg ack
);

	reg[`WordBus]  data_mem[0:`DataMemNum-1];

	wire[`WordBus] datatest;
	assign datatest = data_mem[4];

	initial $readmemh ( "inst_rom.data", data_mem );

	reg[`WordBus] data_o ;
 	assign data = (we==0) ? data_o : 32'bz;

	always @ (*) begin
		if (ce == `Disable) begin
			ack <= `Disable;
		end else if(we == `Enable) begin
			if (sel[3] == 1'b1) begin
		      data_mem[addr[`DataMemNumLog2-1:0]][31:24] <= data[31:24];
		    end
			  if (sel[2] == 1'b1) begin
		      data_mem[addr[`DataMemNumLog2-1:0]][23:16] <= data[23:16];
		    end
		    if (sel[1] == 1'b1) begin
		      data_mem[addr[`DataMemNumLog2-1:0]][15:8] <= data[15:8];
		    end
			  if (sel[0] == 1'b1) begin
		      data_mem[addr[`DataMemNumLog2-1:0]][7:0] <= data[7:0];
		    end			
		end else if(we == `Disable) begin			
		      data_o[31:24] <= data_mem[addr[`DataMemNumLog2-1:0]][31:24] ;
		      data_o[23:16] <= data_mem[addr[`DataMemNumLog2-1:0]][23:16] ;
		      data_o[15:8] <= data_mem[addr[`DataMemNumLog2-1:0]][15:8] ;
		      data_o[7:0] <= data_mem[addr[`DataMemNumLog2-1:0]][7:0] ;
			ack <= `Enable;
		end else begin
			data_o <= `Zero;
			ack <= `Enable;
		end
	end
	
endmodule