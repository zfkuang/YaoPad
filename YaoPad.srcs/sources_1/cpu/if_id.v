`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/14 20:56:55
// Design Name: 
// Module Name: if_id
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

module if_id(
    input wire rst,
    input wire clk,
    input wire[`StallBus] stall,

    input wire[`WordBus] if_pc,
    input wire[`WordBus] if_inst,
    output reg[`WordBus] id_pc,
    output reg[`WordBus] id_inst
    );
    
    always @ (posedge clk) begin
        if ((rst == `Enable) || ((stall[1] == `Enable) && (stall[2] == `Disable))) begin
            id_pc <= `Zero ;
            id_inst <= `Zero ;
        end else if (stall[1] == `Disable) begin
            id_pc <= if_pc ;
            id_inst <= if_inst ;
        end 
    end
    
endmodule
