`timescale 1ns / 1ps
`include"defines.vh"

`define MEM_CTR_IDEL 2'b00
`define MEM_CTR_INST 2'b01
`define MEM_CTR_DATA 2'b11

module mem_controller(
    input wire clk,
    input wire rst,

    input wire[5:0] stall,
    input wire flush,

    input wire mem_ce_i,
    input wire[`WordBus] mem_data_i,
    input wire mem_we_i,
    input wire[3:0] mem_sel_i,
    input wire[`WordBus] mem_addr_i,
    input wire inst_ce_i,
    input wire[`WordBus] inst_addr_i,

    input wire[`WordBus] ram_data_i,

    output reg[`WordBus] mem_data_o,
    output reg mem_we_o,
    output reg mem_sel_o,
    output reg[`WordBus] mem_addr_o,
    output reg mem_ce_o,

    output reg[`WordBus] ram_data_o,
    output reg[`WordBus] inst_data_o,

    output reg data_stallreq

    );

    reg state[1:0];
    reg[`WordBus] data_buf;

    always @ (posedge clk) begin
        if(rst == `Enable) begin
            mem_data_o <= `Zero;
            mem_we_o <= `Disable;
            mem_sel_o <= 4'b0000;
            mem_addr_o <= `Zero;
            mem_ce_o <= `Disable;
            state <= `MEM_CTR_INST;
            data_buf <= `Zero;
        end else begin
            mem_data_o <= `Zero;
            mem_we_o <= `Disable;
            mem_sel_o <= 4'b0000;
            mem_addr_o <= `Zero;
            mem_ce_o <= `Disable;
            if(state == `MEM_CTR_INST) begin
                data_buf <= `Zero;
                if(mem_ce_i == `Enable) begin
                    state <= `MEM_CTR_DATA;
                    mem_data_o <= mem_data_i;
                    mem_we_o <= mem_we_i;
                    mem_sel_o <= mem_sel_i;
                    mem_addr_o <= mem_addr_i;
                    mem_ce_o <= mem_ce_i;
                end else if(inst_ce_i == `Enable) begin
                    mem_data_o <= `Zero;
                    mem_we_o <= `Disable;
                    mem_sel_o <= 4'b1111;
                    mem_addr_o <= inst_addr_i;
                    mem_ce_o <= inst_ce_i;
                end
            end else if(state == `MEM_CTR_DATA) begin
                data_buf <= ram_data_i;
                if(inst_ce_i == `Enable) begin
                    mem_data_o <= `Zero;
                    mem_we_o <= `Disable;
                    mem_sel_o <= 4'b1111;
                    mem_addr_o <= inst_addr_i;
                    mem_ce_o <= inst_ce_i;
                    state <= `MEM_CTR_INST;
                end
            end
        end
    end

    always @ (*) begin
        if(rst == `Enable) begin
            ram_data_o <= `Zero;
            inst_data_o <= `Zero;
            data_stallreq <= `Disable;
        end else begin
            ram_data_o <= data_buf;
            inst_data_o <= `Zero;
            data_stallreq <= `Disable;
            if(state == `MEM_CTR_DATA) begin
                data_stallreq <= `Enable;
            end else if(state == `MEM_CTR_INST) begin
                inst_data_o <= ram_data_i;
            end
        end
    end


endmodule