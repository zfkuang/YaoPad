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


 // simple address mapping
module mmu(
        input wire rst,
        input wire[`WordBus] virtual_address_i,
        output reg[`WordBus] physical_address_o
    );    
    
    always @ (*) begin 
        if (rst == `Enable) begin
            physical_address_o <= `Zero ;
        end else begin 
            if(virtual_address_i >= `RAM_ADDR_START && virtual_address_i < `RAM_ADDR_START+`RAM_ADDR_LEN) begin  // Ram, mapping to slave 0
                physical_address_o <= virtual_address_i-`RAM_ADDR_START ;            
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
