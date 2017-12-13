//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2014 leishangwen@163.com                       ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
// Module:  openmips_min_sopc_tb
// File:    openmips_min_sopc_tb.v
// Author:  Lei Silei
// E-mail:  leishangwen@163.com
// Description: openmips_min_sopc��testbench
// Revision: 1.0
//////////////////////////////////////////////////////////////////////

`include "defines.vh"
`include "openmips_min_sopc.v"
`timescale 1ns / 1ps

module openmips_min_sopc_tb;

    reg CLOCK_50;
    reg CLOCK_100; 
    reg rst;


    initial begin
        CLOCK_50 = 1'b1;
        forever #20 CLOCK_50 = ~CLOCK_50;
    end

    initial begin
        CLOCK_100 = 1'b1;
        forever #5 CLOCK_100 = ~CLOCK_100;
    end

    initial begin
        rst = `Enable;
        #195 rst= `Disable;
        #10000 $stop;
    end

    openmips_min_sopc openmips_min_sopc0(
        .clk(CLOCK_50),
        .clk100(CLOCK_100),
        .rst(rst)	
    );

    initial begin
        /*
        $monitor("%d\nregs[0]\t=\t%b\nregs[1]\t=\t%b\nregs[2]\t=\t%b\nregs[3]\t=\t%b\nregs[4]\t=\t%b\nraddr1\t=\t%b\nraddr2\t=\t%b\nwaddr\t=\t%b\nwdata\t=\t%b\nrdata1\t=\t%b\nrdata2\t=\t%b\npc_i\t=\t%b\ninst_i\t=\t%b\naluop\t=\t%b\nalusel\t=\t%b\nreg1\t=\t%b\nreg2\t=\t%b\nwdata_o\t=\t%b\nwd_o\t=\t%b\nwreg_o\t=\t%b\n",
            $stime, 
            openmips_min_sopc0.cpu0.regfile0.register[0],
            openmips_min_sopc0.cpu0.regfile0.register[1],
            openmips_min_sopc0.cpu0.regfile0.register[2],
            openmips_min_sopc0.cpu0.regfile0.register[3],
            openmips_min_sopc0.cpu0.regfile0.register[4],
            openmips_min_sopc0.cpu0.regfile0.raddr1,
            openmips_min_sopc0.cpu0.regfile0.raddr2,
            openmips_min_sopc0.cpu0.regfile0.waddr,
            openmips_min_sopc0.cpu0.regfile0.wdata,
            openmips_min_sopc0.cpu0.regfile0.rdata1,
            openmips_min_sopc0.cpu0.regfile0.rdata2,
            openmips_min_sopc0.cpu0.id0.pc_i,
            openmips_min_sopc0.cpu0.id0.inst_i,
            openmips_min_sopc0.cpu0.ex0.aluop_i,
            openmips_min_sopc0.cpu0.ex0.alusel_i,
            openmips_min_sopc0.cpu0.ex0.reg1_i,
            openmips_min_sopc0.cpu0.ex0.reg2_i,
            openmips_min_sopc0.cpu0.ex0.wdata_o,
            openmips_min_sopc0.cpu0.ex0.wd_o,
            openmips_min_sopc0.cpu0.ex0.wreg_o,
        );
        */
        /*$monitor("%d\nregs[0]\t=\t%h\nregs[1]\t=\t%h\nregs[2]\t=\t%h\nregs[3]\t=\t%h\nregs[4]\t=\t%h\ncompare\t=\t%h\nstatus\t=\t%h\ncount\t=\t%h\nhi\t=\t%h\nlo\t=\t%h\npc\t=\t%h\nregs[31]\t=\t%h\n",
            $stime, 
            openmips_min_sopc0.cpu0.regfile0.register[0],
            openmips_min_sopc0.cpu0.regfile0.register[1],
            openmips_min_sopc0.cpu0.regfile0.register[2],
            openmips_min_sopc0.cpu0.regfile0.register[3],
            openmips_min_sopc0.cpu0.regfile0.register[4],
            openmips_min_sopc0.cpu0.cp00.compare_o,
            openmips_min_sopc0.cpu0.cp00.status_o,
            openmips_min_sopc0.cpu0.cp00.count_o,
            openmips_min_sopc0.cpu0.hilo0.hi_o,
            openmips_min_sopc0.cpu0.hilo0.lo_o,
            openmips_min_sopc0.cpu0.pc_rom0.pc,
            openmips_min_sopc0.cpu0.regfile0.register[31],
        );*/
        $dumpfile("openmips_min_sopc_tb.vcd");
        $dumpvars(0, openmips_min_sopc0);
        #9000;
        $finish;
    end

endmodule
