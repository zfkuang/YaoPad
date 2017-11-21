`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/14 20:56:55
// Design Name: 
// Module Name: ex_mem
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
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/14 20:56:55
// Design Name: 
// Module Name: id_ex
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

module ex_mem(
        input wire rst,
        input wire clk,
        input wire[`StallBus] stall,
        
        input wire[`RegAddrBus] ex_wd,
        input wire ex_wreg,
        input wire[`RegBus] ex_wdata,
        input wire ex_whilo,
        input wire[`RegBus] ex_hi,
        input wire[`RegBus] ex_lo,
        
        
        output reg[`RegAddrBus] mem_wd,
        output reg mem_wreg,
        output reg[`RegBus] mem_wdata,
        output reg mem_whilo,
        output reg[`RegBus] mem_hi,
        output reg[`RegBus] mem_lo
    );    
    
    always @ (posedge clk) begin 
        if ((rst == `Enable) || ((stall[3] == `Enable) && (stall[4] == `Disable))) begin
            mem_wdata <= `Zero ;
            mem_wd <= `NopRegAddr ;
            mem_wreg <= 0 ;
            mem_whilo <= 0 ;
        end else if (stall[3] == `Disable) begin 
            mem_wdata <= ex_wdata ;
            mem_wd <= ex_wd ;
            mem_wreg <= ex_wreg ;
            mem_whilo <= ex_whilo ;
            mem_hi <= ex_hi ;
            mem_lo <= ex_lo ;
        end
    end
        
endmodule
