`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/14 20:56:55
// Design Name: 
// Module Name: mem_wb
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

module mem_wb(
        input wire rst,
        input wire clk,
        
        input wire[`RegAddrBus] mem_wd,
        input wire mem_wreg,
        input wire[`RegBus] mem_wdata,
        
        output reg[`RegAddrBus] wb_wd,
        output reg wb_wreg,
        output reg[`RegBus] wb_wdata
    );    
    
    always @ (posedge clk) begin 
        if (rst == `Enable) begin
            wb_wdata <= `Zero ;
            wb_wd <= `NopRegAddr ;
            wb_wreg <= 0 ;
        end else begin 
            wb_wdata <= mem_wdata ;
            wb_wd <= mem_wd ;
            wb_wreg <= mem_wreg  ;
        end
    end
    
endmodule
