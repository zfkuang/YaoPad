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

        input wire[`WordBus] excepttype_i,
        input wire[`WordBus] current_inst_addr_i,
        input wire is_in_delayslot_i,
        input wire[`WordBus] cp0_status_i,
        input wire[`WordBus] cp0_cause_i,
        input wire[`WordBus] cp0_epc_i, 
        input wire wb_cp0_reg_we_i,
        input wire[`WordBus] wb_cp0_reg_data_i,
        input wire[`RegAddrBus] wb_cp0_reg_write_addr_i,

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
        output wire[`WordBus] cp0_epc_o,
        output wire[`WordBus] current_inst_addr_o,
        output wire is_in_delayslot_o,

        output wire[`WordBus] debugdata,
        output wire stallreq
    );
    reg mem_we;
    wire [1:0] addr_mod4 = mem_addr_i[1:0];
    wire [7:0] mem_byte[3:0] ;

    assign mem_byte[0] = mem_data_i[31:24] ; // 67
    assign mem_byte[1] = mem_data_i[23:16] ; // 45
    assign mem_byte[2] = mem_data_i[15:8] ; // 23
    assign mem_byte[3] = mem_data_i[7:0] ; // 01
    
    assign debugdata = {24'b0, aluop_i} ;
    assign stallreq = mem_ce_o ;

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
            case (aluop_i)
                `MEM_LB: begin
                    mem_we <= `Disable;
                    mem_ce_o <= `Enable;
                    case(addr_mod4)
                        2'b00: begin  
                            mem_sel_o <= 4'b1000;
                            wdata_o <= {{24{mem_byte[0][7]}},mem_byte[0]};
                        end
                        2'b01: begin
                            mem_sel_o <= 4'b0100;
                            wdata_o <= {{24{mem_byte[1][7]}},mem_byte[1]};
                        end
                        2'b10: begin
                            mem_sel_o <= 4'b0010;
                            wdata_o <= {{24{mem_byte[2][7]}},mem_byte[2]};
                        end
                        2'b11: begin
                            mem_sel_o <= 4'b0001;
                            wdata_o <= {{24{mem_byte[3][7]}},mem_byte[3]};
                        end
                    endcase
                end
                `MEM_LBU: begin
                    mem_we <= `Disable;
                    mem_ce_o <= `Enable;
                    case(addr_mod4)
                        2'b00: begin
                            mem_sel_o <= 4'b1000;
                            wdata_o <= {{24'b0},mem_byte[0]};
                        end
                        2'b01: begin
                            mem_sel_o <= 4'b0100;
                            wdata_o <= {{24'b0},mem_byte[1]};
                        end
                        2'b10: begin
                            mem_sel_o <= 4'b0010;
                            wdata_o <= {{24'b0},mem_byte[2]};
                        end
                        2'b11: begin
                            mem_sel_o <= 4'b0001;
                            wdata_o <= {{24'b0},mem_byte[3]};
                        end
                    endcase
                end
                `MEM_LH: begin
                    mem_we <= `Disable;
                    mem_ce_o <= `Enable;
                    case(addr_mod4)
                        2'b00: begin
                            mem_sel_o <= 4'b1100;
                            wdata_o <= {{16{mem_byte[1][7]}},{mem_byte[1], mem_byte[0]}};
                        end
                        2'b10: begin
                            mem_sel_o <= 4'b0011;
                            wdata_o <= {{16{mem_byte[3][7]}},{mem_byte[3], mem_byte[2]}};
                        end
                        default: begin
                            mem_sel_o <= 4'b0000;
                            wdata_o <= `Zero;
                        end
                    endcase
                end
                `MEM_LHU: begin
                    mem_we <= `Disable;
                    mem_ce_o <= `Enable;
                    case(addr_mod4)
                        2'b00: begin
                            mem_sel_o <= 4'b1100;
                            wdata_o <= {{16'b0},{mem_byte[1], mem_byte[0]}};
                        end
                        2'b10: begin
                            mem_sel_o <= 4'b0011;
                            wdata_o <= {{16'b0},{mem_byte[3], mem_byte[2]}};
                        end
                        default: begin
                            mem_sel_o <= 4'b0000;
                            wdata_o <= `Zero;
                        end
                    endcase
                end
                `MEM_LW: begin
                    mem_we <= `Disable;
                    mem_ce_o <= `Enable;
                    case(addr_mod4)
                        2'b00: begin
                            mem_sel_o <= 4'b1111;
                            wdata_o <= {mem_byte[3], mem_byte[2], mem_byte[1], mem_byte[0]};
                        end
                        default: begin
                            mem_sel_o <= 4'b0000;
                            wdata_o <= `Zero;
                        end
                    endcase
                end
                `MEM_LWL: begin
                    mem_we <= `Disable;
                    mem_ce_o <= `Enable;
                    mem_sel_o <= 4'b1111;
                    mem_addr_o <= {mem_addr_i[31:2],2'b00};
                    case(addr_mod4)
                        2'b00: begin
                            wdata_o <= {mem_byte[3], mem_byte[2], mem_byte[1], mem_byte[0]};
                        end
                        2'b01: begin
                            wdata_o <= {{mem_byte[2], mem_byte[1], mem_byte[0]}, reg2_i[7:0]};
                        end
                        2'b10: begin
                            wdata_o <= {{mem_byte[1], mem_byte[0]}, reg2_i[15:0]};
                        end
                        2'b11: begin
                            wdata_o <= {mem_byte[0], reg2_i[23:0]};
                        end
                    endcase
                end
                `MEM_LWR: begin
                    mem_we <= `Disable;
                    mem_ce_o <= `Enable;
                    mem_sel_o <= 4'b1111;
                    mem_addr_o <= {mem_addr_i[31:2],2'b00};
                    case(addr_mod4)
                        2'b00: begin
                            wdata_o <= {reg2_i[31:8], mem_byte[0]};
                        end
                        2'b01: begin
                            wdata_o <= {reg2_i[31:16], {mem_byte[1], mem_byte[0]}};
                        end
                        2'b10: begin
                            wdata_o <= {reg2_i[31:24], {mem_byte[2], mem_byte[1], mem_byte[0]}};
                        end
                        2'b11: begin
                            wdata_o <=  {mem_byte[3], mem_byte[2], mem_byte[1], mem_byte[0]};
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
                            mem_sel_o <= 4'b1000;
                        end
                        2'b01: begin
                            mem_sel_o <= 4'b0100;
                        end
                        2'b10: begin
                            mem_sel_o <= 4'b0010;
                        end
                        2'b11: begin
                            mem_sel_o <= 4'b0001;
                        end
                    endcase
                end
                `MEM_SH: begin
                    mem_we <= `Enable;
                    mem_ce_o <= `Enable;
                    mem_addr_o <= mem_addr_i;
                    mem_data_o <= {2{reg2_i[7:0], reg2_i[15:8]}};
                    case(addr_mod4)
                        2'b00: begin
                            mem_sel_o <= 4'b1100;
                        end
                        2'b10: begin
                            mem_sel_o <= 4'b0011;
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
                    mem_data_o <= {reg2_i[7:0], reg2_i[15:8], reg2_i[23:16], reg2_i[31:24]};
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
                            mem_data_o <= {reg2_i[7:0], reg2_i[15:8], reg2_i[23:16], reg2_i[31:24]};
                        end
                        2'b01: begin
                            mem_sel_o <= 4'b0111;
                            mem_data_o <= {8'b0, {reg2_i[15:8], reg2_i[23:16], reg2_i[31:24]}};
                        end
                        2'b10: begin
                            mem_sel_o <= 4'b0011;
                            mem_data_o <= {16'b0, {reg2_i[23:16], reg2_i[31:24]}};
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
                            mem_data_o <= {{reg2_i[7:0], reg2_i[15:8]}, 16'b0};
                        end
                        2'b10: begin
                            mem_sel_o <= 4'b1110;
                            mem_data_o <= {{reg2_i[7:0], reg2_i[15:8], reg2_i[23:16]}, 8'b0};
                        end
                        2'b11: begin
                            mem_sel_o <= 4'b1111;
                            mem_data_o <= {reg2_i[7:0], reg2_i[15:8], reg2_i[23:16], reg2_i[31:24]};
                        end
                    endcase
                end
                default: begin
                    //wreg_o <= `Disable;
                end
            endcase
        end
    end
    
    reg[`WordBus] cp0_status ;
    reg[`WordBus] cp0_cause ;
    reg[`WordBus] cp0_epc ;

    assign cp0_epc_o = cp0_epc ;
    assign is_in_delayslot_o = is_in_delayslot_i ;
    assign current_inst_addr_o = current_inst_addr_i ;

    always @(*) begin
        if (rst == `Enable) begin
            cp0_status <= `Zero ;
            cp0_cause <= `Zero ;
            cp0_epc <= `Zero ;
        end
        else begin
            if ((wb_cp0_reg_we_i == `Enable) && (wb_cp0_reg_write_addr_i == `CP0_STATUS)) begin
                cp0_status <= wb_cp0_reg_data_i ;
            end else begin
                cp0_status <= cp0_status_i ;
            end

            if ((wb_cp0_reg_we_i == `Enable) && (wb_cp0_reg_write_addr_i == `CP0_EPC)) begin
                cp0_epc <= wb_cp0_reg_data_i ;
            end else begin
                cp0_epc <= cp0_epc_i ;
            end

            if ((wb_cp0_reg_we_i == `Enable) && (wb_cp0_reg_write_addr_i == `CP0_CAUSE)) begin
                cp0_cause[9:8] <= wb_cp0_reg_data_i[9:8] ;
                cp0_cause[23:22] <= wb_cp0_reg_data_i[23:22] ;
            end else begin
                cp0_cause <= cp0_cause_i ;
            end
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
                    excepttype_o <= 32'h00000001 ;
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
        end
    end
endmodule
