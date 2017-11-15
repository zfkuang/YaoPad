`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/14 20:56:55
// Design Name: 
// Module Name: regfile
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

module regfile(
    input wire rst,
    input wire clk,
    
    input wire[`RegAddrBus] waddr,
    input wire[`AddrBus] wdata,
    input wire we,
    
    input wire[`RegAddrBus] raddr1,
    input wire re1,
    output reg[`RegBus] rdata1,
    
    input wire[`RegAddrBus] raddr2,
    input wire re2,
    output reg[`RegBus] rdata2
    );
    
    reg[`RegBus] register[`RegIdBus] ; 
    
    always @ (posedge clk) begin
        if (rst == `Disable) begin 
            if (we == `Enable && waddr != `NopRegAddr) begin 
                register[waddr] <= wdata ;
            end 
        end 
    end 
    
    always @ (*) begin
        
        if (re1 == `Disable) begin
            rdata1 <= `Zero ;
        end else if((re1 == `NopRegAddr) || (re1 == `Disable)) begin
            rdata1 <= `Zero ; 
        end else if((re1 == waddr) && (we == 1)) begin  //数据提前
            rdata1 <= wdata ;
        end else begin
            rdata1 <= register[raddr1] ;
        
        if (re2 == `Disable) begin
                rdata2 <= `Zero ;
            end else if((re2 == `NopRegAddr) || (re2 == `Disable)) begin
                rdata2 <= `Zero ; 
            end else if((re2 == waddr) && (we == 2)) begin  //数据提前
                rdata2 <= wdata ;
            end else begin
                rdata2 <= register[raddr2] ;
            end
        end
    end 
      
endmodule
