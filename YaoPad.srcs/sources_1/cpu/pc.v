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

module pc_rom(
    input wire rst,
    input wire clk,
    input wire[`StallBus] stall,
    input wire branch_flag_i,
    input wire[`WordBus] branch_target_address_i,
    
    input wire flush,
    input wire[`WordBus] new_pc,   

    output reg[`WordBus] pc,
    output reg ce
    );
    
    always @ (posedge clk) begin
        if (ce == `Disable) begin
            pc <= 32'h00000000;       
        end else begin
            if (rst == `Enable) begin
                pc <= 32'h00000000;
            end else if(flush == `Enable) begin
                pc <= new_pc ;
            end else if(stall[0] == `Disable) begin
                if (branch_flag_i == `Enable) begin
                    pc <= branch_target_address_i;
                end else begin
                    pc <= pc+4;
                end
            end
        end 
    end 

endmodule
