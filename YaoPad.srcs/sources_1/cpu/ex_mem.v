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
        
        input wire[`RegAddrBus] ex_wd,
        input wire ex_wreg,
        input wire[`RegBus] ex_wdata,
        
        output reg[`RegAddrBus] mem_wd,
        output reg mem_wreg,
        output reg[`RegBus] mem_wdata
    );    
    
    always @ (posedge clk) begin 
        if (rst == `Enable) begin
            mem_wdata <= `Zero ;
            mem_wd <= `NopRegAddr ;
            mem_wreg <= 0 ;
        end else begin 
            mem_wdata <= ex_wdata ;
            mem_wd <= ex_wd ;
            mem_wreg <= ex_wreg ;
        end
    end
        
endmodule
