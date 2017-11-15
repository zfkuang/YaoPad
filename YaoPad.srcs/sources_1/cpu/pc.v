`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/14 18:07:08
// Design Name: 
// Module Name: pc
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`include"defines.vh"

module pc_rom(
    input wire rst,
    input wire clk,
    output reg[`AddrBus] pc,
    output reg ce
    );
    
    always @ (posedge clk) begin
        if (ce == `Disable) begin
            pc <= 32'h00000000;       
        end else begin
            if (rst == `Enable) begin
                pc <= 32'h00000000;
            end else begin
                pc <= pc+4;
            end
        end 
    end 

endmodule
