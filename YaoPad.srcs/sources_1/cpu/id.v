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
    output reg[`RegBus]  reg2_o,

    output reg stallreq
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
            reg1_addr_o <= `NopRegAddr ;
            reg2_addr_o <= `NopRegAddr ;
            stallreq <= 0 ;
            wd_o <= `Disable ;
            immi <= `Zero ;
        end else begin 
        	// default settings for I-type
            reg1_read_o <= `Enable ;
            reg2_read_o <= `Disable ;
            reg1_addr_o <= inst_i[25:21] ;
            wd_o <= inst_i[20:16]  ;
            wreg_o <= `Enable ;
            immi <= {16'h0, inst_i[15:0]} ;
            stallreq <= 0 ;

            case(op1) 
            	//------------------------------------------------------------- I-type
                `EXE_ORI: begin  // ori I-type 
                    aluop_o <= `ALU_OR ; 
                    alusel_o <= `ALUS_LOGIC ;
                end 
                `EXE_ANDI: begin // andi I-type  
                    aluop_o <= `ALU_AND ; 
                    alusel_o <= `ALUS_LOGIC ;
                end
                `EXE_XORI: begin // andi I-type 
                    aluop_o <= `ALU_XOR ; 
                    alusel_o <= `ALUS_LOGIC ;
                end
                `EXE_LUI: begin // lui I-type
                    aluop_o <= `ALU_OR ; 
                    alusel_o <= `ALUS_LOGIC ;
                    immi <= {inst_i[15:0], 16'h0} ;
                end                
                `EXE_ADDI: begin // addi I-type
                    aluop_o <= `ALU_ADD ; 
                    alusel_o <= `ALUS_ARITHMETIC ;
            		immi <= {{16{inst_i[15]}}, inst_i[15:0]} ;
                end               
                `EXE_ADDIU: begin // addiu I-type
                    aluop_o <= `ALU_ADDU ; 
                    alusel_o <= `ALUS_ARITHMETIC ;
            		immi <= {{16{inst_i[15]}}, inst_i[15:0]} ;
                end
                `EXE_SLTI: begin // addi I-type
                    aluop_o <= `ALU_SLT ; 
                    alusel_o <= `ALUS_ARITHMETIC ;
            		immi <= {{16{inst_i[15]}}, inst_i[15:0]} ;
                end               
                `EXE_SLTIU: begin // addiu I-type
                    aluop_o <= `ALU_SLTU ; 
                    alusel_o <= `ALUS_ARITHMETIC ;
            		immi <= {{16{inst_i[15]}}, inst_i[15:0]} ;
                end

                `EXE_PREF: begin // pref, still unfinished
                    aluop_o <= `ALU_NOP ; 
                    alusel_o <= `ALUS_NOP ;
                    reg2_read_o <= `Enable ;
                    reg2_addr_o <= `NopRegAddr ;
                    wreg_o <= `Disable ;            
                end
                
                //------------------------------------------------------------- R-type
                `EXE_SPECIAL: begin // special-instruction

        			// default settings for R-type
                    wd_o <=  inst_i[15:11] ;
            		immi <= 32'h0 ;
                    reg1_addr_o <= inst_i[25:21] ;
                    reg2_addr_o <= inst_i[20:16] ;   
                    reg1_read_o <= `Enable ;
                    reg2_read_o <= `Enable ;  

                    case(op3) 
                    	// normal logic op
		                `ALU_AND, `ALU_XOR, `ALU_NOR, `ALU_OR: begin 
		                    aluop_o <= {2'h0, op3} ; 
		                    alusel_o <= `ALUS_LOGIC ;
		                    wreg_o <= `Enable ;
		                end 
		                // normal arithmetic op
		                `ALU_ADD, `ALU_ADDU, `ALU_SUB, `ALU_SUBU, `ALU_SLT, `ALU_SLTU: begin
		                    aluop_o <= {2'h0, op3} ; 
		                    alusel_o <= `ALUS_ARITHMETIC ;
		                    wreg_o <= `Enable ;
		                end 
		                // hi-lo arithmetic op
		        		`ALU_MULT, `ALU_MULTU: begin
		                    aluop_o <= {2'h0, op3} ;
		                    alusel_o <= `ALUS_ARITHMETIC ;           
		                    wreg_o <= `Disable ;
		        		end		        		
		        		`ALU_DIV, `ALU_DIVU: begin
		                    aluop_o <= {2'h0, op3} ;
		                    alusel_o <= `ALUS_ARITHMETIC ;           
		                    wreg_o <= `Disable ;
		        		end
		                // normal shift op
		                `ALU_SLL, `ALU_SRL, `ALU_SRA: begin
		                    aluop_o <= {2'h0, op3} ;  
		                    alusel_o <= `ALUS_SHIFT ;
		                    reg1_read_o <= `Disable ;
		                    immi <= {26'h0, op2} ;
		                    wreg_o <= `Enable ;
		                end 
		                // normal shift op with register
		                `ALU_SLLV, `ALU_SRLV, `ALU_SRAV: begin 
		                    aluop_o <= {4'h0, op3[1:0]} ; // used some little trick
		                    alusel_o <= `ALUS_SHIFT ;
		                    wreg_o <= `Enable ;
		                end 
		                // sync op 
		                `ALU_SYNC: begin 
		                    aluop_o <= `ALU_NOP ;
		                    alusel_o <= `ALUS_NOP ;           
		                    wreg_o <= `Disable ;
		                end
		                `ALU_MOVN, `ALU_MOVZ: begin
		                    aluop_o <= {2'h0, op3} ; 
		                    alusel_o <= `ALUS_MOVE ;
		                    wreg_o <= ((op3 == `ALU_MOVN) ^ (reg2_data_i == `Zero)) ;
		                end
		                `ALU_MFHI, `ALU_MFLO: begin
		                    aluop_o <= {2'h0, op3} ; 
		                    alusel_o <= `ALUS_MOVE ;
		                    wreg_o <= `Enable ;
		                end
		                `ALU_MTHI, `ALU_MTLO: begin
		                    aluop_o <= {2'h0, op3} ; 
		                    alusel_o <= `ALUS_MOVE ;
		                    wreg_o <= `Disable ;		                	
		                end
            		endcase
                end
                `EXE_SPECIAL2: begin // special-instruction
        			// default settings for R-type
                    reg1_addr_o <= inst_i[25:21] ;
                    reg2_addr_o <= inst_i[20:16] ;
                    wd_o <=  inst_i[15:11] ;
                    immi <= 32'h0 ;                		    
                    aluop_o <= {2'b10, op3} ;  
                	case(aluop_o)
                		`ALU_CLZ, `ALU_CLO: begin
	                        alusel_o <= `ALUS_ARITHMETIC ;
	                        reg1_read_o <= `Enable ;
	                        reg2_read_o <= `Disable ;
	                        wreg_o <= `Enable ;
                		end
                		`ALU_MUL: begin
	                        alusel_o <= `ALUS_MUL ;
	                        reg1_read_o <= `Enable ;
	                        reg2_read_o <= `Enable ;
	                        wreg_o <= `Enable ;
                		end
                	endcase
                end
                default: begin
                    aluop_o <= `ALU_NOP ; 
                    alusel_o <= `ALUS_NOP ;
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

    
