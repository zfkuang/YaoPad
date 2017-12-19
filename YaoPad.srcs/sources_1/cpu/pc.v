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

    output wire[`WordBus] pc,    
    output reg[`WordBus] vir_pc,
    input wire[`WordBus] phy_pc,
    input wire tlbl_miss_exception_i,
    input wire tlbs_miss_exception_i,
    input wire tlb_mod_exception_i,
    input wire[`WordBus] inst_i,
    output wire[`WordBus] inst_o,
    output reg ce, 
    output wire[`WordBus] excepttype_o,
    output wire[`WordBus] debugdata,
    );
    
    reg is_rst;
    wire tlb_exception[2:0] = {tlb_mod_exception_i, tlbl_miss_exception_i, tlbs_miss_exception_i} ;
    assign pc = phy_pc ;
    assign excepttype_o = {16'b0, tlb_exception, 13'b0} ;
    assign inst_o = ((tlb_exception) ? (`Zero) : (inst_i)) ;

    always @ (*) begin
        ce <= ~rst;
    end
    
    always @ (posedge clk) begin
        is_rst <= rst;
        if (ce == `Disable) begin
            vir_pc <= `StartInstAddr;
        end else begin
            if (is_rst == `Enable) begin
                vir_pc <= `StartInstAddr;
            end else if(flush == `Enable) begin
                vir_pc <= new_pc ;
            end else if(stall[0] == `Disable) begin
                if (branch_flag_i == `Enable) begin
                    vir_pc <= branch_target_address_i;
                end else begin
                    vir_pc <= vir_pc+4;
                end
            end
        end 
    end 

endmodule
