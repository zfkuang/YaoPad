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
    
    input wire[`RegBus] mem_wdata_i, 
    input wire[`RegAddrBus] mem_wd_i, 
    input wire mem_wreg_i, 
    input wire[`RegBus] ex_wdata_i, 
    input wire[`RegAddrBus] ex_wd_i, 
    input wire ex_wreg_i, 


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
    wire[5:0] op1 = inst_i[31:26] ;
    wire[4:0] op2 = inst_i[10:6] ;
    wire[5:0] op3 = inst_i[5:0] ;
    wire[4:0] op4 = inst_i[20:16] ;
    
    always @ (*) begin // interprete instruction
        if(rst == `Enable) begin 
            aluop_o <= `ALU_NOP ; 
            alusel_o <= `ALUS_NOP ;
            reg1_addr_o <= `Disable ;
            reg2_addr_o <= `Disable ;
            wd_o <= `Disable ;
            immi <= `Zero ;
        end else begin
            case(op1) 

                `EXE_ORI: begin  // ori I-type 
                    aluop_o <= `ALU_OR ; 
                    alusel_o <= `ALUS_LOGIC ;
                    reg1_read_o <= `Enable ;
                    reg2_read_o <= `Disable ;
                    reg1_addr_o <= inst_i[25:21] ;
                    wd_o <= inst_i[20:16]  ;
                    wreg_o <= `Enable ;
                    immi <= {16'h0, inst_i[15:0]} ;
                end 

                `EXE_ANDI: begin // andi I-type  
                    aluop_o <= `ALU_AND ; 
                    alusel_o <= `ALUS_LOGIC ;
                    reg1_read_o <= `Enable ;
                    reg2_read_o <= `Disable ;
                    reg1_addr_o <= inst_i[25:21] ;
                    wd_o <= inst_i[20:16]  ;
                    wreg_o <= `Enable ;
                    immi <= {16'h0, inst_i[15:0]} ;
                end             

                `EXE_XORI: begin // andi I-type 
                    aluop_o <= `ALU_XOR ; 
                    alusel_o <= `ALUS_LOGIC ;
                    reg1_read_o <= `Enable ;
                    reg2_read_o <= `Disable ;
                    reg1_addr_o <= inst_i[25:21] ;
                    wd_o <= inst_i[20:16]  ;
                    wreg_o <= `Enable ;
                    immi <= {16'h0, inst_i[15:0]} ;
                end
                
                `EXE_LUI: begin // lui I-type
                    aluop_o <= `ALU_OR ; 
                    alusel_o <= `ALUS_LOGIC ;
                    reg1_read_o <= `Enable ;
                    reg2_read_o <= `Disable ;
                    reg1_addr_o <= `NopRegAddr ;
                    wd_o <= inst_i[20:16]  ;
                    wreg_o <= `Enable ;
                    immi <= {inst_i[15:0], 16'h0} ;
                end

                `EXE_PREF: begin // pref, still unfinished
                    aluop_o <= `ALU_NOP ; 
                    alusel_o <= `ALUS_NOP ;
                    reg1_read_o <= `Enable ;
                    reg2_read_o <= `Enable ;
                    wreg_o <= `Disable ;            
                end
                
                `EXE_SPECIAL: begin // special-instruction

                    wd_o <=  inst_i[15:11] ;
                    immi <= 32'h0 ;
                    
                    if((op3 == `ALU_AND) | (op3 == `ALU_XOR) | (op3 == `ALU_NOR) | (op3 == `ALU_OR)) begin 
                        aluop_o <= {2'h0, op3} ; 
                        alusel_o <= `ALUS_LOGIC ;
                        reg1_read_o <= `Enable ;
                        reg2_read_o <= `Enable ;
                        reg1_addr_o <= inst_i[25:21] ;
                        reg2_addr_o <= inst_i[20:16] ;
                        wreg_o <= `Enable ;
                    end else if ((op3 == `ALU_SLL) | (op3 == `ALU_SRL) | (op3 == `ALU_SRA)) begin
                        aluop_o <= {2'h0, op3} ;  
                        alusel_o <= `ALUS_SHIFT ;
                        reg1_read_o <= `Disable ;
                        reg2_read_o <= `Enable ;
                        reg2_addr_o <= inst_i[20:16] ;
                        immi <= {26'h0, op2} ;
                        wreg_o <= `Enable ;
                    end else if ((op3 == `ALU_SLLV) | (op3 == `ALU_SRLV) | (op3 == `ALU_SRAV)) begin 
                        aluop_o <= {4'h0, op3[1:0]} ; // some little trick
                        alusel_o <= `ALUS_SHIFT ;
                        reg1_read_o <= `Enable ;
                        reg2_read_o <= `Enable ;
                        reg1_addr_o <= inst_i[25:21] ;
                        reg2_addr_o <= inst_i[20:16] ;
                        wreg_o <= `Enable ;
                    end else if (op3 == `ALU_SYNC) begin 
                        aluop_o <= `ALU_NOP ;
                        alusel_o <= `ALUS_NOP ;
                        reg1_read_o <= `Enable ;
                        reg2_read_o <= `Enable ;
                        reg1_addr_o <= inst_i[25:21] ;
                        reg2_addr_o <= inst_i[20:16] ;                    
                        wreg_o <= `Disable ;
                    end
                end
                default: begin
                    aluop_o <= `ALU_NOP ; 
                    alusel_o <= `ALUS_LOGIC ;
                    reg1_read_o <= `Disable ;
                    reg2_read_o <= `Disable ;
                    wd_o <= `Disable  ;
                    wreg_o <= `NopRegAddr ;
                    immi <= 32'h0 ;                    
                end
            endcase
        end 
    end
    
    always @ (*) begin // calculate register
        if(rst == `Enable) begin 
            reg1_o <= `Zero ;
            reg2_o <= `Zero ;
        end else begin

            if(reg1_read_o == `Enable) begin
                if((ex_wreg_i == `Enable) && (ex_wd_i == reg1_addr_o)) begin
                    reg1_o <= ex_wdata_i ;
                end else if ((mem_wreg_i == `Enable) && (mem_wd_i == reg1_addr_o)) begin
                    reg1_o <= mem_wdata_i ;
                end else begin
                    reg1_o <= reg1_data_i ;
                end
            end else begin reg1_o <= immi ; end

            if(reg2_read_o == `Enable) begin
                if((ex_wreg_i == `Enable) && (ex_wd_i == reg2_addr_o)) begin
                    reg2_o <= ex_wdata_i ;
                end else if ((mem_wreg_i == `Enable) && (mem_wd_i == reg2_addr_o)) begin
                    reg2_o <= mem_wdata_i ;
                end else begin
                    reg2_o <= reg2_data_i ;
                end
            end else begin reg2_o <= immi ; end                         

        end 
    end    
        
endmodule

    
