`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/14 20:56:55
// Design Name: 
// Module Name: id
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

module id(
    input wire rst,
    
    input wire[`AddrBus] pc_i,
    input wire[`InstBus] inst_i,
    
    input wire[`RegBus] reg1_data_i,
    input wire[`RegBus] reg2_data_i,
    
    output reg[`AluOpBus] aluop_o,
    output reg[`AluSelBus] alusel_o,
    
    output reg[`RegAddrBus] wd_o,
    output reg wreg_o,
    
    output reg[`RegAddrBus] reg2_addr_o,
    output reg reg2_read_o,
    
    output reg[`RegAddrBus] reg1_addr_o,
    output reg reg1_read_o,
    
    output reg[`RegBus] reg1_o,
    output reg[`RegBus]  reg2_o
    );
    
    reg[`RegBus] immi ;
    
    always @ (*) begin // interprete instruction
        if(rst == `Enable) begin 
            aluop_o <= `ALU_NOP ; 
            alusel_o <= `ALUS_NOP ;
            reg1_addr_o <= `Disable ;
            reg2_addr_o <= `Disable ;
            wd_o <= `Disable ;
            immi <= `Zero ;
        end else begin
            case(inst_i[31:26]) 
                `EXE_ORI: begin  // I-type instructions
                    aluop_o <= `ALU_OR ; 
                    alusel_o <= `ALUS_LOGIC ;
                    reg1_read_o <= `Enable ;
                    reg2_read_o <= `Disable ;
                    reg1_addr_o <= inst_i[25:21] ;
                    wd_o <= `Enable  ;
                    wreg_o <= inst_i[20:16] ;
                    immi <= {16'h0, inst_i[15:0]} ;
                end 
                default: begin end 
            endcase
        end 
    end
    
    always @ (*) begin // calculate register
        if(rst == `Enable) begin 
            reg1_o <= `Zero ;
            reg2_o <= `Zero ;
        end else begin
            if(reg1_read_o == `Enable) begin
                reg1_o <= reg1_data_i ;
            end else begin reg1_o <= immi ; end 
            if(reg2_read_o == `Enable) begin
                reg2_o <= reg2_data_i ;
            end else begin reg2_o <= immi ; end                         
        end 
    end    
        
endmodule

    
