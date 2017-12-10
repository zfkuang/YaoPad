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
    
    input wire[`WordBus] pc_i,
    input wire[`WordBus] inst_i,
    
    input wire[`WordBus] reg1_data_i,
    input wire[`WordBus] reg2_data_i,
    
    input wire[`WordBus] mem_wdata_i, 
    input wire[`RegAddrBus] mem_wd_i, 
    input wire mem_wreg_i, 
    input wire[`WordBus] ex_wdata_i, 
    input wire[`RegAddrBus] ex_wd_i, 
    input wire ex_wreg_i, 

    input wire is_in_delayslot_i,
    input wire[`AluOpBus] ex_aluop_i,

    input wire[5:0] int_i,
 
    output reg[`WordBus] inst_o,
    output reg[`AluOpBus] aluop_o,
    output reg[`AluSelBus] alusel_o,
    
    output reg[`RegAddrBus] wd_o,
    output reg wreg_o,
    
    output reg[`RegAddrBus] reg2_addr_o,
    output reg reg2_read_o,
    
    output reg[`RegAddrBus] reg1_addr_o,
    output reg reg1_read_o,
    
    output reg[`WordBus] reg1_o,
    output reg[`WordBus]  reg2_o,

    output reg branch_flag_o,
    output reg[`WordBus] branch_target_address_o,
    output reg is_in_delayslot_o,
    output reg[`WordBus] link_addr_o,
    output reg next_inst_in_delayslot_o,

    output wire[`WordBus] excepttype_o,
    output wire[`WordBus] current_inst_addr_o,

    output wire[`WordBus] debugdata,
    output wire stallreq,
    output wire timer_int_o
    );

    assign debugdata = inst_i ;
    reg[`WordBus] immi ;
    wire[5:0] op1 = inst_i[31:26] ;
    wire[4:0] op2 = inst_i[10:6] ;
    wire[5:0] op3 = inst_i[5:0] ;
    wire[4:0] op4 = inst_i[20:16] ;
    wire[31:0] next_pc_i = pc_i+4 ;
    wire[31:0] next_next_pc_i = pc_i+8 ;

    wire pre_inst_is_load = ((ex_aluop_i == `MEM_LB)  ||
                             (ex_aluop_i == `MEM_LBU) ||
                             (ex_aluop_i == `MEM_LH)  ||
                             (ex_aluop_i == `MEM_LHU) ||
                             (ex_aluop_i == `MEM_LW)  ||
                             (ex_aluop_i == `MEM_LWL) ||
                             (ex_aluop_i == `MEM_LWR) 
                            ) ? 1'b1 : 1'b0;

    reg instvalid ;
    reg except_eret ;
    reg except_syscall ;
    assign excepttype_o = {19'b0, except_eret, 2'b0, ~instvalid, except_syscall, 8'b0} ;
    assign current_inst_addr_o = pc_i ;

    always @ (*) begin // interprete instruction
        if(rst == `Enable) begin 
            aluop_o <= `ALU_NOP ; 
            alusel_o <= `ALUS_NOP ;
            reg1_addr_o <= `NopRegAddr ;
            reg2_addr_o <= `NopRegAddr ;
            //stallreq <= 0 ;
            wd_o <= `Disable ;
            immi <= `Zero ;
            inst_o <= `Zero;

            branch_flag_o <= 0 ;
            branch_target_address_o <= `Zero ;
            is_in_delayslot_o <= 0;
            link_addr_o <= `Zero ;
            next_inst_in_delayslot_o <= 0;
        end else begin 
        	// default settings for I-type
            inst_o <= inst_i;
            reg1_read_o <= `Enable ;
            reg2_read_o <= `Disable ;
            reg1_addr_o <= inst_i[25:21] ;
            wd_o <= inst_i[20:16]  ;
            wreg_o <= `Enable ;
            immi <= {16'h0, inst_i[15:0]} ;
            //stallreq <= 0 ;

            branch_target_address_o <= `Zero ;
            branch_flag_o <= `Disable ;
            is_in_delayslot_o <= `Disable;
            next_inst_in_delayslot_o <= `Disable;

            instvalid <= `Enable ;
            except_eret <= `Disable ;
            except_syscall <= `Disable ;

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
                `EXE_LW, `EXE_LB, `EXE_LBU, `EXE_LH, `EXE_LHU: begin
                    reg1_addr_o <= inst_i[25:21];
                    reg2_addr_o <= inst_i[20:16]; 
                    reg1_read_o <= `Enable;
                    reg2_read_o <= `Disable;  
                    aluop_o <= {2'b11, op1};
                    alusel_o <= `ALUS_LOAD_STORE;
                end
                `EXE_LWL, `EXE_LWR : begin
                    reg1_addr_o <= inst_i[25:21];
                    reg2_addr_o <= inst_i[20:16]; 
                    reg1_read_o <= `Enable;
                    reg2_read_o <= `Enable;  
                    aluop_o <= {2'b11, op1};
                    alusel_o <= `ALUS_LOAD_STORE;
                end
                `EXE_SB, `EXE_SH, `EXE_SW, `EXE_SWL, `EXE_SWR : begin
                    wreg_o <= `Disable;
                    aluop_o <= {2'b11, op1};
                    alusel_o <= `ALUS_LOAD_STORE;
                    reg1_addr_o <= inst_i[25:21];
                    reg2_addr_o <= inst_i[20:16];   
                    reg1_read_o <= `Enable;
                    reg2_read_o <= `Enable;  
                end
            
                `EXE_J, `EXE_JAL: begin
                    aluop_o <= `ALU_JUMP ; 
                    alusel_o <= `ALUS_JUMP ;
                    wd_o <= 5'b11111 ;
                    link_addr_o <= next_next_pc_i ;
                    branch_target_address_o <= {next_pc_i[31:28], inst_i[25:0], 2'b00} ;
                    next_inst_in_delayslot_o <= `Enable ;
                    branch_flag_o <= `Enable ;
                    wreg_o <= op1[0] ;        
                end
                `EXE_BEQ, `EXE_BNE: begin //branch instructions 
                    aluop_o <= `ALU_JUMP ; 
                    alusel_o <= `ALUS_JUMP ;
                    wreg_o <= `Disable ;
                    reg2_read_o <= `Enable ;
                    reg2_addr_o <= inst_i[20:16] ;
                    if((reg1_o == reg2_o) ^ (op1 == `EXE_BNE)) begin
                        branch_target_address_o <= next_pc_i+{{14{inst_i[15]}}, inst_i[15:0], 2'b00} ;
                        next_inst_in_delayslot_o <= `Enable ;
                        branch_flag_o <= `Enable ;
                    end
                end
                `EXE_BGTZ, `EXE_BLEZ: begin
                    aluop_o <= `ALU_JUMP ; 
                    alusel_o <= `ALUS_JUMP ;
                    wreg_o <= `Disable ;
                    if(((reg1_o == `Zero) || (reg1_o[31] == 1)) ^ (op1 == `EXE_BGTZ)) begin
                        branch_target_address_o <= next_pc_i+{{14{inst_i[15]}}, inst_i[15:0], 2'b00} ;
                        next_inst_in_delayslot_o <= `Enable ;
                        branch_flag_o <= `Enable ;
                    end
                end
                `EXE_REGIMM: begin
                    wreg_o <= `Disable ; 
                    alusel_o <= `ALUS_NOP ;
                    immi <= {{16{inst_i[15]}}, inst_i[15:0]} ;
                    case(op4)
                        `EXE_BLTZ, `EXE_BLTZAL, `EXE_BGEZ, `EXE_BGEZAL: begin
                            aluop_o <= `ALU_JUMP ; 
                            alusel_o <= `ALUS_JUMP ;
                            wreg_o <= op4[4] ;
                            wd_o <= 5'b11111 ;
                            link_addr_o <= next_next_pc_i ;
                            if(reg1_o[31] ^ op4[0]) begin
                                branch_target_address_o <= next_pc_i+{{14{inst_i[15]}}, inst_i[15:0], 2'b00} ;
                                next_inst_in_delayslot_o <= `Enable ;
                                branch_flag_o <= `Enable ;
                            end
                        end  
                        `EXE_TEQI: begin aluop_o <= `ALU_TEQ ;end
                        `EXE_TGEI: begin aluop_o <= `ALU_TGE ;end
                        `EXE_TGEIU: begin aluop_o <= `ALU_TGEU ;end
                        `EXE_TLTI: begin aluop_o <= `ALU_TLT ;end
                        `EXE_TLTIU: begin aluop_o <= `ALU_TLTU ;end
                        `EXE_TNEI: begin aluop_o <= `ALU_TNE ;end
                    endcase
                end

                `EXE_COP0: begin
                    if(inst_i[5:0] == `EXE_ERET) begin
                        alusel_o <= `ALUS_NOP ;
                        aluop_o <= `ALU_ERET ;
                        reg1_read_o <= `Disable ;
                        except_eret <= `Enable ;
                    end
                    else if(inst_i[25:21] == `EXE_MT) begin
                        aluop_o <= `ALU_MTC0 ;
                        alusel_o <= `ALUS_NOP ;
                        wreg_o <= `Disable ;
                        reg1_addr_o <= inst_i[20:16]  ; 
                    end else begin
                        aluop_o <= `ALU_MFC0 ;
                        alusel_o <= `ALUS_MOVE ;
                    end
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
                        `ALU_JR, `ALU_JALR: begin
                            aluop_o <= `ALU_JUMP ; 
                            alusel_o <= `ALUS_JUMP ;
                            link_addr_o <= next_next_pc_i ;
                            branch_target_address_o <= reg1_o ;
                            next_inst_in_delayslot_o <= `Enable ;
                            branch_flag_o <= `Enable ;
                            wreg_o <= op3[0] ;       
                        end
                        `ALU_TEQ, `ALU_TGE, `ALU_TGEU, `ALU_TLT, `ALU_TLTU, `ALU_TNE: begin
                            aluop_o <= {2'b0, op3} ;
                            alusel_o <= `ALUS_NOP ;
                            wreg_o <= `Disable ;
                        end
                        `ALU_SYSCALL: begin
                            aluop_o <= `ALU_SYSCALL ;
                            alusel_o <= `ALUS_NOP ;
                            reg1_read_o <= `Disable ;
                            reg2_read_o <= `Disable ;
                            wreg_o <= `Disable ;
                            except_syscall <= `Enable ;
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

    reg stallreq1, stallreq2;
    assign stallreq = (stallreq1 | stallreq2);

    always @ (*) begin // calculate register
        stallreq1 <= `Disable;
        stallreq2 <= `Disable;
        if(rst == `Enable) begin 
            reg1_o <= `Zero ;
            reg2_o <= `Zero ;
        end else begin
            if(reg1_read_o == `Enable) begin
                if ((pre_inst_is_load == `Enable) && (ex_wd_i == reg1_addr_o)) begin
                    stallreq1 <= `Enable;
                end 
                if((ex_wreg_i == `Enable) && (ex_wd_i == reg1_addr_o)) begin
                    reg1_o <= ex_wdata_i ;
                end else if ((mem_wreg_i == `Enable) && (mem_wd_i == reg1_addr_o)) begin
                    reg1_o <= mem_wdata_i ;
                end else begin
                    reg1_o <= reg1_data_i ;
                end
            end else begin reg1_o <= immi ; end

            if(reg2_read_o == `Enable) begin
                if ((pre_inst_is_load == `Enable) && (ex_wd_i == reg2_addr_o)) begin
                    stallreq2 <= `Enable;
                end 
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

    
