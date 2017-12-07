`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/26 21:30:33
// Design Name: 
// Module Name: wishbone_bus_if
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

module wishbone_bus_if(
    input wire wishbone_clk,
    input wire cpu_clk,
    input wire rst,

    //ctrl module
    input wire[5:0] stall,
    input wire stall_this,
    input wire flush,

    //CPU interface
    input wire cpu_ce_i,
    input wire[`WordBus] cpu_data_i,
    input wire[`WordBus] cpu_addr_i,
    input wire cpu_we_i,
    input wire[3:0] cpu_sel_i,
    output reg[`WordBus] cpu_data_o,

    //Wishbone interface
    input wire[`WordBus] wishbone_data_i,
    input wire wishbone_ack_i,
    output reg[`WordBus] wishbone_addr_o,
    output reg[`WordBus] wishbone_data_o,
    output reg wishbone_we_o,
    output reg[3:0] wishbone_sel_o,
    output reg wishbone_stb_o,
    output reg wishbone_cyc_o,

    output reg stallreq

);

    // State of wishbone interface.
    reg wishbone_busy;
    reg wishbone_wait_cpu;
    reg wishbone_has_acked;
    wire old_cpu_in;
    
    // buffer register of data from wishbone.
    reg[`WordBus] rd_buf;
    reg rd_buf_has_read;


    /* State change */

    reg wb_is_rst;
    reg cpu_is_rst;

    always @ (posedge cpu_clk) begin
        cpu_is_rst <= rst;
        if(cpu_is_rst | flush) begin
            wishbone_wait_cpu <= `Disable;
        end else begin
            wishbone_wait_cpu <= (~wishbone_has_acked) | stall_this;
        end
    end

    always @ (posedge wishbone_clk) begin
        wb_is_rst <= rst;
        if(wb_is_rst == `Enable) begin
            // rest, change to WB_IDLE
            wishbone_busy <= `Disable;

            wishbone_addr_o <= `Zero;
            wishbone_data_o <= `Zero;
            wishbone_we_o <= `Disable;
            wishbone_sel_o <= 4'b0000;
            wishbone_stb_o <= `Disable;
            wishbone_cyc_o <= `Disable;
            rd_buf <= `Zero;
            rd_buf_has_read <= `Disable;
        end else begin
            if(wishbone_busy == `Disable) begin
                if((cpu_ce_i == `Enable) && (flush == `Disable)) begin
                    // Initalize and change to WB_BUSY
                    wishbone_stb_o <= `Enable;
                    wishbone_cyc_o <= `Enable;
                    wishbone_addr_o <= cpu_addr_i;
                    wishbone_data_o <= cpu_data_i;
                    wishbone_we_o <= cpu_we_i;
                    wishbone_sel_o <= cpu_sel_i;
                    wishbone_busy <= `Enable;
                    rd_buf <= `Zero;
                    rd_buf_has_read <= `Disable;
                end
            end else begin
                if(wishbone_has_acked == `Enable) begin
                    wishbone_stb_o <= `Disable;
                    wishbone_cyc_o <= `Disable;
                    wishbone_addr_o <= `Zero;
                    wishbone_data_o <= `Zero;
                    wishbone_we_o <= `Disable;
                    wishbone_sel_o <= 4'b0000;

                    if((!cpu_we_i) & (!rd_buf_has_read)) begin
                        rd_buf <= wishbone_data_i;
                        rd_buf_has_read <= `Enable;
                    end
                    if((!stall_this) & (!wishbone_wait_cpu)) begin
                        wishbone_busy <= `Disable;
                    end
                end else if(flush == `Enable) begin
                    wishbone_stb_o <= `Disable;
                    wishbone_cyc_o <= `Disable;
                    wishbone_addr_o <= `Zero;
                    wishbone_data_o <= `Zero;
                    wishbone_we_o <= `Disable;
                    wishbone_sel_o <= 4'b0000;
                    wishbone_busy <= `Disable;
                    rd_buf <= `Zero;
                    rd_buf_has_read <= `Disable;
                end
            end
        end
    end


    /* Data Signal Change */
    always @ (*) begin
        if(rst == `Enable) begin
            stallreq <= `Disable;
            cpu_data_o <= `Zero;
            wishbone_has_acked <= `Disable;
        end else begin
            stallreq <= `Disable;
            if(wishbone_busy == `Disable) begin
                if((cpu_ce_i == 1'b1) && (flush == `Disable)) begin
                    stallreq <= `Enable;
                    cpu_data_o <= `Zero;
                    wishbone_has_acked <= `Disable;
                end
            end else begin
                if(wishbone_ack_i == 1'b1) begin
                    stallreq <= `Disable;
                    wishbone_has_acked <= `Enable;
                    if(wishbone_we_o == `Disable) begin
                        cpu_data_o <= wishbone_data_i;
                    end else begin
                        cpu_data_o <= `Zero;
                    end
                end else begin
                    if(wishbone_has_acked == `Disable) begin
                        stallreq <= `Enable;
                        cpu_data_o <= `Zero;
                    end else begin
                        cpu_data_o <= rd_buf;
                    end
                end
            end

            if(flush == `Enable) begin
                wishbone_has_acked <= `Disable;
            end
        end
    end

endmodule