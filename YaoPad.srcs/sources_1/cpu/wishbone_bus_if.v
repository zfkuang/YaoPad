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
    input wire clk,
    input wire rst,

    //ctrl module
    input wire[5:0] stall_i,
    input wire flush_i,

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
    reg[1:0] wishbone_state;
    // buffer register of data from wishbone.
    reg[`WordBus] rd_buf;


    /* State change */

    always @ (posedge clk) begin
        if(rst == `Enable) begin
            // rest, change to WB_IDLE
            wishbone_state <= `WB_IDLE;
            wishbone_addr_o <= `Zero;
            wishbone_data_o <= `Zero;
            wishbone_we_o <= `Disable;
            wishbone_sel_o <= 4'b0000;
            wishbone_stb_o <= `Disable;
            wishbone_cyc_o <= `Disable;
            rd_buf <= `Zero;
        end else begin
            case (wishbone_state)
                `WB_IDLE:   begin
                    if((cpu_ce_i == `Enable) && (flush_i == `Disable)) begin
                        // Initalize and change to WB_BUSY
                        wishbone_stb_o <= `Enable;
                        wishbone_cyc_o <= `Enable;
                        wishbone_addr_o <= cpu_addr_i;
                        wishbone_data_o <= cpu_data_i;
                        wishbone_we_o <= cpu_we_i;
                        wishbone_sel_o <= cpu_sel_i;
                        wishbone_state <= `WB_BUSY;
                        rd_buf <= `Zero;
                    end
                end

                `WB_BUSY:   begin
                // If we get flush_i == `Enable and ack_i == `Enable both, we do not flush.
                    if(wishbone_ack_i == `Enable) begin
                        wishbone_stb_o <= `Disable;
                        wishbone_cyc_o <= `Disable;
                        wishbone_addr_o <= `Zero;
                        wishbone_data_o <= `Zero;
                        wishbone_we_o <= `Disable;
                        wishbone_sel_o <= 4'b0000;
                        wishbone_state <= `WB_IDLE;

                        if(cpu_we_i == `Disable) begin
                            rd_buf <= wishbone_data_i;
                        end
                        if(stall_i != 6b'000000) begin
                            wishbone_state <= `WB_WAIT_FOR_STALL;
                        end
                    end else if(flush_i == `Enable) begin
                        wishbone_stb_o <= `Disable;
                        wishbone_cyc_o <= `Disable;
                        wishbone_addr_o <= `Zero;
                        wishbone_data_o <= `Zero;
                        wishbone_we_o <= `Disable;
                        wishbone_sel_o <= 4'b0000;
                        wishbone_state <= `WB_IDLE;
                        rd_buf <= `Zero;
                    end
                end

                `WB_WAIT_FOR_STALL: begin
                    if(stall_i == 6'b000000) begin
                        wishbone_state <= `WB_IDLE;
                    end
                end

                default: begin
                end 

            endcase
        end
    end