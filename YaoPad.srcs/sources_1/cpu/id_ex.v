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

module id_ex(
    input wire rst,
    input wire clk,
    input wire[`StallBus] stall,

    input wire[`AluSelBus] id_alusel,
    input wire[`AluOpBus] id_aluop,
    
    input wire[`WordBus] id_reg1,
    input wire[`WordBus] id_reg2,
    
    input wire[`RegAddrBus] id_wd,
    input wire id_wreg,
    input wire[`WordBus] id_inst,

    input wire id_is_in_delayslot,
    input wire[`WordBus] id_link_addr,
    
    input wire[`WordBus] id_excepttype,
    input wire[`WordBus] id_current_inst_addr,

    input wire next_inst_in_delayslot_i,
    input wire flush,

    output reg[`AluSelBus] ex_alusel,
    output reg[`AluOpBus] ex_aluop,
    
    output reg[`WordBus] ex_reg1,
    output reg[`WordBus] ex_reg2,
    
    output reg[`RegAddrBus] ex_wd,
    output reg ex_wreg,
    output reg[`WordBus] ex_inst,

    output reg ex_is_in_delayslot,
    output reg[`WordBus] ex_link_addr,

    output reg[`WordBus] ex_excepttype,
    output reg[`WordBus] ex_current_inst_addr,

    output reg is_in_delayslot_o
    );
    
    always @ (posedge clk) begin 
        if (rst == `Enable) begin
            ex_alusel <= `ALUS_NOP ;
            ex_aluop <= `ALU_NOP ;
            ex_reg1 <= `Zero ;
            ex_reg2 <= `Zero ;
            ex_inst <= `Zero ;
            ex_wd <= `NopRegAddr ;
            ex_wreg <= 0 ;           
            ex_is_in_delayslot <= 0 ;
            ex_link_addr <= `Zero ;
            ex_excepttype <= `Zero ;
            ex_current_inst_addr <= `Zero ;
            is_in_delayslot_o <= 0 ;
        end else if ((stall[2] == `Enable) && (stall[3] == `Disable)) begin
            ex_alusel <= `ALUS_NOP ;
            ex_aluop <= `ALU_NOP ;
            ex_reg1 <= `Zero ;
            ex_reg2 <= `Zero ;
            ex_inst <= `Zero ;
            ex_wd <= `NopRegAddr ;
            ex_wreg <= 0 ;           
            ex_is_in_delayslot <= 0 ;
            ex_link_addr <= `Zero ;
            ex_excepttype <= `Zero ;
            ex_current_inst_addr <= `Zero ;
            is_in_delayslot_o <= 0 ;
        end else if (flush == `Enable) begin
            ex_alusel <= `ALUS_NOP ;
            ex_aluop <= `ALU_NOP ;
            ex_reg1 <= `Zero ;
            ex_reg2 <= `Zero ;
            ex_inst <= `Zero ;
            ex_wd <= `NopRegAddr ;
            ex_wreg <= 0 ;           
            ex_is_in_delayslot <= 0 ;
            ex_link_addr <= `Zero ;
            ex_excepttype <= `Zero ;
            ex_current_inst_addr <= `Zero ;
            is_in_delayslot_o <= 0 ;
        end else if (stall[2] == `Disable) begin
            ex_alusel <= id_alusel ;
            ex_aluop <= id_aluop ;
            ex_reg1 <= id_reg1 ;
            ex_reg2 <= id_reg2 ;
            ex_wd <= id_wd ;
            ex_wreg <= id_wreg ;
            ex_inst <= id_inst ;
            ex_is_in_delayslot <= id_is_in_delayslot ;
            ex_link_addr <= id_link_addr ;
            ex_excepttype <= id_excepttype ;
            ex_current_inst_addr <= id_current_inst_addr ;
            is_in_delayslot_o <= next_inst_in_delayslot_i ;
        end
    end
    
endmodule
