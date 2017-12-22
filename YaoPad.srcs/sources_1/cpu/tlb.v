`timescale 1ns / 1ps
`include"defines.vh"

/*
    [71:53]    vpn  [52:45]    ASID  [44]       G
    [43:24]    pfn1   [23:22]    {D, V}1
    [21:2]     pfn0   [1:0]      {D, V}0
*/

module tlb(
        input wire clk,
        input wire rst,

        input wire cp0_write_tlb_index_i,
        input wire cp0_write_tlb_random_i,

        input wire[`WordBus] cp0_index_i,
        input wire[`WordBus] cp0_random_i,
        input wire[`WordBus] cp0_entrylo0_i,
        input wire[`WordBus] cp0_entrylo1_i,
        input wire[`WordBus] cp0_entryhi_i,
        input wire[`WordBus] cp0_pagemask_i,   


        output wire[1151:0] tlb_entry_o,
        output reg tlb_machine_check_exception_o
    );    
    
    reg[71:0] tlb_entry[0:15] ;
    assign tlb_entry_o = {
        tlb_entry[0], tlb_entry[1],
        tlb_entry[2], tlb_entry[3],
        tlb_entry[4], tlb_entry[5],
        tlb_entry[6], tlb_entry[7],
        tlb_entry[8], tlb_entry[9],
        tlb_entry[10], tlb_entry[11],
        tlb_entry[12], tlb_entry[13],
        tlb_entry[14], tlb_entry[15]
    } ;

    wire[71:0] tlb_entry_i = {
        cp0_entryhi_i[31:13] & ~cp0_pagemask_i[31:13], // vpn
        cp0_entryhi_i[7:0], // now ASID
        cp0_entrylo0_i[0] & cp0_entrylo1_i[0], // G
        
        cp0_entrylo1_i[25:6] & ~cp0_pagemask_i[25:6], // pfn1
        cp0_entrylo1_i[2:1], // {D, V}1
        cp0_entrylo0_i[25:6] & ~cp0_pagemask_i[25:6], // pfn0
        cp0_entrylo0_i[2:1] // {D, V}0
    } ;
    
    wire [3:0]tlb_index_i = cp0_write_tlb_index_i ? (cp0_index_i[3:0]) : (cp0_random_i[3:0]);
    
    wire [15:0] machine_check_err;

    generate
        genvar j;
        for(j = 0; j < 16; j = j + 1)
        begin :machine_check
            assign machine_check_err[j] = 
            (
                (tlb_index_i != j) && 
                (tlb_entry[j][71:45] == tlb_entry_i[71:45] ||  // same vpn+asid
                    (tlb_entry[j][71:53] == tlb_entry_i[71:53] && (tlb_entry[j][44] | tlb_entry_i[44]))) // same vpn+global
                && (tlb_entry[j][0] == 1'b1 || tlb_entry[j][22] == 1'b1) // variable
            );
        end
    endgenerate

    always @(posedge clk)
    begin
        if (rst == `Enable)
        begin
            {
                tlb_entry[0], tlb_entry[1],
                tlb_entry[2], tlb_entry[3],
                tlb_entry[4], tlb_entry[5],
                tlb_entry[6], tlb_entry[7],
                tlb_entry[8], tlb_entry[9],
                tlb_entry[10], tlb_entry[11],
                tlb_entry[12], tlb_entry[13],
                tlb_entry[14], tlb_entry[15]
            } <= 1152'b0;
            tlb_machine_check_exception_o <= `Disable;
        end
        else if (cp0_write_tlb_index_i || cp0_write_tlb_random_i)
        begin
            if(|machine_check_err) tlb_machine_check_exception_o <= `Enable;
            else begin
                tlb_entry[tlb_index_i] <= tlb_entry_i;
                tlb_machine_check_exception_o <= `Disable;
            end
        end
        else tlb_machine_check_exception_o <= `Disable;
    end
endmodule
