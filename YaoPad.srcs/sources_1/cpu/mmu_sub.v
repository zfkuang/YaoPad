`timescale 1ns / 1ps
`include"defines.vh"

`define RAM_ADDR_START 32'h00000000
`define RAM_ADDR_LEN 32'h00800000

`define VIR_RAM_ADDR_START 32'h80000000
`define VIR_RAM_ADDR_LEN 32'h00800000

`define FLASH_ADDR_START 32'hBE000000
`define FLASH_ADDR_LEN 32'h00800000

`define ROM_ADDR_START 32'hBFC00000
`define ROM_ADDR_LEN 32'h00000100

`define UART_ADDR_START 32'hBFD003F8
`define UART_ADDR_LEN 32'h00000008

`define ETHERNET_ADDR_START 32'hBFD00404
`define ETHERNET_ADDR_LEN 32'h00000005

`define LED_ADDR_START 32'hBFD0F000
`define LED_ADDR_LEN 32'h00000020


/*
    [71:53]    vpn  [52:45]    ASID  [44]       G
    [43:24]    pfn1   [23:22]    {D, V}1
    [21:2]     pfn0   [1:0]      {D, V}0
*/

module mmu_sub(
        input wire rst,
        input wire[`WordBus] virtual_address_i,

        input wire[1151:0] tlb_entry_i,
        input wire ce_i,
        input wire we_i,
        input wire[`WordBus] cp0_pagemask_i,
        input wire[`WordBus] cp0_entryhi_i,        
        output reg tlbl_exception_o,
        output reg tlbs_exception_o,
        output reg tlbmod_exception_o,

        output reg[`WordBus] physical_address_o
    );    
    
    wire[15:0] match;
    wire[15:0] write_on_readonly_page ; 
    wire[`WordBus] phy_addr[15:0] ;
    wire tlb_miss_exception ;
    wire tlb_mod_exception ;
    wire[71:0] tlb_entry[15:0] ;
    assign {
        tlb_entry[0], tlb_entry[1],
        tlb_entry[2], tlb_entry[3],
        tlb_entry[4], tlb_entry[5],
        tlb_entry[6], tlb_entry[7],
        tlb_entry[8], tlb_entry[9],
        tlb_entry[10], tlb_entry[11],
        tlb_entry[12], tlb_entry[13],
        tlb_entry[14], tlb_entry[15]
    } = tlb_entry_i ;

    generate
        genvar i;
        for (i = 0; i < 16; i = i + 1)
        begin :machine_check
            assign match[i] =
            (
                ((tlb_entry[i][71:53] & ~cp0_pagemask_i[31:13]) == (virtual_address_i[31:13] & ~cp0_pagemask_i[31:13])) && // vpn is matched
                ((tlb_entry[i][52:45] == cp0_entryhi_i[7:0]) || tlb_entry[i][44] == 1'b1) && // asid is matched
                (tlb_entry[i][(virtual_address_i[12] == 1'b0) ? (0) : (22)] == 1'b1) // Variable
            );
            assign write_on_readonly_page[i] =
                (match[i]) && (tlb_entry[i][(virtual_address_i[12] == 1'b0) ? (1) : (23)] == 1'b0) && (we_i == `Enable);
            assign phy_addr[i] = (~match[i]) ? `Zero : 
                {(virtual_address_i[12] == 1'b0) ? tlb_entry[i][21:2] : tlb_entry[i][43:24], virtual_address_i[11:0]};
        end
    endgenerate
    assign tlb_miss_exception = ~(|match) ;
    assign tlb_mod_exception = tlb_miss_exception ? `Disable : (|write_on_readonly_page);

    always @ (*) begin 
        if ((rst == `Enable) || (ce_i == `Disable)) begin
            physical_address_o <= `Zero ;        
            tlbl_exception_o <= `Disable ;
            tlbs_exception_o <= `Disable ;
            tlbmod_exception_o <= `Disable ;
        end else begin             
            tlbl_exception_o <= `Disable ;
            tlbs_exception_o <= `Disable ;
            tlbmod_exception_o <= `Disable ;
            if(virtual_address_i[31] == 0) begin  // User Space, need tlb
                tlbmod_exception_o <= tlbmod_exception_o ;
                if(we_i == `Enable) tlbs_exception_o <= tlb_miss_exception ;
                else tlbl_exception_o <= tlb_miss_exception ;

                if(match[15]) physical_address_o <= phy_addr[15] ;
                if(match[14]) physical_address_o <= phy_addr[14] ;
                if(match[13]) physical_address_o <= phy_addr[13] ;
                if(match[12]) physical_address_o <= phy_addr[12] ;
                if(match[11]) physical_address_o <= phy_addr[11] ;
                if(match[10]) physical_address_o <= phy_addr[10] ;
                if(match[9]) physical_address_o <= phy_addr[9] ;
                if(match[8]) physical_address_o <= phy_addr[8] ;
                if(match[7]) physical_address_o <= phy_addr[7] ;
                if(match[6]) physical_address_o <= phy_addr[6] ;
                if(match[5]) physical_address_o <= phy_addr[5] ;
                if(match[4]) physical_address_o <= phy_addr[4] ;
                if(match[3]) physical_address_o <= phy_addr[3] ;
                if(match[2]) physical_address_o <= phy_addr[2] ;
                if(match[1]) physical_address_o <= phy_addr[1] ;
                if(match[0]) physical_address_o <= phy_addr[0] ;

            end else if(virtual_address_i >= `VIR_RAM_ADDR_START && virtual_address_i < `VIR_RAM_ADDR_START+`VIR_RAM_ADDR_LEN) begin  // Ram, mapping to slave 0
                physical_address_o <= virtual_address_i-`VIR_RAM_ADDR_START ;
            end else if(virtual_address_i >= `FLASH_ADDR_START && virtual_address_i < `FLASH_ADDR_START+`FLASH_ADDR_LEN) begin  // Flash, mapping to slave 3
                physical_address_o <= 32'h30000000+virtual_address_i-`FLASH_ADDR_START ;
            end else if(virtual_address_i >= `ROM_ADDR_START && virtual_address_i < `ROM_ADDR_START+`ROM_ADDR_LEN) begin  // Rom, mapping to slave 2
                physical_address_o <= 32'h20000000+virtual_address_i-`ROM_ADDR_START ;
            end else if(virtual_address_i >= `UART_ADDR_START && virtual_address_i < `UART_ADDR_START+`UART_ADDR_LEN) begin  // Uart, mapping to slave 1
                physical_address_o <= 32'h10000000+virtual_address_i-`UART_ADDR_START  ;
            end else if(virtual_address_i >= `ETHERNET_ADDR_START && virtual_address_i < `ETHERNET_ADDR_START+`ETHERNET_ADDR_LEN) begin  // Ethernet, mapping to slave 8
                physical_address_o <= 32'h80000000+virtual_address_i-`ETHERNET_ADDR_START  ;     
            end else if(virtual_address_i >= `LED_ADDR_START && virtual_address_i < `LED_ADDR_START+`LED_ADDR_LEN) begin  // Ethernet, mapping to slave 8
                physical_address_o <= 32'hB0000000+virtual_address_i-`LED_ADDR_START  ;     
            end
        end
    end
    
endmodule
