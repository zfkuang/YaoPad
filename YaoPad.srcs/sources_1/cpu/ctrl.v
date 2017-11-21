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

module ctrl(
    input wire rst,

    input wire stalleq_from_id,
    input wire stalleq_from_ex,
    
    output reg[5:0] stall
    );
    
    always @ (*) begin
        if (rst == `Enable) begin
            stall <= 6'b000000 ;
        end else if (stalleq_from_ex == `Enable) begin
            stall <= 6'b001111 ;
        end else if (stalleq_from_id == `Enable) begin
            stall <= 6'b000111 ;
        end else begin
            stall <= 6'b000000 ;
        end
    end 

endmodule
