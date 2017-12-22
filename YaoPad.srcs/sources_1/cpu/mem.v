`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/14 20:56:55
// Design Name: 
// Module Name: mem
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

module mem(
        input wire rst,
        
        input wire[`RegAddrBus] wd_i,
        input wire wreg_i,
        input wire[`WordBus] wdata_i,

        input wire[`AluOpBus] aluop_i,
        input wire[`WordBus] mem_addr_i,
        input wire[`WordBus] reg2_i,

        input wire[`WordBus] mem_data_i,
        
        input wire whilo_i,
        input wire[`WordBus] hi_i,
        input wire[`WordBus] lo_i,

        input wire[`RegAddrBus] cp0_reg_write_addr_i,
        input wire cp0_reg_we_i,
        input wire[`WordBus] cp0_reg_data_i,

        input wire tlb_machine_check_exception_i,
        input wire[`WordBus] excepttype_i,
        input wire[`WordBus] current_inst_addr_i,
        input wire[`WordBus] current_data_addr_i,
        input wire is_in_delayslot_i,

        input wire[`WordBus] cp0_status_i,
        input wire[`WordBus] cp0_cause_i,
        input wire[`WordBus] cp0_epc_i, 
        input wire[`WordBus] cp0_ebase_i,
        input wire[`WordBus] cp0_index_i,
        input wire[`WordBus] cp0_random_i,
        input wire[`WordBus] cp0_entryhi_i,
        input wire[`WordBus] cp0_entrylo0_i,
        input wire[`WordBus] cp0_entrylo1_i,
        input wire[`WordBus] cp0_context_i,
        input wire[`WordBus] cp0_pagemask_i,
        input wire[`WordBus] cp0_badvaddr_i,
        input wire[`WordBus] cp0_wired_i,

        input wire wb_cp0_reg_we_i,
        input wire[`WordBus] wb_cp0_reg_data_i,
        input wire[`RegAddrBus] wb_cp0_reg_write_addr_i,

        input wire write_tlb_index_i,
        input wire write_tlb_random_i,

        output reg[`RegAddrBus] wd_o,
        output reg wreg_o,
        output reg[`WordBus] wdata_o,

        output reg whilo_o,
        output reg[`WordBus] hi_o,
        output reg[`WordBus] lo_o,

        output reg[`WordBus] mem_addr_o,
        output wire mem_we_o,
        output reg mem_ce_o,
        output reg[`WordBus] mem_data_o,
        output reg[3:0] mem_sel_o,

        output reg[`RegAddrBus] cp0_reg_write_addr_o,
        output reg cp0_reg_we_o,
        output reg[`WordBus] cp0_reg_data_o,

        output reg[`WordBus] excepttype_o,

        output wire[`WordBus] cp0_status_o,
        output wire[`WordBus] cp0_cause_o,
        output wire[`WordBus] cp0_epc_o,
        output wire[`WordBus] cp0_ebase_o,
        output wire[`WordBus] cp0_index_o,
        output wire[`WordBus] cp0_random_o,
        output wire[`WordBus] cp0_entryhi_o,
        output wire[`WordBus] cp0_entrylo0_o,
        output wire[`WordBus] cp0_entrylo1_o,
        output wire[`WordBus] cp0_context_o,
        output wire[`WordBus] cp0_pagemask_o,
        output wire[`WordBus] cp0_badvaddr_o,
        output wire[`WordBus] cp0_wired_o,

        output wire write_tlb_index_o,
        output wire write_tlb_random_o,

        output wire[`WordBus] current_inst_addr_o,
        output wire[`WordBus] current_data_addr_o,
        output wire is_in_delayslot_o,

        output wire[`WordBus] debugdata,
        output wire stallreq
    );
    reg mem_we;
    wire [1:0] addr_mod4 = mem_addr_i[1:0];

    //assign debugdata = {aluop_i, mem_addr_i[7:0], reg2_i[15:0]} ;
    assign debugdata = {2'b0, aluop_i, wreg_o, wd_i, mem_data_i[31:16]} ;
    assign stallreq = mem_ce_o ;

    assign write_tlb_index_o = write_tlb_index_i ;
    assign write_tlb_random_o = write_tlb_random_i ;

    always @ (*) begin
        if (rst == `Enable) begin
            wd_o <= `NopRegAddr ;
            wreg_o <= 0 ;
            wdata_o <= `Zero ;
            whilo_o <= 0 ;
            mem_addr_o <= `Zero;
            mem_we <= `Disable;
            mem_ce_o <= `Disable;
            mem_data_o <= `Zero;
            mem_sel_o <= 4'b0;
            cp0_reg_write_addr_o <= `NopRegAddr ;
            cp0_reg_we_o <= `Disable ;
            cp0_reg_data_o <= `Zero ;
        end else begin 
            wd_o <= wd_i ;
            wreg_o <= wreg_i;
            wdata_o <= wdata_i ;
            whilo_o <= whilo_i ;
            hi_o <= hi_i ;
            lo_o <= lo_i ;
            cp0_reg_write_addr_o <= cp0_reg_write_addr_i ;
            cp0_reg_we_o <= cp0_reg_we_i ;
            cp0_reg_data_o <= cp0_reg_data_i ;
            mem_addr_o <= mem_addr_i;
            mem_we <= `Disable;
            mem_ce_o <= `Disable;
            mem_data_o <= reg2_i;
            mem_sel_o <= 4'b0;
            if(excepttype_i == `Zero) begin
                case (aluop_i)
                    `MEM_LB: begin
                        mem_we <= `Disable;
                        mem_ce_o <= `Enable;
                        wreg_o <= `Enable ;
                        case(addr_mod4)
                            2'b00: begin
                                mem_sel_o <= 4'b0001;
                                wdata_o <= {{24{mem_data_i[7]}},mem_data_i[7:0]};
                            end
                            2'b01: begin
                                mem_sel_o <= 4'b0010;
                                wdata_o <= {{24{mem_data_i[15]}},mem_data_i[15:8]};
                            end
                            2'b10: begin
                                mem_sel_o <= 4'b0100;
                                wdata_o <= {{24{mem_data_i[23]}},mem_data_i[23:16]};
                            end
                            2'b11: begin
                                mem_sel_o <= 4'b1000;
                                wdata_o <= {{24{mem_data_i[31]}},mem_data_i[31:24]};
                            end
                        endcase
                    end
                    `MEM_LBU: begin
                        mem_we <= `Disable;
                        mem_ce_o <= `Enable;
                        wreg_o <= `Enable ;
                        case(addr_mod4)
                            2'b00: begin
                                mem_sel_o <= 4'b0001;
                                wdata_o <= {{24'b0},mem_data_i[7:0]};
                            end
                            2'b01: begin
                                mem_sel_o <= 4'b0010;
                                wdata_o <= {{24'b0},mem_data_i[15:8]};
                            end
                            2'b10: begin
                                mem_sel_o <= 4'b0100;
                                wdata_o <= {{24'b0},mem_data_i[23:16]};
                            end
                            2'b11: begin
                                mem_sel_o <= 4'b1000;
                                wdata_o <= {{24'b0},mem_data_i[31:24]};
                            end
                        endcase
                    end
                    `MEM_LH: begin
                        mem_we <= `Disable;
                        mem_ce_o <= `Enable;
                        wreg_o <= `Enable ;
                        case(addr_mod4)
                            2'b00: begin
                                mem_sel_o <= 4'b0011;
                                wdata_o <= {{16{mem_data_i[15]}},mem_data_i[15:0]};
                            end
                            2'b10: begin
                                mem_sel_o <= 4'b1100;
                                wdata_o <= {{16{mem_data_i[31]}},mem_data_i[31:16]};
                            end
                            default: begin
                                mem_sel_o <= 4'b0000;
                                wdata_o <= `Zero;
                                wreg_o <= `Disable ;
                            end
                        endcase
                    end
                    `MEM_LHU: begin
                        mem_we <= `Disable;
                        mem_ce_o <= `Enable;
                        wreg_o <= `Enable ;
                        case(addr_mod4)
                            2'b00: begin
                                mem_sel_o <= 4'b1100;
                                wdata_o <= {{16'b0},mem_data_i[15:0]};
                            end
                            2'b10: begin
                                mem_sel_o <= 4'b0011;
                                wdata_o <= {{16'b0},mem_data_i[31:16]};
                            end
                            default: begin
                                mem_sel_o <= 4'b0000;
                                wdata_o <= `Zero;
                                wreg_o <= `Disable ;
                            end
                        endcase
                    end
                    `MEM_LW: begin
                        mem_we <= `Disable;
                        mem_ce_o <= `Enable;
                        wreg_o <= `Enable ;
                        case(addr_mod4)
                            2'b00: begin
                                mem_sel_o <= 4'b1111;
                                wdata_o <= mem_data_i;
                            end
                            default: begin
                                mem_sel_o <= 4'b0000;
                                wdata_o <= `Zero;
                                wreg_o <= `Disable ;
                            end
                        endcase
                    end
                    `MEM_LWL: begin
                        mem_we <= `Disable;
                        mem_ce_o <= `Enable;
                        mem_sel_o <= 4'b1111;
                        mem_addr_o <= {mem_addr_i[31:2],2'b00};
                        wreg_o <= `Enable ;
                        case(addr_mod4)
                            2'b00: begin
                                wdata_o <= mem_data_i;
                            end
                            2'b01: begin
                                wdata_o <= {mem_data_i[23:0], reg2_i[7:0]};
                            end
                            2'b10: begin
                                wdata_o <= {mem_data_i[15:0], reg2_i[15:0]};
                            end
                            2'b11: begin
                                wdata_o <= {mem_data_i[7:0], reg2_i[23:0]};
                            end
                        endcase
                    end
                    `MEM_LWR: begin
                        mem_we <= `Disable;
                        mem_ce_o <= `Enable;
                        mem_sel_o <= 4'b1111;
                        mem_addr_o <= {mem_addr_i[31:2],2'b00};
                        wreg_o <= `Enable ;
                        case(addr_mod4)
                            2'b00: begin
                                wdata_o <= {reg2_i[31:8], mem_data_i[31:24]};
                            end
                            2'b01: begin
                                wdata_o <= {reg2_i[31:16], mem_data_i[31:16]};
                            end
                            2'b10: begin
                                wdata_o <= {reg2_i[31:24], mem_data_i[31:8]};
                            end
                            2'b11: begin
                                wdata_o <=  mem_data_i;
                            end
                        endcase
                    end
                    `MEM_SB: begin
                        mem_we <= `Enable;
                        mem_ce_o <= `Enable;
                        mem_addr_o <= mem_addr_i;
                        mem_data_o <= {4{reg2_i[7:0]}};
                        case(addr_mod4)
                            2'b00: begin
                                mem_sel_o <= 4'b0001;
                            end
                            2'b01: begin
                                mem_sel_o <= 4'b0010;
                            end
                            2'b10: begin
                                mem_sel_o <= 4'b0100;
                            end
                            2'b11: begin
                                mem_sel_o <= 4'b1000;
                            end
                        endcase
                    end
                    `MEM_SH: begin
                        mem_we <= `Enable;
                        mem_ce_o <= `Enable;
                        mem_addr_o <= mem_addr_i;
                        mem_data_o <= {2{reg2_i[15:0]}};
                        case(addr_mod4)
                            2'b00: begin
                                mem_sel_o <= 4'b0011;
                            end
                            2'b10: begin
                                mem_sel_o <= 4'b1100;
                            end
                            default: begin
                                mem_sel_o <= 4'b0000;
                            end
                        endcase
                    end
                    `MEM_SW: begin
                        mem_we <= `Enable;
                        mem_ce_o <= `Enable;
                        mem_addr_o <= mem_addr_i;
                        mem_data_o <= reg2_i;
                        case(addr_mod4)
                            2'b00: begin
                                mem_sel_o <= 4'b1111;
                            end
                            default: begin
                                mem_sel_o <= 4'b0000;
                            end
                        endcase
                    end
                    `MEM_SWL: begin
                        mem_we <= `Enable;
                        mem_ce_o <= `Enable;
                        mem_addr_o <= {mem_addr_i[31:2],2'b00};
                        case(addr_mod4)
                            2'b00: begin
                                mem_sel_o <= 4'b1111;
                                mem_data_o <= reg2_i;
                            end
                            2'b01: begin
                                mem_sel_o <= 4'b0111;
                                mem_data_o <= {8'b0, reg2_i[31:8]};
                            end
                            2'b10: begin
                                mem_sel_o <= 4'b0011;
                                mem_data_o <= {16'b0, reg2_i[31:16]};
                            end
                            2'b11: begin
                                mem_sel_o <= 4'b0001;
                                mem_data_o <= {24'b0, reg2_i[31:24]};
                            end
                        endcase
                    end
                    `MEM_SWR: begin
                        mem_we <= `Enable;
                        mem_ce_o <= `Enable;
                        mem_addr_o <= {mem_addr_i[31:2], 2'b00};
                        case(addr_mod4)
                            2'b00: begin
                                mem_sel_o <= 4'b1000;
                                mem_data_o <= {reg2_i[7:0], 24'b0};
                            end
                            2'b01: begin
                                mem_sel_o <= 4'b1100;
                                mem_data_o <= {reg2_i[15:0], 16'b0};
                            end
                            2'b10: begin
                                mem_sel_o <= 4'b1110;
                                mem_data_o <= {reg2_i[23:0], 8'b0};
                            end
                            2'b11: begin
                                mem_sel_o <= 4'b1111;
                                mem_data_o <= reg2_i;
                            end
                        endcase
                    end
                    default: begin
                        mem_addr_o <= `Zero;
                        mem_we <= `Disable;
                        mem_ce_o <= `Disable;
                        mem_data_o <= `Zero;
                        mem_sel_o <= 4'b0;
                    end
                endcase
            end
        end
    end
    
    reg[`WordBus] cp0_status ;
    reg[`WordBus] cp0_cause ;
    reg[`WordBus] cp0_epc ;
    reg[`WordBus] cp0_ebase ;
    reg[`WordBus] cp0_index ;
    reg[`WordBus] cp0_random ;
    reg[`WordBus] cp0_entryhi ;
    reg[`WordBus] cp0_entrylo0 ;
    reg[`WordBus] cp0_entrylo1 ;
    reg[`WordBus] cp0_context ;
    reg[`WordBus] cp0_pagemask ;
    reg[`WordBus] cp0_badvaddr ;
    reg[`WordBus] cp0_wired ;

    assign cp0_epc_o = cp0_epc ;
    assign cp0_status_o = cp0_status ;
    assign cp0_cause_o = cp0_cause ;
    assign cp0_ebase_o = cp0_ebase ;
    assign cp0_index_o = cp0_index ;
    assign cp0_random_o = cp0_random ;
    assign cp0_entryhi_o = cp0_entryhi ;
    assign cp0_entrylo0_o = cp0_entrylo0 ;
    assign cp0_entrylo1_o = cp0_entrylo1 ;
    assign cp0_context_o = cp0_context ;
    assign cp0_pagemask_o = cp0_pagemask ;
    assign cp0_badvaddr_o = cp0_badvaddr ;
    assign cp0_wired_o = cp0_wired ;

    assign is_in_delayslot_o = is_in_delayslot_i ;
    assign current_inst_addr_o = current_inst_addr_i ;
    assign current_data_addr_o = current_data_addr_i ;
    


    always @(*) begin
        if (rst == `Enable) begin
            cp0_status <= `Zero ;
            cp0_cause <= `Zero ;
            cp0_epc <= `Zero ;
            cp0_ebase <= `Zero ;
            cp0_index <= `Zero ;
            cp0_random <= `Zero ;
            cp0_entryhi <= `Zero ;
            cp0_entrylo0 <= `Zero ;
            cp0_entrylo1 <= `Zero ;
            cp0_context <= `Zero ;
            cp0_pagemask <= `Zero ;
            cp0_badvaddr <= `Zero ;
            cp0_wired <= `Zero ;
        end
        else begin
            cp0_status <= cp0_status_i ;
            if ((wb_cp0_reg_we_i == `Enable) && (wb_cp0_reg_write_addr_i == `CP0_STATUS)) begin
                cp0_status <= wb_cp0_reg_data_i ;
            end
            cp0_epc <= cp0_epc_i ;
            if ((wb_cp0_reg_we_i == `Enable) && (wb_cp0_reg_write_addr_i == `CP0_EPC)) begin
                cp0_epc <= wb_cp0_reg_data_i ;
            end
            cp0_cause <= cp0_cause_i ;
            if ((wb_cp0_reg_we_i == `Enable) && (wb_cp0_reg_write_addr_i == `CP0_CAUSE)) begin
                cp0_cause[9:8] <= wb_cp0_reg_data_i[9:8] ;
                cp0_cause[23:22] <= wb_cp0_reg_data_i[23:22] ;
            end            
            cp0_index <= cp0_index_i ;
            if ((wb_cp0_reg_we_i == `Enable) && (wb_cp0_reg_write_addr_i == `CP0_INDEX)) begin
                cp0_index[3:0] <= wb_cp0_reg_data_i[3:0] ;
            end
            cp0_random <= cp0_random_i ;            
            cp0_entrylo0 <= cp0_entrylo0_i ;
            if ((wb_cp0_reg_we_i == `Enable) && (wb_cp0_reg_write_addr_i == `CP0_ENTRYLO0)) begin
                cp0_entrylo0[25:6] <= wb_cp0_reg_data_i[25:6] ;
                cp0_entrylo0[2:0] <= wb_cp0_reg_data_i[2:0] ;
            end            
            cp0_entrylo1 <= cp0_entrylo1_i ;
            if ((wb_cp0_reg_we_i == `Enable) && (wb_cp0_reg_write_addr_i == `CP0_ENTRYLO1)) begin
                cp0_entrylo1[25:6] <= wb_cp0_reg_data_i[25:6] ;
                cp0_entrylo1[2:0] <= wb_cp0_reg_data_i[2:0] ;
            end
            cp0_entryhi <= cp0_entryhi_i ;
            if ((wb_cp0_reg_we_i == `Enable) && (wb_cp0_reg_write_addr_i == `CP0_ENTRYHI)) begin
                cp0_entryhi[31:13] <= wb_cp0_reg_data_i[31:13] ;
                cp0_entryhi[7:0] <= wb_cp0_reg_data_i[7:0] ;
            end            
            cp0_ebase <= cp0_ebase_i ;
            if ((wb_cp0_reg_we_i == `Enable) && (wb_cp0_reg_write_addr_i == `CP0_EBASE)) begin
                cp0_entryhi[29:12] <= wb_cp0_reg_data_i[29:12] ;
            end
            cp0_context <= cp0_context_i ;
            cp0_pagemask <= cp0_pagemask_i ;
            cp0_wired <= cp0_wired_i ;
            cp0_badvaddr <= cp0_badvaddr_i ;            
            cp0_entryhi <= cp0_entryhi_i ;
        end
    end

    assign mem_we_o = mem_we & (~(|excepttype_o)) ;
    always @(*) begin
        if (rst == `Enable) begin
            excepttype_o <= `Zero ;
        end
        else begin
            excepttype_o <= `Zero ;
            if(current_inst_addr_i != `Zero) begin
                if(((cp0_cause[15:8] & (cp0_status[15:8])) != 8'h00) && (cp0_status[1] == 1'b0) && (cp0_status[0] == 1'b1)) begin
                    excepttype_o <= 32'h00000100 ;
                end else if(excepttype_i[13] == 1'b1) begin
                    excepttype_o <= 32'h00000001 ; // Mod Exception
                end else if(excepttype_i[14] == 1'b1) begin
                    excepttype_o <= 32'h00000002 ; // TLBL Exception
                end else if(excepttype_i[15] == 1'b1) begin
                    excepttype_o <= 32'h00000003 ; // TLBS Exception
                end else if(excepttype_i[8] == 1'b1) begin
                    excepttype_o <= 32'h00000008 ;
                end else if(excepttype_i[9] == 1'b1) begin
                    excepttype_o <= 32'h0000000a ;
                end else if(excepttype_i[10] == 1'b1) begin
                    excepttype_o <= 32'h0000000d ;
                end else if(excepttype_i[11] == 1'b1) begin
                    excepttype_o <= 32'h0000000c ;
                end else if(excepttype_i[12] == 1'b1) begin
                    excepttype_o <= 32'h0000000e ;
                end 
            end   
            if(tlb_machine_check_exception_i == 1'b1) begin // Oops
                excepttype_o <= 32'h00000018 ;
            end    
        end
    end
endmodule
