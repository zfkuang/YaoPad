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

    //MMU interface 
    input wire[`WordBus] mmu_phy_addr,
    output wire[`WordBus] mmu_vir_addr,


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

    assign mmu_vir_addr = cpu_addr_i;

    /* State change */

    always @ (posedge wishbone_clk) begin
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
                    if((cpu_ce_i == `Enable) && (flush == `Disable)) begin
                        // Initalize and change to WB_BUSY
                        wishbone_stb_o <= `Enable;
                        wishbone_cyc_o <= `Enable;
                        wishbone_addr_o <= mmu_phy_addr;
                        wishbone_data_o <= cpu_data_i;
                        wishbone_we_o <= cpu_we_i;
                        wishbone_sel_o <= cpu_sel_i;
                        wishbone_state <= `WB_BUSY;
                        rd_buf <= `Zero;
                    end
                end

                `WB_BUSY:   begin
                // If we get flush == `Enable and ack_i == `Enable both, we do not flush.
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
                        if(stall != 6'b000000) begin
                            wishbone_state <= `WB_WAIT_FOR_STALL;
                        end
                    end else if(flush == `Enable) begin
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
                    if(stall == 6'b000000) begin
                        wishbone_state <= `WB_IDLE;
                    end
                end

                default: begin
                end

            endcase
        end
    end


    /* Data Signal Change */
    always @ (*) begin
        if(rst == `Enable) begin
            stallreq <= `Disable;
            cpu_data_o <= `Zero;
        end else begin
            stallreq <= `Disable;
            case (wishbone_state)
                `WB_IDLE: begin
                    if((cpu_ce_i == 1'b1) && (flush == `Disable)) begin
                        stallreq <= `Enable;
                        cpu_data_o <= `Zero;
                    end
                end

                `WB_BUSY: begin
                    if(wishbone_ack_i == 1'b1) begin
                        stallreq <= `Disable;
                        if(wishbone_we_o == `Disable) begin
                            cpu_data_o <= wishbone_data_i;
                        end else begin
                            cpu_data_o <= `Zero;
                        end
                    end else begin
                        stallreq <= `Enable;
                        cpu_data_o <= `Zero;
                    end
                end

                `WB_WAIT_FOR_STALL: begin
                    stallreq <= `Disable;
                    cpu_data_o <= rd_buf;
                end

                default: begin
                end
            endcase
        end
    end

endmodule