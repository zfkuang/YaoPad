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
    output wire[`WordBus] wishbone_addr_o,
    output wire[`WordBus] wishbone_data_o,
    output wire wishbone_we_o,
    output wire[3:0] wishbone_sel_o,
    output wire wishbone_stb_o,
    output wire wishbone_cyc_o,

    output wire stallreq

);

    // 留几个�?�线周期的缓�?
    parameter delay = 10;
    reg cpu_ack_id;
    reg wishbone_ack_id;
    reg wishbone_ack_valid;
    wire process;
    assign process = (cpu_ce_i == 1'b1) && (flush == `Disable);
    wire cpu_req_id;
    assign cpu_req_id = (process == 1'b1) ? (cpu_ack_id ^ 1'b1) : cpu_ack_id;
    wire request_bus;
    assign request_bus = (process == 1'b1) && (wishbone_ack_id != cpu_req_id || wishbone_ack_valid == 1'b0); 
    parameter cyc_len_log_2 = 2;
    reg [(cyc_len_log_2 - 1) : 0] req_cnt;
    always @ (posedge cpu_clk)
        if(rst == `Enable)
        begin
            cpu_ack_id <= 1'b0;
            req_cnt <= {cyc_len_log_2{1'b0}};
        end
        else if(stallreq != `Enable && (stall_this != `Enable || flush == `Disable))
        begin
            cpu_ack_id <= wishbone_ack_id;
            req_cnt <= req_cnt + 1'b1;
        end
    always @ (posedge wishbone_clk)
        if(rst == `Enable)
        begin
            wishbone_ack_valid <= 1'b0;
            wishbone_ack_id <= 1'b0;
        end
        else if((wishbone_ack_i & request_bus) == 1'b1)
        begin
            wishbone_ack_valid <= 1'b1;
            wishbone_ack_id <= cpu_req_id;
            cpu_data_o <= wishbone_data_i;
        end
    assign mmu_vir_addr = cpu_addr_i;
    assign wishbone_addr_o = mmu_phy_addr;
    assign wishbone_data_o = cpu_data_i;
    // 竞争与冒险？
    assign wishbone_cyc_o = ((request_bus) | ((flush == `Disable) & ~(&req_cnt) & (stallreq == `Enable || stall_this == `Disable)));
    assign wishbone_stb_o = request_bus; 
    assign wishbone_we_o = cpu_we_i;
    assign wishbone_sel_o = cpu_sel_i;
    reg[delay:0] stall_delay;
    reg not_use;
    always @ (posedge wishbone_clk)
        if(rst == `Enable)
            stall_delay <= {delay{1'b0}};
        else if(flush == `Enable)
            stall_delay <= {delay{1'b0}};
        else if((wishbone_ack_i & request_bus) == 1'b1)
            {not_use, stall_delay} <= {stall_delay, 1'b0};
        else
            {not_use, stall_delay} <= {stall_delay, request_bus};
    // 留两个�?�线周期的缓�?
    assign stallreq = (|stall_delay) && (flush == `Disable);

endmodule