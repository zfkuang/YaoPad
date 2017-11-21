`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/14 18:07:08
// Design Name: 
// Module Name: pc
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

module div(
    input wire rst, input wire clk,

    input wire start_i,
    input wire annul_i,
    input wire[`RegBus] opdata1_i,
    input wire[`RegBus] opdata2_i,
    input wire signed_div_i,

    output reg[`DoubleRegBus] result_o,
    output reg ready_o
    );
    

    reg[1:0] state ;
    reg[`RegBus] divider ;
    reg[64:0] result ;
    reg[5:0] cnt ;

    wire[32:0] tempres ;
    assign tempres = {1'b0, result[63:32]}-{1'b0, divider} ;

    always @ (posedge clk) begin
        if (rst == `Enable) begin 
            state <= `DIV_FREE ;
            ready_o <= `Disable ;
            result_o <= `DZero ;
            divider <= `Zero ;
            result <= `DZero ;
        end else begin
            case(state) 
                `DIV_FREE: begin
                    ready_o <= 0 ;
                    result_o <=`DZero ; 
                    if(start_i == `Enable && annul_i == `Disable) begin
                        cnt <= 6'b000000 ;
                        if(opdata2_i == `Zero) begin
                            result <= `DZero ;
                            divider <= `Zero ;
                            state <= `DIV_ZERO ;
                        end else begin
                            result <= `DZero ;
                            if((signed_div_i == 1) && (opdata1_i[31]==1)) begin                            
                                result[32:1] <= (~opdata1_i+1) ;
                            end else begin                   
                                result[32:1] <= opdata1_i ;                            
                            end
                            if((signed_div_i == 1) && (opdata2_i[31]==1)) begin                            
                                divider <= (~opdata2_i+1) ;
                            end else begin                   
                                divider <= opdata2_i ;                            
                            end
                            state <= `DIV_ON ;
                        end
                    end
                end
                `DIV_ON: begin
                    ready_o <= 0 ;
                    result_o <=`DZero ;
                    if(cnt == 32) begin
                        state <= `DIV_END ;
                        if((signed_div_i == 1) && (opdata2_i[31] ^ opdata1_i[31]) == 1) begin
                            result[31:0] = (~result[31:0]+1) ;
                        end 
                        if((signed_div_i == 1) && (opdata1_i[31] ^ result[64]) == 1) begin
                            result[64:33] = (~result[64:33]+1) ;
                        end 
                        

                    end else begin
                        if(tempres[32] == 1) begin // less
                            result <= {result[63:0], 1'b0} ;
                        end else begin // not less
                            result <= {tempres[31:0], result[31:0], 1'b1} ;
                        end
                        cnt <= cnt+1 ;
                    end
                end
                `DIV_ZERO: begin
                    ready_o <= 0 ;
                    result_o <= `DZero ;
                    result <= `DZero ;
                    cnt <= 6'b000000 ;
                    state <= `DIV_END ;
                end
                `DIV_END: begin
                    ready_o <= 1 ;
                    result_o <= {result[64:33], result[31:0]} ;
                    if(start_i == `Disable) begin
                        ready_o <= 0 ;
                        state <= `DIV_FREE ;
                    end
                end
            endcase
        end
    end 

endmodule
