`timescale 1ns / 1ps
`include"defines.vh"

`define MEM_CTR_BEGIN 2'b10
`define MEM_CTR_INST 2'b00
`define MEM_CTR_DATA 2'b01
`define MEM_CTR_STALL 2'b11

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
    output reg[3:0] mem_sel_o,
    output reg[`WordBus] mem_addr_o,
    output reg mem_ce_o,

    output reg[`WordBus] ram_data_o,
    output reg[`WordBus] inst_data_o,

    output reg data_stallreq

    );

    reg is_rst;
    reg[1:0] state;
    reg[`WordBus] data_buf;
    reg[`WordBus] inst_buf;

    always @ (posedge clk) begin
        is_rst <= rst;
        if(is_rst == `Enable) begin
            state <= `MEM_CTR_BEGIN;
        end else begin
            if(state == `MEM_CTR_INST) begin
                if((mem_ce_i == `Enable) && (flush == `Disable)) begin
                    state <= `MEM_CTR_DATA;
                end
            end else if(state == `MEM_CTR_DATA) begin
                if(inst_ce_i) begin
                    state <= `MEM_CTR_INST;
                end
            end else if(state == `MEM_CTR_BEGIN) begin
                state <= `MEM_CTR_INST;
            end
            if(flush  == `Enable) begin
                state <= `MEM_CTR_INST;
            end
        end
    end

    always @ (*) begin
        if(is_rst == `Enable) begin
            mem_data_o <= `Zero;
            mem_we_o <= `Disable;
            mem_sel_o <= 4'b0000;
            mem_addr_o <= `Zero;
            mem_ce_o <= `Disable;
            data_buf <= `Zero;
        end else begin
            mem_data_o <= `Zero;
            mem_we_o <= `Disable;
            mem_sel_o <= 4'b0000;
            mem_addr_o <= `Zero;
            mem_ce_o <= `Disable;
            if(state == `MEM_CTR_INST) begin
                if(flush == `Disable) begin
                    if(mem_ce_i == `Enable) begin
                        if(mem_we_i == `Disable) data_buf <= ram_data_i;
                        else data_buf <= `Zero;
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
                end
            end else if(state == `MEM_CTR_DATA) begin
                if(flush == `Disable) begin
                    if(inst_ce_i == `Enable) begin
                        mem_data_o <= `Zero;
                        mem_we_o <= `Disable;
                        mem_sel_o <= 4'b1111;
                        mem_addr_o <= inst_addr_i;
                        mem_ce_o <= inst_ce_i;
                    end
                end
            end
            if(flush) begin
                mem_data_o <= `Zero;
                mem_we_o <= `Disable;
                mem_sel_o <= 4'b0000;
                mem_addr_o <= `Zero;
                mem_ce_o <= `Disable;
                data_buf <= `Zero;
            end
        end
    end

    always @ (*) begin
        if(is_rst == `Enable) begin
            ram_data_o <= `Zero;
            inst_data_o <= `Zero;
            data_stallreq <= `Disable;
        end else begin
            ram_data_o <= data_buf;
            inst_data_o <= `Zero;
            data_stallreq <= `Disable;
            if(state == `MEM_CTR_INST) begin
                if(flush == `Disable) begin
                    if(mem_ce_i == `Enable) begin
                        data_stallreq <= `Enable;
                    end
                    if(inst_ce_i == `Enable) begin
                        inst_data_o <= ram_data_i;
                    end
                end
            end else if((state == `MEM_CTR_DATA) && inst_ce_i) begin
                inst_data_o <= ram_data_i;
            end else if(state == `MEM_CTR_BEGIN) begin
                data_stallreq <= `Enable;
            end
        end
    end


endmodule