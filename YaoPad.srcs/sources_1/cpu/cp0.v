`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/14 18:07:08
// Design Name: 
// Module Name: cp0
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

module cp0(
    input wire rst,
    input wire clk,

    input wire we_i,
    input wire[`RegAddrBus] waddr_i,
    input wire[`RegAddrBus] raddr_i,
    input wire[`WordBus] data_i,

    input wire[5:0] int_i,

    input wire[`WordBus] excepttype_i,
    input wire[`WordBus] current_inst_addr_i,
    input wire is_in_delayslot_i,


    output reg[`WordBus] data_o,
    output reg[`WordBus] count_o,
    output reg[`WordBus] compare_o,
    output reg[`WordBus] status_o,
    output reg[`WordBus] cause_o,
    output reg[`WordBus] epc_o,
    output reg[`WordBus] config_o,
    output reg[`WordBus] prid_o,

    output reg timer_int_o,

    input wire[4:0] debug,
    output reg[`WordBus] debugdata
    );

    always @(*) begin
        case(debug)
            5'b00000: begin
                debugdata <= status_o ;
            end
            5'b00001: begin
                debugdata <= cause_o ;
            end
            5'b00010: begin
                debugdata <= epc_o ;
            end
            5'b00011: begin
                debugdata <= data_o ;
            end
            5'b00100: begin
                debugdata <= {27'b0, raddr_i} ;
            end
            
        endcase
    end

    always @ (posedge clk) begin
        if(rst == `Enable) begin
            count_o <= `Zero ;
            compare_o <= `Zero ;
            status_o <= `Zero ;
            status_o[28] <= 1'b1 ;
            cause_o <= `Zero ;
            epc_o <= `Zero ;
            config_o <= `Zero ;
            config_o[16] <= 1'b1 ;
            prid_o <= 32'b00000000010011000000000100000010 ;
            timer_int_o <= `Disable ;
        end
        else begin
            count_o <= count_o + 1 ;
            cause_o[15:10] <= int_i ;
            if(count_o == compare_o && compare_o != `Zero) begin
                timer_int_o <= `Enable ;
            end
            if (we_i <= `Enable) begin
                case(waddr_i)
                    `CP0_COUNT: begin
                        count_o <= data_i ;
                    end
                    `CP0_COMPARE: begin
                        compare_o <= data_i ;
                        timer_int_o <= `Disable ;
                    end
                    `CP0_STATUS: begin
                        status_o <= data_i ;
                    end
                    `CP0_CAUSE: begin
                        cause_o[9:8] <= data_i[9:8] ;
                        cause_o[22] <= data_i[22] ;
                        cause_o[23] <= data_i[23] ;
                    end
                    `CP0_EPC: begin
                        epc_o <= data_i ;
                    end
                endcase
            end

            case(excepttype_i)
                32'h00000001:begin
                    cause_o[31] <= is_in_delayslot_i ;
                    if(is_in_delayslot_i == `Enable) begin
                        epc_o <= current_inst_addr_i - 4 ;
                    end else begin
                        epc_o <= current_inst_addr_i ;
                    end
                    status_o[1] <= 1'b1 ;
                    cause_o[6:2] <= 5'b00000 ;
                end
                32'h00000008:begin
                    if(status_o[1] == 1'b0) begin
                        cause_o[31] <= is_in_delayslot_i ;
                        if(is_in_delayslot_i == `Enable) begin
                            epc_o <= current_inst_addr_i - 4 ;
                        end else begin
                            epc_o <= current_inst_addr_i ;
                        end
                    end
                    status_o[1] <= 1'b1 ;
                    cause_o[6:2] <= 5'b01000 ;
                end
                32'h0000000a:begin
                    if(status_o[1] == 1'b0) begin
                        cause_o[31] <= is_in_delayslot_i ;
                        if(is_in_delayslot_i == `Enable) begin
                            epc_o <= current_inst_addr_i - 4 ;
                        end else begin
                            epc_o <= current_inst_addr_i ;
                        end
                    end
                    status_o[1] <= 1'b1 ;
                    cause_o[6:2] <= 5'b01010 ;
                end
                32'h0000000d:begin
                    if(status_o[1] == 1'b0) begin
                        cause_o[31] <= is_in_delayslot_i ;
                        if(is_in_delayslot_i == `Enable) begin
                            epc_o <= current_inst_addr_i - 4 ;
                        end else begin
                            epc_o <= current_inst_addr_i ;
                        end
                    end
                    status_o[1] <= 1'b1 ;
                    cause_o[6:2] <= 5'b01101 ;                    
                end
                32'h0000000c:begin
                    if(status_o[1] == 1'b0) begin
                        cause_o[31] <= is_in_delayslot_i ;
                        if(is_in_delayslot_i == `Enable) begin
                            epc_o <= current_inst_addr_i - 4 ;
                        end else begin
                            epc_o <= current_inst_addr_i ;
                        end
                    end
                    status_o[1] <= 1'b1 ;
                    cause_o[6:2] <= 5'b01100 ;                    
                end
                32'h0000000e:begin
                    status_o[1] <= 1'b0 ;
                end
            endcase
        end
    end
    
    always @ (*) begin
        if(rst == `Enable) begin
            data_o <= `Zero ;
        end else begin
            data_o <= `Zero ;
            case(raddr_i) 
                `CP0_COUNT: begin
                    data_o <= count_o ;
                end
                `CP0_COMPARE: begin
                    data_o <= compare_o ;
                end
                `CP0_STATUS: begin
                    data_o <= status_o ;
                end
                `CP0_CAUSE: begin
                    data_o <= cause_o ;
                end
                `CP0_EPC: begin
                    data_o <= epc_o ;
                end
                `CP0_PRId: begin
                    data_o <= prid_o ;
                end
                `CP0_CONFIG: begin
                    data_o <= config_o ;
                end
            endcase
        end
    end
endmodule
