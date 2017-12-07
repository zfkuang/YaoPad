
`define DataMemNum 4096
`define DataMemNumLog2 12
module data_ram(
	input wire ce,
	input wire we,
	input wire[`RamAddrBus] addr,
	input wire[3:0] sel,
	inout wire[`WordBus] data,
	output reg ack
);

	reg[`WordBus]  data_mem[0:`DataMemNum-1];
	initial $readmemh ( "inst_rom.data", data_mem );

	reg[`WordBus] data_o ;
 	assign data = (we==0) ? data_o : 32'bz;

	always @ (*) begin
		if (ce == `Disable) begin
			ack <= `Disable;
		end else if(we == `Enable) begin
			if (sel[3] == 1'b1) begin
		      data_mem[addr[`DataMemNumLog2+1:2]][31:24] <= data[31:24];
		    end
			  if (sel[2] == 1'b1) begin
		      data_mem[addr[`DataMemNumLog2+1:2]][23:16] <= data[23:16];
		    end
		    if (sel[1] == 1'b1) begin
		      data_mem[addr[`DataMemNumLog2+1:2]][15:8] <= data[15:8];
		    end
			  if (sel[0] == 1'b1) begin
		      data_mem[addr[`DataMemNumLog2+1:2]][7:0] <= data[7:0];
		    end			
		end else if(we == `Disable) begin
		    data_o <= data_mem[addr[`DataMemNumLog2+1:2]];
			ack <= `Enable;
		end else begin
			data_o <= `Zero;
			ack <= `Enable;
		end
	end
	
endmodule