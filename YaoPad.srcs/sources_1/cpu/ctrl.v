`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/14 18:07:08
// Design Name: 
// Module Name: pc
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

module ctrl(
    input wire rst,

    input wire stallreq_from_id,
    input wire stallreq_from_ex,
    
    input wire stallreq_from_if,
    input wire stallreq_from_mem,
    
    input wire[`WordBus] cp0_epc_i,
    input wire[`WordBus] excepttype_i,

    output reg[`WordBus] new_pc,
    output reg flush,
    output reg[5:0] stall
    );
    
    always @ (*) begin
        if (rst == `Enable) begin
            stall <= 6'b000000 ;
            flush <= `Disable ;
            new_pc <= `Zero ;
        end else if (excepttype_i != `Zero) begin
            flush <= `Enable ;
            stall <= 6'b000000 ;
            case(excepttype_i)
                32'h00000001: begin
                    new_pc <= 32'h00000020 ;
                end
                32'h00000008: begin
                    new_pc <= 32'h00000040 ;
                end
                32'h0000000a: begin
                    new_pc <= 32'h00000040 ;
                end
                32'h0000000d: begin
                    new_pc <= 32'h00000040 ;
                end
                32'h0000000c: begin
                    new_pc <= 32'h00000040 ;
                end
                32'h0000000e: begin
                    new_pc <= cp0_epc_i ;
                end
            endcase
        end else if (stallreq_from_mem == `Enable) begin
            stall <= 6'b011111;
            flush <= `Disable;
        end else if (stallreq_from_ex == `Enable) begin
            stall <= 6'b001111 ;
            flush <= `Disable;
        end else if (stallreq_from_id == `Enable) begin
            stall <= 6'b000111 ;
            flush <= `Disable;
        end else if (stallreq_from_if == `Enable) begin
            // 暂停译码阶段的原因是，若译码阶段的指令为转移指令，那么取指阶段的指令为延迟槽指令，在译码阶段的指令到下一个周期执行的时候，取的延迟槽指令还没到，就会把NOP看成延迟槽指令。
            stall <= 6'b000111;
            flush <= `Disable;
        end else begin
            stall <= 6'b000000 ;
            flush <= `Disable ;
            new_pc <= `Zero ;
        end
    end 

endmodule
