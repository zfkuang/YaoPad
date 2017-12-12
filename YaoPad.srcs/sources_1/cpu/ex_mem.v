`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/14 20:56:55
// Design Name: 
// Module Name: ex_mem
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

module ex_mem(
        input wire rst,
        input wire clk,
        input wire[`StallBus] stall,
        input wire flush,
        
        input wire[`RegAddrBus] ex_wd,
        input wire ex_wreg,
        input wire[`WordBus] ex_wdata,
        input wire ex_whilo,
        input wire[`WordBus] ex_hi,
        input wire[`WordBus] ex_lo,
        input wire[`AluOpBus] ex_aluop,
        input wire[`WordBus] ex_mem_addr,
        input wire[`WordBus] ex_reg2,

        input wire[`RegAddrBus] ex_cp0_reg_write_addr,
        input wire ex_cp0_reg_we,
        input wire[`WordBus] ex_cp0_reg_data,

        input wire[`WordBus] ex_excepttype,
        input wire[`WordBus] ex_current_inst_addr,
        input wire ex_is_in_delayslot,

        output reg[`RegAddrBus] mem_wd,
        output reg mem_wreg,
        output reg[`WordBus] mem_wdata,
        output reg mem_whilo,
        output reg[`WordBus] mem_hi,
        output reg[`WordBus] mem_lo,
        output reg[`AluOpBus] mem_aluop,
        output reg[`WordBus] mem_mem_addr,
        output reg[`WordBus] mem_reg2,        

        output reg[`RegAddrBus] mem_cp0_reg_write_addr,
        output reg mem_cp0_reg_we,
        output reg[`WordBus] mem_cp0_reg_data,

        output reg[`WordBus] mem_excepttype,
        output reg[`WordBus] mem_current_inst_addr,
        output reg mem_is_in_delayslot
    );    

    always @ (posedge clk) begin 
        if (rst == `Enable) begin
            mem_wdata <= `Zero ;
            mem_wd <= `NopRegAddr ;
            mem_wreg <= `Disable ;
            mem_whilo <= `Disable ;
            mem_aluop <= `ALU_NOP;
            mem_reg2 <= `Zero ;
            mem_mem_addr <= `Zero;
            mem_cp0_reg_write_addr <= `NopRegAddr ;
            mem_cp0_reg_we <= `Disable ;
            mem_cp0_reg_data <= `Zero ;
            mem_excepttype <= `Zero ;
            mem_current_inst_addr <= `Zero ;
            mem_is_in_delayslot <= `Disable ;
        end else if ((stall[3] == `Enable) && (stall[4] == `Disable)) begin
            mem_wdata <= `Zero ;
            mem_wd <= `NopRegAddr ;
            mem_wreg <= `Disable ;
            mem_whilo <= `Disable ;
            mem_aluop <= `ALU_NOP;
            mem_reg2 <= `Zero ;
            mem_mem_addr <= `Zero;
            mem_cp0_reg_write_addr <= `NopRegAddr ;
            mem_cp0_reg_we <= `Disable ;
            mem_cp0_reg_data <= `Zero ;
            mem_excepttype <= `Zero ;
            mem_current_inst_addr <= `Zero ;
            mem_is_in_delayslot <= `Disable ;
        end else if (flush == `Enable) begin
            mem_wdata <= `Zero ;
            mem_wd <= `NopRegAddr ;
            mem_wreg <= `Disable ;
            mem_whilo <= `Disable ;
            mem_aluop <= `ALU_NOP;
            mem_reg2 <= `Zero ;
            mem_mem_addr <= `Zero;
            mem_cp0_reg_write_addr <= `NopRegAddr ;
            mem_cp0_reg_we <= `Disable ;
            mem_cp0_reg_data <= `Zero ;
            mem_excepttype <= `Zero ;
            mem_current_inst_addr <= `Zero ;
            mem_is_in_delayslot <= `Disable ;
        end else if (stall[3] == `Disable) begin 
            mem_wdata <= ex_wdata ;
            mem_wd <= ex_wd ;
            mem_wreg <= ex_wreg ;
            mem_whilo <= ex_whilo ;
            mem_hi <= ex_hi ;
            mem_lo <= ex_lo ;
            mem_reg2 <= ex_reg2;
            mem_mem_addr <= ex_mem_addr;
            mem_aluop <= ex_aluop;        
            mem_cp0_reg_write_addr <= ex_cp0_reg_write_addr ;
            mem_cp0_reg_we <= ex_cp0_reg_we ;
            mem_cp0_reg_data <= ex_cp0_reg_data ;
            mem_excepttype <= ex_excepttype ;
            mem_current_inst_addr <= ex_current_inst_addr ;
            mem_is_in_delayslot <= ex_is_in_delayslot ;
        end
    end
        
endmodule
