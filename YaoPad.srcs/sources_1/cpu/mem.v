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

        output reg[`RegAddrBus] wd_o,
        output reg wreg_o,
        output reg[`WordBus] wdata_o,

        output reg whilo_o,
        output reg[`WordBus] hi_o,
        output reg[`WordBus] lo_o,

        output reg[`WordBus] mem_addr_o,
        output reg mem_we_o,
        output reg mem_ce_o,
        output reg[`WordBus] mem_data_o,
        output reg[3:0] mem_sel_o

    );
    wire [1:0] addr_mod4 = mem_addr_i[1:0];

    always @ (*) begin
        if (rst == `Enable) begin
            wd_o <= `NopRegAddr ;
            wreg_o <= 0 ;
            wdata_o <= `Zero ;
            whilo_o <= 0 ;
            mem_addr_o <= `Zero;
            mem_we_o <= `Disable;
            mem_ce_o <= `Disable;
            mem_data_o <= `Zero;
            mem_sel_o <= 4'b0;
        end else begin 
            wd_o <= wd_i ;
            wreg_o <= wreg_i;
            wdata_o <= wdata_i ;
            whilo_o <= whilo_i ;
            hi_o <= hi_i ;
            lo_o <= lo_i ;
            mem_addr_o <= mem_addr_i;
            mem_we_o <= `Disable;
            mem_ce_o <= `Disable;
            mem_data_o <= reg2_i;
            mem_sel_o <= 4'b0;
            case (aluop_i)
                `MEM_LB: begin
                    mem_we_o <= `Disable;
                    mem_ce_o <= `Enable;
                    case(addr_mod4)
                        2'b00: begin
                            mem_sel_o <= 4'b1000;
                            wdata_o <= {{24{mem_data_i[31]}},mem_data_i[31:24]};
                        end
                        2'b01: begin
                            mem_sel_o <= 4'b0100;
                            wdata_o <= {{24{mem_data_i[23]}},mem_data_i[23:16]};
                        end
                        2'b10: begin
                            mem_sel_o <= 4'b0010;
                            wdata_o <= {{24{mem_data_i[15]}},mem_data_i[15:8]};
                        end
                        2'b11: begin
                            mem_sel_o <= 4'b0001;
                            wdata_o <= {{24{mem_data_i[7]}},mem_data_i[7:0]};
                        end
                    endcase
                end
                `MEM_LBU: begin
                    mem_we_o <= `Disable;
                    mem_ce_o <= `Enable;
                    case(addr_mod4)
                        2'b00: begin
                            mem_sel_o <= 4'b1000;
                            wdata_o <= {{24'b0},mem_data_i[31:24]};
                        end
                        2'b01: begin
                            mem_sel_o <= 4'b0100;
                            wdata_o <= {{24'b0},mem_data_i[23:16]};
                        end
                        2'b10: begin
                            mem_sel_o <= 4'b0010;
                            wdata_o <= {{24'b0},mem_data_i[15:8]};
                        end
                        2'b11: begin
                            mem_sel_o <= 4'b0001;
                            wdata_o <= {{24'b0},mem_data_i[7:0]};
                        end
                    endcase
                end
                `MEM_LH: begin
                    mem_we_o <= `Disable;
                    mem_ce_o <= `Enable;
                    case(addr_mod4)
                        2'b00: begin
                            mem_sel_o <= 4'b1100;
                            wdata_o <= {{16{mem_data_i[31]}},mem_data_i[31:16]};
                        end
                        2'b10: begin
                            mem_sel_o <= 4'b0011;
                            wdata_o <= {{16{mem_data_i[15]}},mem_data_i[15:0]};
                        end
                        default: begin
                            mem_sel_o <= 4'b0000;
                            wdata_o <= `Zero;
                        end
                    endcase
                end
                `MEM_LHU: begin
                    mem_we_o <= `Disable;
                    mem_ce_o <= `Enable;
                    case(addr_mod4)
                        2'b00: begin
                            mem_sel_o <= 4'b1100;
                            wdata_o <= {{16'b0},mem_data_i[31:16]};
                        end
                        2'b10: begin
                            mem_sel_o <= 4'b0011;
                            wdata_o <= {{16'b0},mem_data_i[15:0]};
                        end
                        default: begin
                            mem_sel_o <= 4'b0000;
                            wdata_o <= `Zero;
                        end
                    endcase
                end
                `MEM_LW: begin
                    mem_we_o <= `Disable;
                    mem_ce_o <= `Enable;
                    case(addr_mod4)
                        2'b00: begin
                            mem_sel_o <= 4'b1111;
                            wdata_o <= mem_data_i;
                        end
                        default: begin
                            mem_sel_o <= 4'b0000;
                            wdata_o <= `Zero;
                        end
                    endcase
                end
                `MEM_LWL: begin
                    mem_we_o <= `Disable;
                    mem_ce_o <= `Enable;
                    mem_sel_o <= 4'b1111;
                    mem_addr_o <= {mem_addr_i[31:2],2'b00};
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
                `MEM_LWL: begin
                    mem_we_o <= `Disable;
                    mem_ce_o <= `Enable;
                    mem_sel_o <= 4'b1111;
                    mem_addr_o <= {mem_addr_i[31:2],2'b00};
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
                    mem_we_o <= `Disable;
                    mem_ce_o <= `Enable;
                    mem_sel_o <= 4'b1111;
                    mem_addr_o <= {mem_addr_i[31:2],2'b00};
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
                    mem_we_o <= `Enable;
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
                    mem_we_o <= `Enable;
                    mem_ce_o <= `Enable;
                    mem_addr_o <= mem_addr_i;
                    mem_data_o <= {2{reg2_i[15:0]}};
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
                    mem_we_o <= `Enable;
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
                    mem_we_o <= `Enable;
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
                    mem_we_o <= `Enable;
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
                    //wreg_o <= `Disable;
                end
            endcase
        end
    end
    
endmodule
