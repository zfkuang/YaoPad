`timescale 1ns / 1ps
`include "defines.vh"

`define MEM_CTR_BEGIN 3'b000
`define MEM_CTR_INST 3'b001
`define MEM_CTR_DATA_FINISH 3'b011
`define MEM_CTR_STALL 3'b010
`define MEM_CTR_WRITE 3'b101

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
    input wire ack_i,
    output reg write_state,

    output reg[`WordBus] mem_data_o,
    output reg mem_we_o,
    output reg[3:0] mem_sel_o,
    output reg[`WordBus] mem_addr_o,
    output reg mem_ce_o,

    output reg[`WordBus] ram_data_o,
    output reg[`WordBus] inst_data_o,

    output reg data_stallreq

    );

    reg[2:0] state;
    reg[`WordBus] data_buf;
    reg[`WordBus] inst_buf;

    always @ (posedge clk) begin
        if(rst == `Enable) begin
            state <= `MEM_CTR_BEGIN;
            write_state <= 1'b0;
        end else begin
            if(state == `MEM_CTR_INST) begin
                if((mem_ce_i == `Enable) && (flush == `Disable)) begin
                    if(mem_we_i == `Enable) begin
                        state <= `MEM_CTR_WRITE;
                        write_state <= 1'b1;
                    end else begin
                        state <= `MEM_CTR_DATA_FINISH;
                    end
                end
            end else if(state == `MEM_CTR_DATA_FINISH) begin
                if(inst_ce_i) begin
                    state <= `MEM_CTR_INST;
                end
            end else if(state == `MEM_CTR_BEGIN) begin
                state <= `MEM_CTR_INST;
            end else if(state == `MEM_CTR_WRITE) begin
                write_state <= 1'b0;
                state <= `MEM_CTR_DATA_FINISH;
            end
            if(flush  == `Enable) begin
                state <= `MEM_CTR_INST;
            end
        end
    end

    always @ (*) begin
        if(rst == `Enable) begin
            mem_data_o <= `Zero;
            mem_we_o <= `Disable;
            mem_sel_o <= 4'b0000;
            mem_addr_o <= `Zero;
            mem_ce_o <= `Disable;
        end else begin
            mem_data_o <= `Zero;
            mem_we_o <= `Disable;
            mem_sel_o <= 4'b0000;
            mem_addr_o <= `Zero;
            mem_ce_o <= `Disable;
            if(state == `MEM_CTR_INST || state == `MEM_CTR_WRITE) begin
                if(flush == `Disable) begin
                    if(mem_ce_i == `Enable) begin
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
            end else if(state == `MEM_CTR_DATA_FINISH) begin
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
            end
        end
    end

    always @ (*) begin
        if(rst == `Enable) begin
            ram_data_o <= `Zero;
            inst_data_o <= `Zero;
            data_stallreq <= `Disable;
            data_buf <= `Zero;
            inst_buf <= `Zero;
        end else begin
            ram_data_o <= data_buf;
            inst_data_o <= inst_buf;
            data_stallreq <= `Disable;
            if(state == `MEM_CTR_INST || state == `MEM_CTR_WRITE) begin
                if(flush == `Disable) begin
                    if(mem_ce_i == `Enable) begin
                        data_stallreq <= `Enable;
                        if(ack_i) begin
                            data_buf <= ram_data_i;
                            ram_data_o <= ram_data_i;
                        end
                    end else if(inst_ce_i == `Enable) begin
                        if(ack_i) begin
                            inst_buf <= ram_data_i;
                            inst_data_o <= ram_data_i;
                        end
                    end
                end
            end else if((state == `MEM_CTR_DATA_FINISH) && inst_ce_i) begin
                if(ack_i) begin
                    inst_buf <= ram_data_i;
                    inst_data_o <= ram_data_i;
                end
            end else if(state == `MEM_CTR_BEGIN) begin
                data_stallreq <= `Enable;
            end
            if(flush) begin
                ram_data_o <= `Zero;
                inst_data_o <= `Zero;
                data_stallreq <= `Disable;
                data_buf <= `Zero;
                inst_buf <= `Zero;
            end
        end
    end


endmodule