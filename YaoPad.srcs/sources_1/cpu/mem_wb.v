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
        input wire[`RegAddrBus] mem_cp0_reg_write_addr,
        input wire mem_cp0_reg_we,
        input wire[`WordBus] mem_cp0_reg_data,

        input wire flush,

        output reg[`RegAddrBus] wb_wd,
        output reg wb_wreg,
        output reg[`WordBus] wb_wdata,
        output reg wb_whilo,
        output reg[`WordBus] wb_hi,
        output reg[`WordBus] wb_lo,         
        output reg[`RegAddrBus] wb_cp0_reg_write_addr,
        output reg wb_cp0_reg_we,
        output reg[`WordBus] wb_cp0_reg_data,

        output wire[`WordBus] debugdata
    );    
    
    assign debugdata = {10'b0, wb_wreg, wb_wd, wb_wdata[31:16]} ;

    always @ (posedge clk) begin 
        if ((rst == `Enable) || ((stall[4] == `Enable) && (stall[5] == `Disable)) || (flush == `Enable))begin
            wb_wdata <= `Zero ;
            wb_wd <= `NopRegAddr ;
            wb_wreg <= 0 ;
            wb_whilo <= 0 ;
            wb_cp0_reg_write_addr <= `NopRegAddr ;
            wb_cp0_reg_we <= 0 ;
            wb_cp0_reg_data <= `Zero ;
        end else if (stall[4] == `Disable) begin 
            wb_wdata <= mem_wdata ;
            wb_wd <= mem_wd ;
            wb_wreg <= mem_wreg  ;
            wb_whilo <= mem_whilo ;
            wb_hi <= mem_hi ;
            wb_lo <= mem_lo ;
            wb_cp0_reg_write_addr <= mem_cp0_reg_write_addr ;
            wb_cp0_reg_we <= mem_cp0_reg_we ;
            wb_cp0_reg_data <= mem_cp0_reg_data ;
        end
    end
endmodule
