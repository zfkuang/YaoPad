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
    
    input wire[`WordBus] reg1_i,
    input wire[`WordBus] reg2_i,
    
    input wire[`RegAddrBus] wd_i,
    input wire wreg_i,
    
    input wire[`WordBus] lo_i,
    input wire[`WordBus] hi_i,

    input wire wb_whilo_i,
    input wire[`WordBus] wb_hi_i,
    input wire[`WordBus] wb_lo_i,

    input wire mem_whilo_i,
    input wire[`WordBus] mem_hi_i,
    input wire[`WordBus] mem_lo_i,

    input wire div_ready_i,

    input wire[`WordBus] inst_i,
    input wire[`DoubleWordBus] div_result_i,    

    input wire is_in_delayslot_i,
    input wire[`WordBus] link_addr_i,

    input wire[`WordBus] cp0_reg_data_i,
    input wire mem_cp0_reg_we,
    input wire[`RegAddrBus] mem_cp0_reg_write_addr,
    input wire[`WordBus] mem_cp0_reg_data,

    input wire wb_cp0_reg_we,
    input wire[`RegAddrBus] wb_cp0_reg_write_addr,
    input wire[`WordBus] wb_cp0_reg_data,

    input wire[`WordBus] excepttype_i,
    input wire[`WordBus] current_inst_addr_i,

    output reg[`RegAddrBus] wd_o,
    output reg wreg_o,
    output reg[`WordBus] wdata_o,

    output reg whilo_o,
    output reg[`WordBus] hi_o,
    output reg[`WordBus] lo_o,

    output reg div_start_o, 
    output reg signed_div_o,
    output reg[`WordBus] div_opdata1_o,
    output reg[`WordBus] div_opdata2_o,

    output wire[`AluOpBus] aluop_o,
    output wire[`WordBus] mem_addr_o,
    output wire[`WordBus] reg2_o,

    output reg[`RegAddrBus] cp0_reg_read_addr_o,
    output reg[`RegAddrBus] cp0_reg_write_addr_o,
    output reg cp0_reg_we_o,
    output reg[`WordBus] cp0_reg_data_o,

    output wire[`WordBus] excepttype_o,
    output wire[`WordBus] current_inst_addr_o,
    output wire is_in_delayslot_o,


    output wire[`WordBus] debugdata,
    output reg stallreq
    );

    assign debugdata = inst_i ;
    
    reg[`WordBus] logicres ;
    reg[`WordBus] shiftres ;
    reg[`WordBus] moveres ;
    reg[`WordBus] arithres ;
    reg[`DoubleWordBus] mulres ;
    reg[`WordBus] hi ;
    reg[`WordBus] lo ;
    reg ovassert ;
    reg trapassert ;

    assign reg2_o = reg2_i;
    assign mem_addr_o = reg1_i + {{16{inst_i[15]}},inst_i[15:0]};
    assign aluop_o = aluop_i;
    always @ (*) begin // logic operations 
        if (rst == `Enable) begin 
            logicres <= `Zero ;
        end else begin 
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
                default: begin
                    logicres <= `Zero ; 
                end
            endcase
        end
    end

    always @ (*) begin // shift operations
        if (rst == `Enable) begin 
            shiftres <= `Zero ;
        end else begin 
            case(aluop_i)
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
                    shiftres <= `Zero ; 
                end
            endcase
        end
    end

    always @ (*) begin // move operations
        if (rst == `Enable) begin 
            moveres <= `Zero ;
            hi = `Zero; lo = `Zero ;
        end else begin 
            if (mem_whilo_i == `Enable) begin hi = mem_hi_i; lo = mem_lo_i ; end
            else if(wb_whilo_i == `Enable) begin hi = wb_hi_i; lo = wb_lo_i ; end
            else begin hi = hi_i; lo = lo_i; end
            case(aluop_i)
                `ALU_MOVN, `ALU_MOVZ: begin
                    moveres <= reg1_i ;
                end
                `ALU_MFHI: begin
                    moveres <= hi ;
                end
                `ALU_MFLO: begin
                    moveres <= lo ;
                end
                `ALU_MFC0: begin
                    cp0_reg_read_addr_o <= inst_i[15:11] ;
                    if ((mem_cp0_reg_we == `Enable) && (mem_cp0_reg_write_addr == cp0_reg_read_addr_o)) begin
                        moveres <= mem_cp0_reg_data ;
                    end else if ((wb_cp0_reg_we == `Enable) && (wb_cp0_reg_write_addr == cp0_reg_read_addr_o)) begin
                        moveres <= wb_cp0_reg_data ;
                    end else begin
                        moveres <= cp0_reg_data_i ;
                    end
                end
                default: begin
                    moveres <= `Zero ; 
                end
            endcase
        end
    end

    // some pre-computed values used in arithmetic operations
    
    wire[`WordBus] reg2_i_mux ;
    wire[`WordBus] reg1_i_not ;
    wire[`WordBus] add_sum ;
    wire is_overflow ; // overflow 
    wire is_equal ; // zero 
    wire is_less ; // negative 
    assign reg1_i_not = (aluop_i == `ALU_CLO) ? (~reg1_i) : (reg1_i) ;
    assign reg2_i_mux = ((aluop_i == `ALU_SUB) ||  (aluop_i == `ALU_SUBU) 
                        || (aluop_i == `ALU_SLT) 
                        || (aluop_i == `ALU_TLT) || (aluop_i == `ALU_TGE)) ? (~reg2_i+1) : reg2_i ;
    assign add_sum = reg1_i + reg2_i_mux ;
    assign is_equal = (reg1_i == reg2_i) ;
    assign is_overflow = ((!reg1_i[31] && !reg2_i_mux[31]) && add_sum[31]) || ((reg1_i[31] && reg2_i_mux[31]) && (!add_sum[31])) ;
    assign is_less = (aluop_i == `ALU_SLT || aluop_i == `ALU_TLT || aluop_i == `ALU_TGE) ? 
                        ((reg1_i[31] && !reg2_i[31]) || ((reg1_i[31] == reg2_i[31]) && add_sum[31])) : (reg1_i < reg2_i) ;

    always @ (*) begin // arithmetic operations
        if (rst == `Enable) begin 
            arithres <= `Zero ;
        end else begin 
            case(aluop_i)
                `ALU_SLT, `ALU_SLTU: begin
                    arithres <= is_less ;
                end
                `ALU_ADD, `ALU_SUB: begin
                    arithres <= add_sum ;
                end
                `ALU_ADDU, `ALU_SUBU: begin
                    arithres <= add_sum ;
                end
                `ALU_CLZ, `ALU_CLO: begin
                    arithres <=  reg1_i_not[31] ? 0 : reg1_i_not[30] ? 1 :
                                reg1_i_not[29] ? 2 : reg1_i_not[28] ? 3 :
                                reg1_i_not[27] ? 4 : reg1_i_not[26] ? 5 :
                                reg1_i_not[25] ? 6 : reg1_i_not[24] ? 7 :
                                reg1_i_not[23] ? 8 : reg1_i_not[22] ? 9 :
                                reg1_i_not[21] ? 10 : reg1_i_not[20] ? 11 :
                                reg1_i_not[19] ? 12 : reg1_i_not[18] ? 13 :
                                reg1_i_not[17] ? 14 : reg1_i_not[16] ? 15 :
                                reg1_i_not[15] ? 16 : reg1_i_not[14] ? 17 :
                                reg1_i_not[13] ? 18 : reg1_i_not[12] ? 19 :
                                reg1_i_not[11] ? 20 : reg1_i_not[10] ? 21 :
                                reg1_i_not[9] ? 22 : reg1_i_not[8] ? 23 :
                                reg1_i_not[7] ? 24 : reg1_i_not[6] ? 25 :
                                reg1_i_not[5] ? 26 : reg1_i_not[4] ? 27 :
                                reg1_i_not[3] ? 28 : reg1_i_not[2] ? 29 :
                                reg1_i_not[1] ? 30 : reg1_i_not[0] ? 31 : 32 ;
                end
                default: begin
                    arithres <= `Zero ;
                end
            endcase
        end
    end
    // some pre-computed values used in mul operations

    wire[`WordBus] mul_op1 ;
    wire[`WordBus] mul_op2 ;
    wire[`DoubleWordBus] mul_ans ;
    assign mul_op1 = ((aluop_i == `ALU_MUL || aluop_i == `ALU_MULT) && reg1_i[31]) ? (~reg1_i+1) : reg1_i ;
    assign mul_op2 = ((aluop_i == `ALU_MUL || aluop_i == `ALU_MULT) && reg2_i[31]) ? (~reg2_i+1) : reg2_i ;
    assign mul_ans = mul_op1 * mul_op2 ;

    always @ (*) begin // mul operations
        if (rst == `Enable) begin 
            mulres = `DZero ;
        end else begin 
            case(aluop_i)
                `ALU_MUL, `ALU_MULT: begin
                    mulres <= ((reg1_i[31] ^ reg2_i[31]) == 1) ? (~mul_ans+1) : mul_ans ;
                end
                `ALU_MULTU: begin
                    mulres <= mul_ans ;
                end
                default: begin
                    mulres <= `DZero ;
                end
            endcase
        end
    end

    always @ (*) begin // hi-lo operations
        if (rst == `Enable) begin 
            hi_o = `Zero; lo_o = `Zero ;
            stallreq = `Zero ;
        end else begin 
            div_start_o <= 0 ;
            stallreq <= 0;
            case(aluop_i)
                `ALU_MTHI: begin
                    whilo_o <= 1 ;
                    hi_o <= reg1_i ;
                end
                `ALU_MTLO: begin
                    whilo_o <= 1 ;
                    lo_o <= reg1_i ;
                end
                `ALU_MULT, `ALU_MULTU: begin
                    whilo_o <= 1 ;
                    hi_o <= mulres[63:32] ;
                    lo_o <= mulres[31:0] ;
                end
                `ALU_DIV, `ALU_DIVU: begin
                    div_start_o <= (~div_ready_i) ;
                    div_opdata1_o <= reg1_i ;
                    div_opdata2_o <= reg2_i ;
                    signed_div_o <= (aluop_i == `ALU_DIV) ;
                    stallreq <= (~div_ready_i) ;
                    hi_o <= div_result_i[63:32] ;
                    lo_o <= div_result_i[31:0] ;
                    whilo_o <= 1 ;
                end
                default: begin
                    whilo_o <= 0 ;
                    hi_o = `Zero; lo_o = `Zero ;
                end
            endcase
        end
    end
  
    always @ (*) begin // cp0_writting operation 
        if((rst == `Enable) || (aluop_i != `ALU_MTC0)) begin
            cp0_reg_data_o <= `Zero ;
            cp0_reg_we_o <= `Disable ;
            cp0_reg_write_addr_o <= `NopRegAddr ;
        end else begin
            cp0_reg_data_o <= reg1_i ;
            cp0_reg_we_o <= `Enable ;
            cp0_reg_write_addr_o <= inst_i[15:11] ;
        end
    end

    assign excepttype_o = {excepttype_i[31:12], ovassert, trapassert, excepttype_i[9:8], 8'h00} ;
    assign is_in_delayslot_o = is_in_delayslot_i ;
    assign current_inst_addr_o = current_inst_addr_i ; 
    always @ (*) begin
        trapassert <= `Disable ;
        case(aluop_i)
            `ALU_TEQ, `ALU_TNE: begin
                trapassert <= (is_equal ^ (aluop_i == `ALU_TNE))  ;
            end
            `ALU_TLT, `ALU_TLTU: begin
                trapassert <= is_less ;
            end
            `ALU_TGE, `ALU_TGEU: begin
                trapassert <= (~is_less) ;                
            end
        endcase
    end

    always @ (*) begin // choose answer
        if (rst == `Enable) begin 
            wdata_o <= `Zero ;
            wd_o <= `NopRegAddr ;
            wreg_o <= 0 ;
        end else begin 
            wd_o <= wd_i ;        
            if(((aluop_i == `ALU_ADD) || (aluop_i == `ALU_SUB)) && is_overflow) begin
                wreg_o <= 0 ;
                ovassert <= `Enable ;
            end else begin 
                wreg_o <= wreg_i ;
                ovassert <= `Disable ; 
            end 
            case(alusel_i) 
                `ALUS_LOGIC: begin
                    wdata_o <= logicres ;
                end
                `ALUS_SHIFT: begin
                    wdata_o <= shiftres ;
                end
                `ALUS_MOVE: begin
                    wdata_o <= moveres ;
                end
                `ALUS_ARITHMETIC: begin
                    wdata_o <= arithres ;
                end
                `ALUS_MUL: begin
                    wdata_o = mulres[31:0] ;
                end
                `ALUS_JUMP: begin
                    wdata_o <= link_addr_i ;
                end
                default: begin
                    wdata_o <= `Zero ;
                end
            endcase 
        end
    end

endmodule
