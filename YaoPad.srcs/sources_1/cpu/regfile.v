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
    

    wire[`WordBus] reg1;
    assign reg1 = register[1];
    wire[`WordBus] reg2;
    assign reg2 = register[2];
    wire[`WordBus] reg3;
    assign reg3 = register[3];
    wire[`WordBus] reg4;
    assign reg4 = register[4];
    wire[`WordBus] reg5;
    assign reg5 = register[5];
    
    wire[`WordBus] reg8;
    assign reg8 = register[8];
    wire[`WordBus] reg9;
    assign reg9 = register[9];
    wire[`WordBus] reg10;
    assign reg10 = register[10];

    wire[`WordBus] reg16;
    assign reg16 = register[16];

    always @ (posedge clk) begin
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
