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
        input wire[`StallBus] stall,
        
        input wire[`RegAddrBus] mem_wd,
        input wire mem_wreg,
        input wire[`WordBus] mem_wdata,
        input wire mem_whilo,
        input wire[`WordBus] mem_hi,
        input wire[`WordBus] mem_lo,

        output reg[`RegAddrBus] wb_wd,
        output reg wb_wreg,
        output reg[`WordBus] wb_wdata,
        output reg wb_whilo,
        output reg[`WordBus] wb_hi,
        output reg[`WordBus] wb_lo
    );    
    
    always @ (posedge clk) begin 
        if ((rst == `Enable) || ((stall[4] == `Enable) && (stall[5] == `Disable))) begin
            wb_wdata <= `Zero ;
            wb_wd <= `NopRegAddr ;
            wb_wreg <= 0 ;
            wb_whilo <= 0 ;
        end else if (stall[4] == `Disable) begin 
            wb_wdata <= mem_wdata ;
            wb_wd <= mem_wd ;
            wb_wreg <= mem_wreg  ;

            wb_whilo <= mem_whilo ;
            wb_hi <= mem_hi ;
            wb_lo <= mem_lo ;
        end
    end
    
endmodule
