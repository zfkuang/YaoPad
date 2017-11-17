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

module ex(
    input wire rst,
    
    input wire[`AluSelBus] alusel_i,
    input wire[`AluOpBus] aluop_i,
    
    input wire[`RegBus] reg1_i,
    input wire[`RegBus] reg2_i,
    
    input wire[`RegAddrBus] wd_i,
    input wire wreg_i,
    
    output reg[`RegAddrBus] wd_o,
    output reg wreg_o,
    output reg[`RegBus] wdata_o
    );

    reg[`RegBus] logicres ;
    reg[`RegBus] shiftres ;
    
    
    always @ (*) begin 
        if (rst == `Enable) begin 
            wd_o <= `NopRegAddr ;
            wreg_o <= 0 ;
        end else begin 
            wd_o <= wd_i ;
            wreg_o <= wreg_i ;
            case(aluop_i)
                `ALU_OR: begin 
                    logicres <= (reg1_i | reg2_i) ;
                end 
                `ALU_AND: begin
                    logicres <= (reg1_i & reg2_i) ;
                end
                `ALU_XOR: begin
                    logicres <= (reg1_i ^ reg2_i) ;
                end
                `ALU_NOR: begin
                    logicres <= ~(reg1_i | reg2_i) ;                    
                end
                `ALU_SLL: begin
                    shiftres <= reg2_i << reg1_i[4:0] ;   
                end
                `ALU_SRL: begin
                    shiftres <= reg2_i >> reg1_i[4:0] ; 
                end
                `ALU_SRA: begin
                    shiftres <= ((({32{reg2_i[31]}} << reg1_i[4:0]) >> reg1_i[4:0]) ^ {32{reg2_i[31]}}) | (reg2_i >> reg1_i[4:0]) ;
                end   
                default: begin
                    logicres <= `Zero ;
                    shiftres <= `Zero ;
                end
            endcase 
        end
    end    
    
    always @ (*) begin 
        if (rst == `Enable) begin 
            wdata_o <= `Zero ;
        end else begin 
            case(alusel_i) 
                `ALUS_LOGIC: begin
                    wdata_o <= logicres ;
                end
                `ALUS_SHIFT: begin
                    wdata_o <= shiftres ;
                end
                default: begin
                    wdata_o <= `Zero ;
                end
            endcase 
        end
    end
endmodule
