`timescale 1ns / 1ps
`include"defines.vh"

`define RAM_ADDR_START 32'h00000000
`define RAM_ADDR_LEN 32'h00800000
`define FLASH_ADDR_START 32'h1E000000
`define FLASH_ADDR_LEN 32'h00800000
`define ROM_ADDR_START 32'h1FC00000
`define ROM_ADDR_LEN 32'h00000100
`define UART_ADDR_START 32'h1FD003F8
`define UART_ADDR_LEN 32'h00000005
`define ETHERNET_ADDR_START 32'h1FD00404
`define ETHERNET_ADDR_LEN 32'h00000005


 // simple address mapping
module mmu(
        input wire rst,
        input wire[`WordBus] virtual_address_i,
        output wire[`WordBus] physical_address_o,
    );    
    
    always @ (*) begin 
        if (rst == `Enable) begin
            physical_address_o <= `Zero ;
        end else begin 
            if(virtual_address_i >= `RAM_ADDR_START && virtual_address_i < `RAM_ADDR_START+`RAM_ADDR_LEN) begin  // Ram, mapping to slave 0
                physical_address_o <= virtual_address_i-`RAM_ADDR_START ;
            end else if(virtual_address_i >= `FLASH_ADDR_START && virtual_address_i < `FLASH_ADDR_START+`FLASH_ADDR_LEN) begin  // Flash, mapping to slave 3
                physical_address_o <= {4'h3, (virtual_address_i-`FLASH_ADDR_START)[27:0]} ;
            end else if(virtual_address_i >= `ROM_ADDR_START && virtual_address_i < `ROM_ADDR_START+`ROM_ADDR_LEN) begin  // Rom, mapping to slave 2
                physical_address_o <= {4'h2, (virtual_address_i-`ROM_ADDR_START)[27:0]} ;
            end else if(virtual_address_i >= `UART_ADDR_START && virtual_address_i < `UART_ADDR_START+`UART_ADDR_LEN) begin  // Uart, mapping to slave 1
                physical_address_o <= {4'h1, (virtual_address_i-`UART_ADDR_START)[27:0]}  ;
            end else if(virtual_address_i >= `ETHERNET_ADDR_START && virtual_address_i < `ETHERNET_ADDR_START+`ETHERNET_ADDR_LEN) begin  // Ethernet, mapping to slave 8
                physical_address_o <= {4'h8, (virtual_address_i-`ETHERNET_ADDR_START)[27:0]}  ;     
            end
    end
    
endmodule
