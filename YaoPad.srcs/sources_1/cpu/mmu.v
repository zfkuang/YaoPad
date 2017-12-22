`timescale 1ns / 1ps
`include"defines.vh"
`include"cpu/mmu_sub.v"
`include"cpu/tlb.v"


 // simple address mapping
module mmu(
        input wire clk,
        input wire rst,

        input wire[`WordBus] ivir_addr_i,
        input wire inst_ce_i,
        input wire[`WordBus] dvir_addr_i,
        input wire data_ce_i,
        input wire data_we_i,
    
        input wire[`WordBus] cp0_index_i,
        input wire[`WordBus] cp0_random_i,
        input wire[`WordBus] cp0_entrylo0_i,
        input wire[`WordBus] cp0_entrylo1_i,
        input wire[`WordBus] cp0_entryhi_i,
        input wire[`WordBus] cp0_pagemask_i,   
        input wire cp0_write_index_i,
        input wire cp0_write_random_i,

        output wire[`WordBus] iphy_addr_o,
        output wire[`WordBus] dphy_addr_o,
        output wire inst_tlbl_exception_o,
        output wire data_tlbl_exception_o,
        output wire data_tlbs_exception_o,
        output wire data_tlbmod_exception_o,
        output wire tlb_machine_check_exception_o   
    );    

    wire[1151:0] tlb_entry ;

    mmu_sub immu_sub(
        .rst(rst),
        .virtual_address_i(ivir_addr_i),
        .tlb_entry_i(tlb_entry),
        .ce_i(inst_ce_i),
        .we_i(`Disable),
        .cp0_pagemask_i(cp0_pagemask_i),
        .cp0_entryhi_i(cp0_entryhi_i),
        .tlbl_exception_o(inst_tlbl_exception_o),
        .physical_address_o(iphy_addr_o)
        ) ;
    mmu_sub dmmu_sub(
        .rst(rst),
        .virtual_address_i(dvir_addr_i),
        .tlb_entry_i(tlb_entry),
        .ce_i(data_ce_i),
        .we_i(data_we_i),
        .cp0_pagemask_i(cp0_pagemask_i),
        .cp0_entryhi_i(cp0_entryhi_i),
        .tlbl_exception_o(data_tlbl_exception_o),
        .tlbs_exception_o(data_tlbs_exception_o),
        .tlbmod_exception_o(data_tlbmod_exception_o),
        .physical_address_o(dphy_addr_o)
        ) ;

    tlb tlb0(
        .clk(clk), .rst(rst),
        .cp0_write_tlb_random_i(cp0_write_random_i),
        .cp0_write_tlb_index_i(cp0_write_index_i),
        .cp0_index_i(cp0_index_i),
        .cp0_random_i(cp0_random_i),
        .cp0_entrylo0_i(cp0_entrylo0_i),
        .cp0_entrylo1_i(cp0_entrylo1_i),
        .cp0_entryhi_i(cp0_entryhi_i),
        .cp0_pagemask_i(cp0_pagemask_i),
        .tlb_entry_o(tlb_entry),
        .tlb_machine_check_exception_o(tlb_machine_check_exception_o)
        ) ;
endmodule
