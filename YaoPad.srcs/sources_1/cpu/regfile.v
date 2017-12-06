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
    input wire[`WordBus] wdata,
    input wire we,
    
    input wire[`RegAddrBus] raddr1,
    input wire re1,
    output reg[`WordBus] rdata1,
    
    input wire[`RegAddrBus] raddr2,
    input wire re2,
    output reg[`WordBus] rdata2, 
    
    input wire[`RegAddrBus] debug,
    output wire[`WordBus] debugdata
    );
    
    reg[`WordBus] register[`RegIdBus] ; 
    assign debugdata = register[debug];
    
    always @ (posedge clk or negedge rst) begin
        if (rst == `Disable) begin 
            if (we == `Enable && waddr != `NopRegAddr) begin 
                register[waddr] <= wdata ;
            end 
        end 
    end 
    
    always @ (*) begin
        
        if((raddr1 == `NopRegAddr) || (re1 == `Disable)) begin
            rdata1 <= `Zero ; 
        end else if((raddr1 == waddr) && (we == `Enable)) begin  //������ǰ
            rdata1 <= wdata ;
        end else begin
            rdata1 <= register[raddr1] ;
        end
        
        if((raddr2 == `NopRegAddr) || (re2 == `Disable)) begin
            rdata2 <= `Zero ; 
        end else if((raddr2 == waddr) && (we == `Enable)) begin  //������ǰ
            rdata2 <= wdata ;
        end else begin
            rdata2 <= register[raddr2] ;
        end
    end 
      
endmodule
