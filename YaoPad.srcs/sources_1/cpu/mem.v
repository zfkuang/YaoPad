`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/14 20:56:55
// Design Name: 
// Module Name: mem
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

module mem(
        input wire rst,
        
        input wire[`RegAddrBus] wd_i,
        input wire wreg_i,
        input wire[`RegBus] wdata_i,
        
        output wire whilo_i,
        output wire[`RegBus] hi_i,
        output wire[`RegBus] lo_i,

        output reg[`RegAddrBus] wd_o,
        output reg wreg_o,
        output reg[`RegBus] wdata_o,

        output reg whilo_o,
        output reg[`RegBus] hi_o,
        output reg[`RegBus] lo_o
    );
    
    always @ (*) begin
        if (rst == `Enable) begin
            wd_o <= `NopRegAddr ;
            wreg_o <= 0 ;
            wdata_o <= `Zero ;
            whilo_o <= 0 ;
        end else begin 
            wd_o <= wd_i ;
            wreg_o <= wreg_i ;
            wdata_o <= wdata_i ;
            whilo_o <= whilo_i ;
            hi_o <= hi_i ;
            lo_o <= lo_i ;
        end
    end
    
endmodule
