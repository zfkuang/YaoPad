// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Thu Nov 30 14:35:48 2017
// Host        : DESKTOP-N2UMQR8 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/XilinxProjects/YaoPad/YaoPad/YaoPad.sim/sim_1/synth/timing/xsim/openmips_min_sopc_tb_time_synth.v
// Design      : openmips_min_sopc
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tfgg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD17
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD18
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD19
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD20
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD21
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD22
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD23
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD24
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD25
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD26
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD27
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD28
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD29
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD30
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD31
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD32
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module cpu
   (debugdata0,
    n_0_468_BUFG_inst_n_1,
    n_2_498_BUFG_inst_n_3,
    n_3_499_BUFG_inst_n_4,
    n_1_934_BUFG_inst_n_2,
    rst_IBUF,
    rst,
    CLK,
    debug,
    E,
    \ex_aluop_reg[5] ,
    \ex_aluop_reg[1] ,
    \ex_aluop_reg[1]_0 );
  output [26:0]debugdata0;
  output n_0_468_BUFG_inst_n_1;
  output n_2_498_BUFG_inst_n_3;
  output n_3_499_BUFG_inst_n_4;
  output n_1_934_BUFG_inst_n_2;
  input rst_IBUF;
  input rst;
  input CLK;
  input [4:0]debug;
  input [0:0]E;
  input [0:0]\ex_aluop_reg[5] ;
  input [0:0]\ex_aluop_reg[1] ;
  input [0:0]\ex_aluop_reg[1]_0 ;

  wire CLK;
  wire [0:0]E;
  wire [4:0]debug;
  wire [26:0]debugdata0;
  wire div0_n_10;
  wire div0_n_11;
  wire div0_n_12;
  wire div0_n_13;
  wire div0_n_14;
  wire div0_n_15;
  wire div0_n_16;
  wire div0_n_17;
  wire div0_n_18;
  wire div0_n_19;
  wire div0_n_20;
  wire div0_n_21;
  wire div0_n_22;
  wire div0_n_23;
  wire div0_n_24;
  wire div0_n_25;
  wire div0_n_26;
  wire div0_n_27;
  wire div0_n_28;
  wire div0_n_29;
  wire div0_n_30;
  wire div0_n_31;
  wire div0_n_32;
  wire div0_n_33;
  wire div0_n_34;
  wire div0_n_35;
  wire div0_n_36;
  wire div0_n_5;
  wire div0_n_6;
  wire div0_n_7;
  wire div0_n_8;
  wire div0_n_9;
  wire [31:0]div_opdata1;
  wire [31:31]div_opdata2;
  wire div_ready;
  wire [63:0]div_result;
  wire div_signed;
  wire div_start;
  wire [31:0]divider;
  wire ex0_n_100;
  wire ex0_n_101;
  wire ex0_n_102;
  wire ex0_n_103;
  wire ex0_n_104;
  wire ex0_n_105;
  wire ex0_n_106;
  wire ex0_n_107;
  wire ex0_n_108;
  wire ex0_n_109;
  wire ex0_n_110;
  wire ex0_n_111;
  wire ex0_n_112;
  wire ex0_n_113;
  wire ex0_n_114;
  wire ex0_n_115;
  wire ex0_n_116;
  wire ex0_n_117;
  wire ex0_n_118;
  wire ex0_n_119;
  wire ex0_n_12;
  wire ex0_n_120;
  wire ex0_n_121;
  wire ex0_n_122;
  wire ex0_n_123;
  wire ex0_n_124;
  wire ex0_n_125;
  wire ex0_n_126;
  wire ex0_n_127;
  wire ex0_n_128;
  wire ex0_n_129;
  wire ex0_n_130;
  wire ex0_n_131;
  wire ex0_n_132;
  wire ex0_n_133;
  wire ex0_n_134;
  wire ex0_n_135;
  wire ex0_n_136;
  wire ex0_n_137;
  wire ex0_n_138;
  wire ex0_n_139;
  wire ex0_n_140;
  wire ex0_n_141;
  wire ex0_n_142;
  wire ex0_n_143;
  wire ex0_n_144;
  wire ex0_n_145;
  wire ex0_n_146;
  wire ex0_n_147;
  wire ex0_n_148;
  wire ex0_n_15;
  wire ex0_n_49;
  wire ex0_n_50;
  wire ex0_n_51;
  wire ex0_n_52;
  wire ex0_n_53;
  wire ex0_n_54;
  wire ex0_n_55;
  wire ex0_n_56;
  wire ex0_n_57;
  wire ex0_n_58;
  wire ex0_n_59;
  wire ex0_n_60;
  wire ex0_n_61;
  wire ex0_n_62;
  wire ex0_n_63;
  wire ex0_n_64;
  wire ex0_n_65;
  wire ex0_n_66;
  wire ex0_n_67;
  wire ex0_n_68;
  wire ex0_n_69;
  wire ex0_n_70;
  wire ex0_n_71;
  wire ex0_n_72;
  wire ex0_n_73;
  wire ex0_n_74;
  wire ex0_n_75;
  wire ex0_n_76;
  wire ex0_n_77;
  wire ex0_n_78;
  wire ex0_n_79;
  wire ex0_n_80;
  wire ex0_n_81;
  wire ex0_n_82;
  wire ex0_n_83;
  wire ex0_n_84;
  wire ex0_n_85;
  wire ex0_n_86;
  wire ex0_n_87;
  wire ex0_n_88;
  wire ex0_n_89;
  wire ex0_n_90;
  wire ex0_n_91;
  wire ex0_n_92;
  wire ex0_n_93;
  wire ex0_n_94;
  wire ex0_n_95;
  wire ex0_n_96;
  wire ex0_n_97;
  wire ex0_n_98;
  wire ex0_n_99;
  wire [0:0]\ex_aluop_reg[1] ;
  wire [0:0]\ex_aluop_reg[1]_0 ;
  wire [0:0]\ex_aluop_reg[5] ;
  wire ex_cp0_reg_we_o;
  wire [2:0]ex_cp0_reg_write_addr_o;
  wire [31:2]ex_current_inst_addr_i;
  wire [11:10]ex_excepttype_o;
  wire [31:0]ex_hi_o;
  wire [13:11]ex_inst_i;
  wire [1:0]ex_link_addr_i;
  wire [31:0]ex_lo_o;
  wire ex_mem0_n_102;
  wire ex_mem0_n_103;
  wire ex_mem0_n_104;
  wire ex_mem0_n_105;
  wire ex_mem0_n_106;
  wire ex_mem0_n_107;
  wire ex_mem0_n_108;
  wire ex_mem0_n_109;
  wire ex_mem0_n_110;
  wire ex_mem0_n_111;
  wire ex_mem0_n_112;
  wire ex_mem0_n_113;
  wire ex_mem0_n_114;
  wire ex_mem0_n_115;
  wire ex_mem0_n_116;
  wire ex_mem0_n_117;
  wire ex_mem0_n_118;
  wire ex_mem0_n_119;
  wire ex_mem0_n_120;
  wire ex_mem0_n_121;
  wire ex_mem0_n_122;
  wire ex_mem0_n_123;
  wire ex_mem0_n_124;
  wire ex_mem0_n_125;
  wire ex_mem0_n_129;
  wire ex_mem0_n_130;
  wire ex_mem0_n_4;
  wire ex_mem0_n_42;
  wire ex_mem0_n_43;
  wire ex_mem0_n_44;
  wire ex_mem0_n_45;
  wire ex_mem0_n_46;
  wire ex_mem0_n_47;
  wire ex_mem0_n_48;
  wire ex_mem0_n_49;
  wire ex_mem0_n_50;
  wire ex_mem0_n_51;
  wire ex_mem0_n_52;
  wire ex_mem0_n_53;
  wire ex_mem0_n_54;
  wire ex_mem0_n_55;
  wire ex_mem0_n_56;
  wire ex_mem0_n_57;
  wire ex_mem0_n_58;
  wire ex_mem0_n_59;
  wire ex_mem0_n_60;
  wire ex_mem0_n_61;
  wire ex_mem0_n_62;
  wire ex_mem0_n_63;
  wire ex_mem0_n_64;
  wire ex_mem0_n_69;
  wire ex_mem0_n_8;
  wire ex_mem0_n_9;
  wire [31:0]ex_reg1_i;
  wire [31:0]ex_reg2_i;
  wire [4:0]ex_wd_i;
  wire [31:0]ex_wdata_o;
  wire ex_whilo_o;
  wire ex_wreg_o;
  wire [31:0]hi_o;
  wire id0_n_34;
  wire id0_n_43;
  wire id0_n_44;
  wire [6:0]id_aluop_o;
  wire [2:0]id_alusel_o;
  wire id_ex0_n_100;
  wire id_ex0_n_101;
  wire id_ex0_n_102;
  wire id_ex0_n_103;
  wire id_ex0_n_104;
  wire id_ex0_n_105;
  wire id_ex0_n_106;
  wire id_ex0_n_107;
  wire id_ex0_n_108;
  wire id_ex0_n_121;
  wire id_ex0_n_122;
  wire id_ex0_n_123;
  wire id_ex0_n_124;
  wire id_ex0_n_125;
  wire id_ex0_n_126;
  wire id_ex0_n_127;
  wire id_ex0_n_128;
  wire id_ex0_n_129;
  wire id_ex0_n_130;
  wire id_ex0_n_131;
  wire id_ex0_n_132;
  wire id_ex0_n_133;
  wire id_ex0_n_134;
  wire id_ex0_n_135;
  wire id_ex0_n_136;
  wire id_ex0_n_137;
  wire id_ex0_n_138;
  wire id_ex0_n_139;
  wire id_ex0_n_145;
  wire id_ex0_n_146;
  wire id_ex0_n_147;
  wire id_ex0_n_148;
  wire id_ex0_n_149;
  wire id_ex0_n_150;
  wire id_ex0_n_151;
  wire id_ex0_n_152;
  wire id_ex0_n_153;
  wire id_ex0_n_154;
  wire id_ex0_n_155;
  wire id_ex0_n_156;
  wire id_ex0_n_157;
  wire id_ex0_n_158;
  wire id_ex0_n_159;
  wire id_ex0_n_160;
  wire id_ex0_n_161;
  wire id_ex0_n_162;
  wire id_ex0_n_163;
  wire id_ex0_n_164;
  wire id_ex0_n_165;
  wire id_ex0_n_166;
  wire id_ex0_n_167;
  wire id_ex0_n_168;
  wire id_ex0_n_169;
  wire id_ex0_n_170;
  wire id_ex0_n_171;
  wire id_ex0_n_172;
  wire id_ex0_n_173;
  wire id_ex0_n_174;
  wire id_ex0_n_175;
  wire id_ex0_n_176;
  wire id_ex0_n_177;
  wire id_ex0_n_178;
  wire id_ex0_n_179;
  wire id_ex0_n_180;
  wire id_ex0_n_181;
  wire id_ex0_n_182;
  wire id_ex0_n_183;
  wire id_ex0_n_184;
  wire id_ex0_n_185;
  wire id_ex0_n_186;
  wire id_ex0_n_187;
  wire id_ex0_n_188;
  wire id_ex0_n_189;
  wire id_ex0_n_190;
  wire id_ex0_n_191;
  wire id_ex0_n_192;
  wire id_ex0_n_193;
  wire id_ex0_n_194;
  wire id_ex0_n_195;
  wire id_ex0_n_196;
  wire id_ex0_n_197;
  wire id_ex0_n_198;
  wire id_ex0_n_199;
  wire id_ex0_n_200;
  wire id_ex0_n_201;
  wire id_ex0_n_202;
  wire id_ex0_n_203;
  wire id_ex0_n_204;
  wire id_ex0_n_205;
  wire id_ex0_n_206;
  wire id_ex0_n_207;
  wire id_ex0_n_208;
  wire id_ex0_n_209;
  wire id_ex0_n_210;
  wire id_ex0_n_211;
  wire id_ex0_n_212;
  wire id_ex0_n_213;
  wire id_ex0_n_214;
  wire id_ex0_n_215;
  wire id_ex0_n_216;
  wire id_ex0_n_217;
  wire id_ex0_n_218;
  wire id_ex0_n_219;
  wire id_ex0_n_220;
  wire id_ex0_n_221;
  wire id_ex0_n_222;
  wire id_ex0_n_223;
  wire id_ex0_n_224;
  wire id_ex0_n_225;
  wire id_ex0_n_226;
  wire id_ex0_n_227;
  wire id_ex0_n_228;
  wire id_ex0_n_229;
  wire id_ex0_n_230;
  wire id_ex0_n_231;
  wire id_ex0_n_232;
  wire id_ex0_n_233;
  wire id_ex0_n_234;
  wire id_ex0_n_235;
  wire id_ex0_n_236;
  wire id_ex0_n_237;
  wire id_ex0_n_238;
  wire id_ex0_n_239;
  wire id_ex0_n_240;
  wire id_ex0_n_241;
  wire id_ex0_n_242;
  wire id_ex0_n_245;
  wire id_ex0_n_246;
  wire id_ex0_n_247;
  wire id_ex0_n_250;
  wire id_ex0_n_251;
  wire id_ex0_n_252;
  wire id_ex0_n_6;
  wire id_ex0_n_7;
  wire id_ex0_n_72;
  wire id_ex0_n_74;
  wire id_ex0_n_75;
  wire id_ex0_n_76;
  wire id_ex0_n_77;
  wire id_ex0_n_78;
  wire id_ex0_n_79;
  wire id_ex0_n_80;
  wire id_ex0_n_81;
  wire id_ex0_n_82;
  wire id_ex0_n_83;
  wire id_ex0_n_84;
  wire id_ex0_n_85;
  wire id_ex0_n_86;
  wire id_ex0_n_87;
  wire id_ex0_n_88;
  wire id_ex0_n_89;
  wire id_ex0_n_90;
  wire id_ex0_n_91;
  wire id_ex0_n_92;
  wire id_ex0_n_93;
  wire id_ex0_n_94;
  wire id_ex0_n_95;
  wire id_ex0_n_96;
  wire id_ex0_n_97;
  wire id_ex0_n_98;
  wire id_ex0_n_99;
  wire [23:0]id_inst_i;
  wire [31:0]id_pc_i;
  wire [27:0]id_reg1_o;
  wire [31:0]id_reg2_o;
  wire [2:0]id_wd_o;
  wire id_wreg_o;
  wire if_id0_n_10;
  wire if_id0_n_11;
  wire if_id0_n_12;
  wire if_id0_n_120;
  wire if_id0_n_121;
  wire if_id0_n_122;
  wire if_id0_n_123;
  wire if_id0_n_127;
  wire if_id0_n_128;
  wire if_id0_n_129;
  wire if_id0_n_13;
  wire if_id0_n_130;
  wire if_id0_n_131;
  wire if_id0_n_132;
  wire if_id0_n_133;
  wire if_id0_n_134;
  wire if_id0_n_135;
  wire if_id0_n_136;
  wire if_id0_n_137;
  wire if_id0_n_138;
  wire if_id0_n_139;
  wire if_id0_n_14;
  wire if_id0_n_140;
  wire if_id0_n_141;
  wire if_id0_n_142;
  wire if_id0_n_143;
  wire if_id0_n_144;
  wire if_id0_n_145;
  wire if_id0_n_146;
  wire if_id0_n_147;
  wire if_id0_n_148;
  wire if_id0_n_15;
  wire if_id0_n_16;
  wire if_id0_n_17;
  wire if_id0_n_18;
  wire if_id0_n_19;
  wire if_id0_n_20;
  wire if_id0_n_202;
  wire if_id0_n_21;
  wire if_id0_n_22;
  wire if_id0_n_23;
  wire if_id0_n_24;
  wire if_id0_n_25;
  wire if_id0_n_26;
  wire if_id0_n_27;
  wire if_id0_n_28;
  wire if_id0_n_31;
  wire if_id0_n_32;
  wire if_id0_n_33;
  wire if_id0_n_34;
  wire if_id0_n_35;
  wire if_id0_n_4;
  wire if_id0_n_47;
  wire if_id0_n_48;
  wire if_id0_n_49;
  wire if_id0_n_5;
  wire if_id0_n_50;
  wire if_id0_n_51;
  wire if_id0_n_52;
  wire if_id0_n_53;
  wire if_id0_n_54;
  wire if_id0_n_6;
  wire if_id0_n_69;
  wire if_id0_n_7;
  wire if_id0_n_71;
  wire if_id0_n_72;
  wire if_id0_n_75;
  wire if_id0_n_76;
  wire if_id0_n_77;
  wire if_id0_n_78;
  wire if_id0_n_79;
  wire if_id0_n_8;
  wire if_id0_n_80;
  wire if_id0_n_81;
  wire if_id0_n_83;
  wire if_id0_n_84;
  wire if_id0_n_86;
  wire if_id0_n_9;
  wire [28:3]inst;
  wire [5:2]inst_addr;
  wire [31:2]link_addr_o0;
  wire [31:0]lo_o;
  wire [31:0]mem_cp0_reg_data_i;
  wire [10:10]mem_cp0_reg_data_o;
  wire mem_cp0_reg_we_i;
  wire [2:0]mem_cp0_reg_write_addr_i;
  wire [31:0]mem_hi_i;
  wire [31:0]mem_hi_o;
  wire [31:0]mem_lo_i;
  wire [31:0]mem_lo_o;
  wire mem_wb0_n_10;
  wire mem_wb0_n_11;
  wire mem_wb0_n_115;
  wire mem_wb0_n_116;
  wire mem_wb0_n_117;
  wire mem_wb0_n_118;
  wire mem_wb0_n_119;
  wire mem_wb0_n_12;
  wire mem_wb0_n_120;
  wire mem_wb0_n_121;
  wire mem_wb0_n_122;
  wire mem_wb0_n_123;
  wire mem_wb0_n_124;
  wire mem_wb0_n_125;
  wire mem_wb0_n_126;
  wire mem_wb0_n_127;
  wire mem_wb0_n_128;
  wire mem_wb0_n_129;
  wire mem_wb0_n_13;
  wire mem_wb0_n_130;
  wire mem_wb0_n_131;
  wire mem_wb0_n_132;
  wire mem_wb0_n_133;
  wire mem_wb0_n_134;
  wire mem_wb0_n_135;
  wire mem_wb0_n_136;
  wire mem_wb0_n_137;
  wire mem_wb0_n_138;
  wire mem_wb0_n_139;
  wire mem_wb0_n_140;
  wire mem_wb0_n_141;
  wire mem_wb0_n_142;
  wire mem_wb0_n_143;
  wire mem_wb0_n_144;
  wire mem_wb0_n_145;
  wire mem_wb0_n_146;
  wire mem_wb0_n_147;
  wire mem_wb0_n_148;
  wire mem_wb0_n_149;
  wire mem_wb0_n_150;
  wire mem_wb0_n_151;
  wire mem_wb0_n_152;
  wire mem_wb0_n_153;
  wire mem_wb0_n_154;
  wire mem_wb0_n_155;
  wire mem_wb0_n_156;
  wire mem_wb0_n_157;
  wire mem_wb0_n_158;
  wire mem_wb0_n_159;
  wire mem_wb0_n_160;
  wire mem_wb0_n_161;
  wire mem_wb0_n_162;
  wire mem_wb0_n_163;
  wire mem_wb0_n_164;
  wire mem_wb0_n_165;
  wire mem_wb0_n_166;
  wire mem_wb0_n_167;
  wire mem_wb0_n_168;
  wire mem_wb0_n_169;
  wire mem_wb0_n_38;
  wire mem_wb0_n_39;
  wire mem_wb0_n_40;
  wire mem_wb0_n_41;
  wire mem_wb0_n_42;
  wire mem_wb0_n_5;
  wire mem_wb0_n_75;
  wire mem_wb0_n_76;
  wire mem_wb0_n_77;
  wire mem_wb0_n_78;
  wire mem_wb0_n_79;
  wire mem_wb0_n_80;
  wire mem_wb0_n_81;
  wire mem_wb0_n_82;
  wire [4:0]mem_wd_i;
  wire [31:0]mem_wdata_i;
  wire [31:31]mem_wdata_o;
  wire mem_whilo_i;
  wire mem_whilo_o;
  wire mem_wreg_i;
  wire [31:1]mul_op1;
  wire [31:1]mul_op2;
  wire n_0_468_BUFG_inst_n_1;
  wire n_1_934_BUFG_inst_n_2;
  wire n_2_498_BUFG_inst_n_3;
  wire n_3_499_BUFG_inst_n_4;
  wire [6:5]new_pc;
  wire [31:18]next_pc_i;
  wire ovassert0;
  wire p_0_in;
  wire [1:1]p_0_out;
  wire [7:0]p_1_in;
  wire [6:5]p_2_in;
  wire [31:1]pc0;
  wire pc_rom0_n_10;
  wire pc_rom0_n_11;
  wire pc_rom0_n_12;
  wire pc_rom0_n_13;
  wire pc_rom0_n_14;
  wire pc_rom0_n_15;
  wire pc_rom0_n_16;
  wire pc_rom0_n_18;
  wire pc_rom0_n_19;
  wire pc_rom0_n_25;
  wire pc_rom0_n_26;
  wire pc_rom0_n_27;
  wire pc_rom0_n_29;
  wire pc_rom0_n_32;
  wire pc_rom0_n_33;
  wire pc_rom0_n_34;
  wire pc_rom0_n_35;
  wire pc_rom0_n_36;
  wire pc_rom0_n_37;
  wire pc_rom0_n_38;
  wire pc_rom0_n_39;
  wire pc_rom0_n_4;
  wire pc_rom0_n_40;
  wire pc_rom0_n_41;
  wire pc_rom0_n_42;
  wire pc_rom0_n_43;
  wire pc_rom0_n_44;
  wire pc_rom0_n_45;
  wire pc_rom0_n_46;
  wire pc_rom0_n_47;
  wire pc_rom0_n_48;
  wire pc_rom0_n_49;
  wire pc_rom0_n_5;
  wire pc_rom0_n_50;
  wire pc_rom0_n_51;
  wire pc_rom0_n_52;
  wire pc_rom0_n_53;
  wire pc_rom0_n_54;
  wire pc_rom0_n_55;
  wire pc_rom0_n_56;
  wire pc_rom0_n_57;
  wire pc_rom0_n_58;
  wire pc_rom0_n_59;
  wire pc_rom0_n_6;
  wire pc_rom0_n_64;
  wire pc_rom0_n_65;
  wire pc_rom0_n_7;
  wire pc_rom0_n_8;
  wire pc_rom0_n_9;
  wire [31:0]rdata10;
  wire [31:0]rdata20;
  wire [2:0]reg1_addr;
  wire [31:0]reg1_data;
  wire reg1_read;
  wire [2:0]reg2_addr;
  wire [12:0]reg2_data;
  wire reg2_read;
  wire regfile0_n_37;
  wire regfile0_n_4;
  wire rst;
  wire rst_IBUF;
  wire stalleq_from_ex;
  wire [1:0]state;
  wire [31:0]wb_cp0_reg_data_i;
  wire [2:0]wb_cp0_reg_write_addr_i;
  wire [31:0]wb_hi_i;
  wire [31:0]wb_lo_i;
  wire [4:0]wb_wd_i;
  wire [31:0]wb_wdata_i;
  wire wb_whilo_i;

  ctrl ctrl0
       (.D(ex_mem0_n_60),
        .E(ex_mem0_n_129),
        .Q(new_pc),
        .rst(rst));
  div div0
       (.CLK(CLK),
        .D(divider),
        .Q({div_opdata1[31],div_opdata1[0]}),
        .div_ready(div_ready),
        .div_signed(div_signed),
        .div_start(div_start),
        .\ex_reg2_reg[31] (div_opdata2),
        .\mem_hi_reg[31] (div_result),
        .\mem_lo_reg[0] (div0_n_6),
        .p_0_out(p_0_out),
        .\result_reg[10]_0 (div0_n_15),
        .\result_reg[11]_0 (div0_n_16),
        .\result_reg[12]_0 (div0_n_17),
        .\result_reg[13]_0 (div0_n_18),
        .\result_reg[14]_0 (div0_n_19),
        .\result_reg[15]_0 (div0_n_20),
        .\result_reg[16]_0 (div0_n_21),
        .\result_reg[17]_0 (div0_n_22),
        .\result_reg[18]_0 (div0_n_23),
        .\result_reg[19]_0 (div0_n_24),
        .\result_reg[20]_0 (div0_n_25),
        .\result_reg[21]_0 (div0_n_26),
        .\result_reg[22]_0 (div0_n_27),
        .\result_reg[23]_0 (div0_n_28),
        .\result_reg[24]_0 (div0_n_29),
        .\result_reg[25]_0 (div0_n_30),
        .\result_reg[26]_0 (div0_n_31),
        .\result_reg[27]_0 (div0_n_32),
        .\result_reg[28]_0 (div0_n_33),
        .\result_reg[29]_0 (div0_n_34),
        .\result_reg[2]_0 (div0_n_7),
        .\result_reg[30]_0 (div0_n_35),
        .\result_reg[31]_0 (div0_n_36),
        .\result_reg[31]_1 ({ex0_n_117,ex0_n_118,ex0_n_119,ex0_n_120,ex0_n_121,ex0_n_122,ex0_n_123,ex0_n_124,ex0_n_125,ex0_n_126,ex0_n_127,ex0_n_128,ex0_n_129,ex0_n_130,ex0_n_131,ex0_n_132,ex0_n_133,ex0_n_134,ex0_n_135,ex0_n_136,ex0_n_137,ex0_n_138,ex0_n_139,ex0_n_140,ex0_n_141,ex0_n_142,ex0_n_143,ex0_n_144,ex0_n_145,ex0_n_146}),
        .\result_reg[33]_0 (div0_n_5),
        .\result_reg[3]_0 (div0_n_8),
        .\result_reg[4]_0 (div0_n_9),
        .\result_reg[5]_0 (div0_n_10),
        .\result_reg[6]_0 (div0_n_11),
        .\result_reg[7]_0 (div0_n_12),
        .\result_reg[8]_0 (div0_n_13),
        .\result_reg[9]_0 (div0_n_14),
        .rst(rst),
        .rst_IBUF(rst_IBUF),
        .state(state),
        .\state_reg[0]_0 (ex0_n_49),
        .\state_reg[1]_0 (ex0_n_15),
        .\state_reg[1]_1 (ex0_n_148),
        .\state_reg[1]_2 (ex0_n_147),
        .\state_reg[1]_3 (ex0_n_12));
  ex ex0
       (.D(divider),
        .E(E),
        .O(ex0_n_115),
        .P({p_1_in[7],p_1_in[2],p_1_in[0]}),
        .Q(ex_reg2_i),
        .div_signed(div_signed),
        .div_start(div_start),
        .\divider_reg[1] (div_opdata2),
        .\ex_aluop_reg[1] (id_ex0_n_246),
        .\ex_aluop_reg[1]_0 (id_ex0_n_245),
        .\ex_aluop_reg[1]_1 (\ex_aluop_reg[1]_0 ),
        .\ex_aluop_reg[1]_2 (id_ex0_n_7),
        .\ex_aluop_reg[1]_3 (\ex_aluop_reg[1] ),
        .\ex_aluop_reg[2] (id_ex0_n_250),
        .\ex_aluop_reg[5] (id_ex0_n_251),
        .\ex_aluop_reg[5]_0 (id_ex0_n_247),
        .\ex_aluop_reg[5]_1 (\ex_aluop_reg[5] ),
        .\ex_alusel_reg[2] ({id_ex0_n_210,id_ex0_n_211,id_ex0_n_212,id_ex0_n_213,id_ex0_n_214,id_ex0_n_215,id_ex0_n_216,id_ex0_n_217,id_ex0_n_218,id_ex0_n_219,id_ex0_n_220,id_ex0_n_221,id_ex0_n_222,id_ex0_n_223,id_ex0_n_224,id_ex0_n_225,id_ex0_n_226,id_ex0_n_227,id_ex0_n_228,id_ex0_n_229,id_ex0_n_230,id_ex0_n_231,id_ex0_n_232,id_ex0_n_233,id_ex0_n_234,id_ex0_n_235,id_ex0_n_236,id_ex0_n_237,id_ex0_n_238,id_ex0_n_239,id_ex0_n_240,id_ex0_n_241}),
        .ex_excepttype_o(ex_excepttype_o[11]),
        .\ex_inst_reg[13] (ex_inst_i),
        .\ex_reg1_reg[31] (ex_reg1_i),
        .\ex_reg1_reg[31]_0 ({id_ex0_n_146,id_ex0_n_147,id_ex0_n_148,id_ex0_n_149,id_ex0_n_150,id_ex0_n_151,id_ex0_n_152,id_ex0_n_153,id_ex0_n_154,id_ex0_n_155,id_ex0_n_156,id_ex0_n_157,id_ex0_n_158,id_ex0_n_159,id_ex0_n_160,id_ex0_n_161,id_ex0_n_162,id_ex0_n_163,id_ex0_n_164,id_ex0_n_165,id_ex0_n_166,id_ex0_n_167,id_ex0_n_168,id_ex0_n_169,id_ex0_n_170,id_ex0_n_171,id_ex0_n_172,id_ex0_n_173,id_ex0_n_174,id_ex0_n_175,id_ex0_n_176,id_ex0_n_177}),
        .\ex_reg1_reg[31]_1 ({id_ex0_n_178,id_ex0_n_179,id_ex0_n_180,id_ex0_n_181,id_ex0_n_182,id_ex0_n_183,id_ex0_n_184,id_ex0_n_185,id_ex0_n_186,id_ex0_n_187,id_ex0_n_188,id_ex0_n_189,id_ex0_n_190,id_ex0_n_191,id_ex0_n_192,id_ex0_n_193,id_ex0_n_194,id_ex0_n_195,id_ex0_n_196,id_ex0_n_197,id_ex0_n_198,id_ex0_n_199,id_ex0_n_200,id_ex0_n_201,id_ex0_n_202,id_ex0_n_203,id_ex0_n_204,id_ex0_n_205,id_ex0_n_206,id_ex0_n_207,id_ex0_n_208,id_ex0_n_209}),
        .\ex_reg2_reg[31] (id_ex0_n_252),
        .ex_whilo_o(ex_whilo_o),
        .\mem_hi_reg[0] (ex0_n_68),
        .\mem_hi_reg[10] (ex0_n_78),
        .\mem_hi_reg[11] (ex0_n_79),
        .\mem_hi_reg[12] (ex0_n_80),
        .\mem_hi_reg[13] (ex0_n_81),
        .\mem_hi_reg[14] (ex0_n_82),
        .\mem_hi_reg[15] (ex0_n_83),
        .\mem_hi_reg[16] (ex0_n_84),
        .\mem_hi_reg[17] (ex0_n_85),
        .\mem_hi_reg[18] (ex0_n_86),
        .\mem_hi_reg[19] (ex0_n_87),
        .\mem_hi_reg[1] (ex0_n_69),
        .\mem_hi_reg[20] (ex0_n_88),
        .\mem_hi_reg[21] (ex0_n_89),
        .\mem_hi_reg[22] (ex0_n_90),
        .\mem_hi_reg[23] (ex0_n_91),
        .\mem_hi_reg[24] (ex0_n_92),
        .\mem_hi_reg[25] (ex0_n_93),
        .\mem_hi_reg[26] (ex0_n_94),
        .\mem_hi_reg[27] (ex0_n_95),
        .\mem_hi_reg[28] (ex0_n_96),
        .\mem_hi_reg[29] (ex0_n_97),
        .\mem_hi_reg[2] (ex0_n_70),
        .\mem_hi_reg[30] (ex0_n_98),
        .\mem_hi_reg[31] (ex0_n_99),
        .\mem_hi_reg[31]_0 (ex_hi_o),
        .\mem_hi_reg[3] (ex0_n_71),
        .\mem_hi_reg[4] (ex0_n_72),
        .\mem_hi_reg[5] (ex0_n_73),
        .\mem_hi_reg[6] (ex0_n_74),
        .\mem_hi_reg[7] (ex0_n_75),
        .\mem_hi_reg[8] (ex0_n_76),
        .\mem_hi_reg[9] (ex0_n_77),
        .\mem_lo_reg[10] (ex0_n_101),
        .\mem_lo_reg[11] (ex0_n_56),
        .\mem_lo_reg[12] (ex0_n_102),
        .\mem_lo_reg[13] (ex0_n_57),
        .\mem_lo_reg[14] (ex0_n_58),
        .\mem_lo_reg[15] (ex0_n_59),
        .\mem_lo_reg[16] (ex0_n_60),
        .\mem_lo_reg[17] (ex0_n_61),
        .\mem_lo_reg[18] (ex0_n_103),
        .\mem_lo_reg[19] (ex0_n_62),
        .\mem_lo_reg[1] (ex0_n_50),
        .\mem_lo_reg[20] (ex0_n_63),
        .\mem_lo_reg[21] (ex0_n_104),
        .\mem_lo_reg[22] (ex0_n_64),
        .\mem_lo_reg[23] (ex0_n_105),
        .\mem_lo_reg[24] (ex0_n_106),
        .\mem_lo_reg[25] (ex0_n_65),
        .\mem_lo_reg[26] (ex0_n_66),
        .\mem_lo_reg[27] (ex0_n_67),
        .\mem_lo_reg[28] (ex0_n_107),
        .\mem_lo_reg[29] (ex0_n_108),
        .\mem_lo_reg[30] (ex0_n_109),
        .\mem_lo_reg[31] (ex0_n_110),
        .\mem_lo_reg[31]_0 (ex_lo_o),
        .\mem_lo_reg[3] (ex0_n_51),
        .\mem_lo_reg[4] (ex0_n_52),
        .\mem_lo_reg[5] (ex0_n_53),
        .\mem_lo_reg[6] (ex0_n_100),
        .\mem_lo_reg[7] (ex0_n_116),
        .\mem_lo_reg[8] (ex0_n_54),
        .\mem_lo_reg[9] (ex0_n_55),
        .\mem_wdata_reg[10] (ex0_n_111),
        .\mem_wdata_reg[10]_0 ({ex0_n_112,ex0_n_113,ex0_n_114}),
        .\mem_wdata_reg[31] (ex_wdata_o),
        .mul_op1(mul_op1),
        .mul_op2(mul_op2),
        .ovassert0(ovassert0),
        .p_0_in(p_0_in),
        .p_0_out(p_0_out),
        .ready_o_reg(div0_n_6),
        .\result_reg[10] (div0_n_15),
        .\result_reg[11] (div0_n_16),
        .\result_reg[12] (div0_n_17),
        .\result_reg[13] (div0_n_18),
        .\result_reg[14] (div0_n_19),
        .\result_reg[15] (div0_n_20),
        .\result_reg[16] (div0_n_21),
        .\result_reg[17] (div0_n_22),
        .\result_reg[18] (div0_n_23),
        .\result_reg[19] (div0_n_24),
        .\result_reg[1] (ex0_n_15),
        .\result_reg[20] (div0_n_25),
        .\result_reg[21] (div0_n_26),
        .\result_reg[22] (div0_n_27),
        .\result_reg[23] (div0_n_28),
        .\result_reg[24] (div0_n_29),
        .\result_reg[25] (div0_n_30),
        .\result_reg[26] (div0_n_31),
        .\result_reg[27] (div0_n_32),
        .\result_reg[28] (div0_n_33),
        .\result_reg[29] (div0_n_34),
        .\result_reg[2] (ex0_n_147),
        .\result_reg[2]_0 (ex0_n_148),
        .\result_reg[2]_1 (div0_n_7),
        .\result_reg[30] (div0_n_35),
        .\result_reg[31] ({div_opdata1[31],div_opdata1[0]}),
        .\result_reg[31]_0 ({ex0_n_117,ex0_n_118,ex0_n_119,ex0_n_120,ex0_n_121,ex0_n_122,ex0_n_123,ex0_n_124,ex0_n_125,ex0_n_126,ex0_n_127,ex0_n_128,ex0_n_129,ex0_n_130,ex0_n_131,ex0_n_132,ex0_n_133,ex0_n_134,ex0_n_135,ex0_n_136,ex0_n_137,ex0_n_138,ex0_n_139,ex0_n_140,ex0_n_141,ex0_n_142,ex0_n_143,ex0_n_144,ex0_n_145,ex0_n_146}),
        .\result_reg[31]_1 (div0_n_36),
        .\result_reg[32] (ex0_n_12),
        .\result_reg[3] (div0_n_8),
        .\result_reg[4] (div0_n_9),
        .\result_reg[5] (div0_n_10),
        .\result_reg[6] (div0_n_11),
        .\result_reg[7] (div0_n_12),
        .\result_reg[8] (div0_n_13),
        .\result_reg[9] (div0_n_14),
        .rst(rst),
        .rst_IBUF(rst_IBUF),
        .stalleq_from_ex(stalleq_from_ex),
        .state(state),
        .\state_reg[0] (ex0_n_49),
        .\state_reg[1] (div0_n_5),
        .wb_cp0_reg_write_addr_i(wb_cp0_reg_write_addr_i));
  ex_mem ex_mem0
       (.CLK(CLK),
        .D(ex_mem0_n_60),
        .E(ex_mem0_n_61),
        .Q(id_inst_i[23:21]),
        .\ex_alusel_reg[2] (ex_wdata_o),
        .ex_cp0_reg_we_o(ex_cp0_reg_we_o),
        .ex_cp0_reg_write_addr_o(ex_cp0_reg_write_addr_o),
        .\ex_current_inst_addr_reg[31] (ex_current_inst_addr_i),
        .ex_excepttype_o(ex_excepttype_o),
        .\ex_inst_reg[13] ({ex0_n_112,ex0_n_113,ex0_n_114}),
        .ex_link_addr_i(ex_link_addr_i),
        .\ex_reg1_reg[0] (id_ex0_n_72),
        .\ex_reg1_reg[10] (id_ex0_n_83),
        .\ex_reg1_reg[11] (id_ex0_n_84),
        .\ex_reg1_reg[12] (id_ex0_n_85),
        .\ex_reg1_reg[13] (id_ex0_n_86),
        .\ex_reg1_reg[14] (id_ex0_n_87),
        .\ex_reg1_reg[15] (id_ex0_n_88),
        .\ex_reg1_reg[16] (id_ex0_n_89),
        .\ex_reg1_reg[17] (id_ex0_n_90),
        .\ex_reg1_reg[18] (id_ex0_n_91),
        .\ex_reg1_reg[19] (id_ex0_n_92),
        .\ex_reg1_reg[1] (id_ex0_n_74),
        .\ex_reg1_reg[20] (id_ex0_n_93),
        .\ex_reg1_reg[21] (id_ex0_n_94),
        .\ex_reg1_reg[22] (id_ex0_n_95),
        .\ex_reg1_reg[23] (id_ex0_n_96),
        .\ex_reg1_reg[24] (id_ex0_n_97),
        .\ex_reg1_reg[25] (id_ex0_n_98),
        .\ex_reg1_reg[26] (id_ex0_n_99),
        .\ex_reg1_reg[27] (id_ex0_n_100),
        .\ex_reg1_reg[28] (id_ex0_n_101),
        .\ex_reg1_reg[29] (id_ex0_n_102),
        .\ex_reg1_reg[2] (id_ex0_n_75),
        .\ex_reg1_reg[30] (id_ex0_n_103),
        .\ex_reg1_reg[31] (ex_mem0_n_64),
        .\ex_reg1_reg[31]_0 (ex_hi_o),
        .\ex_reg1_reg[31]_1 (ex_lo_o),
        .\ex_reg1_reg[31]_2 (id_ex0_n_104),
        .\ex_reg1_reg[3] (id_ex0_n_76),
        .\ex_reg1_reg[4] (id_ex0_n_77),
        .\ex_reg1_reg[5] (id_ex0_n_78),
        .\ex_reg1_reg[6] (id_ex0_n_79),
        .\ex_reg1_reg[7] (id_ex0_n_80),
        .\ex_reg1_reg[8] (id_ex0_n_81),
        .\ex_reg1_reg[9] (id_ex0_n_82),
        .\ex_reg2_reg[0] (ex_mem0_n_59),
        .\ex_reg2_reg[10] (ex_mem0_n_50),
        .\ex_reg2_reg[11] (ex_mem0_n_56),
        .\ex_reg2_reg[12] (ex_mem0_n_55),
        .\ex_reg2_reg[14] (ex_mem0_n_49),
        .\ex_reg2_reg[16] (ex_mem0_n_48),
        .\ex_reg2_reg[18] (ex_mem0_n_47),
        .\ex_reg2_reg[19] (ex_mem0_n_46),
        .\ex_reg2_reg[1] (ex_mem0_n_58),
        .\ex_reg2_reg[20] (ex_mem0_n_45),
        .\ex_reg2_reg[25] (ex_mem0_n_44),
        .\ex_reg2_reg[26] (ex_mem0_n_43),
        .\ex_reg2_reg[28] (ex_mem0_n_42),
        .\ex_reg2_reg[2] (ex_mem0_n_9),
        .\ex_reg2_reg[30] (ex_mem0_n_8),
        .\ex_reg2_reg[4] (ex_mem0_n_54),
        .\ex_reg2_reg[5] (ex_mem0_n_53),
        .\ex_reg2_reg[6] (ex_mem0_n_52),
        .\ex_reg2_reg[8] (ex_mem0_n_57),
        .\ex_reg2_reg[9] (ex_mem0_n_51),
        .\ex_wd_reg[0] (id0_n_34),
        .\ex_wd_reg[4] ({ex_wd_i[4],ex_wd_i[2:0]}),
        .ex_whilo_o(ex_whilo_o),
        .ex_wreg_o(ex_wreg_o),
        .\id_inst_reg[18] (reg2_addr),
        .\id_pc_reg[31] (ex_mem0_n_63),
        .mem_cp0_reg_data_i(mem_cp0_reg_data_i),
        .mem_cp0_reg_data_o(mem_cp0_reg_data_o),
        .mem_cp0_reg_we_i(mem_cp0_reg_we_i),
        .mem_cp0_reg_write_addr_i(mem_cp0_reg_write_addr_i),
        .mem_wd_i({mem_wd_i[4],mem_wd_i[2:0]}),
        .mem_wdata_i(mem_wdata_i),
        .mem_wdata_o(mem_wdata_o),
        .\mem_wdata_reg[0]_0 (ex_mem0_n_69),
        .\mem_wdata_reg[0]_1 (ex_mem0_n_102),
        .\mem_wdata_reg[11]_0 (ex_mem0_n_112),
        .\mem_wdata_reg[12]_0 (ex_mem0_n_113),
        .\mem_wdata_reg[13]_0 (ex_mem0_n_114),
        .\mem_wdata_reg[14]_0 (ex_mem0_n_115),
        .\mem_wdata_reg[15]_0 (ex_mem0_n_116),
        .\mem_wdata_reg[16]_0 (ex_mem0_n_117),
        .\mem_wdata_reg[17]_0 (ex_mem0_n_118),
        .\mem_wdata_reg[19]_0 (ex_mem0_n_119),
        .\mem_wdata_reg[1]_0 (ex_mem0_n_103),
        .\mem_wdata_reg[20]_0 (ex_mem0_n_120),
        .\mem_wdata_reg[22]_0 (ex_mem0_n_121),
        .\mem_wdata_reg[24]_0 (ex_mem0_n_122),
        .\mem_wdata_reg[25]_0 (ex_mem0_n_123),
        .\mem_wdata_reg[26]_0 (ex_mem0_n_124),
        .\mem_wdata_reg[2]_0 (ex_mem0_n_104),
        .\mem_wdata_reg[31]_0 (ex_mem0_n_125),
        .\mem_wdata_reg[3]_0 (ex_mem0_n_105),
        .\mem_wdata_reg[4]_0 (ex_mem0_n_106),
        .\mem_wdata_reg[5]_0 (ex_mem0_n_107),
        .\mem_wdata_reg[6]_0 (ex_mem0_n_108),
        .\mem_wdata_reg[7]_0 (ex_mem0_n_109),
        .\mem_wdata_reg[8]_0 (ex_mem0_n_110),
        .\mem_wdata_reg[9]_0 (ex_mem0_n_111),
        .mem_whilo_i(mem_whilo_i),
        .mem_whilo_o(mem_whilo_o),
        .mem_wreg_i(mem_wreg_i),
        .\pc_reg[0] (ex_mem0_n_62),
        .\pc_reg[5] (ex_mem0_n_129),
        .reg2_data({reg2_data[12:11],reg2_data[8],reg2_data[1:0]}),
        .rst_IBUF(rst_IBUF),
        .stalleq_from_ex(stalleq_from_ex),
        .wb_cp0_reg_data_i({wb_cp0_reg_data_i[31],wb_cp0_reg_data_i[26:24],wb_cp0_reg_data_i[22],wb_cp0_reg_data_i[20:19],wb_cp0_reg_data_i[17:11],wb_cp0_reg_data_i[9:0]}),
        .wb_cp0_reg_we_reg(ex_mem0_n_4),
        .wb_cp0_reg_we_reg_0(ex_mem0_n_130),
        .wb_cp0_reg_we_reg_1(mem_wb0_n_38),
        .\wb_hi_reg[31] (mem_hi_i),
        .\wb_lo_reg[31] (mem_lo_i));
  hilo hilo0
       (.CLK(CLK),
        .Q(hi_o),
        .\mem_wdata_reg[31] (lo_o),
        .rst(rst),
        .\wb_hi_reg[31] (wb_hi_i),
        .\wb_lo_reg[31] (wb_lo_i),
        .wb_whilo_i(wb_whilo_i));
  id id0
       (.D({id_reg2_o[31:13],id_reg2_o[10:9],id_reg2_o[7:2]}),
        .E(if_id0_n_148),
        .Q(ex_wd_i[2:0]),
        .\ex_aluop_reg[6] (id_aluop_o),
        .\ex_alusel_reg[2] (id_alusel_o),
        .\ex_alusel_reg[2]_0 ({ex_wdata_o[31],ex_wdata_o[29],ex_wdata_o[27],ex_wdata_o[24:21],ex_wdata_o[17],ex_wdata_o[15],ex_wdata_o[13],ex_wdata_o[7],ex_wdata_o[3:2]}),
        .\ex_reg2_reg[12] ({reg2_data[12:11],reg2_data[8],reg2_data[1:0]}),
        .\ex_reg2_reg[2] (id0_n_34),
        .\ex_reg2_reg[2]_0 (reg2_addr),
        .\ex_reg2_reg[4] (id0_n_43),
        .\ex_reg2_reg[4]_0 (id0_n_44),
        .ex_wreg_reg(id_ex0_n_145),
        .\id_inst_reg[0] (if_id0_n_147),
        .\id_inst_reg[0]_0 (if_id0_n_47),
        .\id_inst_reg[17] (if_id0_n_146),
        .\id_inst_reg[18] (if_id0_n_136),
        .\id_inst_reg[18]_0 (if_id0_n_129),
        .\id_inst_reg[18]_1 (if_id0_n_131),
        .\id_inst_reg[18]_2 (if_id0_n_132),
        .\id_inst_reg[18]_3 (if_id0_n_133),
        .\id_inst_reg[18]_4 (if_id0_n_134),
        .\id_inst_reg[18]_5 (if_id0_n_128),
        .\id_inst_reg[18]_6 (if_id0_n_130),
        .\id_inst_reg[18]_7 (if_id0_n_135),
        .\id_inst_reg[18]_8 (id_inst_i[18:16]),
        .\id_inst_reg[26] ({if_id0_n_143,if_id0_n_144,if_id0_n_145}),
        .\id_inst_reg[28] (if_id0_n_142),
        .\id_inst_reg[28]_0 (if_id0_n_120),
        .\id_inst_reg[28]_1 (if_id0_n_140),
        .\id_inst_reg[28]_2 (if_id0_n_127),
        .\id_inst_reg[28]_3 ({if_id0_n_48,if_id0_n_49,if_id0_n_50,if_id0_n_51,if_id0_n_52,if_id0_n_53,if_id0_n_54}),
        .\id_inst_reg[4] (if_id0_n_139),
        .\id_inst_reg[4]_0 (if_id0_n_138),
        .\id_inst_reg[5] (if_id0_n_137),
        .id_wreg_o(id_wreg_o),
        .\mem_wd_reg[1] (ex_mem0_n_9),
        .mem_wdata_i({mem_wdata_i[31],mem_wdata_i[29],mem_wdata_i[27],mem_wdata_i[24:21],mem_wdata_i[17],mem_wdata_i[15],mem_wdata_i[13],mem_wdata_i[7],mem_wdata_i[3:2]}),
        .\mem_wdata_reg[10] (ex_mem0_n_50),
        .\mem_wdata_reg[14] (ex_mem0_n_49),
        .\mem_wdata_reg[16] (ex_mem0_n_48),
        .\mem_wdata_reg[18] (ex_mem0_n_47),
        .\mem_wdata_reg[19] (ex_mem0_n_46),
        .\mem_wdata_reg[20] (ex_mem0_n_45),
        .\mem_wdata_reg[25] (ex_mem0_n_44),
        .\mem_wdata_reg[26] (ex_mem0_n_43),
        .\mem_wdata_reg[28] (ex_mem0_n_42),
        .\mem_wdata_reg[30] (ex_mem0_n_8),
        .\mem_wdata_reg[4] (ex_mem0_n_54),
        .\mem_wdata_reg[5] (ex_mem0_n_53),
        .\mem_wdata_reg[6] (ex_mem0_n_52),
        .\mem_wdata_reg[9] (ex_mem0_n_51),
        .p_0_in(p_0_in),
        .rdata20(rdata20),
        .reg1_read(reg1_read),
        .reg2_read(reg2_read),
        .rst(rst),
        .rst_IBUF(rst_IBUF),
        .\wb_wd_reg[4] (mem_wb0_n_11),
        .wb_wdata_i(wb_wdata_i));
  id_ex id_ex0
       (.CLK(CLK),
        .D({id_reg1_o[27],id_reg1_o[20],id_reg1_o[17:15],id_reg1_o[12:11],id_reg1_o[8],id_reg1_o[6],id_reg1_o[4],id_reg1_o[1:0]}),
        .E(ex_mem0_n_63),
        .O(ex0_n_115),
        .P({p_1_in[7],p_1_in[2],p_1_in[0]}),
        .Q(id_pc_i),
        .div_ready(div_ready),
        .\divider_reg[1] (id_ex0_n_245),
        .\ex_alusel_reg[2]_0 ({ex_wdata_o[31:6],ex_wdata_o[4:0]}),
        .ex_cp0_reg_we_o(ex_cp0_reg_we_o),
        .ex_cp0_reg_write_addr_o(ex_cp0_reg_write_addr_o),
        .ex_excepttype_o(ex_excepttype_o[10]),
        .\ex_reg1_reg[0]_0 (id_ex0_n_121),
        .\ex_reg1_reg[10]_0 (id_ex0_n_126),
        .\ex_reg1_reg[13]_0 (id_ex0_n_127),
        .\ex_reg1_reg[14]_0 (id_ex0_n_128),
        .\ex_reg1_reg[18]_0 (id_ex0_n_129),
        .\ex_reg1_reg[19]_0 (id_ex0_n_130),
        .\ex_reg1_reg[21]_0 (id_ex0_n_131),
        .\ex_reg1_reg[22]_0 (id_ex0_n_132),
        .\ex_reg1_reg[23]_0 (id_ex0_n_133),
        .\ex_reg1_reg[23]_1 (mem_wb0_n_12),
        .\ex_reg1_reg[24]_0 (id_ex0_n_107),
        .\ex_reg1_reg[25]_0 (id_ex0_n_134),
        .\ex_reg1_reg[26]_0 (id_ex0_n_135),
        .\ex_reg1_reg[28]_0 (id_ex0_n_136),
        .\ex_reg1_reg[29]_0 (id_ex0_n_106),
        .\ex_reg1_reg[2]_0 (id_ex0_n_122),
        .\ex_reg1_reg[30]_0 (id_ex0_n_105),
        .\ex_reg1_reg[3]_0 (id_ex0_n_108),
        .\ex_reg1_reg[5]_0 (id_ex0_n_139),
        .\ex_reg1_reg[6]_0 (id_ex0_n_123),
        .\ex_reg1_reg[7]_0 (id_ex0_n_124),
        .\ex_reg1_reg[9]_0 (id_ex0_n_125),
        .\ex_reg2_reg[2]_0 (id_ex0_n_145),
        .ex_wreg_o(ex_wreg_o),
        .\id_inst_reg[12] ({if_id0_n_69,id_reg1_o[26],if_id0_n_71,if_id0_n_72,id_reg1_o[22:21],if_id0_n_75,if_id0_n_76,if_id0_n_77,if_id0_n_78,if_id0_n_79,if_id0_n_80,if_id0_n_81,id_reg1_o[5],if_id0_n_83}),
        .\id_inst_reg[17] ({if_id0_n_84,id_wd_o[2],if_id0_n_86,id_wd_o[0]}),
        .\id_inst_reg[18] (if_id0_n_136),
        .\id_inst_reg[18]_0 (if_id0_n_141),
        .\id_inst_reg[18]_1 (if_id0_n_128),
        .\id_inst_reg[18]_2 (if_id0_n_129),
        .\id_inst_reg[18]_3 (if_id0_n_132),
        .\id_inst_reg[18]_4 (if_id0_n_133),
        .\id_inst_reg[18]_5 (if_id0_n_134),
        .\id_inst_reg[21] (if_id0_n_123),
        .\id_inst_reg[22] ({id_inst_i[22],id_inst_i[18],id_inst_i[12:11],id_inst_i[8],id_inst_i[1:0]}),
        .\id_inst_reg[26] (id_alusel_o),
        .\id_inst_reg[28] (if_id0_n_122),
        .\id_inst_reg[28]_0 (if_id0_n_121),
        .\id_inst_reg[28]_1 (id_aluop_o),
        .\id_inst_reg[4] (if_id0_n_138),
        .\id_inst_reg[4]_0 (if_id0_n_139),
        .\id_pc_reg[31] (link_addr_o0),
        .id_wreg_o(id_wreg_o),
        .\lo_o_reg[27] (mem_wb0_n_42),
        .\lo_o_reg[28] (mem_wb0_n_76),
        .\lo_o_reg[29] (mem_wb0_n_78),
        .\lo_o_reg[30] (mem_wb0_n_80),
        .\mem_cp0_reg_data_reg[0] (id_ex0_n_72),
        .\mem_cp0_reg_data_reg[0]_0 (ex_mem0_n_69),
        .\mem_cp0_reg_data_reg[10] (id_ex0_n_83),
        .\mem_cp0_reg_data_reg[11] (id_ex0_n_84),
        .\mem_cp0_reg_data_reg[11]_0 (ex_mem0_n_112),
        .\mem_cp0_reg_data_reg[12] (id_ex0_n_85),
        .\mem_cp0_reg_data_reg[12]_0 (ex_mem0_n_113),
        .\mem_cp0_reg_data_reg[13] (id_ex0_n_86),
        .\mem_cp0_reg_data_reg[13]_0 (ex_mem0_n_114),
        .\mem_cp0_reg_data_reg[14] (id_ex0_n_87),
        .\mem_cp0_reg_data_reg[14]_0 (ex_mem0_n_115),
        .\mem_cp0_reg_data_reg[15] (id_ex0_n_88),
        .\mem_cp0_reg_data_reg[15]_0 (ex_mem0_n_116),
        .\mem_cp0_reg_data_reg[16] (id_ex0_n_89),
        .\mem_cp0_reg_data_reg[16]_0 (ex_mem0_n_117),
        .\mem_cp0_reg_data_reg[17] (id_ex0_n_90),
        .\mem_cp0_reg_data_reg[17]_0 (ex_mem0_n_118),
        .\mem_cp0_reg_data_reg[18] (id_ex0_n_91),
        .\mem_cp0_reg_data_reg[19] (id_ex0_n_92),
        .\mem_cp0_reg_data_reg[19]_0 (ex_mem0_n_119),
        .\mem_cp0_reg_data_reg[1] (id_ex0_n_74),
        .\mem_cp0_reg_data_reg[1]_0 (ex_mem0_n_103),
        .\mem_cp0_reg_data_reg[20] (id_ex0_n_93),
        .\mem_cp0_reg_data_reg[20]_0 (ex_mem0_n_120),
        .\mem_cp0_reg_data_reg[21] (id_ex0_n_94),
        .\mem_cp0_reg_data_reg[22] (id_ex0_n_95),
        .\mem_cp0_reg_data_reg[22]_0 (ex_mem0_n_121),
        .\mem_cp0_reg_data_reg[23] (id_ex0_n_96),
        .\mem_cp0_reg_data_reg[24] (id_ex0_n_97),
        .\mem_cp0_reg_data_reg[24]_0 (ex_mem0_n_122),
        .\mem_cp0_reg_data_reg[25] (id_ex0_n_98),
        .\mem_cp0_reg_data_reg[25]_0 (ex_mem0_n_123),
        .\mem_cp0_reg_data_reg[26] (id_ex0_n_99),
        .\mem_cp0_reg_data_reg[26]_0 (ex_mem0_n_124),
        .\mem_cp0_reg_data_reg[27] (id_ex0_n_100),
        .\mem_cp0_reg_data_reg[28] (id_ex0_n_101),
        .\mem_cp0_reg_data_reg[29] (id_ex0_n_102),
        .\mem_cp0_reg_data_reg[2] (id_ex0_n_75),
        .\mem_cp0_reg_data_reg[2]_0 (ex_mem0_n_104),
        .\mem_cp0_reg_data_reg[30] (id_ex0_n_103),
        .\mem_cp0_reg_data_reg[31] (id_ex0_n_104),
        .\mem_cp0_reg_data_reg[31]_0 (ex_mem0_n_125),
        .\mem_cp0_reg_data_reg[3] (id_ex0_n_76),
        .\mem_cp0_reg_data_reg[3]_0 (ex_mem0_n_105),
        .\mem_cp0_reg_data_reg[4] (id_ex0_n_77),
        .\mem_cp0_reg_data_reg[4]_0 (ex_mem0_n_106),
        .\mem_cp0_reg_data_reg[5] (id_ex0_n_78),
        .\mem_cp0_reg_data_reg[5]_0 (ex_mem0_n_107),
        .\mem_cp0_reg_data_reg[6] (id_ex0_n_79),
        .\mem_cp0_reg_data_reg[6]_0 (ex_mem0_n_108),
        .\mem_cp0_reg_data_reg[7] (id_ex0_n_80),
        .\mem_cp0_reg_data_reg[7]_0 (ex_mem0_n_109),
        .\mem_cp0_reg_data_reg[8] (id_ex0_n_81),
        .\mem_cp0_reg_data_reg[8]_0 (ex_mem0_n_110),
        .\mem_cp0_reg_data_reg[9] (id_ex0_n_82),
        .\mem_cp0_reg_data_reg[9]_0 (ex_mem0_n_111),
        .\mem_cp0_reg_write_addr_reg[2] (ex_inst_i),
        .\mem_current_inst_addr_reg[1] (ex_link_addr_i),
        .\mem_current_inst_addr_reg[31] (ex_current_inst_addr_i),
        .\mem_excepttype_reg[11] (ex_mem0_n_130),
        .\mem_hi_reg[31] ({id_ex0_n_146,id_ex0_n_147,id_ex0_n_148,id_ex0_n_149,id_ex0_n_150,id_ex0_n_151,id_ex0_n_152,id_ex0_n_153,id_ex0_n_154,id_ex0_n_155,id_ex0_n_156,id_ex0_n_157,id_ex0_n_158,id_ex0_n_159,id_ex0_n_160,id_ex0_n_161,id_ex0_n_162,id_ex0_n_163,id_ex0_n_164,id_ex0_n_165,id_ex0_n_166,id_ex0_n_167,id_ex0_n_168,id_ex0_n_169,id_ex0_n_170,id_ex0_n_171,id_ex0_n_172,id_ex0_n_173,id_ex0_n_174,id_ex0_n_175,id_ex0_n_176,id_ex0_n_177}),
        .\mem_lo_reg[0] (id_ex0_n_247),
        .\mem_lo_reg[2] (id_ex0_n_252),
        .\mem_lo_reg[31] ({id_ex0_n_178,id_ex0_n_179,id_ex0_n_180,id_ex0_n_181,id_ex0_n_182,id_ex0_n_183,id_ex0_n_184,id_ex0_n_185,id_ex0_n_186,id_ex0_n_187,id_ex0_n_188,id_ex0_n_189,id_ex0_n_190,id_ex0_n_191,id_ex0_n_192,id_ex0_n_193,id_ex0_n_194,id_ex0_n_195,id_ex0_n_196,id_ex0_n_197,id_ex0_n_198,id_ex0_n_199,id_ex0_n_200,id_ex0_n_201,id_ex0_n_202,id_ex0_n_203,id_ex0_n_204,id_ex0_n_205,id_ex0_n_206,id_ex0_n_207,id_ex0_n_208,id_ex0_n_209}),
        .\mem_wd_reg[2] (ex_mem0_n_64),
        .\mem_wd_reg[4] ({ex_wd_i[4],ex_wd_i[2:0]}),
        .mem_wdata_i(mem_wdata_i),
        .mem_wdata_o(mem_wdata_o),
        .\mem_wdata_reg[0] (id_ex0_n_250),
        .\mem_wdata_reg[10] (id_ex0_n_242),
        .\mem_wdata_reg[30] (id_ex0_n_6),
        .\mem_wdata_reg[31] ({id_ex0_n_210,id_ex0_n_211,id_ex0_n_212,id_ex0_n_213,id_ex0_n_214,id_ex0_n_215,id_ex0_n_216,id_ex0_n_217,id_ex0_n_218,id_ex0_n_219,id_ex0_n_220,id_ex0_n_221,id_ex0_n_222,id_ex0_n_223,id_ex0_n_224,id_ex0_n_225,id_ex0_n_226,id_ex0_n_227,id_ex0_n_228,id_ex0_n_229,id_ex0_n_230,id_ex0_n_231,id_ex0_n_232,id_ex0_n_233,id_ex0_n_234,id_ex0_n_235,id_ex0_n_236,id_ex0_n_237,id_ex0_n_238,id_ex0_n_239,id_ex0_n_240,id_ex0_n_241}),
        .\mem_wdata_reg[31]_0 (id_reg2_o),
        .mem_whilo_reg(id_ex0_n_251),
        .mem_whilo_reg_0(mem_wb0_n_115),
        .mem_whilo_reg_1(mem_wb0_n_116),
        .mem_whilo_reg_10(mem_wb0_n_130),
        .mem_whilo_reg_11(mem_wb0_n_132),
        .mem_whilo_reg_12(mem_wb0_n_136),
        .mem_whilo_reg_13(mem_wb0_n_138),
        .mem_whilo_reg_14(mem_wb0_n_140),
        .mem_whilo_reg_15(mem_wb0_n_142),
        .mem_whilo_reg_16(mem_wb0_n_144),
        .mem_whilo_reg_17(mem_wb0_n_146),
        .mem_whilo_reg_18(mem_wb0_n_148),
        .mem_whilo_reg_19(mem_wb0_n_151),
        .mem_whilo_reg_2(mem_wb0_n_117),
        .mem_whilo_reg_20(mem_wb0_n_153),
        .mem_whilo_reg_21(mem_wb0_n_155),
        .mem_whilo_reg_22(mem_wb0_n_157),
        .mem_whilo_reg_23(mem_wb0_n_159),
        .mem_whilo_reg_24(mem_wb0_n_169),
        .mem_whilo_reg_25(mem_wb0_n_166),
        .mem_whilo_reg_26(mem_wb0_n_164),
        .mem_whilo_reg_27(mem_wb0_n_162),
        .mem_whilo_reg_28(mem_wb0_n_160),
        .mem_whilo_reg_29(mem_wb0_n_133),
        .mem_whilo_reg_3(mem_wb0_n_118),
        .mem_whilo_reg_30(mem_wb0_n_127),
        .mem_whilo_reg_4(mem_wb0_n_149),
        .mem_whilo_reg_5(mem_wb0_n_82),
        .mem_whilo_reg_6(mem_wb0_n_120),
        .mem_whilo_reg_7(mem_wb0_n_122),
        .mem_whilo_reg_8(mem_wb0_n_124),
        .mem_whilo_reg_9(mem_wb0_n_126),
        .mul_ans(ex_reg1_i),
        .mul_ans__0(id_ex0_n_7),
        .mul_ans__0_0(ex_reg2_i),
        .mul_ans__1(ex0_n_101),
        .mul_ans__1_0(ex0_n_50),
        .mul_ans__1_1(ex0_n_51),
        .mul_ans__1_10(ex0_n_58),
        .mul_ans__1_11(ex0_n_59),
        .mul_ans__1_12(ex0_n_116),
        .mul_ans__1_2(ex0_n_52),
        .mul_ans__1_3(ex0_n_53),
        .mul_ans__1_4(ex0_n_100),
        .mul_ans__1_5(ex0_n_54),
        .mul_ans__1_6(ex0_n_55),
        .mul_ans__1_7(ex0_n_56),
        .mul_ans__1_8(ex0_n_102),
        .mul_ans__1_9(ex0_n_57),
        .mul_ans__2(ex0_n_68),
        .mul_ans__2_0(ex0_n_69),
        .mul_ans__2_1(ex0_n_70),
        .mul_ans__2_10(ex0_n_79),
        .mul_ans__2_11(ex0_n_80),
        .mul_ans__2_12(ex0_n_81),
        .mul_ans__2_13(ex0_n_82),
        .mul_ans__2_14(ex0_n_83),
        .mul_ans__2_15(ex0_n_84),
        .mul_ans__2_16(ex0_n_60),
        .mul_ans__2_17(ex0_n_85),
        .mul_ans__2_18(ex0_n_61),
        .mul_ans__2_19(ex0_n_86),
        .mul_ans__2_2(ex0_n_71),
        .mul_ans__2_20(ex0_n_103),
        .mul_ans__2_21(ex0_n_87),
        .mul_ans__2_22(ex0_n_62),
        .mul_ans__2_23(ex0_n_88),
        .mul_ans__2_24(ex0_n_63),
        .mul_ans__2_25(ex0_n_89),
        .mul_ans__2_26(ex0_n_104),
        .mul_ans__2_27(ex0_n_90),
        .mul_ans__2_28(ex0_n_64),
        .mul_ans__2_29(ex0_n_91),
        .mul_ans__2_3(ex0_n_72),
        .mul_ans__2_30(ex0_n_105),
        .mul_ans__2_31(ex0_n_92),
        .mul_ans__2_32(ex0_n_106),
        .mul_ans__2_33(ex0_n_93),
        .mul_ans__2_34(ex0_n_65),
        .mul_ans__2_35(ex0_n_94),
        .mul_ans__2_36(ex0_n_66),
        .mul_ans__2_37(ex0_n_95),
        .mul_ans__2_38(ex0_n_67),
        .mul_ans__2_39(ex0_n_96),
        .mul_ans__2_4(ex0_n_73),
        .mul_ans__2_40(ex0_n_107),
        .mul_ans__2_41(ex0_n_97),
        .mul_ans__2_42(ex0_n_108),
        .mul_ans__2_43(ex0_n_98),
        .mul_ans__2_44(ex0_n_109),
        .mul_ans__2_45(ex0_n_99),
        .mul_ans__2_46(ex0_n_110),
        .mul_ans__2_5(ex0_n_74),
        .mul_ans__2_6(ex0_n_75),
        .mul_ans__2_7(ex0_n_76),
        .mul_ans__2_8(ex0_n_77),
        .mul_ans__2_9(ex0_n_78),
        .mul_op1(mul_op1),
        .mul_op2(mul_op2),
        .n_0_468_BUFG_inst_n_1(n_0_468_BUFG_inst_n_1),
        .n_1_934_BUFG_inst_n_2(n_1_934_BUFG_inst_n_2),
        .n_2_498_BUFG_inst_n_3(n_2_498_BUFG_inst_n_3),
        .n_3_499_BUFG_inst_n_4(n_3_499_BUFG_inst_n_4),
        .ovassert0(ovassert0),
        .\pc_reg[31] (id_ex0_n_137),
        .\pc_reg[31]_0 (id_ex0_n_138),
        .reg1_data({reg1_data[31:29],reg1_data[27],reg1_data[24],reg1_data[20],reg1_data[17:15],reg1_data[12:11],reg1_data[8],reg1_data[6:3],reg1_data[1:0]}),
        .reg1_read(reg1_read),
        .\result_o_reg[63] (div_result),
        .rst_IBUF(rst_IBUF),
        .\state_reg[0] (id_ex0_n_246),
        .\wb_cp0_reg_data_reg[10] (mem_wb0_n_13),
        .\wb_cp0_reg_data_reg[18] (mem_wb0_n_39),
        .\wb_cp0_reg_data_reg[21] (mem_wb0_n_40),
        .\wb_cp0_reg_data_reg[27] (mem_wb0_n_41),
        .\wb_cp0_reg_data_reg[28] (mem_wb0_n_75),
        .\wb_cp0_reg_data_reg[29] (mem_wb0_n_77),
        .\wb_cp0_reg_data_reg[30] (mem_wb0_n_79),
        .\wb_lo_reg[0] (mem_wb0_n_168),
        .\wb_lo_reg[11] (mem_wb0_n_147),
        .\wb_lo_reg[12] (mem_wb0_n_145),
        .\wb_lo_reg[13] (mem_wb0_n_143),
        .\wb_lo_reg[14] (mem_wb0_n_141),
        .\wb_lo_reg[15] (mem_wb0_n_139),
        .\wb_lo_reg[16] (mem_wb0_n_137),
        .\wb_lo_reg[17] (mem_wb0_n_135),
        .\wb_lo_reg[18] (mem_wb0_n_134),
        .\wb_lo_reg[19] (mem_wb0_n_131),
        .\wb_lo_reg[1] (mem_wb0_n_167),
        .\wb_lo_reg[20] (mem_wb0_n_129),
        .\wb_lo_reg[21] (mem_wb0_n_128),
        .\wb_lo_reg[22] (mem_wb0_n_125),
        .\wb_lo_reg[24] (mem_wb0_n_123),
        .\wb_lo_reg[25] (mem_wb0_n_121),
        .\wb_lo_reg[26] (mem_wb0_n_119),
        .\wb_lo_reg[2] (mem_wb0_n_165),
        .\wb_lo_reg[31] (mem_wb0_n_81),
        .\wb_lo_reg[3] (mem_wb0_n_163),
        .\wb_lo_reg[4] (mem_wb0_n_161),
        .\wb_lo_reg[5] (mem_wb0_n_158),
        .\wb_lo_reg[6] (mem_wb0_n_156),
        .\wb_lo_reg[7] (mem_wb0_n_154),
        .\wb_lo_reg[8] (mem_wb0_n_152),
        .\wb_lo_reg[9] (mem_wb0_n_150));
  if_id if_id0
       (.ADDRA(reg1_addr),
        .CLK(CLK),
        .D({if_id0_n_4,if_id0_n_5,if_id0_n_6,if_id0_n_7,if_id0_n_8,if_id0_n_9,if_id0_n_10,if_id0_n_11,if_id0_n_12,if_id0_n_13,if_id0_n_14,if_id0_n_15,if_id0_n_16,if_id0_n_17,if_id0_n_18,if_id0_n_19,if_id0_n_20,if_id0_n_21,if_id0_n_22,if_id0_n_23,if_id0_n_24,if_id0_n_25,if_id0_n_26,if_id0_n_27,if_id0_n_28,p_2_in,if_id0_n_31,if_id0_n_32,if_id0_n_33,if_id0_n_34,if_id0_n_35}),
        .E(if_id0_n_148),
        .Q({pc_rom0_n_34,pc_rom0_n_35,pc_rom0_n_36,pc_rom0_n_37,pc_rom0_n_38,pc_rom0_n_39,pc_rom0_n_40,pc_rom0_n_41,pc_rom0_n_42,pc_rom0_n_43,pc_rom0_n_44,pc_rom0_n_45,pc_rom0_n_46,pc_rom0_n_47,pc_rom0_n_48,pc_rom0_n_49,pc_rom0_n_50,pc_rom0_n_51,pc_rom0_n_52,pc_rom0_n_53,pc_rom0_n_54,pc_rom0_n_55,pc_rom0_n_56,pc_rom0_n_57,pc_rom0_n_58,pc_rom0_n_59,inst_addr,pc_rom0_n_64,pc_rom0_n_65}),
        .S({pc_rom0_n_4,pc_rom0_n_5}),
        .\ex_aluop_reg[0] (if_id0_n_146),
        .\ex_aluop_reg[6] ({if_id0_n_48,if_id0_n_49,if_id0_n_50,if_id0_n_51,if_id0_n_52,if_id0_n_53,if_id0_n_54}),
        .\ex_alusel_reg[2] (if_id0_n_47),
        .\ex_alusel_reg[2]_0 ({if_id0_n_143,if_id0_n_144,if_id0_n_145}),
        .\ex_alusel_reg[2]_1 (ex_wdata_o[5]),
        .\ex_current_inst_addr_reg[31] (id_pc_i),
        .\ex_link_addr_reg[31] (link_addr_o0),
        .\ex_reg1_reg[15] (if_id0_n_141),
        .\ex_reg1_reg[16] (if_id0_n_128),
        .\ex_reg1_reg[17] (if_id0_n_129),
        .\ex_reg1_reg[20] (if_id0_n_132),
        .\ex_reg1_reg[26] (if_id0_n_202),
        .\ex_reg1_reg[27] (if_id0_n_134),
        .\ex_reg1_reg[28] ({if_id0_n_69,id_reg1_o[26],if_id0_n_71,if_id0_n_72,id_reg1_o[22:21],if_id0_n_75,if_id0_n_76,if_id0_n_77,if_id0_n_78,if_id0_n_79,if_id0_n_80,if_id0_n_81,id_reg1_o[5],if_id0_n_83}),
        .\ex_reg1_reg[31] (if_id0_n_122),
        .\ex_reg1_reg[31]_0 (if_id0_n_123),
        .\ex_reg1_reg[4] (if_id0_n_138),
        .\ex_reg1_reg[5] (if_id0_n_121),
        .\ex_reg1_reg[5]_0 (if_id0_n_147),
        .\ex_reg1_reg[6] (if_id0_n_139),
        .\ex_reg2_reg[12] ({id_reg2_o[12:11],id_reg2_o[8],id_reg2_o[1:0]}),
        .\ex_reg2_reg[13] (if_id0_n_140),
        .\ex_reg2_reg[19] (if_id0_n_130),
        .\ex_reg2_reg[21] (if_id0_n_131),
        .\ex_reg2_reg[24] (if_id0_n_133),
        .\ex_reg2_reg[28] (if_id0_n_135),
        .\ex_reg2_reg[29] (if_id0_n_127),
        .\ex_reg2_reg[2] (if_id0_n_120),
        .\ex_reg2_reg[3] (if_id0_n_136),
        .\ex_reg2_reg[5] (if_id0_n_137),
        .\ex_wd_reg[2] ({ex_wd_i[2],ex_wd_i[0]}),
        .\ex_wd_reg[4] ({if_id0_n_84,id_wd_o[2],if_id0_n_86,id_wd_o[0]}),
        .ex_wreg_reg(if_id0_n_142),
        .ex_wreg_reg_0({id_reg1_o[27],id_reg1_o[20],id_reg1_o[17:15],id_reg1_o[12:11],id_reg1_o[8],id_reg1_o[6],id_reg1_o[4],id_reg1_o[1:0]}),
        .ex_wreg_reg_1(id_ex0_n_121),
        .\id_inst_reg[23]_0 (mem_wb0_n_10),
        .\id_pc_reg[24]_0 ({pc_rom0_n_6,pc_rom0_n_7,pc_rom0_n_8,pc_rom0_n_9}),
        .\id_pc_reg[28]_0 ({pc_rom0_n_10,pc_rom0_n_11,pc_rom0_n_12,pc_rom0_n_13}),
        .\id_pc_reg[31]_0 ({pc_rom0_n_14,pc_rom0_n_15,pc_rom0_n_16}),
        .\mem_excepttype_reg[11] (ex_mem0_n_4),
        .\mem_excepttype_reg[11]_0 (ex_mem0_n_130),
        .\mem_excepttype_reg[11]_1 (ex_mem0_n_63),
        .\mem_excepttype_reg[11]_2 (new_pc),
        .\mem_wd_reg[2] (id_ex0_n_123),
        .\mem_wdata_reg[0] (ex_mem0_n_59),
        .\mem_wdata_reg[10] (id_ex0_n_126),
        .\mem_wdata_reg[11] (ex_mem0_n_56),
        .\mem_wdata_reg[12] (ex_mem0_n_55),
        .\mem_wdata_reg[13] (id_ex0_n_127),
        .\mem_wdata_reg[14] (id_ex0_n_128),
        .\mem_wdata_reg[18] (id_ex0_n_129),
        .\mem_wdata_reg[19] (id_ex0_n_130),
        .\mem_wdata_reg[1] (ex_mem0_n_58),
        .\mem_wdata_reg[21] (id_ex0_n_131),
        .\mem_wdata_reg[22] (id_ex0_n_132),
        .\mem_wdata_reg[23] (id_ex0_n_133),
        .\mem_wdata_reg[24] (id_ex0_n_107),
        .\mem_wdata_reg[25] (id_ex0_n_134),
        .\mem_wdata_reg[26] (id_ex0_n_135),
        .\mem_wdata_reg[28] (id_ex0_n_136),
        .\mem_wdata_reg[29] (id_ex0_n_106),
        .\mem_wdata_reg[2] (id_ex0_n_122),
        .\mem_wdata_reg[30] (id_ex0_n_105),
        .\mem_wdata_reg[31] (id_ex0_n_137),
        .\mem_wdata_reg[31]_0 (id_ex0_n_138),
        .\mem_wdata_reg[3] (id_ex0_n_108),
        .\mem_wdata_reg[5] (id_ex0_n_139),
        .\mem_wdata_reg[7] (id_ex0_n_124),
        .\mem_wdata_reg[8] (ex_mem0_n_57),
        .\mem_wdata_reg[9] (id_ex0_n_125),
        .pc0(pc0),
        .\pc_reg[25] ({id_inst_i[23:21],id_inst_i[18:16],id_inst_i[12:11],id_inst_i[8],id_inst_i[1:0]}),
        .\pc_reg[31] (next_pc_i),
        .\pc_reg[5] ({inst[28],pc_rom0_n_18,pc_rom0_n_19,inst[23:21],inst[18:17],pc_rom0_n_25,pc_rom0_n_26,pc_rom0_n_27,inst[8],pc_rom0_n_29,inst[4:3],pc_rom0_n_32,pc_rom0_n_33}),
        .rdata10(rdata10),
        .reg1_data({reg1_data[31:29],reg1_data[27],reg1_data[24],reg1_data[20],reg1_data[17:15],reg1_data[12:11],reg1_data[8],reg1_data[6:3],reg1_data[1:0]}),
        .reg1_read(reg1_read),
        .reg2_read(reg2_read),
        .rst_IBUF(rst_IBUF),
        .wb_wd_i(wb_wd_i[1:0]),
        .wb_wdata_i(wb_wdata_i),
        .\wb_wdata_reg[13] (regfile0_n_4),
        .\wb_wdata_reg[19] (regfile0_n_37));
  mem mem0
       (.D(mem_hi_i),
        .E(p_0_in),
        .Q(mem_hi_o),
        .\mem_lo_reg[31] (mem_lo_i),
        .rst(rst),
        .\wb_lo_reg[31] (mem_lo_o));
  mem_wb mem_wb0
       (.CLK(CLK),
        .D(mem_lo_o),
        .E(ex_mem0_n_61),
        .Q(wb_lo_i),
        .\ex_aluop_reg[4] (id_ex0_n_242),
        .\ex_aluop_reg[6] (id_ex0_n_6),
        .\ex_reg1_reg[23] (ex_reg1_i[23]),
        .\ex_reg1_reg[26] (mem_wb0_n_10),
        .\ex_reg2_reg[4] (mem_wb0_n_11),
        .\ex_reg2_reg[5] (mem_wb0_n_5),
        .\hi_o_reg[31] (wb_hi_i),
        .\hi_o_reg[31]_0 (hi_o),
        .\id_inst_reg[18] (reg2_addr),
        .\id_inst_reg[21] (if_id0_n_202),
        .\id_inst_reg[23] (id_inst_i[23]),
        .\lo_o_reg[31] (lo_o),
        .mem_cp0_reg_data_i(mem_cp0_reg_data_i),
        .mem_cp0_reg_data_o(mem_cp0_reg_data_o),
        .mem_cp0_reg_we_i(mem_cp0_reg_we_i),
        .mem_cp0_reg_we_reg(ex_mem0_n_102),
        .mem_cp0_reg_write_addr_i(mem_cp0_reg_write_addr_i),
        .\mem_excepttype_reg[11] (ex_mem0_n_130),
        .\mem_hi_reg[31] (mem_hi_o),
        .mem_wd_i({mem_wd_i[4],mem_wd_i[2:0]}),
        .mem_wdata_i(mem_wdata_i),
        .\mem_wdata_reg[0] (mem_wb0_n_168),
        .\mem_wdata_reg[0]_0 (mem_wb0_n_169),
        .\mem_wdata_reg[10] (mem_wb0_n_13),
        .\mem_wdata_reg[10]_0 (mem_wb0_n_38),
        .\mem_wdata_reg[10]_1 (mem_wb0_n_149),
        .\mem_wdata_reg[11] (mem_wb0_n_147),
        .\mem_wdata_reg[11]_0 (mem_wb0_n_148),
        .\mem_wdata_reg[12] (mem_wb0_n_145),
        .\mem_wdata_reg[12]_0 (mem_wb0_n_146),
        .\mem_wdata_reg[13] (mem_wb0_n_143),
        .\mem_wdata_reg[13]_0 (mem_wb0_n_144),
        .\mem_wdata_reg[14] (mem_wb0_n_141),
        .\mem_wdata_reg[14]_0 (mem_wb0_n_142),
        .\mem_wdata_reg[15] (mem_wb0_n_139),
        .\mem_wdata_reg[15]_0 (mem_wb0_n_140),
        .\mem_wdata_reg[16] (mem_wb0_n_137),
        .\mem_wdata_reg[16]_0 (mem_wb0_n_138),
        .\mem_wdata_reg[17] (mem_wb0_n_135),
        .\mem_wdata_reg[17]_0 (mem_wb0_n_136),
        .\mem_wdata_reg[18] (mem_wb0_n_39),
        .\mem_wdata_reg[18]_0 (mem_wb0_n_133),
        .\mem_wdata_reg[18]_1 (mem_wb0_n_134),
        .\mem_wdata_reg[19] (mem_wb0_n_131),
        .\mem_wdata_reg[19]_0 (mem_wb0_n_132),
        .\mem_wdata_reg[1] (mem_wb0_n_166),
        .\mem_wdata_reg[1]_0 (mem_wb0_n_167),
        .\mem_wdata_reg[20] (mem_wb0_n_129),
        .\mem_wdata_reg[20]_0 (mem_wb0_n_130),
        .\mem_wdata_reg[21] (mem_wb0_n_40),
        .\mem_wdata_reg[21]_0 (mem_wb0_n_127),
        .\mem_wdata_reg[21]_1 (mem_wb0_n_128),
        .\mem_wdata_reg[22] (mem_wb0_n_125),
        .\mem_wdata_reg[22]_0 (mem_wb0_n_126),
        .\mem_wdata_reg[23] (mem_wb0_n_12),
        .\mem_wdata_reg[24] (mem_wb0_n_123),
        .\mem_wdata_reg[24]_0 (mem_wb0_n_124),
        .\mem_wdata_reg[25] (mem_wb0_n_121),
        .\mem_wdata_reg[25]_0 (mem_wb0_n_122),
        .\mem_wdata_reg[26] (mem_wb0_n_119),
        .\mem_wdata_reg[26]_0 (mem_wb0_n_120),
        .\mem_wdata_reg[27] (mem_wb0_n_41),
        .\mem_wdata_reg[27]_0 (mem_wb0_n_42),
        .\mem_wdata_reg[27]_1 (mem_wb0_n_118),
        .\mem_wdata_reg[28] (mem_wb0_n_75),
        .\mem_wdata_reg[28]_0 (mem_wb0_n_76),
        .\mem_wdata_reg[28]_1 (mem_wb0_n_117),
        .\mem_wdata_reg[29] (mem_wb0_n_77),
        .\mem_wdata_reg[29]_0 (mem_wb0_n_78),
        .\mem_wdata_reg[29]_1 (mem_wb0_n_116),
        .\mem_wdata_reg[2] (mem_wb0_n_164),
        .\mem_wdata_reg[2]_0 (mem_wb0_n_165),
        .\mem_wdata_reg[30] (mem_wb0_n_79),
        .\mem_wdata_reg[30]_0 (mem_wb0_n_80),
        .\mem_wdata_reg[30]_1 (mem_wb0_n_115),
        .\mem_wdata_reg[31] ({wb_cp0_reg_data_i[31],wb_cp0_reg_data_i[26:24],wb_cp0_reg_data_i[22],wb_cp0_reg_data_i[20:19],wb_cp0_reg_data_i[17:11],wb_cp0_reg_data_i[9:0]}),
        .\mem_wdata_reg[31]_0 (mem_wb0_n_81),
        .\mem_wdata_reg[31]_1 (mem_wb0_n_82),
        .\mem_wdata_reg[3] (mem_wb0_n_162),
        .\mem_wdata_reg[3]_0 (mem_wb0_n_163),
        .\mem_wdata_reg[4] (mem_wb0_n_160),
        .\mem_wdata_reg[4]_0 (mem_wb0_n_161),
        .\mem_wdata_reg[5] (mem_wb0_n_158),
        .\mem_wdata_reg[5]_0 (mem_wb0_n_159),
        .\mem_wdata_reg[6] (mem_wb0_n_156),
        .\mem_wdata_reg[6]_0 (mem_wb0_n_157),
        .\mem_wdata_reg[7] (mem_wb0_n_154),
        .\mem_wdata_reg[7]_0 (mem_wb0_n_155),
        .\mem_wdata_reg[8] (mem_wb0_n_152),
        .\mem_wdata_reg[8]_0 (mem_wb0_n_153),
        .\mem_wdata_reg[9] (mem_wb0_n_150),
        .\mem_wdata_reg[9]_0 (mem_wb0_n_151),
        .mem_whilo_i(mem_whilo_i),
        .mem_whilo_o(mem_whilo_o),
        .mem_wreg_i(mem_wreg_i),
        .rst_IBUF(rst_IBUF),
        .wb_cp0_reg_write_addr_i(wb_cp0_reg_write_addr_i),
        .\wb_cp0_reg_write_addr_reg[0]_0 (ex0_n_111),
        .wb_wd_i({wb_wd_i[4],wb_wd_i[2:0]}),
        .wb_wdata_i(wb_wdata_i),
        .wb_whilo_i(wb_whilo_i));
  pc_rom pc_rom0
       (.CLK(CLK),
        .D({if_id0_n_4,if_id0_n_5,if_id0_n_6,if_id0_n_7,if_id0_n_8,if_id0_n_9,if_id0_n_10,if_id0_n_11,if_id0_n_12,if_id0_n_13,if_id0_n_14,if_id0_n_15,if_id0_n_16,if_id0_n_17,if_id0_n_18,if_id0_n_19,if_id0_n_20,if_id0_n_21,if_id0_n_22,if_id0_n_23,if_id0_n_24,if_id0_n_25,if_id0_n_26,if_id0_n_27,if_id0_n_28,p_2_in,if_id0_n_31,if_id0_n_32,if_id0_n_33,if_id0_n_34,if_id0_n_35}),
        .E(ex_mem0_n_62),
        .Q({pc_rom0_n_34,pc_rom0_n_35,pc_rom0_n_36,pc_rom0_n_37,pc_rom0_n_38,pc_rom0_n_39,pc_rom0_n_40,pc_rom0_n_41,pc_rom0_n_42,pc_rom0_n_43,pc_rom0_n_44,pc_rom0_n_45,pc_rom0_n_46,pc_rom0_n_47,pc_rom0_n_48,pc_rom0_n_49,pc_rom0_n_50,pc_rom0_n_51,pc_rom0_n_52,pc_rom0_n_53,pc_rom0_n_54,pc_rom0_n_55,pc_rom0_n_56,pc_rom0_n_57,pc_rom0_n_58,pc_rom0_n_59,inst_addr,pc_rom0_n_64,pc_rom0_n_65}),
        .S({pc_rom0_n_4,pc_rom0_n_5}),
        .\id_inst_reg[28] ({inst[28],pc_rom0_n_18,pc_rom0_n_19,inst[23:21],inst[18:17],pc_rom0_n_25,pc_rom0_n_26,pc_rom0_n_27,inst[8],pc_rom0_n_29,inst[4:3],pc_rom0_n_32,pc_rom0_n_33}),
        .\id_pc_reg[31] (next_pc_i),
        .pc0(pc0),
        .\pc_reg[24]_0 ({pc_rom0_n_6,pc_rom0_n_7,pc_rom0_n_8,pc_rom0_n_9}),
        .\pc_reg[28]_0 ({pc_rom0_n_10,pc_rom0_n_11,pc_rom0_n_12,pc_rom0_n_13}),
        .\pc_reg[31]_0 ({pc_rom0_n_14,pc_rom0_n_15,pc_rom0_n_16}),
        .rst(rst));
  regfile regfile0
       (.ADDRA(reg1_addr),
        .CLK(CLK),
        .debug(debug),
        .debugdata0(debugdata0),
        .ex_wreg_reg(regfile0_n_4),
        .ex_wreg_reg_0(regfile0_n_37),
        .\id_inst_reg[18] (id0_n_44),
        .\id_inst_reg[18]_0 (reg2_addr),
        .rdata10(rdata10),
        .rdata20(rdata20),
        .wb_wd_i({wb_wd_i[4],wb_wd_i[2:0]}),
        .\wb_wd_reg[0] (mem_wb0_n_5),
        .\wb_wd_reg[4] (id0_n_43),
        .wb_wdata_i(wb_wdata_i));
endmodule

module ctrl
   (Q,
    D,
    E,
    rst);
  output [1:0]Q;
  input [0:0]D;
  input [0:0]E;
  input rst;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire rst;

  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \new_pc_reg[5] 
       (.CLR(rst),
        .D(1'b0),
        .G(E),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \new_pc_reg[6] 
       (.CLR(rst),
        .D(D),
        .G(E),
        .GE(1'b1),
        .Q(Q[1]));
endmodule

module div
   (div_ready,
    \result_reg[33]_0 ,
    \mem_lo_reg[0] ,
    \result_reg[2]_0 ,
    \result_reg[3]_0 ,
    \result_reg[4]_0 ,
    \result_reg[5]_0 ,
    \result_reg[6]_0 ,
    \result_reg[7]_0 ,
    \result_reg[8]_0 ,
    \result_reg[9]_0 ,
    \result_reg[10]_0 ,
    \result_reg[11]_0 ,
    \result_reg[12]_0 ,
    \result_reg[13]_0 ,
    \result_reg[14]_0 ,
    \result_reg[15]_0 ,
    \result_reg[16]_0 ,
    \result_reg[17]_0 ,
    \result_reg[18]_0 ,
    \result_reg[19]_0 ,
    \result_reg[20]_0 ,
    \result_reg[21]_0 ,
    \result_reg[22]_0 ,
    \result_reg[23]_0 ,
    \result_reg[24]_0 ,
    \result_reg[25]_0 ,
    \result_reg[26]_0 ,
    \result_reg[27]_0 ,
    \result_reg[28]_0 ,
    \result_reg[29]_0 ,
    \result_reg[30]_0 ,
    \result_reg[31]_0 ,
    state,
    \mem_hi_reg[31] ,
    rst,
    CLK,
    \state_reg[1]_0 ,
    Q,
    \ex_reg2_reg[31] ,
    div_signed,
    \state_reg[1]_1 ,
    \state_reg[1]_2 ,
    div_start,
    rst_IBUF,
    p_0_out,
    \state_reg[0]_0 ,
    D,
    \result_reg[31]_1 ,
    \state_reg[1]_3 );
  output div_ready;
  output \result_reg[33]_0 ;
  output \mem_lo_reg[0] ;
  output \result_reg[2]_0 ;
  output \result_reg[3]_0 ;
  output \result_reg[4]_0 ;
  output \result_reg[5]_0 ;
  output \result_reg[6]_0 ;
  output \result_reg[7]_0 ;
  output \result_reg[8]_0 ;
  output \result_reg[9]_0 ;
  output \result_reg[10]_0 ;
  output \result_reg[11]_0 ;
  output \result_reg[12]_0 ;
  output \result_reg[13]_0 ;
  output \result_reg[14]_0 ;
  output \result_reg[15]_0 ;
  output \result_reg[16]_0 ;
  output \result_reg[17]_0 ;
  output \result_reg[18]_0 ;
  output \result_reg[19]_0 ;
  output \result_reg[20]_0 ;
  output \result_reg[21]_0 ;
  output \result_reg[22]_0 ;
  output \result_reg[23]_0 ;
  output \result_reg[24]_0 ;
  output \result_reg[25]_0 ;
  output \result_reg[26]_0 ;
  output \result_reg[27]_0 ;
  output \result_reg[28]_0 ;
  output \result_reg[29]_0 ;
  output \result_reg[30]_0 ;
  output \result_reg[31]_0 ;
  output [1:0]state;
  output [63:0]\mem_hi_reg[31] ;
  input rst;
  input CLK;
  input \state_reg[1]_0 ;
  input [1:0]Q;
  input [0:0]\ex_reg2_reg[31] ;
  input div_signed;
  input \state_reg[1]_1 ;
  input \state_reg[1]_2 ;
  input div_start;
  input rst_IBUF;
  input [0:0]p_0_out;
  input \state_reg[0]_0 ;
  input [31:0]D;
  input [29:0]\result_reg[31]_1 ;
  input \state_reg[1]_3 ;

  wire CLK;
  wire [31:0]D;
  wire [1:0]Q;
  wire cnt;
  wire \cnt[0]_i_1_n_4 ;
  wire \cnt[1]_i_1_n_4 ;
  wire \cnt[2]_i_1_n_4 ;
  wire \cnt[3]_i_1_n_4 ;
  wire \cnt[4]_i_1_n_4 ;
  wire \cnt[5]_i_2_n_4 ;
  wire \cnt[5]_i_3_n_4 ;
  wire \cnt[5]_i_4_n_4 ;
  wire \cnt_reg_n_4_[0] ;
  wire \cnt_reg_n_4_[1] ;
  wire \cnt_reg_n_4_[2] ;
  wire \cnt_reg_n_4_[3] ;
  wire \cnt_reg_n_4_[4] ;
  wire \cnt_reg_n_4_[5] ;
  wire div_ready;
  wire div_signed;
  wire div_start;
  wire \divider[31]_i_1_n_4 ;
  wire \divider_reg_n_4_[0] ;
  wire \divider_reg_n_4_[10] ;
  wire \divider_reg_n_4_[11] ;
  wire \divider_reg_n_4_[12] ;
  wire \divider_reg_n_4_[13] ;
  wire \divider_reg_n_4_[14] ;
  wire \divider_reg_n_4_[15] ;
  wire \divider_reg_n_4_[16] ;
  wire \divider_reg_n_4_[17] ;
  wire \divider_reg_n_4_[18] ;
  wire \divider_reg_n_4_[19] ;
  wire \divider_reg_n_4_[1] ;
  wire \divider_reg_n_4_[20] ;
  wire \divider_reg_n_4_[21] ;
  wire \divider_reg_n_4_[22] ;
  wire \divider_reg_n_4_[23] ;
  wire \divider_reg_n_4_[24] ;
  wire \divider_reg_n_4_[25] ;
  wire \divider_reg_n_4_[26] ;
  wire \divider_reg_n_4_[27] ;
  wire \divider_reg_n_4_[28] ;
  wire \divider_reg_n_4_[29] ;
  wire \divider_reg_n_4_[2] ;
  wire \divider_reg_n_4_[30] ;
  wire \divider_reg_n_4_[31] ;
  wire \divider_reg_n_4_[3] ;
  wire \divider_reg_n_4_[4] ;
  wire \divider_reg_n_4_[5] ;
  wire \divider_reg_n_4_[6] ;
  wire \divider_reg_n_4_[7] ;
  wire \divider_reg_n_4_[8] ;
  wire \divider_reg_n_4_[9] ;
  wire [0:0]\ex_reg2_reg[31] ;
  wire [63:0]\mem_hi_reg[31] ;
  wire \mem_lo_reg[0] ;
  wire [31:1]p_0_in;
  wire [0:0]p_0_out;
  wire [31:0]p_1_in;
  wire ready_o_i_1_n_4;
  wire [64:33]result;
  wire [31:0]result1;
  wire \result[0]_i_1_n_4 ;
  wire \result[1]_i_1_n_4 ;
  wire \result[1]_i_3_n_4 ;
  wire \result[31]_i_1_n_4 ;
  wire \result[32]_i_1_n_4 ;
  wire \result[32]_i_3_n_4 ;
  wire \result[33]_i_1_n_4 ;
  wire \result[34]_i_1_n_4 ;
  wire \result[35]_i_1_n_4 ;
  wire \result[36]_i_10_n_4 ;
  wire \result[36]_i_1_n_4 ;
  wire \result[36]_i_4_n_4 ;
  wire \result[36]_i_5_n_4 ;
  wire \result[36]_i_6_n_4 ;
  wire \result[36]_i_7_n_4 ;
  wire \result[36]_i_8_n_4 ;
  wire \result[36]_i_9_n_4 ;
  wire \result[37]_i_1_n_4 ;
  wire \result[38]_i_1_n_4 ;
  wire \result[39]_i_1_n_4 ;
  wire \result[40]_i_10_n_4 ;
  wire \result[40]_i_11_n_4 ;
  wire \result[40]_i_1_n_4 ;
  wire \result[40]_i_4_n_4 ;
  wire \result[40]_i_5_n_4 ;
  wire \result[40]_i_6_n_4 ;
  wire \result[40]_i_7_n_4 ;
  wire \result[40]_i_8_n_4 ;
  wire \result[40]_i_9_n_4 ;
  wire \result[41]_i_1_n_4 ;
  wire \result[42]_i_1_n_4 ;
  wire \result[43]_i_1_n_4 ;
  wire \result[44]_i_10_n_4 ;
  wire \result[44]_i_11_n_4 ;
  wire \result[44]_i_1_n_4 ;
  wire \result[44]_i_4_n_4 ;
  wire \result[44]_i_5_n_4 ;
  wire \result[44]_i_6_n_4 ;
  wire \result[44]_i_7_n_4 ;
  wire \result[44]_i_8_n_4 ;
  wire \result[44]_i_9_n_4 ;
  wire \result[45]_i_1_n_4 ;
  wire \result[46]_i_1_n_4 ;
  wire \result[47]_i_1_n_4 ;
  wire \result[48]_i_10_n_4 ;
  wire \result[48]_i_11_n_4 ;
  wire \result[48]_i_1_n_4 ;
  wire \result[48]_i_4_n_4 ;
  wire \result[48]_i_5_n_4 ;
  wire \result[48]_i_6_n_4 ;
  wire \result[48]_i_7_n_4 ;
  wire \result[48]_i_8_n_4 ;
  wire \result[48]_i_9_n_4 ;
  wire \result[49]_i_1_n_4 ;
  wire \result[50]_i_1_n_4 ;
  wire \result[51]_i_1_n_4 ;
  wire \result[52]_i_10_n_4 ;
  wire \result[52]_i_11_n_4 ;
  wire \result[52]_i_1_n_4 ;
  wire \result[52]_i_4_n_4 ;
  wire \result[52]_i_5_n_4 ;
  wire \result[52]_i_6_n_4 ;
  wire \result[52]_i_7_n_4 ;
  wire \result[52]_i_8_n_4 ;
  wire \result[52]_i_9_n_4 ;
  wire \result[53]_i_1_n_4 ;
  wire \result[54]_i_1_n_4 ;
  wire \result[55]_i_1_n_4 ;
  wire \result[56]_i_10_n_4 ;
  wire \result[56]_i_11_n_4 ;
  wire \result[56]_i_1_n_4 ;
  wire \result[56]_i_4_n_4 ;
  wire \result[56]_i_5_n_4 ;
  wire \result[56]_i_6_n_4 ;
  wire \result[56]_i_7_n_4 ;
  wire \result[56]_i_8_n_4 ;
  wire \result[56]_i_9_n_4 ;
  wire \result[57]_i_1_n_4 ;
  wire \result[58]_i_1_n_4 ;
  wire \result[59]_i_1_n_4 ;
  wire \result[60]_i_10_n_4 ;
  wire \result[60]_i_11_n_4 ;
  wire \result[60]_i_1_n_4 ;
  wire \result[60]_i_4_n_4 ;
  wire \result[60]_i_5_n_4 ;
  wire \result[60]_i_6_n_4 ;
  wire \result[60]_i_7_n_4 ;
  wire \result[60]_i_8_n_4 ;
  wire \result[60]_i_9_n_4 ;
  wire \result[61]_i_1_n_4 ;
  wire \result[62]_i_1_n_4 ;
  wire \result[63]_i_1_n_4 ;
  wire \result[64]_i_10_n_4 ;
  wire \result[64]_i_11_n_4 ;
  wire \result[64]_i_12_n_4 ;
  wire \result[64]_i_13_n_4 ;
  wire \result[64]_i_14_n_4 ;
  wire \result[64]_i_15_n_4 ;
  wire \result[64]_i_16_n_4 ;
  wire \result[64]_i_1_n_4 ;
  wire \result[64]_i_2_n_4 ;
  wire \result[64]_i_3_n_4 ;
  wire \result[64]_i_7_n_4 ;
  wire \result[64]_i_9_n_4 ;
  wire \result_o[0]_i_1_n_4 ;
  wire \result_o[10]_i_1_n_4 ;
  wire \result_o[11]_i_1_n_4 ;
  wire \result_o[12]_i_1_n_4 ;
  wire \result_o[13]_i_1_n_4 ;
  wire \result_o[14]_i_1_n_4 ;
  wire \result_o[15]_i_1_n_4 ;
  wire \result_o[16]_i_1_n_4 ;
  wire \result_o[17]_i_1_n_4 ;
  wire \result_o[18]_i_1_n_4 ;
  wire \result_o[19]_i_1_n_4 ;
  wire \result_o[1]_i_1_n_4 ;
  wire \result_o[20]_i_1_n_4 ;
  wire \result_o[21]_i_1_n_4 ;
  wire \result_o[22]_i_1_n_4 ;
  wire \result_o[23]_i_1_n_4 ;
  wire \result_o[24]_i_1_n_4 ;
  wire \result_o[25]_i_1_n_4 ;
  wire \result_o[26]_i_1_n_4 ;
  wire \result_o[27]_i_1_n_4 ;
  wire \result_o[28]_i_1_n_4 ;
  wire \result_o[29]_i_1_n_4 ;
  wire \result_o[2]_i_1_n_4 ;
  wire \result_o[30]_i_1_n_4 ;
  wire \result_o[31]_i_1_n_4 ;
  wire \result_o[32]_i_1_n_4 ;
  wire \result_o[33]_i_1_n_4 ;
  wire \result_o[34]_i_1_n_4 ;
  wire \result_o[35]_i_1_n_4 ;
  wire \result_o[36]_i_1_n_4 ;
  wire \result_o[37]_i_1_n_4 ;
  wire \result_o[38]_i_1_n_4 ;
  wire \result_o[39]_i_1_n_4 ;
  wire \result_o[3]_i_1_n_4 ;
  wire \result_o[40]_i_1_n_4 ;
  wire \result_o[41]_i_1_n_4 ;
  wire \result_o[42]_i_1_n_4 ;
  wire \result_o[43]_i_1_n_4 ;
  wire \result_o[44]_i_1_n_4 ;
  wire \result_o[45]_i_1_n_4 ;
  wire \result_o[46]_i_1_n_4 ;
  wire \result_o[47]_i_1_n_4 ;
  wire \result_o[48]_i_1_n_4 ;
  wire \result_o[49]_i_1_n_4 ;
  wire \result_o[4]_i_1_n_4 ;
  wire \result_o[50]_i_1_n_4 ;
  wire \result_o[51]_i_1_n_4 ;
  wire \result_o[52]_i_1_n_4 ;
  wire \result_o[53]_i_1_n_4 ;
  wire \result_o[54]_i_1_n_4 ;
  wire \result_o[55]_i_1_n_4 ;
  wire \result_o[56]_i_1_n_4 ;
  wire \result_o[57]_i_1_n_4 ;
  wire \result_o[58]_i_1_n_4 ;
  wire \result_o[59]_i_1_n_4 ;
  wire \result_o[5]_i_1_n_4 ;
  wire \result_o[60]_i_1_n_4 ;
  wire \result_o[61]_i_1_n_4 ;
  wire \result_o[62]_i_1_n_4 ;
  wire \result_o[63]_i_1_n_4 ;
  wire \result_o[6]_i_1_n_4 ;
  wire \result_o[7]_i_1_n_4 ;
  wire \result_o[8]_i_1_n_4 ;
  wire \result_o[9]_i_1_n_4 ;
  wire \result_reg[10]_0 ;
  wire \result_reg[11]_0 ;
  wire \result_reg[12]_0 ;
  wire \result_reg[12]_i_3_n_4 ;
  wire \result_reg[12]_i_3_n_5 ;
  wire \result_reg[12]_i_3_n_6 ;
  wire \result_reg[12]_i_3_n_7 ;
  wire \result_reg[13]_0 ;
  wire \result_reg[14]_0 ;
  wire \result_reg[15]_0 ;
  wire \result_reg[16]_0 ;
  wire \result_reg[16]_i_3_n_4 ;
  wire \result_reg[16]_i_3_n_5 ;
  wire \result_reg[16]_i_3_n_6 ;
  wire \result_reg[16]_i_3_n_7 ;
  wire \result_reg[17]_0 ;
  wire \result_reg[18]_0 ;
  wire \result_reg[19]_0 ;
  wire \result_reg[20]_0 ;
  wire \result_reg[20]_i_3_n_4 ;
  wire \result_reg[20]_i_3_n_5 ;
  wire \result_reg[20]_i_3_n_6 ;
  wire \result_reg[20]_i_3_n_7 ;
  wire \result_reg[21]_0 ;
  wire \result_reg[22]_0 ;
  wire \result_reg[23]_0 ;
  wire \result_reg[24]_0 ;
  wire \result_reg[24]_i_3_n_4 ;
  wire \result_reg[24]_i_3_n_5 ;
  wire \result_reg[24]_i_3_n_6 ;
  wire \result_reg[24]_i_3_n_7 ;
  wire \result_reg[25]_0 ;
  wire \result_reg[26]_0 ;
  wire \result_reg[27]_0 ;
  wire \result_reg[28]_0 ;
  wire \result_reg[28]_i_3_n_4 ;
  wire \result_reg[28]_i_3_n_5 ;
  wire \result_reg[28]_i_3_n_6 ;
  wire \result_reg[28]_i_3_n_7 ;
  wire \result_reg[29]_0 ;
  wire \result_reg[2]_0 ;
  wire \result_reg[30]_0 ;
  wire \result_reg[31]_0 ;
  wire [29:0]\result_reg[31]_1 ;
  wire \result_reg[31]_i_9_n_6 ;
  wire \result_reg[31]_i_9_n_7 ;
  wire \result_reg[33]_0 ;
  wire \result_reg[36]_i_2_n_4 ;
  wire \result_reg[36]_i_2_n_5 ;
  wire \result_reg[36]_i_2_n_6 ;
  wire \result_reg[36]_i_2_n_7 ;
  wire \result_reg[36]_i_3_n_4 ;
  wire \result_reg[36]_i_3_n_5 ;
  wire \result_reg[36]_i_3_n_6 ;
  wire \result_reg[36]_i_3_n_7 ;
  wire \result_reg[3]_0 ;
  wire \result_reg[40]_i_2_n_4 ;
  wire \result_reg[40]_i_2_n_5 ;
  wire \result_reg[40]_i_2_n_6 ;
  wire \result_reg[40]_i_2_n_7 ;
  wire \result_reg[40]_i_3_n_4 ;
  wire \result_reg[40]_i_3_n_5 ;
  wire \result_reg[40]_i_3_n_6 ;
  wire \result_reg[40]_i_3_n_7 ;
  wire \result_reg[44]_i_2_n_4 ;
  wire \result_reg[44]_i_2_n_5 ;
  wire \result_reg[44]_i_2_n_6 ;
  wire \result_reg[44]_i_2_n_7 ;
  wire \result_reg[44]_i_3_n_4 ;
  wire \result_reg[44]_i_3_n_5 ;
  wire \result_reg[44]_i_3_n_6 ;
  wire \result_reg[44]_i_3_n_7 ;
  wire \result_reg[48]_i_2_n_4 ;
  wire \result_reg[48]_i_2_n_5 ;
  wire \result_reg[48]_i_2_n_6 ;
  wire \result_reg[48]_i_2_n_7 ;
  wire \result_reg[48]_i_3_n_4 ;
  wire \result_reg[48]_i_3_n_5 ;
  wire \result_reg[48]_i_3_n_6 ;
  wire \result_reg[48]_i_3_n_7 ;
  wire \result_reg[4]_0 ;
  wire \result_reg[4]_i_3_n_4 ;
  wire \result_reg[4]_i_3_n_5 ;
  wire \result_reg[4]_i_3_n_6 ;
  wire \result_reg[4]_i_3_n_7 ;
  wire \result_reg[52]_i_2_n_4 ;
  wire \result_reg[52]_i_2_n_5 ;
  wire \result_reg[52]_i_2_n_6 ;
  wire \result_reg[52]_i_2_n_7 ;
  wire \result_reg[52]_i_3_n_4 ;
  wire \result_reg[52]_i_3_n_5 ;
  wire \result_reg[52]_i_3_n_6 ;
  wire \result_reg[52]_i_3_n_7 ;
  wire \result_reg[56]_i_2_n_4 ;
  wire \result_reg[56]_i_2_n_5 ;
  wire \result_reg[56]_i_2_n_6 ;
  wire \result_reg[56]_i_2_n_7 ;
  wire \result_reg[56]_i_3_n_4 ;
  wire \result_reg[56]_i_3_n_5 ;
  wire \result_reg[56]_i_3_n_6 ;
  wire \result_reg[56]_i_3_n_7 ;
  wire \result_reg[5]_0 ;
  wire \result_reg[60]_i_2_n_4 ;
  wire \result_reg[60]_i_2_n_5 ;
  wire \result_reg[60]_i_2_n_6 ;
  wire \result_reg[60]_i_2_n_7 ;
  wire \result_reg[60]_i_3_n_4 ;
  wire \result_reg[60]_i_3_n_5 ;
  wire \result_reg[60]_i_3_n_6 ;
  wire \result_reg[60]_i_3_n_7 ;
  wire \result_reg[64]_i_5_n_5 ;
  wire \result_reg[64]_i_5_n_6 ;
  wire \result_reg[64]_i_5_n_7 ;
  wire \result_reg[64]_i_6_n_4 ;
  wire \result_reg[64]_i_6_n_5 ;
  wire \result_reg[64]_i_6_n_6 ;
  wire \result_reg[64]_i_6_n_7 ;
  wire \result_reg[64]_i_8_n_7 ;
  wire \result_reg[6]_0 ;
  wire \result_reg[7]_0 ;
  wire \result_reg[8]_0 ;
  wire \result_reg[8]_i_3_n_4 ;
  wire \result_reg[8]_i_3_n_5 ;
  wire \result_reg[8]_i_3_n_6 ;
  wire \result_reg[8]_i_3_n_7 ;
  wire \result_reg[9]_0 ;
  wire \result_reg_n_4_[0] ;
  wire \result_reg_n_4_[10] ;
  wire \result_reg_n_4_[11] ;
  wire \result_reg_n_4_[12] ;
  wire \result_reg_n_4_[13] ;
  wire \result_reg_n_4_[14] ;
  wire \result_reg_n_4_[15] ;
  wire \result_reg_n_4_[16] ;
  wire \result_reg_n_4_[17] ;
  wire \result_reg_n_4_[18] ;
  wire \result_reg_n_4_[19] ;
  wire \result_reg_n_4_[1] ;
  wire \result_reg_n_4_[20] ;
  wire \result_reg_n_4_[21] ;
  wire \result_reg_n_4_[22] ;
  wire \result_reg_n_4_[23] ;
  wire \result_reg_n_4_[24] ;
  wire \result_reg_n_4_[25] ;
  wire \result_reg_n_4_[26] ;
  wire \result_reg_n_4_[27] ;
  wire \result_reg_n_4_[28] ;
  wire \result_reg_n_4_[29] ;
  wire \result_reg_n_4_[2] ;
  wire \result_reg_n_4_[30] ;
  wire \result_reg_n_4_[31] ;
  wire \result_reg_n_4_[3] ;
  wire \result_reg_n_4_[4] ;
  wire \result_reg_n_4_[5] ;
  wire \result_reg_n_4_[64] ;
  wire \result_reg_n_4_[6] ;
  wire \result_reg_n_4_[7] ;
  wire \result_reg_n_4_[8] ;
  wire \result_reg_n_4_[9] ;
  wire rst;
  wire rst_IBUF;
  wire [1:0]state;
  wire \state[1]_i_1_n_4 ;
  wire \state_reg[0]_0 ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire \state_reg[1]_2 ;
  wire \state_reg[1]_3 ;
  wire [31:0]tempres;
  wire [3:2]\NLW_result_reg[31]_i_9_CO_UNCONNECTED ;
  wire [3:3]\NLW_result_reg[31]_i_9_O_UNCONNECTED ;
  wire [3:3]\NLW_result_reg[64]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_result_reg[64]_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_result_reg[64]_i_8_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \cnt[0]_i_1 
       (.I0(state[0]),
        .I1(\cnt_reg_n_4_[0] ),
        .O(\cnt[0]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \cnt[1]_i_1 
       (.I0(\cnt_reg_n_4_[0] ),
        .I1(state[0]),
        .I2(\cnt_reg_n_4_[1] ),
        .O(\cnt[1]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg_n_4_[1] ),
        .I1(\cnt_reg_n_4_[0] ),
        .I2(state[0]),
        .I3(\cnt_reg_n_4_[2] ),
        .O(\cnt[2]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \cnt[3]_i_1 
       (.I0(\cnt_reg_n_4_[2] ),
        .I1(\cnt_reg_n_4_[0] ),
        .I2(\cnt_reg_n_4_[1] ),
        .I3(state[0]),
        .I4(\cnt_reg_n_4_[3] ),
        .O(\cnt[3]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \cnt[4]_i_1 
       (.I0(\cnt_reg_n_4_[1] ),
        .I1(\cnt_reg_n_4_[0] ),
        .I2(\cnt_reg_n_4_[2] ),
        .I3(\cnt_reg_n_4_[3] ),
        .I4(state[0]),
        .I5(\cnt_reg_n_4_[4] ),
        .O(\cnt[4]_i_1_n_4 ));
  LUT5 #(
    .INIT(32'h05540054)) 
    \cnt[5]_i_1 
       (.I0(rst_IBUF),
        .I1(div_start),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\cnt[5]_i_3_n_4 ),
        .O(cnt));
  LUT5 #(
    .INIT(32'h7F800000)) 
    \cnt[5]_i_2 
       (.I0(\cnt_reg_n_4_[4] ),
        .I1(\cnt[5]_i_4_n_4 ),
        .I2(\cnt_reg_n_4_[3] ),
        .I3(\cnt_reg_n_4_[5] ),
        .I4(state[0]),
        .O(\cnt[5]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \cnt[5]_i_3 
       (.I0(\cnt_reg_n_4_[3] ),
        .I1(\cnt_reg_n_4_[5] ),
        .I2(\cnt_reg_n_4_[1] ),
        .I3(\cnt_reg_n_4_[0] ),
        .I4(\cnt_reg_n_4_[2] ),
        .I5(\cnt_reg_n_4_[4] ),
        .O(\cnt[5]_i_3_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cnt[5]_i_4 
       (.I0(\cnt_reg_n_4_[2] ),
        .I1(\cnt_reg_n_4_[0] ),
        .I2(\cnt_reg_n_4_[1] ),
        .O(\cnt[5]_i_4_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(cnt),
        .D(\cnt[0]_i_1_n_4 ),
        .Q(\cnt_reg_n_4_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(cnt),
        .D(\cnt[1]_i_1_n_4 ),
        .Q(\cnt_reg_n_4_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(cnt),
        .D(\cnt[2]_i_1_n_4 ),
        .Q(\cnt_reg_n_4_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(cnt),
        .D(\cnt[3]_i_1_n_4 ),
        .Q(\cnt_reg_n_4_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(cnt),
        .D(\cnt[4]_i_1_n_4 ),
        .Q(\cnt_reg_n_4_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(cnt),
        .D(\cnt[5]_i_2_n_4 ),
        .Q(\cnt_reg_n_4_[5] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \divider[31]_i_1 
       (.I0(state[0]),
        .I1(div_start),
        .I2(state[1]),
        .O(\divider[31]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[0] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[0]),
        .Q(\divider_reg_n_4_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[10] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[10]),
        .Q(\divider_reg_n_4_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[11] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[11]),
        .Q(\divider_reg_n_4_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[12] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[12]),
        .Q(\divider_reg_n_4_[12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[13] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[13]),
        .Q(\divider_reg_n_4_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[14] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[14]),
        .Q(\divider_reg_n_4_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[15] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[15]),
        .Q(\divider_reg_n_4_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[16] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[16]),
        .Q(\divider_reg_n_4_[16] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[17] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[17]),
        .Q(\divider_reg_n_4_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[18] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[18]),
        .Q(\divider_reg_n_4_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[19] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[19]),
        .Q(\divider_reg_n_4_[19] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[1] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[1]),
        .Q(\divider_reg_n_4_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[20] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[20]),
        .Q(\divider_reg_n_4_[20] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[21] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[21]),
        .Q(\divider_reg_n_4_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[22] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[22]),
        .Q(\divider_reg_n_4_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[23] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[23]),
        .Q(\divider_reg_n_4_[23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[24] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[24]),
        .Q(\divider_reg_n_4_[24] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[25] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[25]),
        .Q(\divider_reg_n_4_[25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[26] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[26]),
        .Q(\divider_reg_n_4_[26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[27] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[27]),
        .Q(\divider_reg_n_4_[27] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[28] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[28]),
        .Q(\divider_reg_n_4_[28] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[29] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[29]),
        .Q(\divider_reg_n_4_[29] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[2] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[2]),
        .Q(\divider_reg_n_4_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[30] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[30]),
        .Q(\divider_reg_n_4_[30] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[31] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[31]),
        .Q(\divider_reg_n_4_[31] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[3] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[3]),
        .Q(\divider_reg_n_4_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[4] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[4]),
        .Q(\divider_reg_n_4_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[5] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[5]),
        .Q(\divider_reg_n_4_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[6] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[6]),
        .Q(\divider_reg_n_4_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[7] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[7]),
        .Q(\divider_reg_n_4_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[8] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[8]),
        .Q(\divider_reg_n_4_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[9] 
       (.C(CLK),
        .CE(\divider[31]_i_1_n_4 ),
        .D(D[9]),
        .Q(\divider_reg_n_4_[9] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h80)) 
    ready_o_i_1
       (.I0(div_start),
        .I1(state[0]),
        .I2(state[1]),
        .O(ready_o_i_1_n_4));
  FDRE #(
    .INIT(1'b0)) 
    ready_o_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ready_o_i_1_n_4),
        .Q(div_ready),
        .R(rst));
  LUT4 #(
    .INIT(16'hF888)) 
    \result[0]_i_1 
       (.I0(\result[64]_i_7_n_4 ),
        .I1(\result_reg[64]_i_8_n_7 ),
        .I2(\result_reg_n_4_[0] ),
        .I3(\result_reg[33]_0 ),
        .O(\result[0]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[10]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[10] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[10]),
        .I4(\result_reg_n_4_[9] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[11]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[11] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[11]),
        .I4(\result_reg_n_4_[10] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[12]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[12] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[12]),
        .I4(\result_reg_n_4_[11] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[12]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[12]_i_4 
       (.I0(\result_reg_n_4_[12] ),
        .O(result1[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[12]_i_5 
       (.I0(\result_reg_n_4_[11] ),
        .O(result1[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[12]_i_6 
       (.I0(\result_reg_n_4_[10] ),
        .O(result1[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[12]_i_7 
       (.I0(\result_reg_n_4_[9] ),
        .O(result1[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[13]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[13] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[13]),
        .I4(\result_reg_n_4_[12] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[14]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[14] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[14]),
        .I4(\result_reg_n_4_[13] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[15]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[15] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[15]),
        .I4(\result_reg_n_4_[14] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[16]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[16] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[16]),
        .I4(\result_reg_n_4_[15] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[16]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[16]_i_4 
       (.I0(\result_reg_n_4_[16] ),
        .O(result1[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[16]_i_5 
       (.I0(\result_reg_n_4_[15] ),
        .O(result1[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[16]_i_6 
       (.I0(\result_reg_n_4_[14] ),
        .O(result1[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[16]_i_7 
       (.I0(\result_reg_n_4_[13] ),
        .O(result1[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[17]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[17] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[17]),
        .I4(\result_reg_n_4_[16] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[17]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[18]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[18] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[18]),
        .I4(\result_reg_n_4_[17] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[18]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[19]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[19] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[19]),
        .I4(\result_reg_n_4_[18] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[19]_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \result[1]_i_1 
       (.I0(\state_reg[1]_0 ),
        .I1(Q[0]),
        .I2(\result[64]_i_7_n_4 ),
        .I3(\result_reg_n_4_[0] ),
        .I4(\result[1]_i_3_n_4 ),
        .O(\result[1]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hC0A0A0C0C0C0C0C0)) 
    \result[1]_i_3 
       (.I0(p_0_in[1]),
        .I1(\result_reg_n_4_[1] ),
        .I2(\result_reg[33]_0 ),
        .I3(Q[1]),
        .I4(\ex_reg2_reg[31] ),
        .I5(div_signed),
        .O(\result[1]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[20]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[20] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[20]),
        .I4(\result_reg_n_4_[19] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[20]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[20]_i_4 
       (.I0(\result_reg_n_4_[20] ),
        .O(result1[20]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[20]_i_5 
       (.I0(\result_reg_n_4_[19] ),
        .O(result1[19]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[20]_i_6 
       (.I0(\result_reg_n_4_[18] ),
        .O(result1[18]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[20]_i_7 
       (.I0(\result_reg_n_4_[17] ),
        .O(result1[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[21]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[21] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[21]),
        .I4(\result_reg_n_4_[20] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[21]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[22]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[22] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[22]),
        .I4(\result_reg_n_4_[21] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[22]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[23]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[23] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[23]),
        .I4(\result_reg_n_4_[22] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[23]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[24]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[24] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[24]),
        .I4(\result_reg_n_4_[23] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[24]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[24]_i_4 
       (.I0(\result_reg_n_4_[24] ),
        .O(result1[24]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[24]_i_5 
       (.I0(\result_reg_n_4_[23] ),
        .O(result1[23]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[24]_i_6 
       (.I0(\result_reg_n_4_[22] ),
        .O(result1[22]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[24]_i_7 
       (.I0(\result_reg_n_4_[21] ),
        .O(result1[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[25]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[25] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[25]),
        .I4(\result_reg_n_4_[24] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[25]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[26]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[26] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[26]),
        .I4(\result_reg_n_4_[25] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[26]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[27]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[27] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[27]),
        .I4(\result_reg_n_4_[26] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[27]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[28]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[28] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[28]),
        .I4(\result_reg_n_4_[27] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[28]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[28]_i_4 
       (.I0(\result_reg_n_4_[28] ),
        .O(result1[28]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[28]_i_5 
       (.I0(\result_reg_n_4_[27] ),
        .O(result1[27]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[28]_i_6 
       (.I0(\result_reg_n_4_[26] ),
        .O(result1[26]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[28]_i_7 
       (.I0(\result_reg_n_4_[25] ),
        .O(result1[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[29]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[29] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[29]),
        .I4(\result_reg_n_4_[28] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[29]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[2]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[2] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[2]),
        .I4(\result_reg_n_4_[1] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[30]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[30] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[30]),
        .I4(\result_reg_n_4_[29] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[30]_0 ));
  LUT3 #(
    .INIT(8'h76)) 
    \result[31]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(div_start),
        .O(\result[31]_i_1_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[31]_i_13 
       (.I0(\result_reg_n_4_[31] ),
        .O(result1[31]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[31]_i_14 
       (.I0(\result_reg_n_4_[30] ),
        .O(result1[30]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[31]_i_15 
       (.I0(\result_reg_n_4_[29] ),
        .O(result1[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[31]_i_3 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[31] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[31]),
        .I4(\result_reg_n_4_[30] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[31]_0 ));
  LUT6 #(
    .INIT(64'hFF08FFFFFF080000)) 
    \result[32]_i_1 
       (.I0(\result_reg_n_4_[31] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\state_reg[1]_3 ),
        .I4(\result[32]_i_3_n_4 ),
        .I5(p_1_in[0]),
        .O(\result[32]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0FAC)) 
    \result[32]_i_3 
       (.I0(\cnt[5]_i_3_n_4 ),
        .I1(div_start),
        .I2(state[0]),
        .I3(state[1]),
        .O(\result[32]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[33]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[33]),
        .I2(p_1_in[0]),
        .I3(tempres[0]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[33]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[34]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[34]),
        .I2(p_1_in[1]),
        .I3(tempres[1]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[34]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[35]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[35]),
        .I2(p_1_in[2]),
        .I3(tempres[2]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[35]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[36]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[36]),
        .I2(p_1_in[3]),
        .I3(tempres[3]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[36]_i_1_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[36]_i_10 
       (.I0(p_1_in[0]),
        .I1(\divider_reg_n_4_[0] ),
        .O(\result[36]_i_10_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[36]_i_4 
       (.I0(p_1_in[4]),
        .O(\result[36]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[36]_i_5 
       (.I0(p_1_in[3]),
        .O(\result[36]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[36]_i_6 
       (.I0(p_1_in[2]),
        .O(\result[36]_i_6_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[36]_i_7 
       (.I0(p_1_in[3]),
        .I1(\divider_reg_n_4_[3] ),
        .O(\result[36]_i_7_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[36]_i_8 
       (.I0(p_1_in[2]),
        .I1(\divider_reg_n_4_[2] ),
        .O(\result[36]_i_8_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[36]_i_9 
       (.I0(p_1_in[1]),
        .I1(\divider_reg_n_4_[1] ),
        .O(\result[36]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[37]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[37]),
        .I2(p_1_in[4]),
        .I3(tempres[4]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[37]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[38]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[38]),
        .I2(p_1_in[5]),
        .I3(tempres[5]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[38]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[39]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[39]),
        .I2(p_1_in[6]),
        .I3(tempres[6]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[39]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[3]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[3] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[3]),
        .I4(\result_reg_n_4_[2] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[40]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[40]),
        .I2(p_1_in[7]),
        .I3(tempres[7]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[40]_i_1_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[40]_i_10 
       (.I0(p_1_in[5]),
        .I1(\divider_reg_n_4_[5] ),
        .O(\result[40]_i_10_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[40]_i_11 
       (.I0(p_1_in[4]),
        .I1(\divider_reg_n_4_[4] ),
        .O(\result[40]_i_11_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[40]_i_4 
       (.I0(p_1_in[8]),
        .O(\result[40]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[40]_i_5 
       (.I0(p_1_in[7]),
        .O(\result[40]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[40]_i_6 
       (.I0(p_1_in[6]),
        .O(\result[40]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[40]_i_7 
       (.I0(p_1_in[5]),
        .O(\result[40]_i_7_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[40]_i_8 
       (.I0(p_1_in[7]),
        .I1(\divider_reg_n_4_[7] ),
        .O(\result[40]_i_8_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[40]_i_9 
       (.I0(p_1_in[6]),
        .I1(\divider_reg_n_4_[6] ),
        .O(\result[40]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[41]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[41]),
        .I2(p_1_in[8]),
        .I3(tempres[8]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[41]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[42]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[42]),
        .I2(p_1_in[9]),
        .I3(tempres[9]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[42]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[43]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[43]),
        .I2(p_1_in[10]),
        .I3(tempres[10]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[43]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[44]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[44]),
        .I2(p_1_in[11]),
        .I3(tempres[11]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[44]_i_1_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[44]_i_10 
       (.I0(p_1_in[9]),
        .I1(\divider_reg_n_4_[9] ),
        .O(\result[44]_i_10_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[44]_i_11 
       (.I0(p_1_in[8]),
        .I1(\divider_reg_n_4_[8] ),
        .O(\result[44]_i_11_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[44]_i_4 
       (.I0(p_1_in[12]),
        .O(\result[44]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[44]_i_5 
       (.I0(p_1_in[11]),
        .O(\result[44]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[44]_i_6 
       (.I0(p_1_in[10]),
        .O(\result[44]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[44]_i_7 
       (.I0(p_1_in[9]),
        .O(\result[44]_i_7_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[44]_i_8 
       (.I0(p_1_in[11]),
        .I1(\divider_reg_n_4_[11] ),
        .O(\result[44]_i_8_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[44]_i_9 
       (.I0(p_1_in[10]),
        .I1(\divider_reg_n_4_[10] ),
        .O(\result[44]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[45]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[45]),
        .I2(p_1_in[12]),
        .I3(tempres[12]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[45]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[46]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[46]),
        .I2(p_1_in[13]),
        .I3(tempres[13]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[46]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[47]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[47]),
        .I2(p_1_in[14]),
        .I3(tempres[14]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[47]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[48]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[48]),
        .I2(p_1_in[15]),
        .I3(tempres[15]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[48]_i_1_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[48]_i_10 
       (.I0(p_1_in[13]),
        .I1(\divider_reg_n_4_[13] ),
        .O(\result[48]_i_10_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[48]_i_11 
       (.I0(p_1_in[12]),
        .I1(\divider_reg_n_4_[12] ),
        .O(\result[48]_i_11_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[48]_i_4 
       (.I0(p_1_in[16]),
        .O(\result[48]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[48]_i_5 
       (.I0(p_1_in[15]),
        .O(\result[48]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[48]_i_6 
       (.I0(p_1_in[14]),
        .O(\result[48]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[48]_i_7 
       (.I0(p_1_in[13]),
        .O(\result[48]_i_7_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[48]_i_8 
       (.I0(p_1_in[15]),
        .I1(\divider_reg_n_4_[15] ),
        .O(\result[48]_i_8_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[48]_i_9 
       (.I0(p_1_in[14]),
        .I1(\divider_reg_n_4_[14] ),
        .O(\result[48]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[49]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[49]),
        .I2(p_1_in[16]),
        .I3(tempres[16]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[49]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[4]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[4] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[4]),
        .I4(\result_reg_n_4_[3] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[4]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[4]_i_4 
       (.I0(\result_reg_n_4_[0] ),
        .O(result1[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[4]_i_5 
       (.I0(\result_reg_n_4_[4] ),
        .O(result1[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[4]_i_6 
       (.I0(\result_reg_n_4_[3] ),
        .O(result1[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[4]_i_7 
       (.I0(\result_reg_n_4_[2] ),
        .O(result1[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[4]_i_8 
       (.I0(\result_reg_n_4_[1] ),
        .O(result1[1]));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[50]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[50]),
        .I2(p_1_in[17]),
        .I3(tempres[17]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[50]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[51]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[51]),
        .I2(p_1_in[18]),
        .I3(tempres[18]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[51]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[52]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[52]),
        .I2(p_1_in[19]),
        .I3(tempres[19]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[52]_i_1_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[52]_i_10 
       (.I0(p_1_in[17]),
        .I1(\divider_reg_n_4_[17] ),
        .O(\result[52]_i_10_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[52]_i_11 
       (.I0(p_1_in[16]),
        .I1(\divider_reg_n_4_[16] ),
        .O(\result[52]_i_11_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[52]_i_4 
       (.I0(p_1_in[20]),
        .O(\result[52]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[52]_i_5 
       (.I0(p_1_in[19]),
        .O(\result[52]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[52]_i_6 
       (.I0(p_1_in[18]),
        .O(\result[52]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[52]_i_7 
       (.I0(p_1_in[17]),
        .O(\result[52]_i_7_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[52]_i_8 
       (.I0(p_1_in[19]),
        .I1(\divider_reg_n_4_[19] ),
        .O(\result[52]_i_8_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[52]_i_9 
       (.I0(p_1_in[18]),
        .I1(\divider_reg_n_4_[18] ),
        .O(\result[52]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[53]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[53]),
        .I2(p_1_in[20]),
        .I3(tempres[20]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[53]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[54]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[54]),
        .I2(p_1_in[21]),
        .I3(tempres[21]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[54]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[55]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[55]),
        .I2(p_1_in[22]),
        .I3(tempres[22]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[55]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[56]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[56]),
        .I2(p_1_in[23]),
        .I3(tempres[23]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[56]_i_1_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[56]_i_10 
       (.I0(p_1_in[21]),
        .I1(\divider_reg_n_4_[21] ),
        .O(\result[56]_i_10_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[56]_i_11 
       (.I0(p_1_in[20]),
        .I1(\divider_reg_n_4_[20] ),
        .O(\result[56]_i_11_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[56]_i_4 
       (.I0(p_1_in[24]),
        .O(\result[56]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[56]_i_5 
       (.I0(p_1_in[23]),
        .O(\result[56]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[56]_i_6 
       (.I0(p_1_in[22]),
        .O(\result[56]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[56]_i_7 
       (.I0(p_1_in[21]),
        .O(\result[56]_i_7_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[56]_i_8 
       (.I0(p_1_in[23]),
        .I1(\divider_reg_n_4_[23] ),
        .O(\result[56]_i_8_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[56]_i_9 
       (.I0(p_1_in[22]),
        .I1(\divider_reg_n_4_[22] ),
        .O(\result[56]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[57]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[57]),
        .I2(p_1_in[24]),
        .I3(tempres[24]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[57]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[58]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[58]),
        .I2(p_1_in[25]),
        .I3(tempres[25]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[58]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[59]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[59]),
        .I2(p_1_in[26]),
        .I3(tempres[26]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[59]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[5]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[5] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[5]),
        .I4(\result_reg_n_4_[4] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[60]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[60]),
        .I2(p_1_in[27]),
        .I3(tempres[27]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[60]_i_1_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[60]_i_10 
       (.I0(p_1_in[25]),
        .I1(\divider_reg_n_4_[25] ),
        .O(\result[60]_i_10_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[60]_i_11 
       (.I0(p_1_in[24]),
        .I1(\divider_reg_n_4_[24] ),
        .O(\result[60]_i_11_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[60]_i_4 
       (.I0(p_1_in[28]),
        .O(\result[60]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[60]_i_5 
       (.I0(p_1_in[27]),
        .O(\result[60]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[60]_i_6 
       (.I0(p_1_in[26]),
        .O(\result[60]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[60]_i_7 
       (.I0(p_1_in[25]),
        .O(\result[60]_i_7_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[60]_i_8 
       (.I0(p_1_in[27]),
        .I1(\divider_reg_n_4_[27] ),
        .O(\result[60]_i_8_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[60]_i_9 
       (.I0(p_1_in[26]),
        .I1(\divider_reg_n_4_[26] ),
        .O(\result[60]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[61]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[61]),
        .I2(p_1_in[28]),
        .I3(tempres[28]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[61]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[62]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[62]),
        .I2(p_1_in[29]),
        .I3(tempres[29]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[62]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[63]_i_1 
       (.I0(\result_reg[33]_0 ),
        .I1(result[63]),
        .I2(p_1_in[30]),
        .I3(tempres[30]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[63]_i_1_n_4 ));
  LUT5 #(
    .INIT(32'h76FF7632)) 
    \result[64]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(div_start),
        .I3(\cnt[5]_i_3_n_4 ),
        .I4(\result[64]_i_3_n_4 ),
        .O(\result[64]_i_1_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[64]_i_10 
       (.I0(p_1_in[31]),
        .O(\result[64]_i_10_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[64]_i_11 
       (.I0(p_1_in[30]),
        .O(\result[64]_i_11_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[64]_i_12 
       (.I0(p_1_in[29]),
        .O(\result[64]_i_12_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[64]_i_13 
       (.I0(p_1_in[31]),
        .I1(\divider_reg_n_4_[31] ),
        .O(\result[64]_i_13_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[64]_i_14 
       (.I0(p_1_in[30]),
        .I1(\divider_reg_n_4_[30] ),
        .O(\result[64]_i_14_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[64]_i_15 
       (.I0(p_1_in[29]),
        .I1(\divider_reg_n_4_[29] ),
        .O(\result[64]_i_15_n_4 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result[64]_i_16 
       (.I0(p_1_in[28]),
        .I1(\divider_reg_n_4_[28] ),
        .O(\result[64]_i_16_n_4 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \result[64]_i_2 
       (.I0(\result_reg[33]_0 ),
        .I1(result[64]),
        .I2(p_1_in[31]),
        .I3(tempres[31]),
        .I4(\result[64]_i_7_n_4 ),
        .I5(\result_reg[64]_i_8_n_7 ),
        .O(\result[64]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h0000002000200000)) 
    \result[64]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(div_signed),
        .I3(rst_IBUF),
        .I4(\result_reg_n_4_[64] ),
        .I5(Q[1]),
        .O(\result[64]_i_3_n_4 ));
  LUT4 #(
    .INIT(16'hD0D3)) 
    \result[64]_i_4 
       (.I0(\cnt[5]_i_3_n_4 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(div_start),
        .O(\result_reg[33]_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \result[64]_i_7 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\cnt[5]_i_3_n_4 ),
        .O(\result[64]_i_7_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[64]_i_9 
       (.I0(\result_reg_n_4_[64] ),
        .O(\result[64]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[6]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[6] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[6]),
        .I4(\result_reg_n_4_[5] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[7]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[7] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[7]),
        .I4(\result_reg_n_4_[6] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[8]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[8] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[8]),
        .I4(\result_reg_n_4_[7] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[8]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[8]_i_4 
       (.I0(\result_reg_n_4_[8] ),
        .O(result1[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[8]_i_5 
       (.I0(\result_reg_n_4_[7] ),
        .O(result1[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[8]_i_6 
       (.I0(\result_reg_n_4_[6] ),
        .O(result1[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[8]_i_7 
       (.I0(\result_reg_n_4_[5] ),
        .O(result1[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result[9]_i_2 
       (.I0(\state_reg[1]_1 ),
        .I1(\result_reg_n_4_[9] ),
        .I2(\state_reg[1]_2 ),
        .I3(p_0_in[9]),
        .I4(\result_reg_n_4_[8] ),
        .I5(\result[64]_i_7_n_4 ),
        .O(\result_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[0]_i_1 
       (.I0(\result_reg_n_4_[0] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[0]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[10]_i_1 
       (.I0(\result_reg_n_4_[10] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[10]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[11]_i_1 
       (.I0(\result_reg_n_4_[11] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[11]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[12]_i_1 
       (.I0(\result_reg_n_4_[12] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[12]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[13]_i_1 
       (.I0(\result_reg_n_4_[13] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[13]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[14]_i_1 
       (.I0(\result_reg_n_4_[14] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[14]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[15]_i_1 
       (.I0(\result_reg_n_4_[15] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[15]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[16]_i_1 
       (.I0(\result_reg_n_4_[16] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[16]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[17]_i_1 
       (.I0(\result_reg_n_4_[17] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[17]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[18]_i_1 
       (.I0(\result_reg_n_4_[18] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[18]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[19]_i_1 
       (.I0(\result_reg_n_4_[19] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[19]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[1]_i_1 
       (.I0(\result_reg_n_4_[1] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[1]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[20]_i_1 
       (.I0(\result_reg_n_4_[20] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[20]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[21]_i_1 
       (.I0(\result_reg_n_4_[21] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[21]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[22]_i_1 
       (.I0(\result_reg_n_4_[22] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[22]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[23]_i_1 
       (.I0(\result_reg_n_4_[23] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[23]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[24]_i_1 
       (.I0(\result_reg_n_4_[24] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[24]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[25]_i_1 
       (.I0(\result_reg_n_4_[25] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[25]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[26]_i_1 
       (.I0(\result_reg_n_4_[26] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[26]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[27]_i_1 
       (.I0(\result_reg_n_4_[27] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[27]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[28]_i_1 
       (.I0(\result_reg_n_4_[28] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[28]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[29]_i_1 
       (.I0(\result_reg_n_4_[29] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[29]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[2]_i_1 
       (.I0(\result_reg_n_4_[2] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[2]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[30]_i_1 
       (.I0(\result_reg_n_4_[30] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[30]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[31]_i_1 
       (.I0(\result_reg_n_4_[31] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[31]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[32]_i_1 
       (.I0(p_1_in[1]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[32]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[33]_i_1 
       (.I0(p_1_in[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[33]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[34]_i_1 
       (.I0(p_1_in[3]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[34]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[35]_i_1 
       (.I0(p_1_in[4]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[35]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[36]_i_1 
       (.I0(p_1_in[5]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[36]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[37]_i_1 
       (.I0(p_1_in[6]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[37]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[38]_i_1 
       (.I0(p_1_in[7]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[38]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[39]_i_1 
       (.I0(p_1_in[8]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[39]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[3]_i_1 
       (.I0(\result_reg_n_4_[3] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[3]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[40]_i_1 
       (.I0(p_1_in[9]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[40]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[41]_i_1 
       (.I0(p_1_in[10]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[41]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[42]_i_1 
       (.I0(p_1_in[11]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[42]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[43]_i_1 
       (.I0(p_1_in[12]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[43]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[44]_i_1 
       (.I0(p_1_in[13]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[44]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[45]_i_1 
       (.I0(p_1_in[14]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[45]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[46]_i_1 
       (.I0(p_1_in[15]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[46]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[47]_i_1 
       (.I0(p_1_in[16]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[47]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[48]_i_1 
       (.I0(p_1_in[17]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[48]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[49]_i_1 
       (.I0(p_1_in[18]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[49]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[4]_i_1 
       (.I0(\result_reg_n_4_[4] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[4]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[50]_i_1 
       (.I0(p_1_in[19]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[50]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[51]_i_1 
       (.I0(p_1_in[20]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[51]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[52]_i_1 
       (.I0(p_1_in[21]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[52]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[53]_i_1 
       (.I0(p_1_in[22]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[53]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[54]_i_1 
       (.I0(p_1_in[23]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[54]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[55]_i_1 
       (.I0(p_1_in[24]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[55]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[56]_i_1 
       (.I0(p_1_in[25]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[56]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[57]_i_1 
       (.I0(p_1_in[26]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[57]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[58]_i_1 
       (.I0(p_1_in[27]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[58]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[59]_i_1 
       (.I0(p_1_in[28]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[59]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[5]_i_1 
       (.I0(\result_reg_n_4_[5] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[5]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[60]_i_1 
       (.I0(p_1_in[29]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[60]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[61]_i_1 
       (.I0(p_1_in[30]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[61]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[62]_i_1 
       (.I0(p_1_in[31]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[62]_i_1_n_4 ));
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[63]_i_1 
       (.I0(\result_reg_n_4_[64] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[63]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[6]_i_1 
       (.I0(\result_reg_n_4_[6] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[6]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[7]_i_1 
       (.I0(\result_reg_n_4_[7] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[7]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[8]_i_1 
       (.I0(\result_reg_n_4_[8] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[8]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_o[9]_i_1 
       (.I0(\result_reg_n_4_[9] ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\result_o[9]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[0]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[10]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[11]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[12]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[13]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[14]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[15]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[16]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[17]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[18]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[19]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[1]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[20]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[21]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[22]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[23]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[24]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[25]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[26]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[27]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[28]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[29]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[2]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[30]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[31]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[32] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[32]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [32]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[33] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[33]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [33]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[34] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[34]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [34]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[35] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[35]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [35]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[36] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[36]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [36]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[37] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[37]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [37]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[38] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[38]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [38]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[39] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[39]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [39]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[3]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[40] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[40]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [40]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[41] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[41]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [41]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[42] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[42]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [42]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[43] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[43]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [43]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[44] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[44]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [44]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[45] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[45]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [45]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[46] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[46]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [46]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[47] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[47]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [47]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[48] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[48]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [48]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[49] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[49]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [49]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[4]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[50] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[50]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [50]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[51] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[51]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [51]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[52] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[52]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [52]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[53] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[53]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [53]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[54] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[54]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [54]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[55] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[55]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [55]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[56] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[56]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [56]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[57] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[57]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [57]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[58] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[58]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [58]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[59] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[59]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [59]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[5]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[60] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[60]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [60]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[61] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[61]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [61]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[62] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[62]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [62]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[63] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[63]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [63]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[6]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[7]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[8]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_o_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result_o[9]_i_1_n_4 ),
        .Q(\mem_hi_reg[31] [9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[0] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result[0]_i_1_n_4 ),
        .Q(\result_reg_n_4_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[10] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [8]),
        .Q(\result_reg_n_4_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[11] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [9]),
        .Q(\result_reg_n_4_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[12] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [10]),
        .Q(\result_reg_n_4_[12] ),
        .R(rst));
  CARRY4 \result_reg[12]_i_3 
       (.CI(\result_reg[8]_i_3_n_4 ),
        .CO({\result_reg[12]_i_3_n_4 ,\result_reg[12]_i_3_n_5 ,\result_reg[12]_i_3_n_6 ,\result_reg[12]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[12:9]),
        .S(result1[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[13] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [11]),
        .Q(\result_reg_n_4_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[14] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [12]),
        .Q(\result_reg_n_4_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[15] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [13]),
        .Q(\result_reg_n_4_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[16] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [14]),
        .Q(\result_reg_n_4_[16] ),
        .R(rst));
  CARRY4 \result_reg[16]_i_3 
       (.CI(\result_reg[12]_i_3_n_4 ),
        .CO({\result_reg[16]_i_3_n_4 ,\result_reg[16]_i_3_n_5 ,\result_reg[16]_i_3_n_6 ,\result_reg[16]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[16:13]),
        .S(result1[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[17] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [15]),
        .Q(\result_reg_n_4_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[18] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [16]),
        .Q(\result_reg_n_4_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[19] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [17]),
        .Q(\result_reg_n_4_[19] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[1] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result[1]_i_1_n_4 ),
        .Q(\result_reg_n_4_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[20] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [18]),
        .Q(\result_reg_n_4_[20] ),
        .R(rst));
  CARRY4 \result_reg[20]_i_3 
       (.CI(\result_reg[16]_i_3_n_4 ),
        .CO({\result_reg[20]_i_3_n_4 ,\result_reg[20]_i_3_n_5 ,\result_reg[20]_i_3_n_6 ,\result_reg[20]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[20:17]),
        .S(result1[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[21] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [19]),
        .Q(\result_reg_n_4_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[22] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [20]),
        .Q(\result_reg_n_4_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[23] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [21]),
        .Q(\result_reg_n_4_[23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[24] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [22]),
        .Q(\result_reg_n_4_[24] ),
        .R(rst));
  CARRY4 \result_reg[24]_i_3 
       (.CI(\result_reg[20]_i_3_n_4 ),
        .CO({\result_reg[24]_i_3_n_4 ,\result_reg[24]_i_3_n_5 ,\result_reg[24]_i_3_n_6 ,\result_reg[24]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[24:21]),
        .S(result1[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[25] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [23]),
        .Q(\result_reg_n_4_[25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[26] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [24]),
        .Q(\result_reg_n_4_[26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[27] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [25]),
        .Q(\result_reg_n_4_[27] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[28] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [26]),
        .Q(\result_reg_n_4_[28] ),
        .R(rst));
  CARRY4 \result_reg[28]_i_3 
       (.CI(\result_reg[24]_i_3_n_4 ),
        .CO({\result_reg[28]_i_3_n_4 ,\result_reg[28]_i_3_n_5 ,\result_reg[28]_i_3_n_6 ,\result_reg[28]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[28:25]),
        .S(result1[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[29] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [27]),
        .Q(\result_reg_n_4_[29] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[2] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [0]),
        .Q(\result_reg_n_4_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[30] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [28]),
        .Q(\result_reg_n_4_[30] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[31] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [29]),
        .Q(\result_reg_n_4_[31] ),
        .R(rst));
  CARRY4 \result_reg[31]_i_9 
       (.CI(\result_reg[28]_i_3_n_4 ),
        .CO({\NLW_result_reg[31]_i_9_CO_UNCONNECTED [3:2],\result_reg[31]_i_9_n_6 ,\result_reg[31]_i_9_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_result_reg[31]_i_9_O_UNCONNECTED [3],p_0_in[31:29]}),
        .S({1'b0,result1[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[32] 
       (.C(CLK),
        .CE(1'b1),
        .D(\result[32]_i_1_n_4 ),
        .Q(p_1_in[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[33] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[33]_i_1_n_4 ),
        .Q(p_1_in[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[34] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[34]_i_1_n_4 ),
        .Q(p_1_in[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[35] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[35]_i_1_n_4 ),
        .Q(p_1_in[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[36] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[36]_i_1_n_4 ),
        .Q(p_1_in[4]),
        .R(rst));
  CARRY4 \result_reg[36]_i_2 
       (.CI(1'b0),
        .CO({\result_reg[36]_i_2_n_4 ,\result_reg[36]_i_2_n_5 ,\result_reg[36]_i_2_n_6 ,\result_reg[36]_i_2_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(result[36:33]),
        .S({\result[36]_i_4_n_4 ,\result[36]_i_5_n_4 ,\result[36]_i_6_n_4 ,p_1_in[1]}));
  CARRY4 \result_reg[36]_i_3 
       (.CI(1'b0),
        .CO({\result_reg[36]_i_3_n_4 ,\result_reg[36]_i_3_n_5 ,\result_reg[36]_i_3_n_6 ,\result_reg[36]_i_3_n_7 }),
        .CYINIT(1'b1),
        .DI(p_1_in[3:0]),
        .O(tempres[3:0]),
        .S({\result[36]_i_7_n_4 ,\result[36]_i_8_n_4 ,\result[36]_i_9_n_4 ,\result[36]_i_10_n_4 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[37] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[37]_i_1_n_4 ),
        .Q(p_1_in[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[38] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[38]_i_1_n_4 ),
        .Q(p_1_in[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[39] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[39]_i_1_n_4 ),
        .Q(p_1_in[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[3] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [1]),
        .Q(\result_reg_n_4_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[40] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[40]_i_1_n_4 ),
        .Q(p_1_in[8]),
        .R(rst));
  CARRY4 \result_reg[40]_i_2 
       (.CI(\result_reg[36]_i_2_n_4 ),
        .CO({\result_reg[40]_i_2_n_4 ,\result_reg[40]_i_2_n_5 ,\result_reg[40]_i_2_n_6 ,\result_reg[40]_i_2_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(result[40:37]),
        .S({\result[40]_i_4_n_4 ,\result[40]_i_5_n_4 ,\result[40]_i_6_n_4 ,\result[40]_i_7_n_4 }));
  CARRY4 \result_reg[40]_i_3 
       (.CI(\result_reg[36]_i_3_n_4 ),
        .CO({\result_reg[40]_i_3_n_4 ,\result_reg[40]_i_3_n_5 ,\result_reg[40]_i_3_n_6 ,\result_reg[40]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(p_1_in[7:4]),
        .O(tempres[7:4]),
        .S({\result[40]_i_8_n_4 ,\result[40]_i_9_n_4 ,\result[40]_i_10_n_4 ,\result[40]_i_11_n_4 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[41] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[41]_i_1_n_4 ),
        .Q(p_1_in[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[42] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[42]_i_1_n_4 ),
        .Q(p_1_in[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[43] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[43]_i_1_n_4 ),
        .Q(p_1_in[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[44] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[44]_i_1_n_4 ),
        .Q(p_1_in[12]),
        .R(rst));
  CARRY4 \result_reg[44]_i_2 
       (.CI(\result_reg[40]_i_2_n_4 ),
        .CO({\result_reg[44]_i_2_n_4 ,\result_reg[44]_i_2_n_5 ,\result_reg[44]_i_2_n_6 ,\result_reg[44]_i_2_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(result[44:41]),
        .S({\result[44]_i_4_n_4 ,\result[44]_i_5_n_4 ,\result[44]_i_6_n_4 ,\result[44]_i_7_n_4 }));
  CARRY4 \result_reg[44]_i_3 
       (.CI(\result_reg[40]_i_3_n_4 ),
        .CO({\result_reg[44]_i_3_n_4 ,\result_reg[44]_i_3_n_5 ,\result_reg[44]_i_3_n_6 ,\result_reg[44]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(p_1_in[11:8]),
        .O(tempres[11:8]),
        .S({\result[44]_i_8_n_4 ,\result[44]_i_9_n_4 ,\result[44]_i_10_n_4 ,\result[44]_i_11_n_4 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[45] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[45]_i_1_n_4 ),
        .Q(p_1_in[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[46] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[46]_i_1_n_4 ),
        .Q(p_1_in[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[47] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[47]_i_1_n_4 ),
        .Q(p_1_in[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[48] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[48]_i_1_n_4 ),
        .Q(p_1_in[16]),
        .R(rst));
  CARRY4 \result_reg[48]_i_2 
       (.CI(\result_reg[44]_i_2_n_4 ),
        .CO({\result_reg[48]_i_2_n_4 ,\result_reg[48]_i_2_n_5 ,\result_reg[48]_i_2_n_6 ,\result_reg[48]_i_2_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(result[48:45]),
        .S({\result[48]_i_4_n_4 ,\result[48]_i_5_n_4 ,\result[48]_i_6_n_4 ,\result[48]_i_7_n_4 }));
  CARRY4 \result_reg[48]_i_3 
       (.CI(\result_reg[44]_i_3_n_4 ),
        .CO({\result_reg[48]_i_3_n_4 ,\result_reg[48]_i_3_n_5 ,\result_reg[48]_i_3_n_6 ,\result_reg[48]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(p_1_in[15:12]),
        .O(tempres[15:12]),
        .S({\result[48]_i_8_n_4 ,\result[48]_i_9_n_4 ,\result[48]_i_10_n_4 ,\result[48]_i_11_n_4 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[49] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[49]_i_1_n_4 ),
        .Q(p_1_in[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[4] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [2]),
        .Q(\result_reg_n_4_[4] ),
        .R(rst));
  CARRY4 \result_reg[4]_i_3 
       (.CI(1'b0),
        .CO({\result_reg[4]_i_3_n_4 ,\result_reg[4]_i_3_n_5 ,\result_reg[4]_i_3_n_6 ,\result_reg[4]_i_3_n_7 }),
        .CYINIT(result1[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[4:1]),
        .S(result1[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[50] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[50]_i_1_n_4 ),
        .Q(p_1_in[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[51] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[51]_i_1_n_4 ),
        .Q(p_1_in[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[52] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[52]_i_1_n_4 ),
        .Q(p_1_in[20]),
        .R(rst));
  CARRY4 \result_reg[52]_i_2 
       (.CI(\result_reg[48]_i_2_n_4 ),
        .CO({\result_reg[52]_i_2_n_4 ,\result_reg[52]_i_2_n_5 ,\result_reg[52]_i_2_n_6 ,\result_reg[52]_i_2_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(result[52:49]),
        .S({\result[52]_i_4_n_4 ,\result[52]_i_5_n_4 ,\result[52]_i_6_n_4 ,\result[52]_i_7_n_4 }));
  CARRY4 \result_reg[52]_i_3 
       (.CI(\result_reg[48]_i_3_n_4 ),
        .CO({\result_reg[52]_i_3_n_4 ,\result_reg[52]_i_3_n_5 ,\result_reg[52]_i_3_n_6 ,\result_reg[52]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(p_1_in[19:16]),
        .O(tempres[19:16]),
        .S({\result[52]_i_8_n_4 ,\result[52]_i_9_n_4 ,\result[52]_i_10_n_4 ,\result[52]_i_11_n_4 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[53] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[53]_i_1_n_4 ),
        .Q(p_1_in[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[54] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[54]_i_1_n_4 ),
        .Q(p_1_in[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[55] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[55]_i_1_n_4 ),
        .Q(p_1_in[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[56] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[56]_i_1_n_4 ),
        .Q(p_1_in[24]),
        .R(rst));
  CARRY4 \result_reg[56]_i_2 
       (.CI(\result_reg[52]_i_2_n_4 ),
        .CO({\result_reg[56]_i_2_n_4 ,\result_reg[56]_i_2_n_5 ,\result_reg[56]_i_2_n_6 ,\result_reg[56]_i_2_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(result[56:53]),
        .S({\result[56]_i_4_n_4 ,\result[56]_i_5_n_4 ,\result[56]_i_6_n_4 ,\result[56]_i_7_n_4 }));
  CARRY4 \result_reg[56]_i_3 
       (.CI(\result_reg[52]_i_3_n_4 ),
        .CO({\result_reg[56]_i_3_n_4 ,\result_reg[56]_i_3_n_5 ,\result_reg[56]_i_3_n_6 ,\result_reg[56]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(p_1_in[23:20]),
        .O(tempres[23:20]),
        .S({\result[56]_i_8_n_4 ,\result[56]_i_9_n_4 ,\result[56]_i_10_n_4 ,\result[56]_i_11_n_4 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[57] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[57]_i_1_n_4 ),
        .Q(p_1_in[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[58] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[58]_i_1_n_4 ),
        .Q(p_1_in[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[59] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[59]_i_1_n_4 ),
        .Q(p_1_in[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[5] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [3]),
        .Q(\result_reg_n_4_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[60] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[60]_i_1_n_4 ),
        .Q(p_1_in[28]),
        .R(rst));
  CARRY4 \result_reg[60]_i_2 
       (.CI(\result_reg[56]_i_2_n_4 ),
        .CO({\result_reg[60]_i_2_n_4 ,\result_reg[60]_i_2_n_5 ,\result_reg[60]_i_2_n_6 ,\result_reg[60]_i_2_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(result[60:57]),
        .S({\result[60]_i_4_n_4 ,\result[60]_i_5_n_4 ,\result[60]_i_6_n_4 ,\result[60]_i_7_n_4 }));
  CARRY4 \result_reg[60]_i_3 
       (.CI(\result_reg[56]_i_3_n_4 ),
        .CO({\result_reg[60]_i_3_n_4 ,\result_reg[60]_i_3_n_5 ,\result_reg[60]_i_3_n_6 ,\result_reg[60]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(p_1_in[27:24]),
        .O(tempres[27:24]),
        .S({\result[60]_i_8_n_4 ,\result[60]_i_9_n_4 ,\result[60]_i_10_n_4 ,\result[60]_i_11_n_4 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[61] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[61]_i_1_n_4 ),
        .Q(p_1_in[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[62] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[62]_i_1_n_4 ),
        .Q(p_1_in[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[63] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[63]_i_1_n_4 ),
        .Q(p_1_in[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[64] 
       (.C(CLK),
        .CE(\result[64]_i_1_n_4 ),
        .D(\result[64]_i_2_n_4 ),
        .Q(\result_reg_n_4_[64] ),
        .R(rst));
  CARRY4 \result_reg[64]_i_5 
       (.CI(\result_reg[60]_i_2_n_4 ),
        .CO({\NLW_result_reg[64]_i_5_CO_UNCONNECTED [3],\result_reg[64]_i_5_n_5 ,\result_reg[64]_i_5_n_6 ,\result_reg[64]_i_5_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(result[64:61]),
        .S({\result[64]_i_9_n_4 ,\result[64]_i_10_n_4 ,\result[64]_i_11_n_4 ,\result[64]_i_12_n_4 }));
  CARRY4 \result_reg[64]_i_6 
       (.CI(\result_reg[60]_i_3_n_4 ),
        .CO({\result_reg[64]_i_6_n_4 ,\result_reg[64]_i_6_n_5 ,\result_reg[64]_i_6_n_6 ,\result_reg[64]_i_6_n_7 }),
        .CYINIT(1'b0),
        .DI(p_1_in[31:28]),
        .O(tempres[31:28]),
        .S({\result[64]_i_13_n_4 ,\result[64]_i_14_n_4 ,\result[64]_i_15_n_4 ,\result[64]_i_16_n_4 }));
  CARRY4 \result_reg[64]_i_8 
       (.CI(\result_reg[64]_i_6_n_4 ),
        .CO({\NLW_result_reg[64]_i_8_CO_UNCONNECTED [3:1],\result_reg[64]_i_8_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_result_reg[64]_i_8_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[6] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [4]),
        .Q(\result_reg_n_4_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[7] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [5]),
        .Q(\result_reg_n_4_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[8] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [6]),
        .Q(\result_reg_n_4_[8] ),
        .R(rst));
  CARRY4 \result_reg[8]_i_3 
       (.CI(\result_reg[4]_i_3_n_4 ),
        .CO({\result_reg[8]_i_3_n_4 ,\result_reg[8]_i_3_n_5 ,\result_reg[8]_i_3_n_6 ,\result_reg[8]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[8:5]),
        .S(result1[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[9] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_4 ),
        .D(\result_reg[31]_1 [7]),
        .Q(\result_reg_n_4_[9] ),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    stallreq_reg_i_1
       (.I0(div_ready),
        .O(\mem_lo_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEEAA0A88)) 
    \state[1]_i_1 
       (.I0(p_0_out),
        .I1(div_start),
        .I2(\cnt[5]_i_3_n_4 ),
        .I3(state[0]),
        .I4(state[1]),
        .O(\state[1]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state_reg[0]_0 ),
        .Q(state[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state[1]_i_1_n_4 ),
        .Q(state[1]),
        .R(rst));
endmodule

module ex
   (ex_whilo_o,
    div_start,
    div_signed,
    ex_excepttype_o,
    stalleq_from_ex,
    P,
    \result_reg[32] ,
    \result_reg[31] ,
    \result_reg[1] ,
    D,
    \divider_reg[1] ,
    \state_reg[0] ,
    \mem_lo_reg[1] ,
    \mem_lo_reg[3] ,
    \mem_lo_reg[4] ,
    \mem_lo_reg[5] ,
    \mem_lo_reg[8] ,
    \mem_lo_reg[9] ,
    \mem_lo_reg[11] ,
    \mem_lo_reg[13] ,
    \mem_lo_reg[14] ,
    \mem_lo_reg[15] ,
    \mem_lo_reg[16] ,
    \mem_lo_reg[17] ,
    \mem_lo_reg[19] ,
    \mem_lo_reg[20] ,
    \mem_lo_reg[22] ,
    \mem_lo_reg[25] ,
    \mem_lo_reg[26] ,
    \mem_lo_reg[27] ,
    \mem_hi_reg[0] ,
    \mem_hi_reg[1] ,
    \mem_hi_reg[2] ,
    \mem_hi_reg[3] ,
    \mem_hi_reg[4] ,
    \mem_hi_reg[5] ,
    \mem_hi_reg[6] ,
    \mem_hi_reg[7] ,
    \mem_hi_reg[8] ,
    \mem_hi_reg[9] ,
    \mem_hi_reg[10] ,
    \mem_hi_reg[11] ,
    \mem_hi_reg[12] ,
    \mem_hi_reg[13] ,
    \mem_hi_reg[14] ,
    \mem_hi_reg[15] ,
    \mem_hi_reg[16] ,
    \mem_hi_reg[17] ,
    \mem_hi_reg[18] ,
    \mem_hi_reg[19] ,
    \mem_hi_reg[20] ,
    \mem_hi_reg[21] ,
    \mem_hi_reg[22] ,
    \mem_hi_reg[23] ,
    \mem_hi_reg[24] ,
    \mem_hi_reg[25] ,
    \mem_hi_reg[26] ,
    \mem_hi_reg[27] ,
    \mem_hi_reg[28] ,
    \mem_hi_reg[29] ,
    \mem_hi_reg[30] ,
    \mem_hi_reg[31] ,
    \mem_lo_reg[6] ,
    \mem_lo_reg[10] ,
    \mem_lo_reg[12] ,
    \mem_lo_reg[18] ,
    \mem_lo_reg[21] ,
    \mem_lo_reg[23] ,
    \mem_lo_reg[24] ,
    \mem_lo_reg[28] ,
    \mem_lo_reg[29] ,
    \mem_lo_reg[30] ,
    \mem_lo_reg[31] ,
    \mem_wdata_reg[10] ,
    \mem_wdata_reg[10]_0 ,
    O,
    \mem_lo_reg[7] ,
    \result_reg[31]_0 ,
    \result_reg[2] ,
    \result_reg[2]_0 ,
    p_0_out,
    \mem_wdata_reg[31] ,
    \mem_hi_reg[31]_0 ,
    \mem_lo_reg[31]_0 ,
    \ex_aluop_reg[5] ,
    p_0_in,
    \ex_aluop_reg[1] ,
    \ex_aluop_reg[1]_0 ,
    \ex_aluop_reg[1]_1 ,
    ovassert0,
    ready_o_reg,
    \ex_aluop_reg[5]_0 ,
    rst,
    mul_op1,
    mul_op2,
    Q,
    \ex_reg1_reg[31] ,
    state,
    \ex_reg2_reg[31] ,
    rst_IBUF,
    \ex_aluop_reg[1]_2 ,
    wb_cp0_reg_write_addr_i,
    \result_reg[2]_1 ,
    \result_reg[3] ,
    \result_reg[4] ,
    \result_reg[5] ,
    \result_reg[6] ,
    \result_reg[7] ,
    \result_reg[8] ,
    \result_reg[9] ,
    \result_reg[10] ,
    \result_reg[11] ,
    \result_reg[12] ,
    \result_reg[13] ,
    \result_reg[14] ,
    \result_reg[15] ,
    \result_reg[16] ,
    \result_reg[17] ,
    \result_reg[18] ,
    \result_reg[19] ,
    \result_reg[20] ,
    \result_reg[21] ,
    \result_reg[22] ,
    \result_reg[23] ,
    \result_reg[24] ,
    \result_reg[25] ,
    \result_reg[26] ,
    \result_reg[27] ,
    \result_reg[28] ,
    \result_reg[29] ,
    \result_reg[30] ,
    \result_reg[31]_1 ,
    \state_reg[1] ,
    \ex_alusel_reg[2] ,
    E,
    \ex_reg1_reg[31]_0 ,
    \ex_aluop_reg[5]_1 ,
    \ex_reg1_reg[31]_1 ,
    \ex_aluop_reg[1]_3 ,
    \ex_inst_reg[13] ,
    \ex_aluop_reg[2] );
  output ex_whilo_o;
  output div_start;
  output div_signed;
  output [0:0]ex_excepttype_o;
  output stalleq_from_ex;
  output [2:0]P;
  output \result_reg[32] ;
  output [1:0]\result_reg[31] ;
  output \result_reg[1] ;
  output [31:0]D;
  output [0:0]\divider_reg[1] ;
  output \state_reg[0] ;
  output \mem_lo_reg[1] ;
  output \mem_lo_reg[3] ;
  output \mem_lo_reg[4] ;
  output \mem_lo_reg[5] ;
  output \mem_lo_reg[8] ;
  output \mem_lo_reg[9] ;
  output \mem_lo_reg[11] ;
  output \mem_lo_reg[13] ;
  output \mem_lo_reg[14] ;
  output \mem_lo_reg[15] ;
  output \mem_lo_reg[16] ;
  output \mem_lo_reg[17] ;
  output \mem_lo_reg[19] ;
  output \mem_lo_reg[20] ;
  output \mem_lo_reg[22] ;
  output \mem_lo_reg[25] ;
  output \mem_lo_reg[26] ;
  output \mem_lo_reg[27] ;
  output \mem_hi_reg[0] ;
  output \mem_hi_reg[1] ;
  output \mem_hi_reg[2] ;
  output \mem_hi_reg[3] ;
  output \mem_hi_reg[4] ;
  output \mem_hi_reg[5] ;
  output \mem_hi_reg[6] ;
  output \mem_hi_reg[7] ;
  output \mem_hi_reg[8] ;
  output \mem_hi_reg[9] ;
  output \mem_hi_reg[10] ;
  output \mem_hi_reg[11] ;
  output \mem_hi_reg[12] ;
  output \mem_hi_reg[13] ;
  output \mem_hi_reg[14] ;
  output \mem_hi_reg[15] ;
  output \mem_hi_reg[16] ;
  output \mem_hi_reg[17] ;
  output \mem_hi_reg[18] ;
  output \mem_hi_reg[19] ;
  output \mem_hi_reg[20] ;
  output \mem_hi_reg[21] ;
  output \mem_hi_reg[22] ;
  output \mem_hi_reg[23] ;
  output \mem_hi_reg[24] ;
  output \mem_hi_reg[25] ;
  output \mem_hi_reg[26] ;
  output \mem_hi_reg[27] ;
  output \mem_hi_reg[28] ;
  output \mem_hi_reg[29] ;
  output \mem_hi_reg[30] ;
  output \mem_hi_reg[31] ;
  output \mem_lo_reg[6] ;
  output \mem_lo_reg[10] ;
  output \mem_lo_reg[12] ;
  output \mem_lo_reg[18] ;
  output \mem_lo_reg[21] ;
  output \mem_lo_reg[23] ;
  output \mem_lo_reg[24] ;
  output \mem_lo_reg[28] ;
  output \mem_lo_reg[29] ;
  output \mem_lo_reg[30] ;
  output \mem_lo_reg[31] ;
  output \mem_wdata_reg[10] ;
  output [2:0]\mem_wdata_reg[10]_0 ;
  output [0:0]O;
  output [0:0]\mem_lo_reg[7] ;
  output [29:0]\result_reg[31]_0 ;
  output \result_reg[2] ;
  output \result_reg[2]_0 ;
  output [0:0]p_0_out;
  output [31:0]\mem_wdata_reg[31] ;
  output [31:0]\mem_hi_reg[31]_0 ;
  output [31:0]\mem_lo_reg[31]_0 ;
  input \ex_aluop_reg[5] ;
  input p_0_in;
  input \ex_aluop_reg[1] ;
  input \ex_aluop_reg[1]_0 ;
  input [0:0]\ex_aluop_reg[1]_1 ;
  input ovassert0;
  input ready_o_reg;
  input \ex_aluop_reg[5]_0 ;
  input rst;
  input [30:0]mul_op1;
  input [30:0]mul_op2;
  input [31:0]Q;
  input [31:0]\ex_reg1_reg[31] ;
  input [1:0]state;
  input \ex_reg2_reg[31] ;
  input rst_IBUF;
  input \ex_aluop_reg[1]_2 ;
  input [2:0]wb_cp0_reg_write_addr_i;
  input \result_reg[2]_1 ;
  input \result_reg[3] ;
  input \result_reg[4] ;
  input \result_reg[5] ;
  input \result_reg[6] ;
  input \result_reg[7] ;
  input \result_reg[8] ;
  input \result_reg[9] ;
  input \result_reg[10] ;
  input \result_reg[11] ;
  input \result_reg[12] ;
  input \result_reg[13] ;
  input \result_reg[14] ;
  input \result_reg[15] ;
  input \result_reg[16] ;
  input \result_reg[17] ;
  input \result_reg[18] ;
  input \result_reg[19] ;
  input \result_reg[20] ;
  input \result_reg[21] ;
  input \result_reg[22] ;
  input \result_reg[23] ;
  input \result_reg[24] ;
  input \result_reg[25] ;
  input \result_reg[26] ;
  input \result_reg[27] ;
  input \result_reg[28] ;
  input \result_reg[29] ;
  input \result_reg[30] ;
  input \result_reg[31]_1 ;
  input \state_reg[1] ;
  input [31:0]\ex_alusel_reg[2] ;
  input [0:0]E;
  input [31:0]\ex_reg1_reg[31]_0 ;
  input [0:0]\ex_aluop_reg[5]_1 ;
  input [31:0]\ex_reg1_reg[31]_1 ;
  input [0:0]\ex_aluop_reg[1]_3 ;
  input [2:0]\ex_inst_reg[13] ;
  input [0:0]\ex_aluop_reg[2] ;

  wire [31:0]D;
  wire [0:0]E;
  wire [0:0]O;
  wire [2:0]P;
  wire [31:0]Q;
  wire [31:1]\div0/divider0 ;
  wire [31:1]\div0/result0 ;
  wire [30:1]div_opdata1;
  wire [30:0]div_opdata2;
  wire div_signed;
  wire div_start;
  wire \divider[12]_i_3_n_4 ;
  wire \divider[12]_i_4_n_4 ;
  wire \divider[12]_i_5_n_4 ;
  wire \divider[12]_i_6_n_4 ;
  wire \divider[16]_i_3_n_4 ;
  wire \divider[16]_i_4_n_4 ;
  wire \divider[16]_i_5_n_4 ;
  wire \divider[16]_i_6_n_4 ;
  wire \divider[20]_i_3_n_4 ;
  wire \divider[20]_i_4_n_4 ;
  wire \divider[20]_i_5_n_4 ;
  wire \divider[20]_i_6_n_4 ;
  wire \divider[24]_i_3_n_4 ;
  wire \divider[24]_i_4_n_4 ;
  wire \divider[24]_i_5_n_4 ;
  wire \divider[24]_i_6_n_4 ;
  wire \divider[28]_i_3_n_4 ;
  wire \divider[28]_i_4_n_4 ;
  wire \divider[28]_i_5_n_4 ;
  wire \divider[28]_i_6_n_4 ;
  wire \divider[31]_i_3_n_4 ;
  wire \divider[31]_i_5_n_4 ;
  wire \divider[31]_i_6_n_4 ;
  wire \divider[31]_i_7_n_4 ;
  wire \divider[4]_i_3_n_4 ;
  wire \divider[4]_i_4_n_4 ;
  wire \divider[4]_i_5_n_4 ;
  wire \divider[4]_i_6_n_4 ;
  wire \divider[4]_i_7_n_4 ;
  wire \divider[8]_i_3_n_4 ;
  wire \divider[8]_i_4_n_4 ;
  wire \divider[8]_i_5_n_4 ;
  wire \divider[8]_i_6_n_4 ;
  wire \divider_reg[12]_i_2_n_4 ;
  wire \divider_reg[12]_i_2_n_5 ;
  wire \divider_reg[12]_i_2_n_6 ;
  wire \divider_reg[12]_i_2_n_7 ;
  wire \divider_reg[16]_i_2_n_4 ;
  wire \divider_reg[16]_i_2_n_5 ;
  wire \divider_reg[16]_i_2_n_6 ;
  wire \divider_reg[16]_i_2_n_7 ;
  wire [0:0]\divider_reg[1] ;
  wire \divider_reg[20]_i_2_n_4 ;
  wire \divider_reg[20]_i_2_n_5 ;
  wire \divider_reg[20]_i_2_n_6 ;
  wire \divider_reg[20]_i_2_n_7 ;
  wire \divider_reg[24]_i_2_n_4 ;
  wire \divider_reg[24]_i_2_n_5 ;
  wire \divider_reg[24]_i_2_n_6 ;
  wire \divider_reg[24]_i_2_n_7 ;
  wire \divider_reg[28]_i_2_n_4 ;
  wire \divider_reg[28]_i_2_n_5 ;
  wire \divider_reg[28]_i_2_n_6 ;
  wire \divider_reg[28]_i_2_n_7 ;
  wire \divider_reg[31]_i_4_n_6 ;
  wire \divider_reg[31]_i_4_n_7 ;
  wire \divider_reg[4]_i_2_n_4 ;
  wire \divider_reg[4]_i_2_n_5 ;
  wire \divider_reg[4]_i_2_n_6 ;
  wire \divider_reg[4]_i_2_n_7 ;
  wire \divider_reg[8]_i_2_n_4 ;
  wire \divider_reg[8]_i_2_n_5 ;
  wire \divider_reg[8]_i_2_n_6 ;
  wire \divider_reg[8]_i_2_n_7 ;
  wire \ex_aluop_reg[1] ;
  wire \ex_aluop_reg[1]_0 ;
  wire [0:0]\ex_aluop_reg[1]_1 ;
  wire \ex_aluop_reg[1]_2 ;
  wire [0:0]\ex_aluop_reg[1]_3 ;
  wire [0:0]\ex_aluop_reg[2] ;
  wire \ex_aluop_reg[5] ;
  wire \ex_aluop_reg[5]_0 ;
  wire [0:0]\ex_aluop_reg[5]_1 ;
  wire [31:0]\ex_alusel_reg[2] ;
  wire [0:0]ex_excepttype_o;
  wire [2:0]\ex_inst_reg[13] ;
  wire [31:0]\ex_reg1_reg[31] ;
  wire [31:0]\ex_reg1_reg[31]_0 ;
  wire [31:0]\ex_reg1_reg[31]_1 ;
  wire \ex_reg2_reg[31] ;
  wire ex_whilo_o;
  wire \hi_o_reg[0]_i_3_n_10 ;
  wire \hi_o_reg[0]_i_3_n_11 ;
  wire \hi_o_reg[0]_i_3_n_4 ;
  wire \hi_o_reg[0]_i_3_n_5 ;
  wire \hi_o_reg[0]_i_3_n_6 ;
  wire \hi_o_reg[0]_i_3_n_7 ;
  wire \hi_o_reg[0]_i_3_n_8 ;
  wire \hi_o_reg[0]_i_3_n_9 ;
  wire \hi_o_reg[0]_i_4_n_4 ;
  wire \hi_o_reg[0]_i_5_n_4 ;
  wire \hi_o_reg[0]_i_6_n_4 ;
  wire \hi_o_reg[0]_i_7_n_4 ;
  wire \hi_o_reg[11]_i_3_n_10 ;
  wire \hi_o_reg[11]_i_3_n_11 ;
  wire \hi_o_reg[11]_i_3_n_4 ;
  wire \hi_o_reg[11]_i_3_n_5 ;
  wire \hi_o_reg[11]_i_3_n_6 ;
  wire \hi_o_reg[11]_i_3_n_7 ;
  wire \hi_o_reg[11]_i_3_n_8 ;
  wire \hi_o_reg[11]_i_3_n_9 ;
  wire \hi_o_reg[11]_i_4_n_4 ;
  wire \hi_o_reg[11]_i_5_n_4 ;
  wire \hi_o_reg[11]_i_6_n_4 ;
  wire \hi_o_reg[11]_i_7_n_4 ;
  wire \hi_o_reg[12]_i_3_n_10 ;
  wire \hi_o_reg[12]_i_3_n_11 ;
  wire \hi_o_reg[12]_i_3_n_4 ;
  wire \hi_o_reg[12]_i_3_n_5 ;
  wire \hi_o_reg[12]_i_3_n_6 ;
  wire \hi_o_reg[12]_i_3_n_7 ;
  wire \hi_o_reg[12]_i_3_n_8 ;
  wire \hi_o_reg[12]_i_3_n_9 ;
  wire \hi_o_reg[12]_i_4_n_4 ;
  wire \hi_o_reg[12]_i_5_n_4 ;
  wire \hi_o_reg[12]_i_6_n_4 ;
  wire \hi_o_reg[12]_i_7_n_4 ;
  wire \hi_o_reg[15]_i_3_n_10 ;
  wire \hi_o_reg[15]_i_3_n_11 ;
  wire \hi_o_reg[15]_i_3_n_4 ;
  wire \hi_o_reg[15]_i_3_n_5 ;
  wire \hi_o_reg[15]_i_3_n_6 ;
  wire \hi_o_reg[15]_i_3_n_7 ;
  wire \hi_o_reg[15]_i_3_n_8 ;
  wire \hi_o_reg[15]_i_3_n_9 ;
  wire \hi_o_reg[15]_i_4_n_4 ;
  wire \hi_o_reg[15]_i_5_n_4 ;
  wire \hi_o_reg[15]_i_6_n_4 ;
  wire \hi_o_reg[15]_i_7_n_4 ;
  wire \hi_o_reg[16]_i_3_n_10 ;
  wire \hi_o_reg[16]_i_3_n_11 ;
  wire \hi_o_reg[16]_i_3_n_4 ;
  wire \hi_o_reg[16]_i_3_n_5 ;
  wire \hi_o_reg[16]_i_3_n_6 ;
  wire \hi_o_reg[16]_i_3_n_7 ;
  wire \hi_o_reg[16]_i_3_n_8 ;
  wire \hi_o_reg[16]_i_3_n_9 ;
  wire \hi_o_reg[16]_i_4_n_4 ;
  wire \hi_o_reg[16]_i_5_n_4 ;
  wire \hi_o_reg[16]_i_6_n_4 ;
  wire \hi_o_reg[16]_i_7_n_4 ;
  wire \hi_o_reg[19]_i_3_n_10 ;
  wire \hi_o_reg[19]_i_3_n_11 ;
  wire \hi_o_reg[19]_i_3_n_4 ;
  wire \hi_o_reg[19]_i_3_n_5 ;
  wire \hi_o_reg[19]_i_3_n_6 ;
  wire \hi_o_reg[19]_i_3_n_7 ;
  wire \hi_o_reg[19]_i_3_n_8 ;
  wire \hi_o_reg[19]_i_3_n_9 ;
  wire \hi_o_reg[19]_i_4_n_4 ;
  wire \hi_o_reg[19]_i_5_n_4 ;
  wire \hi_o_reg[19]_i_6_n_4 ;
  wire \hi_o_reg[19]_i_7_n_4 ;
  wire \hi_o_reg[20]_i_3_n_10 ;
  wire \hi_o_reg[20]_i_3_n_11 ;
  wire \hi_o_reg[20]_i_3_n_4 ;
  wire \hi_o_reg[20]_i_3_n_5 ;
  wire \hi_o_reg[20]_i_3_n_6 ;
  wire \hi_o_reg[20]_i_3_n_7 ;
  wire \hi_o_reg[20]_i_3_n_8 ;
  wire \hi_o_reg[20]_i_3_n_9 ;
  wire \hi_o_reg[20]_i_4_n_4 ;
  wire \hi_o_reg[20]_i_5_n_4 ;
  wire \hi_o_reg[20]_i_6_n_4 ;
  wire \hi_o_reg[20]_i_7_n_4 ;
  wire \hi_o_reg[23]_i_3_n_10 ;
  wire \hi_o_reg[23]_i_3_n_11 ;
  wire \hi_o_reg[23]_i_3_n_4 ;
  wire \hi_o_reg[23]_i_3_n_5 ;
  wire \hi_o_reg[23]_i_3_n_6 ;
  wire \hi_o_reg[23]_i_3_n_7 ;
  wire \hi_o_reg[23]_i_3_n_8 ;
  wire \hi_o_reg[23]_i_3_n_9 ;
  wire \hi_o_reg[23]_i_4_n_4 ;
  wire \hi_o_reg[23]_i_5_n_4 ;
  wire \hi_o_reg[23]_i_6_n_4 ;
  wire \hi_o_reg[23]_i_7_n_4 ;
  wire \hi_o_reg[24]_i_3_n_10 ;
  wire \hi_o_reg[24]_i_3_n_11 ;
  wire \hi_o_reg[24]_i_3_n_4 ;
  wire \hi_o_reg[24]_i_3_n_5 ;
  wire \hi_o_reg[24]_i_3_n_6 ;
  wire \hi_o_reg[24]_i_3_n_7 ;
  wire \hi_o_reg[24]_i_3_n_8 ;
  wire \hi_o_reg[24]_i_3_n_9 ;
  wire \hi_o_reg[24]_i_4_n_4 ;
  wire \hi_o_reg[24]_i_5_n_4 ;
  wire \hi_o_reg[24]_i_6_n_4 ;
  wire \hi_o_reg[24]_i_7_n_4 ;
  wire \hi_o_reg[27]_i_3_n_10 ;
  wire \hi_o_reg[27]_i_3_n_11 ;
  wire \hi_o_reg[27]_i_3_n_4 ;
  wire \hi_o_reg[27]_i_3_n_5 ;
  wire \hi_o_reg[27]_i_3_n_6 ;
  wire \hi_o_reg[27]_i_3_n_7 ;
  wire \hi_o_reg[27]_i_3_n_8 ;
  wire \hi_o_reg[27]_i_3_n_9 ;
  wire \hi_o_reg[27]_i_4_n_4 ;
  wire \hi_o_reg[27]_i_5_n_4 ;
  wire \hi_o_reg[27]_i_6_n_4 ;
  wire \hi_o_reg[27]_i_7_n_4 ;
  wire \hi_o_reg[28]_i_3_n_10 ;
  wire \hi_o_reg[28]_i_3_n_11 ;
  wire \hi_o_reg[28]_i_3_n_4 ;
  wire \hi_o_reg[28]_i_3_n_5 ;
  wire \hi_o_reg[28]_i_3_n_6 ;
  wire \hi_o_reg[28]_i_3_n_7 ;
  wire \hi_o_reg[28]_i_3_n_8 ;
  wire \hi_o_reg[28]_i_3_n_9 ;
  wire \hi_o_reg[28]_i_4_n_4 ;
  wire \hi_o_reg[28]_i_5_n_4 ;
  wire \hi_o_reg[28]_i_6_n_4 ;
  wire \hi_o_reg[28]_i_7_n_4 ;
  wire \hi_o_reg[31]_i_10_n_4 ;
  wire \hi_o_reg[31]_i_11_n_4 ;
  wire \hi_o_reg[31]_i_12_n_4 ;
  wire \hi_o_reg[31]_i_13_n_4 ;
  wire \hi_o_reg[31]_i_14_n_4 ;
  wire \hi_o_reg[31]_i_5_n_10 ;
  wire \hi_o_reg[31]_i_5_n_11 ;
  wire \hi_o_reg[31]_i_5_n_6 ;
  wire \hi_o_reg[31]_i_5_n_7 ;
  wire \hi_o_reg[31]_i_5_n_9 ;
  wire \hi_o_reg[31]_i_6_n_10 ;
  wire \hi_o_reg[31]_i_6_n_11 ;
  wire \hi_o_reg[31]_i_6_n_5 ;
  wire \hi_o_reg[31]_i_6_n_6 ;
  wire \hi_o_reg[31]_i_6_n_7 ;
  wire \hi_o_reg[31]_i_6_n_8 ;
  wire \hi_o_reg[31]_i_6_n_9 ;
  wire \hi_o_reg[31]_i_8_n_4 ;
  wire \hi_o_reg[31]_i_9_n_4 ;
  wire \hi_o_reg[3]_i_3_n_10 ;
  wire \hi_o_reg[3]_i_3_n_11 ;
  wire \hi_o_reg[3]_i_3_n_4 ;
  wire \hi_o_reg[3]_i_3_n_5 ;
  wire \hi_o_reg[3]_i_3_n_6 ;
  wire \hi_o_reg[3]_i_3_n_7 ;
  wire \hi_o_reg[3]_i_3_n_8 ;
  wire \hi_o_reg[3]_i_3_n_9 ;
  wire \hi_o_reg[3]_i_4_n_4 ;
  wire \hi_o_reg[3]_i_5_n_4 ;
  wire \hi_o_reg[3]_i_6_n_4 ;
  wire \hi_o_reg[3]_i_7_n_4 ;
  wire \hi_o_reg[4]_i_3_n_10 ;
  wire \hi_o_reg[4]_i_3_n_11 ;
  wire \hi_o_reg[4]_i_3_n_4 ;
  wire \hi_o_reg[4]_i_3_n_5 ;
  wire \hi_o_reg[4]_i_3_n_6 ;
  wire \hi_o_reg[4]_i_3_n_7 ;
  wire \hi_o_reg[4]_i_3_n_8 ;
  wire \hi_o_reg[4]_i_3_n_9 ;
  wire \hi_o_reg[4]_i_4_n_4 ;
  wire \hi_o_reg[4]_i_5_n_4 ;
  wire \hi_o_reg[4]_i_6_n_4 ;
  wire \hi_o_reg[4]_i_7_n_4 ;
  wire \hi_o_reg[7]_i_3_n_10 ;
  wire \hi_o_reg[7]_i_3_n_11 ;
  wire \hi_o_reg[7]_i_3_n_4 ;
  wire \hi_o_reg[7]_i_3_n_5 ;
  wire \hi_o_reg[7]_i_3_n_6 ;
  wire \hi_o_reg[7]_i_3_n_7 ;
  wire \hi_o_reg[7]_i_3_n_8 ;
  wire \hi_o_reg[7]_i_3_n_9 ;
  wire \hi_o_reg[7]_i_4_n_4 ;
  wire \hi_o_reg[7]_i_5_n_4 ;
  wire \hi_o_reg[7]_i_6_n_4 ;
  wire \hi_o_reg[7]_i_7_n_4 ;
  wire \hi_o_reg[8]_i_3_n_10 ;
  wire \hi_o_reg[8]_i_3_n_11 ;
  wire \hi_o_reg[8]_i_3_n_4 ;
  wire \hi_o_reg[8]_i_3_n_5 ;
  wire \hi_o_reg[8]_i_3_n_6 ;
  wire \hi_o_reg[8]_i_3_n_7 ;
  wire \hi_o_reg[8]_i_3_n_8 ;
  wire \hi_o_reg[8]_i_3_n_9 ;
  wire \hi_o_reg[8]_i_4_n_4 ;
  wire \hi_o_reg[8]_i_5_n_4 ;
  wire \hi_o_reg[8]_i_6_n_4 ;
  wire \hi_o_reg[8]_i_7_n_4 ;
  wire \lo_o_reg[12]_i_3_n_10 ;
  wire \lo_o_reg[12]_i_3_n_11 ;
  wire \lo_o_reg[12]_i_3_n_4 ;
  wire \lo_o_reg[12]_i_3_n_5 ;
  wire \lo_o_reg[12]_i_3_n_6 ;
  wire \lo_o_reg[12]_i_3_n_7 ;
  wire \lo_o_reg[12]_i_3_n_8 ;
  wire \lo_o_reg[12]_i_3_n_9 ;
  wire \lo_o_reg[12]_i_4_n_4 ;
  wire \lo_o_reg[12]_i_5_n_4 ;
  wire \lo_o_reg[12]_i_6_n_4 ;
  wire \lo_o_reg[12]_i_7_n_4 ;
  wire \lo_o_reg[16]_i_3_n_10 ;
  wire \lo_o_reg[16]_i_3_n_11 ;
  wire \lo_o_reg[16]_i_3_n_4 ;
  wire \lo_o_reg[16]_i_3_n_5 ;
  wire \lo_o_reg[16]_i_3_n_6 ;
  wire \lo_o_reg[16]_i_3_n_7 ;
  wire \lo_o_reg[16]_i_3_n_8 ;
  wire \lo_o_reg[16]_i_3_n_9 ;
  wire \lo_o_reg[16]_i_4_n_4 ;
  wire \lo_o_reg[16]_i_5_n_4 ;
  wire \lo_o_reg[16]_i_6_n_4 ;
  wire \lo_o_reg[16]_i_7_n_4 ;
  wire \lo_o_reg[19]_i_3_n_10 ;
  wire \lo_o_reg[19]_i_3_n_11 ;
  wire \lo_o_reg[19]_i_3_n_4 ;
  wire \lo_o_reg[19]_i_3_n_5 ;
  wire \lo_o_reg[19]_i_3_n_6 ;
  wire \lo_o_reg[19]_i_3_n_7 ;
  wire \lo_o_reg[19]_i_3_n_8 ;
  wire \lo_o_reg[19]_i_3_n_9 ;
  wire \lo_o_reg[19]_i_4_n_4 ;
  wire \lo_o_reg[19]_i_5_n_4 ;
  wire \lo_o_reg[19]_i_6_n_4 ;
  wire \lo_o_reg[20]_i_3_n_10 ;
  wire \lo_o_reg[20]_i_3_n_11 ;
  wire \lo_o_reg[20]_i_3_n_4 ;
  wire \lo_o_reg[20]_i_3_n_5 ;
  wire \lo_o_reg[20]_i_3_n_6 ;
  wire \lo_o_reg[20]_i_3_n_7 ;
  wire \lo_o_reg[20]_i_3_n_8 ;
  wire \lo_o_reg[20]_i_3_n_9 ;
  wire \lo_o_reg[20]_i_4_n_4 ;
  wire \lo_o_reg[20]_i_5_n_4 ;
  wire \lo_o_reg[20]_i_6_n_4 ;
  wire \lo_o_reg[20]_i_7_n_4 ;
  wire \lo_o_reg[23]_i_3_n_10 ;
  wire \lo_o_reg[23]_i_3_n_11 ;
  wire \lo_o_reg[23]_i_3_n_4 ;
  wire \lo_o_reg[23]_i_3_n_5 ;
  wire \lo_o_reg[23]_i_3_n_6 ;
  wire \lo_o_reg[23]_i_3_n_7 ;
  wire \lo_o_reg[23]_i_3_n_8 ;
  wire \lo_o_reg[23]_i_3_n_9 ;
  wire \lo_o_reg[23]_i_4_n_4 ;
  wire \lo_o_reg[23]_i_5_n_4 ;
  wire \lo_o_reg[23]_i_6_n_4 ;
  wire \lo_o_reg[23]_i_7_n_4 ;
  wire \lo_o_reg[24]_i_3_n_10 ;
  wire \lo_o_reg[24]_i_3_n_11 ;
  wire \lo_o_reg[24]_i_3_n_4 ;
  wire \lo_o_reg[24]_i_3_n_5 ;
  wire \lo_o_reg[24]_i_3_n_6 ;
  wire \lo_o_reg[24]_i_3_n_7 ;
  wire \lo_o_reg[24]_i_3_n_8 ;
  wire \lo_o_reg[24]_i_3_n_9 ;
  wire \lo_o_reg[24]_i_4_n_4 ;
  wire \lo_o_reg[24]_i_5_n_4 ;
  wire \lo_o_reg[24]_i_6_n_4 ;
  wire \lo_o_reg[24]_i_7_n_4 ;
  wire \lo_o_reg[27]_i_3_n_10 ;
  wire \lo_o_reg[27]_i_3_n_11 ;
  wire \lo_o_reg[27]_i_3_n_4 ;
  wire \lo_o_reg[27]_i_3_n_5 ;
  wire \lo_o_reg[27]_i_3_n_6 ;
  wire \lo_o_reg[27]_i_3_n_7 ;
  wire \lo_o_reg[27]_i_3_n_8 ;
  wire \lo_o_reg[27]_i_3_n_9 ;
  wire \lo_o_reg[27]_i_4_n_4 ;
  wire \lo_o_reg[27]_i_5_n_4 ;
  wire \lo_o_reg[27]_i_6_n_4 ;
  wire \lo_o_reg[27]_i_7_n_4 ;
  wire \lo_o_reg[28]_i_3_n_10 ;
  wire \lo_o_reg[28]_i_3_n_11 ;
  wire \lo_o_reg[28]_i_3_n_4 ;
  wire \lo_o_reg[28]_i_3_n_5 ;
  wire \lo_o_reg[28]_i_3_n_6 ;
  wire \lo_o_reg[28]_i_3_n_7 ;
  wire \lo_o_reg[28]_i_3_n_8 ;
  wire \lo_o_reg[28]_i_3_n_9 ;
  wire \lo_o_reg[28]_i_4_n_4 ;
  wire \lo_o_reg[28]_i_5_n_4 ;
  wire \lo_o_reg[28]_i_6_n_4 ;
  wire \lo_o_reg[28]_i_7_n_4 ;
  wire \lo_o_reg[31]_i_3_n_10 ;
  wire \lo_o_reg[31]_i_3_n_11 ;
  wire \lo_o_reg[31]_i_3_n_4 ;
  wire \lo_o_reg[31]_i_3_n_5 ;
  wire \lo_o_reg[31]_i_3_n_6 ;
  wire \lo_o_reg[31]_i_3_n_7 ;
  wire \lo_o_reg[31]_i_3_n_8 ;
  wire \lo_o_reg[31]_i_3_n_9 ;
  wire \lo_o_reg[31]_i_4_n_4 ;
  wire \lo_o_reg[31]_i_5_n_4 ;
  wire \lo_o_reg[31]_i_6_n_4 ;
  wire \lo_o_reg[31]_i_7_n_4 ;
  wire \lo_o_reg[4]_i_3_n_11 ;
  wire \lo_o_reg[4]_i_3_n_4 ;
  wire \lo_o_reg[4]_i_3_n_5 ;
  wire \lo_o_reg[4]_i_3_n_6 ;
  wire \lo_o_reg[4]_i_3_n_7 ;
  wire \lo_o_reg[4]_i_3_n_8 ;
  wire \lo_o_reg[4]_i_3_n_9 ;
  wire \lo_o_reg[4]_i_4_n_4 ;
  wire \lo_o_reg[4]_i_5_n_4 ;
  wire \lo_o_reg[4]_i_6_n_4 ;
  wire \lo_o_reg[4]_i_7_n_4 ;
  wire \lo_o_reg[4]_i_8_n_4 ;
  wire \lo_o_reg[8]_i_3_n_10 ;
  wire \lo_o_reg[8]_i_3_n_11 ;
  wire \lo_o_reg[8]_i_3_n_4 ;
  wire \lo_o_reg[8]_i_3_n_5 ;
  wire \lo_o_reg[8]_i_3_n_6 ;
  wire \lo_o_reg[8]_i_3_n_7 ;
  wire \lo_o_reg[8]_i_3_n_8 ;
  wire \lo_o_reg[8]_i_4_n_4 ;
  wire \lo_o_reg[8]_i_5_n_4 ;
  wire \lo_o_reg[8]_i_6_n_4 ;
  wire \lo_o_reg[8]_i_7_n_4 ;
  wire \mem_hi_reg[0] ;
  wire \mem_hi_reg[10] ;
  wire \mem_hi_reg[11] ;
  wire \mem_hi_reg[12] ;
  wire \mem_hi_reg[13] ;
  wire \mem_hi_reg[14] ;
  wire \mem_hi_reg[15] ;
  wire \mem_hi_reg[16] ;
  wire \mem_hi_reg[17] ;
  wire \mem_hi_reg[18] ;
  wire \mem_hi_reg[19] ;
  wire \mem_hi_reg[1] ;
  wire \mem_hi_reg[20] ;
  wire \mem_hi_reg[21] ;
  wire \mem_hi_reg[22] ;
  wire \mem_hi_reg[23] ;
  wire \mem_hi_reg[24] ;
  wire \mem_hi_reg[25] ;
  wire \mem_hi_reg[26] ;
  wire \mem_hi_reg[27] ;
  wire \mem_hi_reg[28] ;
  wire \mem_hi_reg[29] ;
  wire \mem_hi_reg[2] ;
  wire \mem_hi_reg[30] ;
  wire \mem_hi_reg[31] ;
  wire [31:0]\mem_hi_reg[31]_0 ;
  wire \mem_hi_reg[3] ;
  wire \mem_hi_reg[4] ;
  wire \mem_hi_reg[5] ;
  wire \mem_hi_reg[6] ;
  wire \mem_hi_reg[7] ;
  wire \mem_hi_reg[8] ;
  wire \mem_hi_reg[9] ;
  wire \mem_lo_reg[10] ;
  wire \mem_lo_reg[11] ;
  wire \mem_lo_reg[12] ;
  wire \mem_lo_reg[13] ;
  wire \mem_lo_reg[14] ;
  wire \mem_lo_reg[15] ;
  wire \mem_lo_reg[16] ;
  wire \mem_lo_reg[17] ;
  wire \mem_lo_reg[18] ;
  wire \mem_lo_reg[19] ;
  wire \mem_lo_reg[1] ;
  wire \mem_lo_reg[20] ;
  wire \mem_lo_reg[21] ;
  wire \mem_lo_reg[22] ;
  wire \mem_lo_reg[23] ;
  wire \mem_lo_reg[24] ;
  wire \mem_lo_reg[25] ;
  wire \mem_lo_reg[26] ;
  wire \mem_lo_reg[27] ;
  wire \mem_lo_reg[28] ;
  wire \mem_lo_reg[29] ;
  wire \mem_lo_reg[30] ;
  wire \mem_lo_reg[31] ;
  wire [31:0]\mem_lo_reg[31]_0 ;
  wire \mem_lo_reg[3] ;
  wire \mem_lo_reg[4] ;
  wire \mem_lo_reg[5] ;
  wire \mem_lo_reg[6] ;
  wire [0:0]\mem_lo_reg[7] ;
  wire \mem_lo_reg[8] ;
  wire \mem_lo_reg[9] ;
  wire \mem_wdata_reg[10] ;
  wire [2:0]\mem_wdata_reg[10]_0 ;
  wire [31:0]\mem_wdata_reg[31] ;
  wire mul_ans__0_n_100;
  wire mul_ans__0_n_101;
  wire mul_ans__0_n_102;
  wire mul_ans__0_n_103;
  wire mul_ans__0_n_104;
  wire mul_ans__0_n_105;
  wire mul_ans__0_n_106;
  wire mul_ans__0_n_107;
  wire mul_ans__0_n_108;
  wire mul_ans__0_n_109;
  wire mul_ans__0_n_80;
  wire mul_ans__0_n_81;
  wire mul_ans__0_n_82;
  wire mul_ans__0_n_83;
  wire mul_ans__0_n_84;
  wire mul_ans__0_n_85;
  wire mul_ans__0_n_86;
  wire mul_ans__0_n_87;
  wire mul_ans__0_n_88;
  wire mul_ans__0_n_89;
  wire mul_ans__0_n_90;
  wire mul_ans__0_n_91;
  wire mul_ans__0_n_92;
  wire mul_ans__0_n_93;
  wire mul_ans__0_n_94;
  wire mul_ans__0_n_95;
  wire mul_ans__0_n_96;
  wire mul_ans__0_n_97;
  wire mul_ans__0_n_98;
  wire mul_ans__0_n_99;
  wire mul_ans__1_n_110;
  wire mul_ans__1_n_111;
  wire mul_ans__1_n_112;
  wire mul_ans__1_n_113;
  wire mul_ans__1_n_114;
  wire mul_ans__1_n_115;
  wire mul_ans__1_n_116;
  wire mul_ans__1_n_117;
  wire mul_ans__1_n_118;
  wire mul_ans__1_n_119;
  wire mul_ans__1_n_120;
  wire mul_ans__1_n_121;
  wire mul_ans__1_n_122;
  wire mul_ans__1_n_123;
  wire mul_ans__1_n_124;
  wire mul_ans__1_n_125;
  wire mul_ans__1_n_126;
  wire mul_ans__1_n_127;
  wire mul_ans__1_n_128;
  wire mul_ans__1_n_129;
  wire mul_ans__1_n_130;
  wire mul_ans__1_n_131;
  wire mul_ans__1_n_132;
  wire mul_ans__1_n_133;
  wire mul_ans__1_n_134;
  wire mul_ans__1_n_135;
  wire mul_ans__1_n_136;
  wire mul_ans__1_n_137;
  wire mul_ans__1_n_138;
  wire mul_ans__1_n_139;
  wire mul_ans__1_n_140;
  wire mul_ans__1_n_141;
  wire mul_ans__1_n_142;
  wire mul_ans__1_n_143;
  wire mul_ans__1_n_144;
  wire mul_ans__1_n_145;
  wire mul_ans__1_n_146;
  wire mul_ans__1_n_147;
  wire mul_ans__1_n_148;
  wire mul_ans__1_n_149;
  wire mul_ans__1_n_150;
  wire mul_ans__1_n_151;
  wire mul_ans__1_n_152;
  wire mul_ans__1_n_153;
  wire mul_ans__1_n_154;
  wire mul_ans__1_n_155;
  wire mul_ans__1_n_156;
  wire mul_ans__1_n_157;
  wire mul_ans__1_n_62;
  wire mul_ans__1_n_63;
  wire mul_ans__1_n_64;
  wire mul_ans__1_n_65;
  wire mul_ans__1_n_66;
  wire mul_ans__1_n_67;
  wire mul_ans__1_n_68;
  wire mul_ans__1_n_69;
  wire mul_ans__1_n_70;
  wire mul_ans__1_n_71;
  wire mul_ans__1_n_72;
  wire mul_ans__1_n_73;
  wire mul_ans__1_n_74;
  wire mul_ans__1_n_75;
  wire mul_ans__1_n_76;
  wire mul_ans__1_n_77;
  wire mul_ans__1_n_78;
  wire mul_ans__1_n_79;
  wire mul_ans__1_n_80;
  wire mul_ans__1_n_81;
  wire mul_ans__1_n_82;
  wire mul_ans__1_n_83;
  wire mul_ans__1_n_84;
  wire mul_ans__1_n_85;
  wire mul_ans__1_n_86;
  wire mul_ans__1_n_87;
  wire mul_ans__1_n_88;
  wire mul_ans__1_n_89;
  wire mul_ans__1_n_90;
  wire mul_ans__1_n_91;
  wire mul_ans__1_n_92;
  wire mul_ans_n_100;
  wire mul_ans_n_101;
  wire mul_ans_n_102;
  wire mul_ans_n_103;
  wire mul_ans_n_104;
  wire mul_ans_n_105;
  wire mul_ans_n_106;
  wire mul_ans_n_107;
  wire mul_ans_n_108;
  wire mul_ans_n_109;
  wire mul_ans_n_110;
  wire mul_ans_n_111;
  wire mul_ans_n_112;
  wire mul_ans_n_113;
  wire mul_ans_n_114;
  wire mul_ans_n_115;
  wire mul_ans_n_116;
  wire mul_ans_n_117;
  wire mul_ans_n_118;
  wire mul_ans_n_119;
  wire mul_ans_n_120;
  wire mul_ans_n_121;
  wire mul_ans_n_122;
  wire mul_ans_n_123;
  wire mul_ans_n_124;
  wire mul_ans_n_125;
  wire mul_ans_n_126;
  wire mul_ans_n_127;
  wire mul_ans_n_128;
  wire mul_ans_n_129;
  wire mul_ans_n_130;
  wire mul_ans_n_131;
  wire mul_ans_n_132;
  wire mul_ans_n_133;
  wire mul_ans_n_134;
  wire mul_ans_n_135;
  wire mul_ans_n_136;
  wire mul_ans_n_137;
  wire mul_ans_n_138;
  wire mul_ans_n_139;
  wire mul_ans_n_140;
  wire mul_ans_n_141;
  wire mul_ans_n_142;
  wire mul_ans_n_143;
  wire mul_ans_n_144;
  wire mul_ans_n_145;
  wire mul_ans_n_146;
  wire mul_ans_n_147;
  wire mul_ans_n_148;
  wire mul_ans_n_149;
  wire mul_ans_n_150;
  wire mul_ans_n_151;
  wire mul_ans_n_152;
  wire mul_ans_n_153;
  wire mul_ans_n_154;
  wire mul_ans_n_155;
  wire mul_ans_n_156;
  wire mul_ans_n_157;
  wire mul_ans_n_62;
  wire mul_ans_n_63;
  wire mul_ans_n_64;
  wire mul_ans_n_65;
  wire mul_ans_n_66;
  wire mul_ans_n_67;
  wire mul_ans_n_68;
  wire mul_ans_n_69;
  wire mul_ans_n_70;
  wire mul_ans_n_71;
  wire mul_ans_n_72;
  wire mul_ans_n_73;
  wire mul_ans_n_74;
  wire mul_ans_n_75;
  wire mul_ans_n_76;
  wire mul_ans_n_77;
  wire mul_ans_n_78;
  wire mul_ans_n_79;
  wire mul_ans_n_80;
  wire mul_ans_n_81;
  wire mul_ans_n_82;
  wire mul_ans_n_83;
  wire mul_ans_n_84;
  wire mul_ans_n_85;
  wire mul_ans_n_86;
  wire mul_ans_n_87;
  wire mul_ans_n_88;
  wire mul_ans_n_89;
  wire mul_ans_n_90;
  wire mul_ans_n_91;
  wire mul_ans_n_92;
  wire mul_ans_n_93;
  wire mul_ans_n_94;
  wire mul_ans_n_95;
  wire mul_ans_n_96;
  wire mul_ans_n_97;
  wire mul_ans_n_98;
  wire mul_ans_n_99;
  wire [30:0]mul_op1;
  wire [30:0]mul_op2;
  wire ovassert0;
  wire p_0_in;
  wire [0:0]p_0_out;
  wire [63:1]p_1_in;
  wire ready_o_reg;
  wire \result[13]_i_4_n_4 ;
  wire \result[13]_i_5_n_4 ;
  wire \result[13]_i_6_n_4 ;
  wire \result[13]_i_7_n_4 ;
  wire \result[17]_i_4_n_4 ;
  wire \result[17]_i_5_n_4 ;
  wire \result[17]_i_6_n_4 ;
  wire \result[17]_i_7_n_4 ;
  wire \result[21]_i_4_n_4 ;
  wire \result[21]_i_5_n_4 ;
  wire \result[21]_i_6_n_4 ;
  wire \result[21]_i_7_n_4 ;
  wire \result[25]_i_4_n_4 ;
  wire \result[25]_i_5_n_4 ;
  wire \result[25]_i_6_n_4 ;
  wire \result[25]_i_7_n_4 ;
  wire \result[29]_i_4_n_4 ;
  wire \result[29]_i_5_n_4 ;
  wire \result[29]_i_6_n_4 ;
  wire \result[29]_i_7_n_4 ;
  wire \result[31]_i_10_n_4 ;
  wire \result[31]_i_11_n_4 ;
  wire \result[31]_i_12_n_4 ;
  wire \result[31]_i_4_n_4 ;
  wire \result[31]_i_5_n_4 ;
  wire \result[5]_i_4_n_4 ;
  wire \result[5]_i_5_n_4 ;
  wire \result[5]_i_6_n_4 ;
  wire \result[5]_i_7_n_4 ;
  wire \result[5]_i_8_n_4 ;
  wire \result[9]_i_4_n_4 ;
  wire \result[9]_i_5_n_4 ;
  wire \result[9]_i_6_n_4 ;
  wire \result[9]_i_7_n_4 ;
  wire \result_reg[10] ;
  wire \result_reg[11] ;
  wire \result_reg[12] ;
  wire \result_reg[13] ;
  wire \result_reg[13]_i_3_n_4 ;
  wire \result_reg[13]_i_3_n_5 ;
  wire \result_reg[13]_i_3_n_6 ;
  wire \result_reg[13]_i_3_n_7 ;
  wire \result_reg[14] ;
  wire \result_reg[15] ;
  wire \result_reg[16] ;
  wire \result_reg[17] ;
  wire \result_reg[17]_i_3_n_4 ;
  wire \result_reg[17]_i_3_n_5 ;
  wire \result_reg[17]_i_3_n_6 ;
  wire \result_reg[17]_i_3_n_7 ;
  wire \result_reg[18] ;
  wire \result_reg[19] ;
  wire \result_reg[1] ;
  wire \result_reg[20] ;
  wire \result_reg[21] ;
  wire \result_reg[21]_i_3_n_4 ;
  wire \result_reg[21]_i_3_n_5 ;
  wire \result_reg[21]_i_3_n_6 ;
  wire \result_reg[21]_i_3_n_7 ;
  wire \result_reg[22] ;
  wire \result_reg[23] ;
  wire \result_reg[24] ;
  wire \result_reg[25] ;
  wire \result_reg[25]_i_3_n_4 ;
  wire \result_reg[25]_i_3_n_5 ;
  wire \result_reg[25]_i_3_n_6 ;
  wire \result_reg[25]_i_3_n_7 ;
  wire \result_reg[26] ;
  wire \result_reg[27] ;
  wire \result_reg[28] ;
  wire \result_reg[29] ;
  wire \result_reg[29]_i_3_n_4 ;
  wire \result_reg[29]_i_3_n_5 ;
  wire \result_reg[29]_i_3_n_6 ;
  wire \result_reg[29]_i_3_n_7 ;
  wire \result_reg[2] ;
  wire \result_reg[2]_0 ;
  wire \result_reg[2]_1 ;
  wire \result_reg[30] ;
  wire [1:0]\result_reg[31] ;
  wire [29:0]\result_reg[31]_0 ;
  wire \result_reg[31]_1 ;
  wire \result_reg[31]_i_6_n_6 ;
  wire \result_reg[31]_i_6_n_7 ;
  wire \result_reg[32] ;
  wire \result_reg[3] ;
  wire \result_reg[4] ;
  wire \result_reg[5] ;
  wire \result_reg[5]_i_3_n_4 ;
  wire \result_reg[5]_i_3_n_5 ;
  wire \result_reg[5]_i_3_n_6 ;
  wire \result_reg[5]_i_3_n_7 ;
  wire \result_reg[6] ;
  wire \result_reg[7] ;
  wire \result_reg[8] ;
  wire \result_reg[9] ;
  wire \result_reg[9]_i_3_n_4 ;
  wire \result_reg[9]_i_3_n_5 ;
  wire \result_reg[9]_i_3_n_6 ;
  wire \result_reg[9]_i_3_n_7 ;
  wire rst;
  wire rst_IBUF;
  wire stalleq_from_ex;
  wire [1:0]state;
  wire \state[0]_i_2_n_4 ;
  wire \state[0]_i_3_n_4 ;
  wire \state[0]_i_4_n_4 ;
  wire \state[0]_i_5_n_4 ;
  wire \state[0]_i_6_n_4 ;
  wire \state[0]_i_7_n_4 ;
  wire \state[0]_i_8_n_4 ;
  wire \state[0]_i_9_n_4 ;
  wire \state[1]_i_3_n_4 ;
  wire \state[1]_i_4_n_4 ;
  wire \state[1]_i_5_n_4 ;
  wire \state[1]_i_6_n_4 ;
  wire \state_reg[0] ;
  wire \state_reg[1] ;
  wire [2:0]wb_cp0_reg_write_addr_i;
  wire [3:2]\NLW_divider_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_divider_reg[31]_i_4_O_UNCONNECTED ;
  wire [3:2]\NLW_hi_o_reg[31]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_hi_o_reg[31]_i_5_O_UNCONNECTED ;
  wire [3:3]\NLW_hi_o_reg[31]_i_6_CO_UNCONNECTED ;
  wire NLW_mul_ans_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ans_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ans_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ans_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ans_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ans_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ans_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ans_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ans_CARRYOUT_UNCONNECTED;
  wire NLW_mul_ans__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ans__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ans__0_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ans__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ans__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ans__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ans__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ans__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ans__0_CARRYOUT_UNCONNECTED;
  wire [47:30]NLW_mul_ans__0_P_UNCONNECTED;
  wire [47:0]NLW_mul_ans__0_PCOUT_UNCONNECTED;
  wire NLW_mul_ans__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ans__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ans__1_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ans__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ans__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ans__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ans__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ans__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ans__1_CARRYOUT_UNCONNECTED;
  wire NLW_mul_ans__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ans__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ans__2_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ans__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ans__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ans__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ans__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ans__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ans__2_CARRYOUT_UNCONNECTED;
  wire [47:47]NLW_mul_ans__2_P_UNCONNECTED;
  wire [47:0]NLW_mul_ans__2_PCOUT_UNCONNECTED;
  wire [3:2]\NLW_result_reg[31]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_result_reg[31]_i_6_O_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cp0_reg_read_addr_o_reg[0] 
       (.CLR(1'b0),
        .D(\ex_inst_reg[13] [0]),
        .G(\ex_aluop_reg[2] ),
        .GE(1'b1),
        .Q(\mem_wdata_reg[10]_0 [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cp0_reg_read_addr_o_reg[1] 
       (.CLR(1'b0),
        .D(\ex_inst_reg[13] [1]),
        .G(\ex_aluop_reg[2] ),
        .GE(1'b1),
        .Q(\mem_wdata_reg[10]_0 [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cp0_reg_read_addr_o_reg[2] 
       (.CLR(1'b0),
        .D(\ex_inst_reg[13] [2]),
        .G(\ex_aluop_reg[2] ),
        .GE(1'b1),
        .Q(\mem_wdata_reg[10]_0 [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[0] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [0]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(\result_reg[31] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[10] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [10]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[11] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [11]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[12] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [12]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[13] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [13]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[14] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [14]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[15] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [15]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[16] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [16]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[17] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [17]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[18] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [18]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[19] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [19]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[1] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [1]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[20] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [20]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[21] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [21]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[22] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [22]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[23] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [23]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[24] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [24]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[25] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [25]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[26] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [26]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[27] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [27]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[28] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [28]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[29] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [29]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[2] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [2]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[30] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [30]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[31] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [31]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(\result_reg[31] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[3] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [3]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[4] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [4]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[5] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [5]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[6] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [6]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[7] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [7]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[8] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [8]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata1_o_reg[9] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31] [9]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata1[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[0] 
       (.CLR(1'b0),
        .D(Q[0]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[10] 
       (.CLR(1'b0),
        .D(Q[10]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[11] 
       (.CLR(1'b0),
        .D(Q[11]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[12] 
       (.CLR(1'b0),
        .D(Q[12]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[13] 
       (.CLR(1'b0),
        .D(Q[13]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[14] 
       (.CLR(1'b0),
        .D(Q[14]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[15] 
       (.CLR(1'b0),
        .D(Q[15]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[16] 
       (.CLR(1'b0),
        .D(Q[16]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[17] 
       (.CLR(1'b0),
        .D(Q[17]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[18] 
       (.CLR(1'b0),
        .D(Q[18]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[19] 
       (.CLR(1'b0),
        .D(Q[19]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[1] 
       (.CLR(1'b0),
        .D(Q[1]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[20] 
       (.CLR(1'b0),
        .D(Q[20]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[21] 
       (.CLR(1'b0),
        .D(Q[21]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[22] 
       (.CLR(1'b0),
        .D(Q[22]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[23] 
       (.CLR(1'b0),
        .D(Q[23]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[24] 
       (.CLR(1'b0),
        .D(Q[24]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[25] 
       (.CLR(1'b0),
        .D(Q[25]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[26] 
       (.CLR(1'b0),
        .D(Q[26]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[27] 
       (.CLR(1'b0),
        .D(Q[27]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[28] 
       (.CLR(1'b0),
        .D(Q[28]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[29] 
       (.CLR(1'b0),
        .D(Q[29]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[2] 
       (.CLR(1'b0),
        .D(Q[2]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[30] 
       (.CLR(1'b0),
        .D(Q[30]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[31] 
       (.CLR(1'b0),
        .D(Q[31]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(\divider_reg[1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[3] 
       (.CLR(1'b0),
        .D(Q[3]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[4] 
       (.CLR(1'b0),
        .D(Q[4]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[5] 
       (.CLR(1'b0),
        .D(Q[5]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[6] 
       (.CLR(1'b0),
        .D(Q[6]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[7] 
       (.CLR(1'b0),
        .D(Q[7]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[8] 
       (.CLR(1'b0),
        .D(Q[8]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \div_opdata2_o_reg[9] 
       (.CLR(1'b0),
        .D(Q[9]),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_opdata2[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    div_start_o_reg
       (.CLR(1'b0),
        .D(\ex_aluop_reg[1] ),
        .G(p_0_in),
        .GE(1'b1),
        .Q(div_start));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divider[0]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(div_opdata2[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[10]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [10]),
        .I4(div_opdata2[10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[11]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [11]),
        .I4(div_opdata2[11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[12]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [12]),
        .I4(div_opdata2[12]),
        .O(D[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[12]_i_3 
       (.I0(div_opdata2[12]),
        .O(\divider[12]_i_3_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[12]_i_4 
       (.I0(div_opdata2[11]),
        .O(\divider[12]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[12]_i_5 
       (.I0(div_opdata2[10]),
        .O(\divider[12]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[12]_i_6 
       (.I0(div_opdata2[9]),
        .O(\divider[12]_i_6_n_4 ));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[13]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [13]),
        .I4(div_opdata2[13]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[14]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [14]),
        .I4(div_opdata2[14]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[15]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [15]),
        .I4(div_opdata2[15]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[16]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [16]),
        .I4(div_opdata2[16]),
        .O(D[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[16]_i_3 
       (.I0(div_opdata2[16]),
        .O(\divider[16]_i_3_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[16]_i_4 
       (.I0(div_opdata2[15]),
        .O(\divider[16]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[16]_i_5 
       (.I0(div_opdata2[14]),
        .O(\divider[16]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[16]_i_6 
       (.I0(div_opdata2[13]),
        .O(\divider[16]_i_6_n_4 ));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[17]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [17]),
        .I4(div_opdata2[17]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[18]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [18]),
        .I4(div_opdata2[18]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[19]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [19]),
        .I4(div_opdata2[19]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[1]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [1]),
        .I4(div_opdata2[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[20]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [20]),
        .I4(div_opdata2[20]),
        .O(D[20]));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[20]_i_3 
       (.I0(div_opdata2[20]),
        .O(\divider[20]_i_3_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[20]_i_4 
       (.I0(div_opdata2[19]),
        .O(\divider[20]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[20]_i_5 
       (.I0(div_opdata2[18]),
        .O(\divider[20]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[20]_i_6 
       (.I0(div_opdata2[17]),
        .O(\divider[20]_i_6_n_4 ));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[21]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [21]),
        .I4(div_opdata2[21]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[22]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [22]),
        .I4(div_opdata2[22]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[23]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [23]),
        .I4(div_opdata2[23]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[24]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [24]),
        .I4(div_opdata2[24]),
        .O(D[24]));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[24]_i_3 
       (.I0(div_opdata2[24]),
        .O(\divider[24]_i_3_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[24]_i_4 
       (.I0(div_opdata2[23]),
        .O(\divider[24]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[24]_i_5 
       (.I0(div_opdata2[22]),
        .O(\divider[24]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[24]_i_6 
       (.I0(div_opdata2[21]),
        .O(\divider[24]_i_6_n_4 ));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[25]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [25]),
        .I4(div_opdata2[25]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[26]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [26]),
        .I4(div_opdata2[26]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[27]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [27]),
        .I4(div_opdata2[27]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[28]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [28]),
        .I4(div_opdata2[28]),
        .O(D[28]));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[28]_i_3 
       (.I0(div_opdata2[28]),
        .O(\divider[28]_i_3_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[28]_i_4 
       (.I0(div_opdata2[27]),
        .O(\divider[28]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[28]_i_5 
       (.I0(div_opdata2[26]),
        .O(\divider[28]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[28]_i_6 
       (.I0(div_opdata2[25]),
        .O(\divider[28]_i_6_n_4 ));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[29]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [29]),
        .I4(div_opdata2[29]),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[2]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [2]),
        .I4(div_opdata2[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[30]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [30]),
        .I4(div_opdata2[30]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \divider[31]_i_2 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [31]),
        .O(D[31]));
  LUT3 #(
    .INIT(8'hFE)) 
    \divider[31]_i_3 
       (.I0(div_opdata2[30]),
        .I1(\state[0]_i_2_n_4 ),
        .I2(\state[0]_i_3_n_4 ),
        .O(\divider[31]_i_3_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[31]_i_5 
       (.I0(\divider_reg[1] ),
        .O(\divider[31]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[31]_i_6 
       (.I0(div_opdata2[30]),
        .O(\divider[31]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[31]_i_7 
       (.I0(div_opdata2[29]),
        .O(\divider[31]_i_7_n_4 ));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[3]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [3]),
        .I4(div_opdata2[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[4]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [4]),
        .I4(div_opdata2[4]),
        .O(D[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[4]_i_3 
       (.I0(div_opdata2[0]),
        .O(\divider[4]_i_3_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[4]_i_4 
       (.I0(div_opdata2[4]),
        .O(\divider[4]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[4]_i_5 
       (.I0(div_opdata2[3]),
        .O(\divider[4]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[4]_i_6 
       (.I0(div_opdata2[2]),
        .O(\divider[4]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[4]_i_7 
       (.I0(div_opdata2[1]),
        .O(\divider[4]_i_7_n_4 ));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[5]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [5]),
        .I4(div_opdata2[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[6]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [6]),
        .I4(div_opdata2[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[7]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [7]),
        .I4(div_opdata2[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[8]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [8]),
        .I4(div_opdata2[8]),
        .O(D[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[8]_i_3 
       (.I0(div_opdata2[8]),
        .O(\divider[8]_i_3_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[8]_i_4 
       (.I0(div_opdata2[7]),
        .O(\divider[8]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[8]_i_5 
       (.I0(div_opdata2[6]),
        .O(\divider[8]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divider[8]_i_6 
       (.I0(div_opdata2[5]),
        .O(\divider[8]_i_6_n_4 ));
  LUT5 #(
    .INIT(32'hAA2A8000)) 
    \divider[9]_i_1 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(\divider_reg[1] ),
        .I2(div_signed),
        .I3(\div0/divider0 [9]),
        .I4(div_opdata2[9]),
        .O(D[9]));
  CARRY4 \divider_reg[12]_i_2 
       (.CI(\divider_reg[8]_i_2_n_4 ),
        .CO({\divider_reg[12]_i_2_n_4 ,\divider_reg[12]_i_2_n_5 ,\divider_reg[12]_i_2_n_6 ,\divider_reg[12]_i_2_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\div0/divider0 [12:9]),
        .S({\divider[12]_i_3_n_4 ,\divider[12]_i_4_n_4 ,\divider[12]_i_5_n_4 ,\divider[12]_i_6_n_4 }));
  CARRY4 \divider_reg[16]_i_2 
       (.CI(\divider_reg[12]_i_2_n_4 ),
        .CO({\divider_reg[16]_i_2_n_4 ,\divider_reg[16]_i_2_n_5 ,\divider_reg[16]_i_2_n_6 ,\divider_reg[16]_i_2_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\div0/divider0 [16:13]),
        .S({\divider[16]_i_3_n_4 ,\divider[16]_i_4_n_4 ,\divider[16]_i_5_n_4 ,\divider[16]_i_6_n_4 }));
  CARRY4 \divider_reg[20]_i_2 
       (.CI(\divider_reg[16]_i_2_n_4 ),
        .CO({\divider_reg[20]_i_2_n_4 ,\divider_reg[20]_i_2_n_5 ,\divider_reg[20]_i_2_n_6 ,\divider_reg[20]_i_2_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\div0/divider0 [20:17]),
        .S({\divider[20]_i_3_n_4 ,\divider[20]_i_4_n_4 ,\divider[20]_i_5_n_4 ,\divider[20]_i_6_n_4 }));
  CARRY4 \divider_reg[24]_i_2 
       (.CI(\divider_reg[20]_i_2_n_4 ),
        .CO({\divider_reg[24]_i_2_n_4 ,\divider_reg[24]_i_2_n_5 ,\divider_reg[24]_i_2_n_6 ,\divider_reg[24]_i_2_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\div0/divider0 [24:21]),
        .S({\divider[24]_i_3_n_4 ,\divider[24]_i_4_n_4 ,\divider[24]_i_5_n_4 ,\divider[24]_i_6_n_4 }));
  CARRY4 \divider_reg[28]_i_2 
       (.CI(\divider_reg[24]_i_2_n_4 ),
        .CO({\divider_reg[28]_i_2_n_4 ,\divider_reg[28]_i_2_n_5 ,\divider_reg[28]_i_2_n_6 ,\divider_reg[28]_i_2_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\div0/divider0 [28:25]),
        .S({\divider[28]_i_3_n_4 ,\divider[28]_i_4_n_4 ,\divider[28]_i_5_n_4 ,\divider[28]_i_6_n_4 }));
  CARRY4 \divider_reg[31]_i_4 
       (.CI(\divider_reg[28]_i_2_n_4 ),
        .CO({\NLW_divider_reg[31]_i_4_CO_UNCONNECTED [3:2],\divider_reg[31]_i_4_n_6 ,\divider_reg[31]_i_4_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_divider_reg[31]_i_4_O_UNCONNECTED [3],\div0/divider0 [31:29]}),
        .S({1'b0,\divider[31]_i_5_n_4 ,\divider[31]_i_6_n_4 ,\divider[31]_i_7_n_4 }));
  CARRY4 \divider_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\divider_reg[4]_i_2_n_4 ,\divider_reg[4]_i_2_n_5 ,\divider_reg[4]_i_2_n_6 ,\divider_reg[4]_i_2_n_7 }),
        .CYINIT(\divider[4]_i_3_n_4 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\div0/divider0 [4:1]),
        .S({\divider[4]_i_4_n_4 ,\divider[4]_i_5_n_4 ,\divider[4]_i_6_n_4 ,\divider[4]_i_7_n_4 }));
  CARRY4 \divider_reg[8]_i_2 
       (.CI(\divider_reg[4]_i_2_n_4 ),
        .CO({\divider_reg[8]_i_2_n_4 ,\divider_reg[8]_i_2_n_5 ,\divider_reg[8]_i_2_n_6 ,\divider_reg[8]_i_2_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\div0/divider0 [8:5]),
        .S({\divider[8]_i_3_n_4 ,\divider[8]_i_4_n_4 ,\divider[8]_i_5_n_4 ,\divider[8]_i_6_n_4 }));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[0] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [0]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [0]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[0]_i_2 
       (.I0(\hi_o_reg[0]_i_3_n_8 ),
        .I1(\hi_o_reg[3]_i_3_n_11 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[0] ));
  CARRY4 \hi_o_reg[0]_i_3 
       (.CI(\lo_o_reg[28]_i_3_n_4 ),
        .CO({\hi_o_reg[0]_i_3_n_4 ,\hi_o_reg[0]_i_3_n_5 ,\hi_o_reg[0]_i_3_n_6 ,\hi_o_reg[0]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hi_o_reg[0]_i_3_n_8 ,\hi_o_reg[0]_i_3_n_9 ,\hi_o_reg[0]_i_3_n_10 ,\hi_o_reg[0]_i_3_n_11 }),
        .S({\hi_o_reg[0]_i_4_n_4 ,\hi_o_reg[0]_i_5_n_4 ,\hi_o_reg[0]_i_6_n_4 ,\hi_o_reg[0]_i_7_n_4 }));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[0]_i_4 
       (.I0(\hi_o_reg[3]_i_3_n_11 ),
        .O(\hi_o_reg[0]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[0]_i_5 
       (.I0(\lo_o_reg[31]_i_3_n_8 ),
        .O(\hi_o_reg[0]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[0]_i_6 
       (.I0(\lo_o_reg[31]_i_3_n_9 ),
        .O(\hi_o_reg[0]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[0]_i_7 
       (.I0(\lo_o_reg[31]_i_3_n_10 ),
        .O(\hi_o_reg[0]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[10] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [10]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [10]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[10]_i_2 
       (.I0(\hi_o_reg[12]_i_3_n_10 ),
        .I1(\hi_o_reg[11]_i_3_n_9 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[10] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[11] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [11]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [11]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[11]_i_2 
       (.I0(\hi_o_reg[12]_i_3_n_9 ),
        .I1(\hi_o_reg[11]_i_3_n_8 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[11] ));
  CARRY4 \hi_o_reg[11]_i_3 
       (.CI(\hi_o_reg[7]_i_3_n_4 ),
        .CO({\hi_o_reg[11]_i_3_n_4 ,\hi_o_reg[11]_i_3_n_5 ,\hi_o_reg[11]_i_3_n_6 ,\hi_o_reg[11]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(p_1_in[43:40]),
        .O({\hi_o_reg[11]_i_3_n_8 ,\hi_o_reg[11]_i_3_n_9 ,\hi_o_reg[11]_i_3_n_10 ,\hi_o_reg[11]_i_3_n_11 }),
        .S({\hi_o_reg[11]_i_4_n_4 ,\hi_o_reg[11]_i_5_n_4 ,\hi_o_reg[11]_i_6_n_4 ,\hi_o_reg[11]_i_7_n_4 }));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[11]_i_4 
       (.I0(p_1_in[43]),
        .I1(mul_ans__0_n_100),
        .O(\hi_o_reg[11]_i_4_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[11]_i_5 
       (.I0(p_1_in[42]),
        .I1(mul_ans__0_n_101),
        .O(\hi_o_reg[11]_i_5_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[11]_i_6 
       (.I0(p_1_in[41]),
        .I1(mul_ans__0_n_102),
        .O(\hi_o_reg[11]_i_6_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[11]_i_7 
       (.I0(p_1_in[40]),
        .I1(mul_ans__0_n_103),
        .O(\hi_o_reg[11]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[12] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [12]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [12]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[12]_i_2 
       (.I0(\hi_o_reg[12]_i_3_n_8 ),
        .I1(\hi_o_reg[15]_i_3_n_11 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[12] ));
  CARRY4 \hi_o_reg[12]_i_3 
       (.CI(\hi_o_reg[8]_i_3_n_4 ),
        .CO({\hi_o_reg[12]_i_3_n_4 ,\hi_o_reg[12]_i_3_n_5 ,\hi_o_reg[12]_i_3_n_6 ,\hi_o_reg[12]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hi_o_reg[12]_i_3_n_8 ,\hi_o_reg[12]_i_3_n_9 ,\hi_o_reg[12]_i_3_n_10 ,\hi_o_reg[12]_i_3_n_11 }),
        .S({\hi_o_reg[12]_i_4_n_4 ,\hi_o_reg[12]_i_5_n_4 ,\hi_o_reg[12]_i_6_n_4 ,\hi_o_reg[12]_i_7_n_4 }));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[12]_i_4 
       (.I0(\hi_o_reg[15]_i_3_n_11 ),
        .O(\hi_o_reg[12]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[12]_i_5 
       (.I0(\hi_o_reg[11]_i_3_n_8 ),
        .O(\hi_o_reg[12]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[12]_i_6 
       (.I0(\hi_o_reg[11]_i_3_n_9 ),
        .O(\hi_o_reg[12]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[12]_i_7 
       (.I0(\hi_o_reg[11]_i_3_n_10 ),
        .O(\hi_o_reg[12]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[13] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [13]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [13]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[13]_i_2 
       (.I0(\hi_o_reg[16]_i_3_n_11 ),
        .I1(\hi_o_reg[15]_i_3_n_10 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[13] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[14] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [14]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [14]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[14]_i_2 
       (.I0(\hi_o_reg[16]_i_3_n_10 ),
        .I1(\hi_o_reg[15]_i_3_n_9 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[14] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[15] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [15]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [15]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[15]_i_2 
       (.I0(\hi_o_reg[16]_i_3_n_9 ),
        .I1(\hi_o_reg[15]_i_3_n_8 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[15] ));
  CARRY4 \hi_o_reg[15]_i_3 
       (.CI(\hi_o_reg[11]_i_3_n_4 ),
        .CO({\hi_o_reg[15]_i_3_n_4 ,\hi_o_reg[15]_i_3_n_5 ,\hi_o_reg[15]_i_3_n_6 ,\hi_o_reg[15]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(p_1_in[47:44]),
        .O({\hi_o_reg[15]_i_3_n_8 ,\hi_o_reg[15]_i_3_n_9 ,\hi_o_reg[15]_i_3_n_10 ,\hi_o_reg[15]_i_3_n_11 }),
        .S({\hi_o_reg[15]_i_4_n_4 ,\hi_o_reg[15]_i_5_n_4 ,\hi_o_reg[15]_i_6_n_4 ,\hi_o_reg[15]_i_7_n_4 }));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[15]_i_4 
       (.I0(p_1_in[47]),
        .I1(mul_ans__0_n_96),
        .O(\hi_o_reg[15]_i_4_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[15]_i_5 
       (.I0(p_1_in[46]),
        .I1(mul_ans__0_n_97),
        .O(\hi_o_reg[15]_i_5_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[15]_i_6 
       (.I0(p_1_in[45]),
        .I1(mul_ans__0_n_98),
        .O(\hi_o_reg[15]_i_6_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[15]_i_7 
       (.I0(p_1_in[44]),
        .I1(mul_ans__0_n_99),
        .O(\hi_o_reg[15]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[16] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [16]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [16]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[16]_i_2 
       (.I0(\hi_o_reg[16]_i_3_n_8 ),
        .I1(\hi_o_reg[19]_i_3_n_11 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[16] ));
  CARRY4 \hi_o_reg[16]_i_3 
       (.CI(\hi_o_reg[12]_i_3_n_4 ),
        .CO({\hi_o_reg[16]_i_3_n_4 ,\hi_o_reg[16]_i_3_n_5 ,\hi_o_reg[16]_i_3_n_6 ,\hi_o_reg[16]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hi_o_reg[16]_i_3_n_8 ,\hi_o_reg[16]_i_3_n_9 ,\hi_o_reg[16]_i_3_n_10 ,\hi_o_reg[16]_i_3_n_11 }),
        .S({\hi_o_reg[16]_i_4_n_4 ,\hi_o_reg[16]_i_5_n_4 ,\hi_o_reg[16]_i_6_n_4 ,\hi_o_reg[16]_i_7_n_4 }));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[16]_i_4 
       (.I0(\hi_o_reg[19]_i_3_n_11 ),
        .O(\hi_o_reg[16]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[16]_i_5 
       (.I0(\hi_o_reg[15]_i_3_n_8 ),
        .O(\hi_o_reg[16]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[16]_i_6 
       (.I0(\hi_o_reg[15]_i_3_n_9 ),
        .O(\hi_o_reg[16]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[16]_i_7 
       (.I0(\hi_o_reg[15]_i_3_n_10 ),
        .O(\hi_o_reg[16]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[17] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [17]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [17]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[17]_i_2 
       (.I0(\hi_o_reg[20]_i_3_n_11 ),
        .I1(\hi_o_reg[19]_i_3_n_10 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[17] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[18] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [18]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [18]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[18]_i_2 
       (.I0(\hi_o_reg[20]_i_3_n_10 ),
        .I1(\hi_o_reg[19]_i_3_n_9 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[18] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[19] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [19]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [19]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[19]_i_2 
       (.I0(\hi_o_reg[20]_i_3_n_9 ),
        .I1(\hi_o_reg[19]_i_3_n_8 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[19] ));
  CARRY4 \hi_o_reg[19]_i_3 
       (.CI(\hi_o_reg[15]_i_3_n_4 ),
        .CO({\hi_o_reg[19]_i_3_n_4 ,\hi_o_reg[19]_i_3_n_5 ,\hi_o_reg[19]_i_3_n_6 ,\hi_o_reg[19]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(p_1_in[51:48]),
        .O({\hi_o_reg[19]_i_3_n_8 ,\hi_o_reg[19]_i_3_n_9 ,\hi_o_reg[19]_i_3_n_10 ,\hi_o_reg[19]_i_3_n_11 }),
        .S({\hi_o_reg[19]_i_4_n_4 ,\hi_o_reg[19]_i_5_n_4 ,\hi_o_reg[19]_i_6_n_4 ,\hi_o_reg[19]_i_7_n_4 }));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[19]_i_4 
       (.I0(p_1_in[51]),
        .I1(mul_ans__0_n_92),
        .O(\hi_o_reg[19]_i_4_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[19]_i_5 
       (.I0(p_1_in[50]),
        .I1(mul_ans__0_n_93),
        .O(\hi_o_reg[19]_i_5_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[19]_i_6 
       (.I0(p_1_in[49]),
        .I1(mul_ans__0_n_94),
        .O(\hi_o_reg[19]_i_6_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[19]_i_7 
       (.I0(p_1_in[48]),
        .I1(mul_ans__0_n_95),
        .O(\hi_o_reg[19]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[1] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [1]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [1]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[1]_i_2 
       (.I0(\hi_o_reg[4]_i_3_n_11 ),
        .I1(\hi_o_reg[3]_i_3_n_10 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[20] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [20]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [20]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[20]_i_2 
       (.I0(\hi_o_reg[20]_i_3_n_8 ),
        .I1(\hi_o_reg[23]_i_3_n_11 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[20] ));
  CARRY4 \hi_o_reg[20]_i_3 
       (.CI(\hi_o_reg[16]_i_3_n_4 ),
        .CO({\hi_o_reg[20]_i_3_n_4 ,\hi_o_reg[20]_i_3_n_5 ,\hi_o_reg[20]_i_3_n_6 ,\hi_o_reg[20]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hi_o_reg[20]_i_3_n_8 ,\hi_o_reg[20]_i_3_n_9 ,\hi_o_reg[20]_i_3_n_10 ,\hi_o_reg[20]_i_3_n_11 }),
        .S({\hi_o_reg[20]_i_4_n_4 ,\hi_o_reg[20]_i_5_n_4 ,\hi_o_reg[20]_i_6_n_4 ,\hi_o_reg[20]_i_7_n_4 }));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[20]_i_4 
       (.I0(\hi_o_reg[23]_i_3_n_11 ),
        .O(\hi_o_reg[20]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[20]_i_5 
       (.I0(\hi_o_reg[19]_i_3_n_8 ),
        .O(\hi_o_reg[20]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[20]_i_6 
       (.I0(\hi_o_reg[19]_i_3_n_9 ),
        .O(\hi_o_reg[20]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[20]_i_7 
       (.I0(\hi_o_reg[19]_i_3_n_10 ),
        .O(\hi_o_reg[20]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[21] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [21]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [21]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[21]_i_2 
       (.I0(\hi_o_reg[24]_i_3_n_11 ),
        .I1(\hi_o_reg[23]_i_3_n_10 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[21] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[22] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [22]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [22]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[22]_i_2 
       (.I0(\hi_o_reg[24]_i_3_n_10 ),
        .I1(\hi_o_reg[23]_i_3_n_9 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[22] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[23] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [23]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [23]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[23]_i_2 
       (.I0(\hi_o_reg[24]_i_3_n_9 ),
        .I1(\hi_o_reg[23]_i_3_n_8 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[23] ));
  CARRY4 \hi_o_reg[23]_i_3 
       (.CI(\hi_o_reg[19]_i_3_n_4 ),
        .CO({\hi_o_reg[23]_i_3_n_4 ,\hi_o_reg[23]_i_3_n_5 ,\hi_o_reg[23]_i_3_n_6 ,\hi_o_reg[23]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(p_1_in[55:52]),
        .O({\hi_o_reg[23]_i_3_n_8 ,\hi_o_reg[23]_i_3_n_9 ,\hi_o_reg[23]_i_3_n_10 ,\hi_o_reg[23]_i_3_n_11 }),
        .S({\hi_o_reg[23]_i_4_n_4 ,\hi_o_reg[23]_i_5_n_4 ,\hi_o_reg[23]_i_6_n_4 ,\hi_o_reg[23]_i_7_n_4 }));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[23]_i_4 
       (.I0(p_1_in[55]),
        .I1(mul_ans__0_n_88),
        .O(\hi_o_reg[23]_i_4_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[23]_i_5 
       (.I0(p_1_in[54]),
        .I1(mul_ans__0_n_89),
        .O(\hi_o_reg[23]_i_5_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[23]_i_6 
       (.I0(p_1_in[53]),
        .I1(mul_ans__0_n_90),
        .O(\hi_o_reg[23]_i_6_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[23]_i_7 
       (.I0(p_1_in[52]),
        .I1(mul_ans__0_n_91),
        .O(\hi_o_reg[23]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[24] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [24]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [24]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[24]_i_2 
       (.I0(\hi_o_reg[24]_i_3_n_8 ),
        .I1(\hi_o_reg[27]_i_3_n_11 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[24] ));
  CARRY4 \hi_o_reg[24]_i_3 
       (.CI(\hi_o_reg[20]_i_3_n_4 ),
        .CO({\hi_o_reg[24]_i_3_n_4 ,\hi_o_reg[24]_i_3_n_5 ,\hi_o_reg[24]_i_3_n_6 ,\hi_o_reg[24]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hi_o_reg[24]_i_3_n_8 ,\hi_o_reg[24]_i_3_n_9 ,\hi_o_reg[24]_i_3_n_10 ,\hi_o_reg[24]_i_3_n_11 }),
        .S({\hi_o_reg[24]_i_4_n_4 ,\hi_o_reg[24]_i_5_n_4 ,\hi_o_reg[24]_i_6_n_4 ,\hi_o_reg[24]_i_7_n_4 }));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[24]_i_4 
       (.I0(\hi_o_reg[27]_i_3_n_11 ),
        .O(\hi_o_reg[24]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[24]_i_5 
       (.I0(\hi_o_reg[23]_i_3_n_8 ),
        .O(\hi_o_reg[24]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[24]_i_6 
       (.I0(\hi_o_reg[23]_i_3_n_9 ),
        .O(\hi_o_reg[24]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[24]_i_7 
       (.I0(\hi_o_reg[23]_i_3_n_10 ),
        .O(\hi_o_reg[24]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[25] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [25]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [25]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[25]_i_2 
       (.I0(\hi_o_reg[28]_i_3_n_11 ),
        .I1(\hi_o_reg[27]_i_3_n_10 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[25] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[26] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [26]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [26]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[26]_i_2 
       (.I0(\hi_o_reg[28]_i_3_n_10 ),
        .I1(\hi_o_reg[27]_i_3_n_9 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[26] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[27] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [27]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [27]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[27]_i_2 
       (.I0(\hi_o_reg[28]_i_3_n_9 ),
        .I1(\hi_o_reg[27]_i_3_n_8 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[27] ));
  CARRY4 \hi_o_reg[27]_i_3 
       (.CI(\hi_o_reg[23]_i_3_n_4 ),
        .CO({\hi_o_reg[27]_i_3_n_4 ,\hi_o_reg[27]_i_3_n_5 ,\hi_o_reg[27]_i_3_n_6 ,\hi_o_reg[27]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(p_1_in[59:56]),
        .O({\hi_o_reg[27]_i_3_n_8 ,\hi_o_reg[27]_i_3_n_9 ,\hi_o_reg[27]_i_3_n_10 ,\hi_o_reg[27]_i_3_n_11 }),
        .S({\hi_o_reg[27]_i_4_n_4 ,\hi_o_reg[27]_i_5_n_4 ,\hi_o_reg[27]_i_6_n_4 ,\hi_o_reg[27]_i_7_n_4 }));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[27]_i_4 
       (.I0(p_1_in[59]),
        .I1(mul_ans__0_n_84),
        .O(\hi_o_reg[27]_i_4_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[27]_i_5 
       (.I0(p_1_in[58]),
        .I1(mul_ans__0_n_85),
        .O(\hi_o_reg[27]_i_5_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[27]_i_6 
       (.I0(p_1_in[57]),
        .I1(mul_ans__0_n_86),
        .O(\hi_o_reg[27]_i_6_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[27]_i_7 
       (.I0(p_1_in[56]),
        .I1(mul_ans__0_n_87),
        .O(\hi_o_reg[27]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[28] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [28]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [28]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[28]_i_2 
       (.I0(\hi_o_reg[28]_i_3_n_8 ),
        .I1(\hi_o_reg[31]_i_6_n_11 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[28] ));
  CARRY4 \hi_o_reg[28]_i_3 
       (.CI(\hi_o_reg[24]_i_3_n_4 ),
        .CO({\hi_o_reg[28]_i_3_n_4 ,\hi_o_reg[28]_i_3_n_5 ,\hi_o_reg[28]_i_3_n_6 ,\hi_o_reg[28]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hi_o_reg[28]_i_3_n_8 ,\hi_o_reg[28]_i_3_n_9 ,\hi_o_reg[28]_i_3_n_10 ,\hi_o_reg[28]_i_3_n_11 }),
        .S({\hi_o_reg[28]_i_4_n_4 ,\hi_o_reg[28]_i_5_n_4 ,\hi_o_reg[28]_i_6_n_4 ,\hi_o_reg[28]_i_7_n_4 }));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[28]_i_4 
       (.I0(\hi_o_reg[31]_i_6_n_11 ),
        .O(\hi_o_reg[28]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[28]_i_5 
       (.I0(\hi_o_reg[27]_i_3_n_8 ),
        .O(\hi_o_reg[28]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[28]_i_6 
       (.I0(\hi_o_reg[27]_i_3_n_9 ),
        .O(\hi_o_reg[28]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[28]_i_7 
       (.I0(\hi_o_reg[27]_i_3_n_10 ),
        .O(\hi_o_reg[28]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[29] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [29]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [29]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[29]_i_2 
       (.I0(\hi_o_reg[31]_i_5_n_11 ),
        .I1(\hi_o_reg[31]_i_6_n_10 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[29] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[2] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [2]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [2]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[2]_i_2 
       (.I0(\hi_o_reg[4]_i_3_n_10 ),
        .I1(\hi_o_reg[3]_i_3_n_9 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[30] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [30]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [30]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[30]_i_2 
       (.I0(\hi_o_reg[31]_i_5_n_10 ),
        .I1(\hi_o_reg[31]_i_6_n_9 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[30] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[31] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [31]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [31]));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[31]_i_10 
       (.I0(\hi_o_reg[31]_i_6_n_10 ),
        .O(\hi_o_reg[31]_i_10_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[31]_i_11 
       (.I0(mul_ans__0_n_80),
        .I1(p_1_in[63]),
        .O(\hi_o_reg[31]_i_11_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[31]_i_12 
       (.I0(p_1_in[62]),
        .I1(mul_ans__0_n_81),
        .O(\hi_o_reg[31]_i_12_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[31]_i_13 
       (.I0(p_1_in[61]),
        .I1(mul_ans__0_n_82),
        .O(\hi_o_reg[31]_i_13_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[31]_i_14 
       (.I0(p_1_in[60]),
        .I1(mul_ans__0_n_83),
        .O(\hi_o_reg[31]_i_14_n_4 ));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[31]_i_4 
       (.I0(\hi_o_reg[31]_i_5_n_9 ),
        .I1(\hi_o_reg[31]_i_6_n_8 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[31] ));
  CARRY4 \hi_o_reg[31]_i_5 
       (.CI(\hi_o_reg[28]_i_3_n_4 ),
        .CO({\NLW_hi_o_reg[31]_i_5_CO_UNCONNECTED [3:2],\hi_o_reg[31]_i_5_n_6 ,\hi_o_reg[31]_i_5_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_hi_o_reg[31]_i_5_O_UNCONNECTED [3],\hi_o_reg[31]_i_5_n_9 ,\hi_o_reg[31]_i_5_n_10 ,\hi_o_reg[31]_i_5_n_11 }),
        .S({1'b0,\hi_o_reg[31]_i_8_n_4 ,\hi_o_reg[31]_i_9_n_4 ,\hi_o_reg[31]_i_10_n_4 }));
  CARRY4 \hi_o_reg[31]_i_6 
       (.CI(\hi_o_reg[27]_i_3_n_4 ),
        .CO({\NLW_hi_o_reg[31]_i_6_CO_UNCONNECTED [3],\hi_o_reg[31]_i_6_n_5 ,\hi_o_reg[31]_i_6_n_6 ,\hi_o_reg[31]_i_6_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_in[62:60]}),
        .O({\hi_o_reg[31]_i_6_n_8 ,\hi_o_reg[31]_i_6_n_9 ,\hi_o_reg[31]_i_6_n_10 ,\hi_o_reg[31]_i_6_n_11 }),
        .S({\hi_o_reg[31]_i_11_n_4 ,\hi_o_reg[31]_i_12_n_4 ,\hi_o_reg[31]_i_13_n_4 ,\hi_o_reg[31]_i_14_n_4 }));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[31]_i_8 
       (.I0(\hi_o_reg[31]_i_6_n_8 ),
        .O(\hi_o_reg[31]_i_8_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[31]_i_9 
       (.I0(\hi_o_reg[31]_i_6_n_9 ),
        .O(\hi_o_reg[31]_i_9_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[3] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [3]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [3]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[3]_i_2 
       (.I0(\hi_o_reg[4]_i_3_n_9 ),
        .I1(\hi_o_reg[3]_i_3_n_8 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[3] ));
  CARRY4 \hi_o_reg[3]_i_3 
       (.CI(\lo_o_reg[31]_i_3_n_4 ),
        .CO({\hi_o_reg[3]_i_3_n_4 ,\hi_o_reg[3]_i_3_n_5 ,\hi_o_reg[3]_i_3_n_6 ,\hi_o_reg[3]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(p_1_in[35:32]),
        .O({\hi_o_reg[3]_i_3_n_8 ,\hi_o_reg[3]_i_3_n_9 ,\hi_o_reg[3]_i_3_n_10 ,\hi_o_reg[3]_i_3_n_11 }),
        .S({\hi_o_reg[3]_i_4_n_4 ,\hi_o_reg[3]_i_5_n_4 ,\hi_o_reg[3]_i_6_n_4 ,\hi_o_reg[3]_i_7_n_4 }));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[3]_i_4 
       (.I0(p_1_in[35]),
        .I1(mul_ans__0_n_108),
        .O(\hi_o_reg[3]_i_4_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[3]_i_5 
       (.I0(p_1_in[34]),
        .I1(mul_ans__0_n_109),
        .O(\hi_o_reg[3]_i_5_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[3]_i_6 
       (.I0(p_1_in[33]),
        .I1(mul_ans_n_93),
        .O(\hi_o_reg[3]_i_6_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[3]_i_7 
       (.I0(p_1_in[32]),
        .I1(mul_ans_n_94),
        .O(\hi_o_reg[3]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[4] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [4]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [4]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[4]_i_2 
       (.I0(\hi_o_reg[4]_i_3_n_8 ),
        .I1(\hi_o_reg[7]_i_3_n_11 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[4] ));
  CARRY4 \hi_o_reg[4]_i_3 
       (.CI(\hi_o_reg[0]_i_3_n_4 ),
        .CO({\hi_o_reg[4]_i_3_n_4 ,\hi_o_reg[4]_i_3_n_5 ,\hi_o_reg[4]_i_3_n_6 ,\hi_o_reg[4]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hi_o_reg[4]_i_3_n_8 ,\hi_o_reg[4]_i_3_n_9 ,\hi_o_reg[4]_i_3_n_10 ,\hi_o_reg[4]_i_3_n_11 }),
        .S({\hi_o_reg[4]_i_4_n_4 ,\hi_o_reg[4]_i_5_n_4 ,\hi_o_reg[4]_i_6_n_4 ,\hi_o_reg[4]_i_7_n_4 }));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[4]_i_4 
       (.I0(\hi_o_reg[7]_i_3_n_11 ),
        .O(\hi_o_reg[4]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[4]_i_5 
       (.I0(\hi_o_reg[3]_i_3_n_8 ),
        .O(\hi_o_reg[4]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[4]_i_6 
       (.I0(\hi_o_reg[3]_i_3_n_9 ),
        .O(\hi_o_reg[4]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[4]_i_7 
       (.I0(\hi_o_reg[3]_i_3_n_10 ),
        .O(\hi_o_reg[4]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[5] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [5]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [5]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[5]_i_2 
       (.I0(\hi_o_reg[8]_i_3_n_11 ),
        .I1(\hi_o_reg[7]_i_3_n_10 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[6] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [6]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [6]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[6]_i_2 
       (.I0(\hi_o_reg[8]_i_3_n_10 ),
        .I1(\hi_o_reg[7]_i_3_n_9 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[7] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [7]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [7]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[7]_i_2 
       (.I0(\hi_o_reg[8]_i_3_n_9 ),
        .I1(\hi_o_reg[7]_i_3_n_8 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[7] ));
  CARRY4 \hi_o_reg[7]_i_3 
       (.CI(\hi_o_reg[3]_i_3_n_4 ),
        .CO({\hi_o_reg[7]_i_3_n_4 ,\hi_o_reg[7]_i_3_n_5 ,\hi_o_reg[7]_i_3_n_6 ,\hi_o_reg[7]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(p_1_in[39:36]),
        .O({\hi_o_reg[7]_i_3_n_8 ,\hi_o_reg[7]_i_3_n_9 ,\hi_o_reg[7]_i_3_n_10 ,\hi_o_reg[7]_i_3_n_11 }),
        .S({\hi_o_reg[7]_i_4_n_4 ,\hi_o_reg[7]_i_5_n_4 ,\hi_o_reg[7]_i_6_n_4 ,\hi_o_reg[7]_i_7_n_4 }));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[7]_i_4 
       (.I0(p_1_in[39]),
        .I1(mul_ans__0_n_104),
        .O(\hi_o_reg[7]_i_4_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[7]_i_5 
       (.I0(p_1_in[38]),
        .I1(mul_ans__0_n_105),
        .O(\hi_o_reg[7]_i_5_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[7]_i_6 
       (.I0(p_1_in[37]),
        .I1(mul_ans__0_n_106),
        .O(\hi_o_reg[7]_i_6_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hi_o_reg[7]_i_7 
       (.I0(p_1_in[36]),
        .I1(mul_ans__0_n_107),
        .O(\hi_o_reg[7]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[8] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [8]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [8]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[8]_i_2 
       (.I0(\hi_o_reg[8]_i_3_n_8 ),
        .I1(\hi_o_reg[11]_i_3_n_11 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[8] ));
  CARRY4 \hi_o_reg[8]_i_3 
       (.CI(\hi_o_reg[4]_i_3_n_4 ),
        .CO({\hi_o_reg[8]_i_3_n_4 ,\hi_o_reg[8]_i_3_n_5 ,\hi_o_reg[8]_i_3_n_6 ,\hi_o_reg[8]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hi_o_reg[8]_i_3_n_8 ,\hi_o_reg[8]_i_3_n_9 ,\hi_o_reg[8]_i_3_n_10 ,\hi_o_reg[8]_i_3_n_11 }),
        .S({\hi_o_reg[8]_i_4_n_4 ,\hi_o_reg[8]_i_5_n_4 ,\hi_o_reg[8]_i_6_n_4 ,\hi_o_reg[8]_i_7_n_4 }));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[8]_i_4 
       (.I0(\hi_o_reg[11]_i_3_n_11 ),
        .O(\hi_o_reg[8]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[8]_i_5 
       (.I0(\hi_o_reg[7]_i_3_n_8 ),
        .O(\hi_o_reg[8]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[8]_i_6 
       (.I0(\hi_o_reg[7]_i_3_n_9 ),
        .O(\hi_o_reg[8]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hi_o_reg[8]_i_7 
       (.I0(\hi_o_reg[7]_i_3_n_10 ),
        .O(\hi_o_reg[8]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \hi_o_reg[9] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_0 [9]),
        .G(\ex_aluop_reg[5]_1 ),
        .GE(1'b1),
        .Q(\mem_hi_reg[31]_0 [9]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \hi_o_reg[9]_i_2 
       (.I0(\hi_o_reg[12]_i_3_n_11 ),
        .I1(\hi_o_reg[11]_i_3_n_10 ),
        .I2(\ex_reg2_reg[31] ),
        .I3(\ex_aluop_reg[1]_2 ),
        .O(\mem_hi_reg[9] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[0] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [0]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[10] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [10]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [10]));
  LUT5 #(
    .INIT(32'hFCFFFDFD)) 
    \lo_o_reg[10]_i_2 
       (.I0(p_1_in[10]),
        .I1(rst_IBUF),
        .I2(\ex_aluop_reg[1]_2 ),
        .I3(\lo_o_reg[12]_i_3_n_10 ),
        .I4(\ex_reg2_reg[31] ),
        .O(\mem_lo_reg[10] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[11] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [11]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [11]));
  LUT5 #(
    .INIT(32'hFFFFFF1D)) 
    \lo_o_reg[11]_i_2 
       (.I0(p_1_in[11]),
        .I1(\ex_reg2_reg[31] ),
        .I2(\lo_o_reg[12]_i_3_n_9 ),
        .I3(rst_IBUF),
        .I4(\ex_aluop_reg[1]_2 ),
        .O(\mem_lo_reg[11] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[12] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [12]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [12]));
  LUT5 #(
    .INIT(32'hFCFFFDFD)) 
    \lo_o_reg[12]_i_2 
       (.I0(p_1_in[12]),
        .I1(rst_IBUF),
        .I2(\ex_aluop_reg[1]_2 ),
        .I3(\lo_o_reg[12]_i_3_n_8 ),
        .I4(\ex_reg2_reg[31] ),
        .O(\mem_lo_reg[12] ));
  CARRY4 \lo_o_reg[12]_i_3 
       (.CI(\lo_o_reg[8]_i_3_n_4 ),
        .CO({\lo_o_reg[12]_i_3_n_4 ,\lo_o_reg[12]_i_3_n_5 ,\lo_o_reg[12]_i_3_n_6 ,\lo_o_reg[12]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lo_o_reg[12]_i_3_n_8 ,\lo_o_reg[12]_i_3_n_9 ,\lo_o_reg[12]_i_3_n_10 ,\lo_o_reg[12]_i_3_n_11 }),
        .S({\lo_o_reg[12]_i_4_n_4 ,\lo_o_reg[12]_i_5_n_4 ,\lo_o_reg[12]_i_6_n_4 ,\lo_o_reg[12]_i_7_n_4 }));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[12]_i_4 
       (.I0(p_1_in[12]),
        .O(\lo_o_reg[12]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[12]_i_5 
       (.I0(p_1_in[11]),
        .O(\lo_o_reg[12]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[12]_i_6 
       (.I0(p_1_in[10]),
        .O(\lo_o_reg[12]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[12]_i_7 
       (.I0(p_1_in[9]),
        .O(\lo_o_reg[12]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[13] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [13]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [13]));
  LUT5 #(
    .INIT(32'hFFFFFF1D)) 
    \lo_o_reg[13]_i_2 
       (.I0(p_1_in[13]),
        .I1(\ex_reg2_reg[31] ),
        .I2(\lo_o_reg[16]_i_3_n_11 ),
        .I3(rst_IBUF),
        .I4(\ex_aluop_reg[1]_2 ),
        .O(\mem_lo_reg[13] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[14] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [14]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [14]));
  LUT5 #(
    .INIT(32'hFFFFFF1D)) 
    \lo_o_reg[14]_i_2 
       (.I0(p_1_in[14]),
        .I1(\ex_reg2_reg[31] ),
        .I2(\lo_o_reg[16]_i_3_n_10 ),
        .I3(rst_IBUF),
        .I4(\ex_aluop_reg[1]_2 ),
        .O(\mem_lo_reg[14] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[15] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [15]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [15]));
  LUT5 #(
    .INIT(32'hFFFFFF1D)) 
    \lo_o_reg[15]_i_2 
       (.I0(p_1_in[15]),
        .I1(\ex_reg2_reg[31] ),
        .I2(\lo_o_reg[16]_i_3_n_9 ),
        .I3(rst_IBUF),
        .I4(\ex_aluop_reg[1]_2 ),
        .O(\mem_lo_reg[15] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[16] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [16]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [16]));
  LUT5 #(
    .INIT(32'hFFFFFF1D)) 
    \lo_o_reg[16]_i_2 
       (.I0(\lo_o_reg[19]_i_3_n_11 ),
        .I1(\ex_reg2_reg[31] ),
        .I2(\lo_o_reg[16]_i_3_n_8 ),
        .I3(rst_IBUF),
        .I4(\ex_aluop_reg[1]_2 ),
        .O(\mem_lo_reg[16] ));
  CARRY4 \lo_o_reg[16]_i_3 
       (.CI(\lo_o_reg[12]_i_3_n_4 ),
        .CO({\lo_o_reg[16]_i_3_n_4 ,\lo_o_reg[16]_i_3_n_5 ,\lo_o_reg[16]_i_3_n_6 ,\lo_o_reg[16]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lo_o_reg[16]_i_3_n_8 ,\lo_o_reg[16]_i_3_n_9 ,\lo_o_reg[16]_i_3_n_10 ,\lo_o_reg[16]_i_3_n_11 }),
        .S({\lo_o_reg[16]_i_4_n_4 ,\lo_o_reg[16]_i_5_n_4 ,\lo_o_reg[16]_i_6_n_4 ,\lo_o_reg[16]_i_7_n_4 }));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[16]_i_4 
       (.I0(\lo_o_reg[19]_i_3_n_11 ),
        .O(\lo_o_reg[16]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[16]_i_5 
       (.I0(p_1_in[15]),
        .O(\lo_o_reg[16]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[16]_i_6 
       (.I0(p_1_in[14]),
        .O(\lo_o_reg[16]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[16]_i_7 
       (.I0(p_1_in[13]),
        .O(\lo_o_reg[16]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[17] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [17]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [17]));
  LUT5 #(
    .INIT(32'hFFFFFF1D)) 
    \lo_o_reg[17]_i_2 
       (.I0(\lo_o_reg[19]_i_3_n_10 ),
        .I1(\ex_reg2_reg[31] ),
        .I2(\lo_o_reg[20]_i_3_n_11 ),
        .I3(rst_IBUF),
        .I4(\ex_aluop_reg[1]_2 ),
        .O(\mem_lo_reg[17] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[18] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [18]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [18]));
  LUT5 #(
    .INIT(32'hFCFFFDFD)) 
    \lo_o_reg[18]_i_2 
       (.I0(\lo_o_reg[19]_i_3_n_9 ),
        .I1(rst_IBUF),
        .I2(\ex_aluop_reg[1]_2 ),
        .I3(\lo_o_reg[20]_i_3_n_10 ),
        .I4(\ex_reg2_reg[31] ),
        .O(\mem_lo_reg[18] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[19] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [19]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [19]));
  LUT5 #(
    .INIT(32'hFFFFFF1D)) 
    \lo_o_reg[19]_i_2 
       (.I0(\lo_o_reg[19]_i_3_n_8 ),
        .I1(\ex_reg2_reg[31] ),
        .I2(\lo_o_reg[20]_i_3_n_9 ),
        .I3(rst_IBUF),
        .I4(\ex_aluop_reg[1]_2 ),
        .O(\mem_lo_reg[19] ));
  CARRY4 \lo_o_reg[19]_i_3 
       (.CI(1'b0),
        .CO({\lo_o_reg[19]_i_3_n_4 ,\lo_o_reg[19]_i_3_n_5 ,\lo_o_reg[19]_i_3_n_6 ,\lo_o_reg[19]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({p_1_in[19:17],1'b0}),
        .O({\lo_o_reg[19]_i_3_n_8 ,\lo_o_reg[19]_i_3_n_9 ,\lo_o_reg[19]_i_3_n_10 ,\lo_o_reg[19]_i_3_n_11 }),
        .S({\lo_o_reg[19]_i_4_n_4 ,\lo_o_reg[19]_i_5_n_4 ,\lo_o_reg[19]_i_6_n_4 ,p_1_in[16]}));
  LUT2 #(
    .INIT(4'h6)) 
    \lo_o_reg[19]_i_4 
       (.I0(p_1_in[19]),
        .I1(mul_ans_n_107),
        .O(\lo_o_reg[19]_i_4_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lo_o_reg[19]_i_5 
       (.I0(p_1_in[18]),
        .I1(mul_ans_n_108),
        .O(\lo_o_reg[19]_i_5_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lo_o_reg[19]_i_6 
       (.I0(p_1_in[17]),
        .I1(mul_ans_n_109),
        .O(\lo_o_reg[19]_i_6_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[1] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [1]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [1]));
  LUT5 #(
    .INIT(32'hFFFFFF1D)) 
    \lo_o_reg[1]_i_2 
       (.I0(p_1_in[1]),
        .I1(\ex_reg2_reg[31] ),
        .I2(\lo_o_reg[4]_i_3_n_11 ),
        .I3(rst_IBUF),
        .I4(\ex_aluop_reg[1]_2 ),
        .O(\mem_lo_reg[1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[20] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [20]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [20]));
  LUT5 #(
    .INIT(32'hFFFFFF1D)) 
    \lo_o_reg[20]_i_2 
       (.I0(\lo_o_reg[23]_i_3_n_11 ),
        .I1(\ex_reg2_reg[31] ),
        .I2(\lo_o_reg[20]_i_3_n_8 ),
        .I3(rst_IBUF),
        .I4(\ex_aluop_reg[1]_2 ),
        .O(\mem_lo_reg[20] ));
  CARRY4 \lo_o_reg[20]_i_3 
       (.CI(\lo_o_reg[16]_i_3_n_4 ),
        .CO({\lo_o_reg[20]_i_3_n_4 ,\lo_o_reg[20]_i_3_n_5 ,\lo_o_reg[20]_i_3_n_6 ,\lo_o_reg[20]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lo_o_reg[20]_i_3_n_8 ,\lo_o_reg[20]_i_3_n_9 ,\lo_o_reg[20]_i_3_n_10 ,\lo_o_reg[20]_i_3_n_11 }),
        .S({\lo_o_reg[20]_i_4_n_4 ,\lo_o_reg[20]_i_5_n_4 ,\lo_o_reg[20]_i_6_n_4 ,\lo_o_reg[20]_i_7_n_4 }));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[20]_i_4 
       (.I0(\lo_o_reg[23]_i_3_n_11 ),
        .O(\lo_o_reg[20]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[20]_i_5 
       (.I0(\lo_o_reg[19]_i_3_n_8 ),
        .O(\lo_o_reg[20]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[20]_i_6 
       (.I0(\lo_o_reg[19]_i_3_n_9 ),
        .O(\lo_o_reg[20]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[20]_i_7 
       (.I0(\lo_o_reg[19]_i_3_n_10 ),
        .O(\lo_o_reg[20]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[21] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [21]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [21]));
  LUT5 #(
    .INIT(32'hFCFFFDFD)) 
    \lo_o_reg[21]_i_2 
       (.I0(\lo_o_reg[23]_i_3_n_10 ),
        .I1(rst_IBUF),
        .I2(\ex_aluop_reg[1]_2 ),
        .I3(\lo_o_reg[24]_i_3_n_11 ),
        .I4(\ex_reg2_reg[31] ),
        .O(\mem_lo_reg[21] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[22] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [22]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [22]));
  LUT5 #(
    .INIT(32'hFFFFFF1D)) 
    \lo_o_reg[22]_i_2 
       (.I0(\lo_o_reg[23]_i_3_n_9 ),
        .I1(\ex_reg2_reg[31] ),
        .I2(\lo_o_reg[24]_i_3_n_10 ),
        .I3(rst_IBUF),
        .I4(\ex_aluop_reg[1]_2 ),
        .O(\mem_lo_reg[22] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[23] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [23]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [23]));
  LUT5 #(
    .INIT(32'hFCFFFDFD)) 
    \lo_o_reg[23]_i_2 
       (.I0(\lo_o_reg[23]_i_3_n_8 ),
        .I1(rst_IBUF),
        .I2(\ex_aluop_reg[1]_2 ),
        .I3(\lo_o_reg[24]_i_3_n_9 ),
        .I4(\ex_reg2_reg[31] ),
        .O(\mem_lo_reg[23] ));
  CARRY4 \lo_o_reg[23]_i_3 
       (.CI(\lo_o_reg[19]_i_3_n_4 ),
        .CO({\lo_o_reg[23]_i_3_n_4 ,\lo_o_reg[23]_i_3_n_5 ,\lo_o_reg[23]_i_3_n_6 ,\lo_o_reg[23]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(p_1_in[23:20]),
        .O({\lo_o_reg[23]_i_3_n_8 ,\lo_o_reg[23]_i_3_n_9 ,\lo_o_reg[23]_i_3_n_10 ,\lo_o_reg[23]_i_3_n_11 }),
        .S({\lo_o_reg[23]_i_4_n_4 ,\lo_o_reg[23]_i_5_n_4 ,\lo_o_reg[23]_i_6_n_4 ,\lo_o_reg[23]_i_7_n_4 }));
  LUT2 #(
    .INIT(4'h6)) 
    \lo_o_reg[23]_i_4 
       (.I0(p_1_in[23]),
        .I1(mul_ans_n_103),
        .O(\lo_o_reg[23]_i_4_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lo_o_reg[23]_i_5 
       (.I0(p_1_in[22]),
        .I1(mul_ans_n_104),
        .O(\lo_o_reg[23]_i_5_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lo_o_reg[23]_i_6 
       (.I0(p_1_in[21]),
        .I1(mul_ans_n_105),
        .O(\lo_o_reg[23]_i_6_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lo_o_reg[23]_i_7 
       (.I0(p_1_in[20]),
        .I1(mul_ans_n_106),
        .O(\lo_o_reg[23]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[24] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [24]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [24]));
  LUT5 #(
    .INIT(32'hFCFFFDFD)) 
    \lo_o_reg[24]_i_2 
       (.I0(\lo_o_reg[27]_i_3_n_11 ),
        .I1(rst_IBUF),
        .I2(\ex_aluop_reg[1]_2 ),
        .I3(\lo_o_reg[24]_i_3_n_8 ),
        .I4(\ex_reg2_reg[31] ),
        .O(\mem_lo_reg[24] ));
  CARRY4 \lo_o_reg[24]_i_3 
       (.CI(\lo_o_reg[20]_i_3_n_4 ),
        .CO({\lo_o_reg[24]_i_3_n_4 ,\lo_o_reg[24]_i_3_n_5 ,\lo_o_reg[24]_i_3_n_6 ,\lo_o_reg[24]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lo_o_reg[24]_i_3_n_8 ,\lo_o_reg[24]_i_3_n_9 ,\lo_o_reg[24]_i_3_n_10 ,\lo_o_reg[24]_i_3_n_11 }),
        .S({\lo_o_reg[24]_i_4_n_4 ,\lo_o_reg[24]_i_5_n_4 ,\lo_o_reg[24]_i_6_n_4 ,\lo_o_reg[24]_i_7_n_4 }));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[24]_i_4 
       (.I0(\lo_o_reg[27]_i_3_n_11 ),
        .O(\lo_o_reg[24]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[24]_i_5 
       (.I0(\lo_o_reg[23]_i_3_n_8 ),
        .O(\lo_o_reg[24]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[24]_i_6 
       (.I0(\lo_o_reg[23]_i_3_n_9 ),
        .O(\lo_o_reg[24]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[24]_i_7 
       (.I0(\lo_o_reg[23]_i_3_n_10 ),
        .O(\lo_o_reg[24]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[25] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [25]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [25]));
  LUT5 #(
    .INIT(32'hFFFFFF1D)) 
    \lo_o_reg[25]_i_2 
       (.I0(\lo_o_reg[27]_i_3_n_10 ),
        .I1(\ex_reg2_reg[31] ),
        .I2(\lo_o_reg[28]_i_3_n_11 ),
        .I3(rst_IBUF),
        .I4(\ex_aluop_reg[1]_2 ),
        .O(\mem_lo_reg[25] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[26] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [26]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [26]));
  LUT5 #(
    .INIT(32'hFFFFFF1D)) 
    \lo_o_reg[26]_i_2 
       (.I0(\lo_o_reg[27]_i_3_n_9 ),
        .I1(\ex_reg2_reg[31] ),
        .I2(\lo_o_reg[28]_i_3_n_10 ),
        .I3(rst_IBUF),
        .I4(\ex_aluop_reg[1]_2 ),
        .O(\mem_lo_reg[26] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[27] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [27]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [27]));
  LUT5 #(
    .INIT(32'hFFFFFF1D)) 
    \lo_o_reg[27]_i_2 
       (.I0(\lo_o_reg[27]_i_3_n_8 ),
        .I1(\ex_reg2_reg[31] ),
        .I2(\lo_o_reg[28]_i_3_n_9 ),
        .I3(rst_IBUF),
        .I4(\ex_aluop_reg[1]_2 ),
        .O(\mem_lo_reg[27] ));
  CARRY4 \lo_o_reg[27]_i_3 
       (.CI(\lo_o_reg[23]_i_3_n_4 ),
        .CO({\lo_o_reg[27]_i_3_n_4 ,\lo_o_reg[27]_i_3_n_5 ,\lo_o_reg[27]_i_3_n_6 ,\lo_o_reg[27]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(p_1_in[27:24]),
        .O({\lo_o_reg[27]_i_3_n_8 ,\lo_o_reg[27]_i_3_n_9 ,\lo_o_reg[27]_i_3_n_10 ,\lo_o_reg[27]_i_3_n_11 }),
        .S({\lo_o_reg[27]_i_4_n_4 ,\lo_o_reg[27]_i_5_n_4 ,\lo_o_reg[27]_i_6_n_4 ,\lo_o_reg[27]_i_7_n_4 }));
  LUT2 #(
    .INIT(4'h6)) 
    \lo_o_reg[27]_i_4 
       (.I0(p_1_in[27]),
        .I1(mul_ans_n_99),
        .O(\lo_o_reg[27]_i_4_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lo_o_reg[27]_i_5 
       (.I0(p_1_in[26]),
        .I1(mul_ans_n_100),
        .O(\lo_o_reg[27]_i_5_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lo_o_reg[27]_i_6 
       (.I0(p_1_in[25]),
        .I1(mul_ans_n_101),
        .O(\lo_o_reg[27]_i_6_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lo_o_reg[27]_i_7 
       (.I0(p_1_in[24]),
        .I1(mul_ans_n_102),
        .O(\lo_o_reg[27]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[28] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [28]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [28]));
  LUT5 #(
    .INIT(32'hFCFFFDFD)) 
    \lo_o_reg[28]_i_2 
       (.I0(\lo_o_reg[31]_i_3_n_11 ),
        .I1(rst_IBUF),
        .I2(\ex_aluop_reg[1]_2 ),
        .I3(\lo_o_reg[28]_i_3_n_8 ),
        .I4(\ex_reg2_reg[31] ),
        .O(\mem_lo_reg[28] ));
  CARRY4 \lo_o_reg[28]_i_3 
       (.CI(\lo_o_reg[24]_i_3_n_4 ),
        .CO({\lo_o_reg[28]_i_3_n_4 ,\lo_o_reg[28]_i_3_n_5 ,\lo_o_reg[28]_i_3_n_6 ,\lo_o_reg[28]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lo_o_reg[28]_i_3_n_8 ,\lo_o_reg[28]_i_3_n_9 ,\lo_o_reg[28]_i_3_n_10 ,\lo_o_reg[28]_i_3_n_11 }),
        .S({\lo_o_reg[28]_i_4_n_4 ,\lo_o_reg[28]_i_5_n_4 ,\lo_o_reg[28]_i_6_n_4 ,\lo_o_reg[28]_i_7_n_4 }));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[28]_i_4 
       (.I0(\lo_o_reg[31]_i_3_n_11 ),
        .O(\lo_o_reg[28]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[28]_i_5 
       (.I0(\lo_o_reg[27]_i_3_n_8 ),
        .O(\lo_o_reg[28]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[28]_i_6 
       (.I0(\lo_o_reg[27]_i_3_n_9 ),
        .O(\lo_o_reg[28]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[28]_i_7 
       (.I0(\lo_o_reg[27]_i_3_n_10 ),
        .O(\lo_o_reg[28]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[29] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [29]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [29]));
  LUT5 #(
    .INIT(32'hFCFFFDFD)) 
    \lo_o_reg[29]_i_2 
       (.I0(\lo_o_reg[31]_i_3_n_10 ),
        .I1(rst_IBUF),
        .I2(\ex_aluop_reg[1]_2 ),
        .I3(\hi_o_reg[0]_i_3_n_11 ),
        .I4(\ex_reg2_reg[31] ),
        .O(\mem_lo_reg[29] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[2] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [2]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[30] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [30]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [30]));
  LUT5 #(
    .INIT(32'hFCFFFDFD)) 
    \lo_o_reg[30]_i_2 
       (.I0(\lo_o_reg[31]_i_3_n_9 ),
        .I1(rst_IBUF),
        .I2(\ex_aluop_reg[1]_2 ),
        .I3(\hi_o_reg[0]_i_3_n_10 ),
        .I4(\ex_reg2_reg[31] ),
        .O(\mem_lo_reg[30] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[31] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [31]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [31]));
  LUT5 #(
    .INIT(32'hFCFFFDFD)) 
    \lo_o_reg[31]_i_2 
       (.I0(\lo_o_reg[31]_i_3_n_8 ),
        .I1(rst_IBUF),
        .I2(\ex_aluop_reg[1]_2 ),
        .I3(\hi_o_reg[0]_i_3_n_9 ),
        .I4(\ex_reg2_reg[31] ),
        .O(\mem_lo_reg[31] ));
  CARRY4 \lo_o_reg[31]_i_3 
       (.CI(\lo_o_reg[27]_i_3_n_4 ),
        .CO({\lo_o_reg[31]_i_3_n_4 ,\lo_o_reg[31]_i_3_n_5 ,\lo_o_reg[31]_i_3_n_6 ,\lo_o_reg[31]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(p_1_in[31:28]),
        .O({\lo_o_reg[31]_i_3_n_8 ,\lo_o_reg[31]_i_3_n_9 ,\lo_o_reg[31]_i_3_n_10 ,\lo_o_reg[31]_i_3_n_11 }),
        .S({\lo_o_reg[31]_i_4_n_4 ,\lo_o_reg[31]_i_5_n_4 ,\lo_o_reg[31]_i_6_n_4 ,\lo_o_reg[31]_i_7_n_4 }));
  LUT2 #(
    .INIT(4'h6)) 
    \lo_o_reg[31]_i_4 
       (.I0(p_1_in[31]),
        .I1(mul_ans_n_95),
        .O(\lo_o_reg[31]_i_4_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lo_o_reg[31]_i_5 
       (.I0(p_1_in[30]),
        .I1(mul_ans_n_96),
        .O(\lo_o_reg[31]_i_5_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lo_o_reg[31]_i_6 
       (.I0(p_1_in[29]),
        .I1(mul_ans_n_97),
        .O(\lo_o_reg[31]_i_6_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lo_o_reg[31]_i_7 
       (.I0(p_1_in[28]),
        .I1(mul_ans_n_98),
        .O(\lo_o_reg[31]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[3] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [3]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [3]));
  LUT5 #(
    .INIT(32'hFFFFFF1D)) 
    \lo_o_reg[3]_i_2 
       (.I0(p_1_in[3]),
        .I1(\ex_reg2_reg[31] ),
        .I2(\lo_o_reg[4]_i_3_n_9 ),
        .I3(rst_IBUF),
        .I4(\ex_aluop_reg[1]_2 ),
        .O(\mem_lo_reg[3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[4] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [4]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [4]));
  LUT5 #(
    .INIT(32'hFFFFFF1D)) 
    \lo_o_reg[4]_i_2 
       (.I0(p_1_in[4]),
        .I1(\ex_reg2_reg[31] ),
        .I2(\lo_o_reg[4]_i_3_n_8 ),
        .I3(rst_IBUF),
        .I4(\ex_aluop_reg[1]_2 ),
        .O(\mem_lo_reg[4] ));
  CARRY4 \lo_o_reg[4]_i_3 
       (.CI(1'b0),
        .CO({\lo_o_reg[4]_i_3_n_4 ,\lo_o_reg[4]_i_3_n_5 ,\lo_o_reg[4]_i_3_n_6 ,\lo_o_reg[4]_i_3_n_7 }),
        .CYINIT(\lo_o_reg[4]_i_4_n_4 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lo_o_reg[4]_i_3_n_8 ,\lo_o_reg[4]_i_3_n_9 ,O,\lo_o_reg[4]_i_3_n_11 }),
        .S({\lo_o_reg[4]_i_5_n_4 ,\lo_o_reg[4]_i_6_n_4 ,\lo_o_reg[4]_i_7_n_4 ,\lo_o_reg[4]_i_8_n_4 }));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[4]_i_4 
       (.I0(P[0]),
        .O(\lo_o_reg[4]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[4]_i_5 
       (.I0(p_1_in[4]),
        .O(\lo_o_reg[4]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[4]_i_6 
       (.I0(p_1_in[3]),
        .O(\lo_o_reg[4]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[4]_i_7 
       (.I0(P[1]),
        .O(\lo_o_reg[4]_i_7_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[4]_i_8 
       (.I0(p_1_in[1]),
        .O(\lo_o_reg[4]_i_8_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[5] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [5]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [5]));
  LUT5 #(
    .INIT(32'hFFFFFF1D)) 
    \lo_o_reg[5]_i_2 
       (.I0(p_1_in[5]),
        .I1(\ex_reg2_reg[31] ),
        .I2(\lo_o_reg[8]_i_3_n_11 ),
        .I3(rst_IBUF),
        .I4(\ex_aluop_reg[1]_2 ),
        .O(\mem_lo_reg[5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[6] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [6]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [6]));
  LUT5 #(
    .INIT(32'hFCFFFDFD)) 
    \lo_o_reg[6]_i_2 
       (.I0(p_1_in[6]),
        .I1(rst_IBUF),
        .I2(\ex_aluop_reg[1]_2 ),
        .I3(\lo_o_reg[8]_i_3_n_10 ),
        .I4(\ex_reg2_reg[31] ),
        .O(\mem_lo_reg[6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[7] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [7]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[8] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [8]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [8]));
  LUT5 #(
    .INIT(32'hFFFFFF1D)) 
    \lo_o_reg[8]_i_2 
       (.I0(p_1_in[8]),
        .I1(\ex_reg2_reg[31] ),
        .I2(\lo_o_reg[8]_i_3_n_8 ),
        .I3(rst_IBUF),
        .I4(\ex_aluop_reg[1]_2 ),
        .O(\mem_lo_reg[8] ));
  CARRY4 \lo_o_reg[8]_i_3 
       (.CI(\lo_o_reg[4]_i_3_n_4 ),
        .CO({\lo_o_reg[8]_i_3_n_4 ,\lo_o_reg[8]_i_3_n_5 ,\lo_o_reg[8]_i_3_n_6 ,\lo_o_reg[8]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lo_o_reg[8]_i_3_n_8 ,\mem_lo_reg[7] ,\lo_o_reg[8]_i_3_n_10 ,\lo_o_reg[8]_i_3_n_11 }),
        .S({\lo_o_reg[8]_i_4_n_4 ,\lo_o_reg[8]_i_5_n_4 ,\lo_o_reg[8]_i_6_n_4 ,\lo_o_reg[8]_i_7_n_4 }));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[8]_i_4 
       (.I0(p_1_in[8]),
        .O(\lo_o_reg[8]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[8]_i_5 
       (.I0(P[2]),
        .O(\lo_o_reg[8]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[8]_i_6 
       (.I0(p_1_in[6]),
        .O(\lo_o_reg[8]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lo_o_reg[8]_i_7 
       (.I0(p_1_in[5]),
        .O(\lo_o_reg[8]_i_7_n_4 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lo_o_reg[9] 
       (.CLR(1'b0),
        .D(\ex_reg1_reg[31]_1 [9]),
        .G(\ex_aluop_reg[1]_3 ),
        .GE(1'b1),
        .Q(\mem_lo_reg[31]_0 [9]));
  LUT5 #(
    .INIT(32'hFFFFFF1D)) 
    \lo_o_reg[9]_i_2 
       (.I0(p_1_in[9]),
        .I1(\ex_reg2_reg[31] ),
        .I2(\lo_o_reg[12]_i_3_n_11 ),
        .I3(rst_IBUF),
        .I4(\ex_aluop_reg[1]_2 ),
        .O(\mem_lo_reg[9] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mul_ans
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mul_op2[15:0],Q[0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ans_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,mul_op1[30:16]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ans_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ans_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ans_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ans_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ans_OVERFLOW_UNCONNECTED),
        .P({mul_ans_n_62,mul_ans_n_63,mul_ans_n_64,mul_ans_n_65,mul_ans_n_66,mul_ans_n_67,mul_ans_n_68,mul_ans_n_69,mul_ans_n_70,mul_ans_n_71,mul_ans_n_72,mul_ans_n_73,mul_ans_n_74,mul_ans_n_75,mul_ans_n_76,mul_ans_n_77,mul_ans_n_78,mul_ans_n_79,mul_ans_n_80,mul_ans_n_81,mul_ans_n_82,mul_ans_n_83,mul_ans_n_84,mul_ans_n_85,mul_ans_n_86,mul_ans_n_87,mul_ans_n_88,mul_ans_n_89,mul_ans_n_90,mul_ans_n_91,mul_ans_n_92,mul_ans_n_93,mul_ans_n_94,mul_ans_n_95,mul_ans_n_96,mul_ans_n_97,mul_ans_n_98,mul_ans_n_99,mul_ans_n_100,mul_ans_n_101,mul_ans_n_102,mul_ans_n_103,mul_ans_n_104,mul_ans_n_105,mul_ans_n_106,mul_ans_n_107,mul_ans_n_108,mul_ans_n_109}),
        .PATTERNBDETECT(NLW_mul_ans_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ans_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({mul_ans_n_110,mul_ans_n_111,mul_ans_n_112,mul_ans_n_113,mul_ans_n_114,mul_ans_n_115,mul_ans_n_116,mul_ans_n_117,mul_ans_n_118,mul_ans_n_119,mul_ans_n_120,mul_ans_n_121,mul_ans_n_122,mul_ans_n_123,mul_ans_n_124,mul_ans_n_125,mul_ans_n_126,mul_ans_n_127,mul_ans_n_128,mul_ans_n_129,mul_ans_n_130,mul_ans_n_131,mul_ans_n_132,mul_ans_n_133,mul_ans_n_134,mul_ans_n_135,mul_ans_n_136,mul_ans_n_137,mul_ans_n_138,mul_ans_n_139,mul_ans_n_140,mul_ans_n_141,mul_ans_n_142,mul_ans_n_143,mul_ans_n_144,mul_ans_n_145,mul_ans_n_146,mul_ans_n_147,mul_ans_n_148,mul_ans_n_149,mul_ans_n_150,mul_ans_n_151,mul_ans_n_152,mul_ans_n_153,mul_ans_n_154,mul_ans_n_155,mul_ans_n_156,mul_ans_n_157}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_ans_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x16 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mul_ans__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mul_op1[30:16]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ans__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,mul_op2[30:16]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ans__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ans__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ans__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ans__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ans__0_OVERFLOW_UNCONNECTED),
        .P({NLW_mul_ans__0_P_UNCONNECTED[47:30],mul_ans__0_n_80,mul_ans__0_n_81,mul_ans__0_n_82,mul_ans__0_n_83,mul_ans__0_n_84,mul_ans__0_n_85,mul_ans__0_n_86,mul_ans__0_n_87,mul_ans__0_n_88,mul_ans__0_n_89,mul_ans__0_n_90,mul_ans__0_n_91,mul_ans__0_n_92,mul_ans__0_n_93,mul_ans__0_n_94,mul_ans__0_n_95,mul_ans__0_n_96,mul_ans__0_n_97,mul_ans__0_n_98,mul_ans__0_n_99,mul_ans__0_n_100,mul_ans__0_n_101,mul_ans__0_n_102,mul_ans__0_n_103,mul_ans__0_n_104,mul_ans__0_n_105,mul_ans__0_n_106,mul_ans__0_n_107,mul_ans__0_n_108,mul_ans__0_n_109}),
        .PATTERNBDETECT(NLW_mul_ans__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ans__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_ans_n_110,mul_ans_n_111,mul_ans_n_112,mul_ans_n_113,mul_ans_n_114,mul_ans_n_115,mul_ans_n_116,mul_ans_n_117,mul_ans_n_118,mul_ans_n_119,mul_ans_n_120,mul_ans_n_121,mul_ans_n_122,mul_ans_n_123,mul_ans_n_124,mul_ans_n_125,mul_ans_n_126,mul_ans_n_127,mul_ans_n_128,mul_ans_n_129,mul_ans_n_130,mul_ans_n_131,mul_ans_n_132,mul_ans_n_133,mul_ans_n_134,mul_ans_n_135,mul_ans_n_136,mul_ans_n_137,mul_ans_n_138,mul_ans_n_139,mul_ans_n_140,mul_ans_n_141,mul_ans_n_142,mul_ans_n_143,mul_ans_n_144,mul_ans_n_145,mul_ans_n_146,mul_ans_n_147,mul_ans_n_148,mul_ans_n_149,mul_ans_n_150,mul_ans_n_151,mul_ans_n_152,mul_ans_n_153,mul_ans_n_154,mul_ans_n_155,mul_ans_n_156,mul_ans_n_157}),
        .PCOUT(NLW_mul_ans__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_ans__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mul_ans__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mul_op1[15:0],\ex_reg1_reg[31] [0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ans__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,mul_op2[15:0],Q[0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ans__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ans__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ans__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ans__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ans__1_OVERFLOW_UNCONNECTED),
        .P({mul_ans__1_n_62,mul_ans__1_n_63,mul_ans__1_n_64,mul_ans__1_n_65,mul_ans__1_n_66,mul_ans__1_n_67,mul_ans__1_n_68,mul_ans__1_n_69,mul_ans__1_n_70,mul_ans__1_n_71,mul_ans__1_n_72,mul_ans__1_n_73,mul_ans__1_n_74,mul_ans__1_n_75,mul_ans__1_n_76,mul_ans__1_n_77,mul_ans__1_n_78,mul_ans__1_n_79,mul_ans__1_n_80,mul_ans__1_n_81,mul_ans__1_n_82,mul_ans__1_n_83,mul_ans__1_n_84,mul_ans__1_n_85,mul_ans__1_n_86,mul_ans__1_n_87,mul_ans__1_n_88,mul_ans__1_n_89,mul_ans__1_n_90,mul_ans__1_n_91,mul_ans__1_n_92,p_1_in[16:8],P[2],p_1_in[6:3],P[1],p_1_in[1],P[0]}),
        .PATTERNBDETECT(NLW_mul_ans__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ans__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({mul_ans__1_n_110,mul_ans__1_n_111,mul_ans__1_n_112,mul_ans__1_n_113,mul_ans__1_n_114,mul_ans__1_n_115,mul_ans__1_n_116,mul_ans__1_n_117,mul_ans__1_n_118,mul_ans__1_n_119,mul_ans__1_n_120,mul_ans__1_n_121,mul_ans__1_n_122,mul_ans__1_n_123,mul_ans__1_n_124,mul_ans__1_n_125,mul_ans__1_n_126,mul_ans__1_n_127,mul_ans__1_n_128,mul_ans__1_n_129,mul_ans__1_n_130,mul_ans__1_n_131,mul_ans__1_n_132,mul_ans__1_n_133,mul_ans__1_n_134,mul_ans__1_n_135,mul_ans__1_n_136,mul_ans__1_n_137,mul_ans__1_n_138,mul_ans__1_n_139,mul_ans__1_n_140,mul_ans__1_n_141,mul_ans__1_n_142,mul_ans__1_n_143,mul_ans__1_n_144,mul_ans__1_n_145,mul_ans__1_n_146,mul_ans__1_n_147,mul_ans__1_n_148,mul_ans__1_n_149,mul_ans__1_n_150,mul_ans__1_n_151,mul_ans__1_n_152,mul_ans__1_n_153,mul_ans__1_n_154,mul_ans__1_n_155,mul_ans__1_n_156,mul_ans__1_n_157}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_ans__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mul_ans__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mul_op1[15:0],\ex_reg1_reg[31] [0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ans__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,mul_op2[30:16]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ans__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ans__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ans__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ans__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ans__2_OVERFLOW_UNCONNECTED),
        .P({NLW_mul_ans__2_P_UNCONNECTED[47],p_1_in[63:17]}),
        .PATTERNBDETECT(NLW_mul_ans__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ans__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_ans__1_n_110,mul_ans__1_n_111,mul_ans__1_n_112,mul_ans__1_n_113,mul_ans__1_n_114,mul_ans__1_n_115,mul_ans__1_n_116,mul_ans__1_n_117,mul_ans__1_n_118,mul_ans__1_n_119,mul_ans__1_n_120,mul_ans__1_n_121,mul_ans__1_n_122,mul_ans__1_n_123,mul_ans__1_n_124,mul_ans__1_n_125,mul_ans__1_n_126,mul_ans__1_n_127,mul_ans__1_n_128,mul_ans__1_n_129,mul_ans__1_n_130,mul_ans__1_n_131,mul_ans__1_n_132,mul_ans__1_n_133,mul_ans__1_n_134,mul_ans__1_n_135,mul_ans__1_n_136,mul_ans__1_n_137,mul_ans__1_n_138,mul_ans__1_n_139,mul_ans__1_n_140,mul_ans__1_n_141,mul_ans__1_n_142,mul_ans__1_n_143,mul_ans__1_n_144,mul_ans__1_n_145,mul_ans__1_n_146,mul_ans__1_n_147,mul_ans__1_n_148,mul_ans__1_n_149,mul_ans__1_n_150,mul_ans__1_n_151,mul_ans__1_n_152,mul_ans__1_n_153,mul_ans__1_n_154,mul_ans__1_n_155,mul_ans__1_n_156,mul_ans__1_n_157}),
        .PCOUT(NLW_mul_ans__2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_ans__2_UNDERFLOW_UNCONNECTED));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    ovassert_reg
       (.CLR(1'b0),
        .D(ovassert0),
        .G(p_0_in),
        .GE(1'b1),
        .Q(ex_excepttype_o));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[10]_i_1 
       (.I0(\result_reg[10] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[9]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [9]),
        .O(\result_reg[31]_0 [8]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[11]_i_1 
       (.I0(\result_reg[11] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[10]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [10]),
        .O(\result_reg[31]_0 [9]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[12]_i_1 
       (.I0(\result_reg[12] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[11]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [11]),
        .O(\result_reg[31]_0 [10]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[13]_i_1 
       (.I0(\result_reg[13] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[12]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [12]),
        .O(\result_reg[31]_0 [11]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[13]_i_4 
       (.I0(div_opdata1[12]),
        .O(\result[13]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[13]_i_5 
       (.I0(div_opdata1[11]),
        .O(\result[13]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[13]_i_6 
       (.I0(div_opdata1[10]),
        .O(\result[13]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[13]_i_7 
       (.I0(div_opdata1[9]),
        .O(\result[13]_i_7_n_4 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[14]_i_1 
       (.I0(\result_reg[14] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[13]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [13]),
        .O(\result_reg[31]_0 [12]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[15]_i_1 
       (.I0(\result_reg[15] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[14]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [14]),
        .O(\result_reg[31]_0 [13]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[16]_i_1 
       (.I0(\result_reg[16] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[15]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [15]),
        .O(\result_reg[31]_0 [14]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[17]_i_1 
       (.I0(\result_reg[17] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[16]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [16]),
        .O(\result_reg[31]_0 [15]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[17]_i_4 
       (.I0(div_opdata1[16]),
        .O(\result[17]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[17]_i_5 
       (.I0(div_opdata1[15]),
        .O(\result[17]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[17]_i_6 
       (.I0(div_opdata1[14]),
        .O(\result[17]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[17]_i_7 
       (.I0(div_opdata1[13]),
        .O(\result[17]_i_7_n_4 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[18]_i_1 
       (.I0(\result_reg[18] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[17]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [17]),
        .O(\result_reg[31]_0 [16]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[19]_i_1 
       (.I0(\result_reg[19] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[18]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [18]),
        .O(\result_reg[31]_0 [17]));
  LUT4 #(
    .INIT(16'h0200)) 
    \result[1]_i_2 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(div_start),
        .O(\result_reg[1] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[20]_i_1 
       (.I0(\result_reg[20] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[19]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [19]),
        .O(\result_reg[31]_0 [18]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[21]_i_1 
       (.I0(\result_reg[21] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[20]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [20]),
        .O(\result_reg[31]_0 [19]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[21]_i_4 
       (.I0(div_opdata1[20]),
        .O(\result[21]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[21]_i_5 
       (.I0(div_opdata1[19]),
        .O(\result[21]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[21]_i_6 
       (.I0(div_opdata1[18]),
        .O(\result[21]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[21]_i_7 
       (.I0(div_opdata1[17]),
        .O(\result[21]_i_7_n_4 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[22]_i_1 
       (.I0(\result_reg[22] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[21]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [21]),
        .O(\result_reg[31]_0 [20]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[23]_i_1 
       (.I0(\result_reg[23] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[22]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [22]),
        .O(\result_reg[31]_0 [21]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[24]_i_1 
       (.I0(\result_reg[24] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[23]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [23]),
        .O(\result_reg[31]_0 [22]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[25]_i_1 
       (.I0(\result_reg[25] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[24]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [24]),
        .O(\result_reg[31]_0 [23]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[25]_i_4 
       (.I0(div_opdata1[24]),
        .O(\result[25]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[25]_i_5 
       (.I0(div_opdata1[23]),
        .O(\result[25]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[25]_i_6 
       (.I0(div_opdata1[22]),
        .O(\result[25]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[25]_i_7 
       (.I0(div_opdata1[21]),
        .O(\result[25]_i_7_n_4 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[26]_i_1 
       (.I0(\result_reg[26] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[25]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [25]),
        .O(\result_reg[31]_0 [24]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[27]_i_1 
       (.I0(\result_reg[27] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[26]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [26]),
        .O(\result_reg[31]_0 [25]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[28]_i_1 
       (.I0(\result_reg[28] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[27]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [27]),
        .O(\result_reg[31]_0 [26]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[29]_i_1 
       (.I0(\result_reg[29] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[28]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [28]),
        .O(\result_reg[31]_0 [27]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[29]_i_4 
       (.I0(div_opdata1[28]),
        .O(\result[29]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[29]_i_5 
       (.I0(div_opdata1[27]),
        .O(\result[29]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[29]_i_6 
       (.I0(div_opdata1[26]),
        .O(\result[29]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[29]_i_7 
       (.I0(div_opdata1[25]),
        .O(\result[29]_i_7_n_4 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[2]_i_1 
       (.I0(\result_reg[2]_1 ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[1]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [1]),
        .O(\result_reg[31]_0 [0]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[30]_i_1 
       (.I0(\result_reg[30] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[29]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [29]),
        .O(\result_reg[31]_0 [28]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[31]_i_10 
       (.I0(\result_reg[31] [1]),
        .O(\result[31]_i_10_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[31]_i_11 
       (.I0(div_opdata1[30]),
        .O(\result[31]_i_11_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[31]_i_12 
       (.I0(div_opdata1[29]),
        .O(\result[31]_i_12_n_4 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[31]_i_2 
       (.I0(\result_reg[31]_1 ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[30]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [30]),
        .O(\result_reg[31]_0 [29]));
  LUT3 #(
    .INIT(8'h2A)) 
    \result[31]_i_4 
       (.I0(\result_reg[1] ),
        .I1(\result_reg[31] [1]),
        .I2(div_signed),
        .O(\result[31]_i_4_n_4 ));
  LUT3 #(
    .INIT(8'h80)) 
    \result[31]_i_5 
       (.I0(\result_reg[1] ),
        .I1(\result_reg[31] [1]),
        .I2(div_signed),
        .O(\result[31]_i_5_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h82AA)) 
    \result[31]_i_7 
       (.I0(\state_reg[1] ),
        .I1(\result_reg[31] [1]),
        .I2(\divider_reg[1] ),
        .I3(div_signed),
        .O(\result_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \result[31]_i_8 
       (.I0(\state_reg[1] ),
        .I1(\result_reg[31] [1]),
        .I2(\divider_reg[1] ),
        .I3(div_signed),
        .O(\result_reg[2] ));
  LUT6 #(
    .INIT(64'h0200020200000000)) 
    \result[32]_i_2 
       (.I0(\divider[31]_i_3_n_4 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\div0/result0 [31]),
        .I4(div_signed),
        .I5(\result_reg[31] [1]),
        .O(\result_reg[32] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[3]_i_1 
       (.I0(\result_reg[3] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[2]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [2]),
        .O(\result_reg[31]_0 [1]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[4]_i_1 
       (.I0(\result_reg[4] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[3]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [3]),
        .O(\result_reg[31]_0 [2]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[5]_i_1 
       (.I0(\result_reg[5] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[4]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [4]),
        .O(\result_reg[31]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[5]_i_4 
       (.I0(\result_reg[31] [0]),
        .O(\result[5]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[5]_i_5 
       (.I0(div_opdata1[4]),
        .O(\result[5]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[5]_i_6 
       (.I0(div_opdata1[3]),
        .O(\result[5]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[5]_i_7 
       (.I0(div_opdata1[2]),
        .O(\result[5]_i_7_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[5]_i_8 
       (.I0(div_opdata1[1]),
        .O(\result[5]_i_8_n_4 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[6]_i_1 
       (.I0(\result_reg[6] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[5]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [5]),
        .O(\result_reg[31]_0 [4]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[7]_i_1 
       (.I0(\result_reg[7] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[6]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [6]),
        .O(\result_reg[31]_0 [5]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[8]_i_1 
       (.I0(\result_reg[8] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[7]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [7]),
        .O(\result_reg[31]_0 [6]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \result[9]_i_1 
       (.I0(\result_reg[9] ),
        .I1(\result[31]_i_4_n_4 ),
        .I2(div_opdata1[8]),
        .I3(\result[31]_i_5_n_4 ),
        .I4(\div0/result0 [8]),
        .O(\result_reg[31]_0 [7]));
  LUT1 #(
    .INIT(2'h1)) 
    \result[9]_i_4 
       (.I0(div_opdata1[8]),
        .O(\result[9]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[9]_i_5 
       (.I0(div_opdata1[7]),
        .O(\result[9]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[9]_i_6 
       (.I0(div_opdata1[6]),
        .O(\result[9]_i_6_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result[9]_i_7 
       (.I0(div_opdata1[5]),
        .O(\result[9]_i_7_n_4 ));
  CARRY4 \result_reg[13]_i_3 
       (.CI(\result_reg[9]_i_3_n_4 ),
        .CO({\result_reg[13]_i_3_n_4 ,\result_reg[13]_i_3_n_5 ,\result_reg[13]_i_3_n_6 ,\result_reg[13]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\div0/result0 [12:9]),
        .S({\result[13]_i_4_n_4 ,\result[13]_i_5_n_4 ,\result[13]_i_6_n_4 ,\result[13]_i_7_n_4 }));
  CARRY4 \result_reg[17]_i_3 
       (.CI(\result_reg[13]_i_3_n_4 ),
        .CO({\result_reg[17]_i_3_n_4 ,\result_reg[17]_i_3_n_5 ,\result_reg[17]_i_3_n_6 ,\result_reg[17]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\div0/result0 [16:13]),
        .S({\result[17]_i_4_n_4 ,\result[17]_i_5_n_4 ,\result[17]_i_6_n_4 ,\result[17]_i_7_n_4 }));
  CARRY4 \result_reg[21]_i_3 
       (.CI(\result_reg[17]_i_3_n_4 ),
        .CO({\result_reg[21]_i_3_n_4 ,\result_reg[21]_i_3_n_5 ,\result_reg[21]_i_3_n_6 ,\result_reg[21]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\div0/result0 [20:17]),
        .S({\result[21]_i_4_n_4 ,\result[21]_i_5_n_4 ,\result[21]_i_6_n_4 ,\result[21]_i_7_n_4 }));
  CARRY4 \result_reg[25]_i_3 
       (.CI(\result_reg[21]_i_3_n_4 ),
        .CO({\result_reg[25]_i_3_n_4 ,\result_reg[25]_i_3_n_5 ,\result_reg[25]_i_3_n_6 ,\result_reg[25]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\div0/result0 [24:21]),
        .S({\result[25]_i_4_n_4 ,\result[25]_i_5_n_4 ,\result[25]_i_6_n_4 ,\result[25]_i_7_n_4 }));
  CARRY4 \result_reg[29]_i_3 
       (.CI(\result_reg[25]_i_3_n_4 ),
        .CO({\result_reg[29]_i_3_n_4 ,\result_reg[29]_i_3_n_5 ,\result_reg[29]_i_3_n_6 ,\result_reg[29]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\div0/result0 [28:25]),
        .S({\result[29]_i_4_n_4 ,\result[29]_i_5_n_4 ,\result[29]_i_6_n_4 ,\result[29]_i_7_n_4 }));
  CARRY4 \result_reg[31]_i_6 
       (.CI(\result_reg[29]_i_3_n_4 ),
        .CO({\NLW_result_reg[31]_i_6_CO_UNCONNECTED [3:2],\result_reg[31]_i_6_n_6 ,\result_reg[31]_i_6_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_result_reg[31]_i_6_O_UNCONNECTED [3],\div0/result0 [31:29]}),
        .S({1'b0,\result[31]_i_10_n_4 ,\result[31]_i_11_n_4 ,\result[31]_i_12_n_4 }));
  CARRY4 \result_reg[5]_i_3 
       (.CI(1'b0),
        .CO({\result_reg[5]_i_3_n_4 ,\result_reg[5]_i_3_n_5 ,\result_reg[5]_i_3_n_6 ,\result_reg[5]_i_3_n_7 }),
        .CYINIT(\result[5]_i_4_n_4 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\div0/result0 [4:1]),
        .S({\result[5]_i_5_n_4 ,\result[5]_i_6_n_4 ,\result[5]_i_7_n_4 ,\result[5]_i_8_n_4 }));
  CARRY4 \result_reg[9]_i_3 
       (.CI(\result_reg[5]_i_3_n_4 ),
        .CO({\result_reg[9]_i_3_n_4 ,\result_reg[9]_i_3_n_5 ,\result_reg[9]_i_3_n_6 ,\result_reg[9]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\div0/result0 [8:5]),
        .S({\result[9]_i_4_n_4 ,\result[9]_i_5_n_4 ,\result[9]_i_6_n_4 ,\result[9]_i_7_n_4 }));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    signed_div_o_reg
       (.CLR(1'b0),
        .D(\ex_aluop_reg[1]_0 ),
        .G(\ex_aluop_reg[1]_1 ),
        .GE(1'b1),
        .Q(div_signed));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    stallreq_reg
       (.CLR(rst),
        .D(ready_o_reg),
        .G(\ex_aluop_reg[5]_0 ),
        .GE(1'b1),
        .Q(stalleq_from_ex));
  LUT6 #(
    .INIT(64'hFFFFFFFE0F0FF0F0)) 
    \state[0]_i_1 
       (.I0(div_opdata2[30]),
        .I1(\state[0]_i_2_n_4 ),
        .I2(state[0]),
        .I3(\state[0]_i_3_n_4 ),
        .I4(state[1]),
        .I5(div_start),
        .O(\state_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[0]_i_2 
       (.I0(\state[0]_i_4_n_4 ),
        .I1(\state[0]_i_5_n_4 ),
        .I2(div_opdata2[29]),
        .I3(\divider_reg[1] ),
        .I4(div_opdata2[16]),
        .I5(\state[0]_i_6_n_4 ),
        .O(\state[0]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[0]_i_3 
       (.I0(\state[0]_i_7_n_4 ),
        .I1(div_opdata2[0]),
        .I2(div_opdata2[1]),
        .I3(div_opdata2[2]),
        .I4(div_opdata2[3]),
        .I5(\state[0]_i_8_n_4 ),
        .O(\state[0]_i_3_n_4 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[0]_i_4 
       (.I0(div_opdata2[21]),
        .I1(div_opdata2[22]),
        .I2(div_opdata2[23]),
        .I3(div_opdata2[24]),
        .O(\state[0]_i_4_n_4 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[0]_i_5 
       (.I0(div_opdata2[17]),
        .I1(div_opdata2[18]),
        .I2(div_opdata2[19]),
        .I3(div_opdata2[20]),
        .O(\state[0]_i_5_n_4 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[0]_i_6 
       (.I0(div_opdata2[25]),
        .I1(div_opdata2[26]),
        .I2(div_opdata2[27]),
        .I3(div_opdata2[28]),
        .O(\state[0]_i_6_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[0]_i_7 
       (.I0(div_opdata2[4]),
        .I1(div_opdata2[5]),
        .I2(div_opdata2[6]),
        .I3(div_opdata2[7]),
        .O(\state[0]_i_7_n_4 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[0]_i_8 
       (.I0(div_opdata2[11]),
        .I1(div_opdata2[10]),
        .I2(div_opdata2[9]),
        .I3(div_opdata2[8]),
        .I4(\state[0]_i_9_n_4 ),
        .O(\state[0]_i_8_n_4 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[0]_i_9 
       (.I0(div_opdata2[12]),
        .I1(div_opdata2[13]),
        .I2(div_opdata2[14]),
        .I3(div_opdata2[15]),
        .O(\state[0]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFFF1010FFFF10)) 
    \state[1]_i_2 
       (.I0(\state[0]_i_2_n_4 ),
        .I1(div_opdata2[15]),
        .I2(\state[1]_i_3_n_4 ),
        .I3(state[1]),
        .I4(state[0]),
        .I5(div_start),
        .O(p_0_out));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \state[1]_i_3 
       (.I0(div_opdata2[2]),
        .I1(div_opdata2[1]),
        .I2(div_opdata2[0]),
        .I3(\state[1]_i_4_n_4 ),
        .I4(\state[1]_i_5_n_4 ),
        .I5(\state[1]_i_6_n_4 ),
        .O(\state[1]_i_3_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \state[1]_i_4 
       (.I0(div_opdata2[6]),
        .I1(div_opdata2[5]),
        .I2(div_opdata2[4]),
        .I3(div_opdata2[3]),
        .O(\state[1]_i_4_n_4 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \state[1]_i_5 
       (.I0(div_opdata2[10]),
        .I1(div_opdata2[9]),
        .I2(div_opdata2[8]),
        .I3(div_opdata2[7]),
        .O(\state[1]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \state[1]_i_6 
       (.I0(div_opdata2[11]),
        .I1(div_opdata2[12]),
        .I2(div_opdata2[13]),
        .I3(div_opdata2[14]),
        .I4(state[0]),
        .I5(div_opdata2[30]),
        .O(\state[1]_i_6_n_4 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[0] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [0]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[10] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [10]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [10]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[11] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [11]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [11]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[12] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [12]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [12]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[13] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [13]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [13]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[14] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [14]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [14]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[15] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [15]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [15]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[16] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [16]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [16]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[17] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [17]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [17]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[18] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [18]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [18]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[19] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [19]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [19]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[1] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [1]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[20] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [20]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [20]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[21] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [21]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [21]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[22] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [22]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [22]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[23] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [23]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [23]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[24] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [24]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [24]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[25] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [25]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [25]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[26] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [26]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [26]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[27] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [27]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [27]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[28] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [28]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [28]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[29] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [29]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [29]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[2] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [2]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[30] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [30]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [30]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \wdata_o_reg[30]_i_22 
       (.I0(\mem_wdata_reg[10]_0 [0]),
        .I1(wb_cp0_reg_write_addr_i[0]),
        .I2(wb_cp0_reg_write_addr_i[2]),
        .I3(\mem_wdata_reg[10]_0 [2]),
        .I4(wb_cp0_reg_write_addr_i[1]),
        .I5(\mem_wdata_reg[10]_0 [1]),
        .O(\mem_wdata_reg[10] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[31] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [31]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [31]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[3] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [3]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[4] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [4]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[5] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [5]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[6] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [6]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[7] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [7]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[8] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [8]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [8]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_o_reg[9] 
       (.CLR(rst),
        .D(\ex_alusel_reg[2] [9]),
        .G(E),
        .GE(1'b1),
        .Q(\mem_wdata_reg[31] [9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    whilo_o_reg
       (.CLR(1'b0),
        .D(\ex_aluop_reg[5] ),
        .G(p_0_in),
        .GE(1'b1),
        .Q(ex_whilo_o));
endmodule

module ex_mem
   (wb_cp0_reg_we_reg,
    mem_wreg_i,
    mem_whilo_i,
    mem_cp0_reg_we_i,
    \ex_reg2_reg[30] ,
    \ex_reg2_reg[2] ,
    mem_wdata_i,
    \ex_reg2_reg[28] ,
    \ex_reg2_reg[26] ,
    \ex_reg2_reg[25] ,
    \ex_reg2_reg[20] ,
    \ex_reg2_reg[19] ,
    \ex_reg2_reg[18] ,
    \ex_reg2_reg[16] ,
    \ex_reg2_reg[14] ,
    \ex_reg2_reg[10] ,
    \ex_reg2_reg[9] ,
    \ex_reg2_reg[6] ,
    \ex_reg2_reg[5] ,
    \ex_reg2_reg[4] ,
    \ex_reg2_reg[12] ,
    \ex_reg2_reg[11] ,
    \ex_reg2_reg[8] ,
    \ex_reg2_reg[1] ,
    \ex_reg2_reg[0] ,
    D,
    E,
    \pc_reg[0] ,
    \id_pc_reg[31] ,
    \ex_reg1_reg[31] ,
    mem_wd_i,
    \mem_wdata_reg[0]_0 ,
    mem_cp0_reg_data_i,
    \mem_wdata_reg[0]_1 ,
    \mem_wdata_reg[1]_0 ,
    \mem_wdata_reg[2]_0 ,
    \mem_wdata_reg[3]_0 ,
    \mem_wdata_reg[4]_0 ,
    \mem_wdata_reg[5]_0 ,
    \mem_wdata_reg[6]_0 ,
    \mem_wdata_reg[7]_0 ,
    \mem_wdata_reg[8]_0 ,
    \mem_wdata_reg[9]_0 ,
    \mem_wdata_reg[11]_0 ,
    \mem_wdata_reg[12]_0 ,
    \mem_wdata_reg[13]_0 ,
    \mem_wdata_reg[14]_0 ,
    \mem_wdata_reg[15]_0 ,
    \mem_wdata_reg[16]_0 ,
    \mem_wdata_reg[17]_0 ,
    \mem_wdata_reg[19]_0 ,
    \mem_wdata_reg[20]_0 ,
    \mem_wdata_reg[22]_0 ,
    \mem_wdata_reg[24]_0 ,
    \mem_wdata_reg[25]_0 ,
    \mem_wdata_reg[26]_0 ,
    \mem_wdata_reg[31]_0 ,
    mem_cp0_reg_write_addr_i,
    \pc_reg[5] ,
    wb_cp0_reg_we_reg_0,
    \wb_hi_reg[31] ,
    \wb_lo_reg[31] ,
    mem_whilo_o,
    mem_wdata_o,
    mem_cp0_reg_data_o,
    stalleq_from_ex,
    rst_IBUF,
    ex_wreg_o,
    CLK,
    ex_whilo_o,
    ex_cp0_reg_we_o,
    \ex_wd_reg[0] ,
    \ex_alusel_reg[2] ,
    reg2_data,
    Q,
    \id_inst_reg[18] ,
    wb_cp0_reg_data_i,
    wb_cp0_reg_we_reg_1,
    \ex_inst_reg[13] ,
    \ex_wd_reg[4] ,
    \ex_reg1_reg[31]_0 ,
    \ex_reg1_reg[31]_1 ,
    ex_cp0_reg_write_addr_o,
    \ex_reg1_reg[31]_2 ,
    \ex_reg1_reg[30] ,
    \ex_reg1_reg[29] ,
    \ex_reg1_reg[28] ,
    \ex_reg1_reg[27] ,
    \ex_reg1_reg[26] ,
    \ex_reg1_reg[25] ,
    \ex_reg1_reg[24] ,
    \ex_reg1_reg[23] ,
    \ex_reg1_reg[22] ,
    \ex_reg1_reg[21] ,
    \ex_reg1_reg[20] ,
    \ex_reg1_reg[19] ,
    \ex_reg1_reg[18] ,
    \ex_reg1_reg[17] ,
    \ex_reg1_reg[16] ,
    \ex_reg1_reg[15] ,
    \ex_reg1_reg[14] ,
    \ex_reg1_reg[13] ,
    \ex_reg1_reg[12] ,
    \ex_reg1_reg[11] ,
    \ex_reg1_reg[10] ,
    \ex_reg1_reg[9] ,
    \ex_reg1_reg[8] ,
    \ex_reg1_reg[7] ,
    \ex_reg1_reg[6] ,
    \ex_reg1_reg[5] ,
    \ex_reg1_reg[4] ,
    \ex_reg1_reg[3] ,
    \ex_reg1_reg[2] ,
    \ex_reg1_reg[1] ,
    \ex_reg1_reg[0] ,
    ex_excepttype_o,
    \ex_current_inst_addr_reg[31] ,
    ex_link_addr_i);
  output wb_cp0_reg_we_reg;
  output mem_wreg_i;
  output mem_whilo_i;
  output mem_cp0_reg_we_i;
  output \ex_reg2_reg[30] ;
  output \ex_reg2_reg[2] ;
  output [31:0]mem_wdata_i;
  output \ex_reg2_reg[28] ;
  output \ex_reg2_reg[26] ;
  output \ex_reg2_reg[25] ;
  output \ex_reg2_reg[20] ;
  output \ex_reg2_reg[19] ;
  output \ex_reg2_reg[18] ;
  output \ex_reg2_reg[16] ;
  output \ex_reg2_reg[14] ;
  output \ex_reg2_reg[10] ;
  output \ex_reg2_reg[9] ;
  output \ex_reg2_reg[6] ;
  output \ex_reg2_reg[5] ;
  output \ex_reg2_reg[4] ;
  output \ex_reg2_reg[12] ;
  output \ex_reg2_reg[11] ;
  output \ex_reg2_reg[8] ;
  output \ex_reg2_reg[1] ;
  output \ex_reg2_reg[0] ;
  output [0:0]D;
  output [0:0]E;
  output [0:0]\pc_reg[0] ;
  output [0:0]\id_pc_reg[31] ;
  output \ex_reg1_reg[31] ;
  output [3:0]mem_wd_i;
  output \mem_wdata_reg[0]_0 ;
  output [31:0]mem_cp0_reg_data_i;
  output \mem_wdata_reg[0]_1 ;
  output \mem_wdata_reg[1]_0 ;
  output \mem_wdata_reg[2]_0 ;
  output \mem_wdata_reg[3]_0 ;
  output \mem_wdata_reg[4]_0 ;
  output \mem_wdata_reg[5]_0 ;
  output \mem_wdata_reg[6]_0 ;
  output \mem_wdata_reg[7]_0 ;
  output \mem_wdata_reg[8]_0 ;
  output \mem_wdata_reg[9]_0 ;
  output \mem_wdata_reg[11]_0 ;
  output \mem_wdata_reg[12]_0 ;
  output \mem_wdata_reg[13]_0 ;
  output \mem_wdata_reg[14]_0 ;
  output \mem_wdata_reg[15]_0 ;
  output \mem_wdata_reg[16]_0 ;
  output \mem_wdata_reg[17]_0 ;
  output \mem_wdata_reg[19]_0 ;
  output \mem_wdata_reg[20]_0 ;
  output \mem_wdata_reg[22]_0 ;
  output \mem_wdata_reg[24]_0 ;
  output \mem_wdata_reg[25]_0 ;
  output \mem_wdata_reg[26]_0 ;
  output \mem_wdata_reg[31]_0 ;
  output [2:0]mem_cp0_reg_write_addr_i;
  output [0:0]\pc_reg[5] ;
  output wb_cp0_reg_we_reg_0;
  output [31:0]\wb_hi_reg[31] ;
  output [31:0]\wb_lo_reg[31] ;
  output mem_whilo_o;
  output [0:0]mem_wdata_o;
  output [0:0]mem_cp0_reg_data_o;
  input stalleq_from_ex;
  input rst_IBUF;
  input ex_wreg_o;
  input CLK;
  input ex_whilo_o;
  input ex_cp0_reg_we_o;
  input \ex_wd_reg[0] ;
  input [31:0]\ex_alusel_reg[2] ;
  input [4:0]reg2_data;
  input [2:0]Q;
  input [2:0]\id_inst_reg[18] ;
  input [23:0]wb_cp0_reg_data_i;
  input wb_cp0_reg_we_reg_1;
  input [2:0]\ex_inst_reg[13] ;
  input [3:0]\ex_wd_reg[4] ;
  input [31:0]\ex_reg1_reg[31]_0 ;
  input [31:0]\ex_reg1_reg[31]_1 ;
  input [2:0]ex_cp0_reg_write_addr_o;
  input \ex_reg1_reg[31]_2 ;
  input \ex_reg1_reg[30] ;
  input \ex_reg1_reg[29] ;
  input \ex_reg1_reg[28] ;
  input \ex_reg1_reg[27] ;
  input \ex_reg1_reg[26] ;
  input \ex_reg1_reg[25] ;
  input \ex_reg1_reg[24] ;
  input \ex_reg1_reg[23] ;
  input \ex_reg1_reg[22] ;
  input \ex_reg1_reg[21] ;
  input \ex_reg1_reg[20] ;
  input \ex_reg1_reg[19] ;
  input \ex_reg1_reg[18] ;
  input \ex_reg1_reg[17] ;
  input \ex_reg1_reg[16] ;
  input \ex_reg1_reg[15] ;
  input \ex_reg1_reg[14] ;
  input \ex_reg1_reg[13] ;
  input \ex_reg1_reg[12] ;
  input \ex_reg1_reg[11] ;
  input \ex_reg1_reg[10] ;
  input \ex_reg1_reg[9] ;
  input \ex_reg1_reg[8] ;
  input \ex_reg1_reg[7] ;
  input \ex_reg1_reg[6] ;
  input \ex_reg1_reg[5] ;
  input \ex_reg1_reg[4] ;
  input \ex_reg1_reg[3] ;
  input \ex_reg1_reg[2] ;
  input \ex_reg1_reg[1] ;
  input \ex_reg1_reg[0] ;
  input [1:0]ex_excepttype_o;
  input [29:0]\ex_current_inst_addr_reg[31] ;
  input [1:0]ex_link_addr_i;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [31:0]\ex_alusel_reg[2] ;
  wire ex_cp0_reg_we_o;
  wire [2:0]ex_cp0_reg_write_addr_o;
  wire [29:0]\ex_current_inst_addr_reg[31] ;
  wire [1:0]ex_excepttype_o;
  wire [2:0]\ex_inst_reg[13] ;
  wire [1:0]ex_link_addr_i;
  wire \ex_reg1[31]_i_12_n_4 ;
  wire \ex_reg1_reg[0] ;
  wire \ex_reg1_reg[10] ;
  wire \ex_reg1_reg[11] ;
  wire \ex_reg1_reg[12] ;
  wire \ex_reg1_reg[13] ;
  wire \ex_reg1_reg[14] ;
  wire \ex_reg1_reg[15] ;
  wire \ex_reg1_reg[16] ;
  wire \ex_reg1_reg[17] ;
  wire \ex_reg1_reg[18] ;
  wire \ex_reg1_reg[19] ;
  wire \ex_reg1_reg[1] ;
  wire \ex_reg1_reg[20] ;
  wire \ex_reg1_reg[21] ;
  wire \ex_reg1_reg[22] ;
  wire \ex_reg1_reg[23] ;
  wire \ex_reg1_reg[24] ;
  wire \ex_reg1_reg[25] ;
  wire \ex_reg1_reg[26] ;
  wire \ex_reg1_reg[27] ;
  wire \ex_reg1_reg[28] ;
  wire \ex_reg1_reg[29] ;
  wire \ex_reg1_reg[2] ;
  wire \ex_reg1_reg[30] ;
  wire \ex_reg1_reg[31] ;
  wire [31:0]\ex_reg1_reg[31]_0 ;
  wire [31:0]\ex_reg1_reg[31]_1 ;
  wire \ex_reg1_reg[31]_2 ;
  wire \ex_reg1_reg[3] ;
  wire \ex_reg1_reg[4] ;
  wire \ex_reg1_reg[5] ;
  wire \ex_reg1_reg[6] ;
  wire \ex_reg1_reg[7] ;
  wire \ex_reg1_reg[8] ;
  wire \ex_reg1_reg[9] ;
  wire \ex_reg2[31]_i_8_n_4 ;
  wire \ex_reg2_reg[0] ;
  wire \ex_reg2_reg[10] ;
  wire \ex_reg2_reg[11] ;
  wire \ex_reg2_reg[12] ;
  wire \ex_reg2_reg[14] ;
  wire \ex_reg2_reg[16] ;
  wire \ex_reg2_reg[18] ;
  wire \ex_reg2_reg[19] ;
  wire \ex_reg2_reg[1] ;
  wire \ex_reg2_reg[20] ;
  wire \ex_reg2_reg[25] ;
  wire \ex_reg2_reg[26] ;
  wire \ex_reg2_reg[28] ;
  wire \ex_reg2_reg[2] ;
  wire \ex_reg2_reg[30] ;
  wire \ex_reg2_reg[4] ;
  wire \ex_reg2_reg[5] ;
  wire \ex_reg2_reg[6] ;
  wire \ex_reg2_reg[8] ;
  wire \ex_reg2_reg[9] ;
  wire \ex_wd_reg[0] ;
  wire [3:0]\ex_wd_reg[4] ;
  wire ex_whilo_o;
  wire ex_wreg_o;
  wire [2:0]\id_inst_reg[18] ;
  wire [0:0]\id_pc_reg[31] ;
  wire [31:0]mem_cp0_reg_data_i;
  wire [0:0]mem_cp0_reg_data_o;
  wire mem_cp0_reg_we_i;
  wire [2:0]mem_cp0_reg_write_addr_i;
  wire [31:0]mem_current_inst_addr_i;
  wire [11:10]mem_excepttype_i;
  wire [3:0]mem_wd_i;
  wire mem_wdata0__0_n_4;
  wire mem_wdata0_i_1_n_4;
  wire mem_wdata0_i_3_n_4;
  wire mem_wdata0_i_4_n_4;
  wire mem_wdata0_i_5_n_4;
  wire mem_wdata0_i_6_n_4;
  wire mem_wdata0_i_7_n_4;
  wire mem_wdata0_i_8_n_4;
  wire mem_wdata0_i_9_n_4;
  wire mem_wdata0_n_4;
  wire [31:0]mem_wdata_i;
  wire [0:0]mem_wdata_o;
  wire \mem_wdata_reg[0]_0 ;
  wire \mem_wdata_reg[0]_1 ;
  wire \mem_wdata_reg[11]_0 ;
  wire \mem_wdata_reg[12]_0 ;
  wire \mem_wdata_reg[13]_0 ;
  wire \mem_wdata_reg[14]_0 ;
  wire \mem_wdata_reg[15]_0 ;
  wire \mem_wdata_reg[16]_0 ;
  wire \mem_wdata_reg[17]_0 ;
  wire \mem_wdata_reg[19]_0 ;
  wire \mem_wdata_reg[1]_0 ;
  wire \mem_wdata_reg[20]_0 ;
  wire \mem_wdata_reg[22]_0 ;
  wire \mem_wdata_reg[24]_0 ;
  wire \mem_wdata_reg[25]_0 ;
  wire \mem_wdata_reg[26]_0 ;
  wire \mem_wdata_reg[2]_0 ;
  wire \mem_wdata_reg[31]_0 ;
  wire \mem_wdata_reg[3]_0 ;
  wire \mem_wdata_reg[4]_0 ;
  wire \mem_wdata_reg[5]_0 ;
  wire \mem_wdata_reg[6]_0 ;
  wire \mem_wdata_reg[7]_0 ;
  wire \mem_wdata_reg[8]_0 ;
  wire \mem_wdata_reg[9]_0 ;
  wire mem_whilo_i;
  wire mem_whilo_o;
  wire mem_wreg_i;
  wire [0:0]\pc_reg[0] ;
  wire [0:0]\pc_reg[5] ;
  wire [4:0]reg2_data;
  wire rst_IBUF;
  wire stalleq_from_ex;
  wire [23:0]wb_cp0_reg_data_i;
  wire wb_cp0_reg_we_reg;
  wire wb_cp0_reg_we_reg_0;
  wire wb_cp0_reg_we_reg_1;
  wire [31:0]\wb_hi_reg[31] ;
  wire [31:0]\wb_lo_reg[31] ;
  wire \wdata_o_reg[30]_i_23_n_4 ;

  LUT6 #(
    .INIT(64'h00000000EDCCCCED)) 
    \ex_reg1[31]_i_11 
       (.I0(mem_wd_i[2]),
        .I1(rst_IBUF),
        .I2(Q[2]),
        .I3(mem_wd_i[0]),
        .I4(Q[0]),
        .I5(\ex_reg1[31]_i_12_n_4 ),
        .O(\ex_reg1_reg[31] ));
  LUT5 #(
    .INIT(32'hFFBFFFFB)) 
    \ex_reg1[31]_i_12 
       (.I0(mem_wd_i[3]),
        .I1(mem_wreg_i),
        .I2(Q[1]),
        .I3(rst_IBUF),
        .I4(mem_wd_i[1]),
        .O(\ex_reg1[31]_i_12_n_4 ));
  LUT6 #(
    .INIT(64'h0D000D0FFDF0FDFF)) 
    \ex_reg2[0]_i_2 
       (.I0(mem_wdata_i[0]),
        .I1(rst_IBUF),
        .I2(\ex_wd_reg[0] ),
        .I3(\ex_reg2_reg[2] ),
        .I4(reg2_data[0]),
        .I5(\ex_alusel_reg[2] [0]),
        .O(\ex_reg2_reg[0] ));
  LUT5 #(
    .INIT(32'hAAEA0040)) 
    \ex_reg2[10]_i_3 
       (.I0(\ex_wd_reg[0] ),
        .I1(\ex_reg2_reg[2] ),
        .I2(mem_wdata_i[10]),
        .I3(rst_IBUF),
        .I4(\ex_alusel_reg[2] [10]),
        .O(\ex_reg2_reg[10] ));
  LUT6 #(
    .INIT(64'h0D000D0FFDF0FDFF)) 
    \ex_reg2[11]_i_2 
       (.I0(mem_wdata_i[11]),
        .I1(rst_IBUF),
        .I2(\ex_wd_reg[0] ),
        .I3(\ex_reg2_reg[2] ),
        .I4(reg2_data[3]),
        .I5(\ex_alusel_reg[2] [11]),
        .O(\ex_reg2_reg[11] ));
  LUT6 #(
    .INIT(64'h0D000D0FFDF0FDFF)) 
    \ex_reg2[12]_i_2 
       (.I0(mem_wdata_i[12]),
        .I1(rst_IBUF),
        .I2(\ex_wd_reg[0] ),
        .I3(\ex_reg2_reg[2] ),
        .I4(reg2_data[4]),
        .I5(\ex_alusel_reg[2] [12]),
        .O(\ex_reg2_reg[12] ));
  LUT5 #(
    .INIT(32'hAAEA0040)) 
    \ex_reg2[14]_i_3 
       (.I0(\ex_wd_reg[0] ),
        .I1(\ex_reg2_reg[2] ),
        .I2(mem_wdata_i[14]),
        .I3(rst_IBUF),
        .I4(\ex_alusel_reg[2] [14]),
        .O(\ex_reg2_reg[14] ));
  LUT5 #(
    .INIT(32'hAAEA0040)) 
    \ex_reg2[16]_i_3 
       (.I0(\ex_wd_reg[0] ),
        .I1(\ex_reg2_reg[2] ),
        .I2(mem_wdata_i[16]),
        .I3(rst_IBUF),
        .I4(\ex_alusel_reg[2] [16]),
        .O(\ex_reg2_reg[16] ));
  LUT5 #(
    .INIT(32'hA0A0E4A0)) 
    \ex_reg2[18]_i_3 
       (.I0(\ex_wd_reg[0] ),
        .I1(\ex_reg2_reg[2] ),
        .I2(\ex_alusel_reg[2] [18]),
        .I3(mem_wdata_i[18]),
        .I4(rst_IBUF),
        .O(\ex_reg2_reg[18] ));
  LUT5 #(
    .INIT(32'hAAEA0040)) 
    \ex_reg2[19]_i_4 
       (.I0(\ex_wd_reg[0] ),
        .I1(\ex_reg2_reg[2] ),
        .I2(mem_wdata_i[19]),
        .I3(rst_IBUF),
        .I4(\ex_alusel_reg[2] [19]),
        .O(\ex_reg2_reg[19] ));
  LUT6 #(
    .INIT(64'h0D000D0FFDF0FDFF)) 
    \ex_reg2[1]_i_2 
       (.I0(mem_wdata_i[1]),
        .I1(rst_IBUF),
        .I2(\ex_wd_reg[0] ),
        .I3(\ex_reg2_reg[2] ),
        .I4(reg2_data[1]),
        .I5(\ex_alusel_reg[2] [1]),
        .O(\ex_reg2_reg[1] ));
  LUT5 #(
    .INIT(32'hAAEA0040)) 
    \ex_reg2[20]_i_3 
       (.I0(\ex_wd_reg[0] ),
        .I1(\ex_reg2_reg[2] ),
        .I2(mem_wdata_i[20]),
        .I3(rst_IBUF),
        .I4(\ex_alusel_reg[2] [20]),
        .O(\ex_reg2_reg[20] ));
  LUT5 #(
    .INIT(32'hAAEA0040)) 
    \ex_reg2[25]_i_3 
       (.I0(\ex_wd_reg[0] ),
        .I1(\ex_reg2_reg[2] ),
        .I2(mem_wdata_i[25]),
        .I3(rst_IBUF),
        .I4(\ex_alusel_reg[2] [25]),
        .O(\ex_reg2_reg[25] ));
  LUT5 #(
    .INIT(32'hAAEA0040)) 
    \ex_reg2[26]_i_3 
       (.I0(\ex_wd_reg[0] ),
        .I1(\ex_reg2_reg[2] ),
        .I2(mem_wdata_i[26]),
        .I3(rst_IBUF),
        .I4(\ex_alusel_reg[2] [26]),
        .O(\ex_reg2_reg[26] ));
  LUT5 #(
    .INIT(32'hAAEA0040)) 
    \ex_reg2[28]_i_4 
       (.I0(\ex_wd_reg[0] ),
        .I1(\ex_reg2_reg[2] ),
        .I2(mem_wdata_i[28]),
        .I3(rst_IBUF),
        .I4(\ex_alusel_reg[2] [28]),
        .O(\ex_reg2_reg[28] ));
  LUT5 #(
    .INIT(32'hA0A0E4A0)) 
    \ex_reg2[30]_i_3 
       (.I0(\ex_wd_reg[0] ),
        .I1(\ex_reg2_reg[2] ),
        .I2(\ex_alusel_reg[2] [30]),
        .I3(mem_wdata_i[30]),
        .I4(rst_IBUF),
        .O(\ex_reg2_reg[30] ));
  LUT6 #(
    .INIT(64'h0000000041000A4B)) 
    \ex_reg2[31]_i_3 
       (.I0(rst_IBUF),
        .I1(mem_wd_i[1]),
        .I2(\id_inst_reg[18] [1]),
        .I3(mem_wd_i[2]),
        .I4(\id_inst_reg[18] [2]),
        .I5(\ex_reg2[31]_i_8_n_4 ),
        .O(\ex_reg2_reg[2] ));
  LUT5 #(
    .INIT(32'hFFFFBFFB)) 
    \ex_reg2[31]_i_8 
       (.I0(mem_wd_i[3]),
        .I1(mem_wreg_i),
        .I2(\id_inst_reg[18] [0]),
        .I3(mem_wd_i[0]),
        .I4(rst_IBUF),
        .O(\ex_reg2[31]_i_8_n_4 ));
  LUT5 #(
    .INIT(32'hA0A0E4A0)) 
    \ex_reg2[4]_i_3 
       (.I0(\ex_wd_reg[0] ),
        .I1(\ex_reg2_reg[2] ),
        .I2(\ex_alusel_reg[2] [4]),
        .I3(mem_wdata_i[4]),
        .I4(rst_IBUF),
        .O(\ex_reg2_reg[4] ));
  LUT5 #(
    .INIT(32'hA0A0E4A0)) 
    \ex_reg2[5]_i_4 
       (.I0(\ex_wd_reg[0] ),
        .I1(\ex_reg2_reg[2] ),
        .I2(\ex_alusel_reg[2] [5]),
        .I3(mem_wdata_i[5]),
        .I4(rst_IBUF),
        .O(\ex_reg2_reg[5] ));
  LUT5 #(
    .INIT(32'hAAEA0040)) 
    \ex_reg2[6]_i_3 
       (.I0(\ex_wd_reg[0] ),
        .I1(\ex_reg2_reg[2] ),
        .I2(mem_wdata_i[6]),
        .I3(rst_IBUF),
        .I4(\ex_alusel_reg[2] [6]),
        .O(\ex_reg2_reg[6] ));
  LUT6 #(
    .INIT(64'h0D000D0FFDF0FDFF)) 
    \ex_reg2[8]_i_2 
       (.I0(mem_wdata_i[8]),
        .I1(rst_IBUF),
        .I2(\ex_wd_reg[0] ),
        .I3(\ex_reg2_reg[2] ),
        .I4(reg2_data[2]),
        .I5(\ex_alusel_reg[2] [8]),
        .O(\ex_reg2_reg[8] ));
  LUT5 #(
    .INIT(32'hAAEA0040)) 
    \ex_reg2[9]_i_3 
       (.I0(\ex_wd_reg[0] ),
        .I1(\ex_reg2_reg[2] ),
        .I2(mem_wdata_i[9]),
        .I3(rst_IBUF),
        .I4(\ex_alusel_reg[2] [9]),
        .O(\ex_reg2_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \id_pc[31]_i_1 
       (.I0(rst_IBUF),
        .I1(wb_cp0_reg_we_reg),
        .O(wb_cp0_reg_we_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFFFFC8FF)) 
    \id_pc[31]_i_2 
       (.I0(mem_excepttype_i[11]),
        .I1(mem_wdata0_i_1_n_4),
        .I2(mem_excepttype_i[10]),
        .I3(stalleq_from_ex),
        .I4(rst_IBUF),
        .O(\id_pc_reg[31] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[0] ),
        .Q(mem_cp0_reg_data_i[0]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[10] ),
        .Q(mem_cp0_reg_data_i[10]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[11] ),
        .Q(mem_cp0_reg_data_i[11]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[12] ),
        .Q(mem_cp0_reg_data_i[12]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[13] ),
        .Q(mem_cp0_reg_data_i[13]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[14] ),
        .Q(mem_cp0_reg_data_i[14]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[15] ),
        .Q(mem_cp0_reg_data_i[15]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[16] ),
        .Q(mem_cp0_reg_data_i[16]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[17] ),
        .Q(mem_cp0_reg_data_i[17]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[18] ),
        .Q(mem_cp0_reg_data_i[18]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[19] ),
        .Q(mem_cp0_reg_data_i[19]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[1] ),
        .Q(mem_cp0_reg_data_i[1]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[20] ),
        .Q(mem_cp0_reg_data_i[20]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[21] ),
        .Q(mem_cp0_reg_data_i[21]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[22] ),
        .Q(mem_cp0_reg_data_i[22]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[23] ),
        .Q(mem_cp0_reg_data_i[23]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[24] ),
        .Q(mem_cp0_reg_data_i[24]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[25] ),
        .Q(mem_cp0_reg_data_i[25]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[26] ),
        .Q(mem_cp0_reg_data_i[26]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[27] ),
        .Q(mem_cp0_reg_data_i[27]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[28] ),
        .Q(mem_cp0_reg_data_i[28]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[29] ),
        .Q(mem_cp0_reg_data_i[29]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[2] ),
        .Q(mem_cp0_reg_data_i[2]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[30] ),
        .Q(mem_cp0_reg_data_i[30]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[31]_2 ),
        .Q(mem_cp0_reg_data_i[31]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[3] ),
        .Q(mem_cp0_reg_data_i[3]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[4] ),
        .Q(mem_cp0_reg_data_i[4]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[5] ),
        .Q(mem_cp0_reg_data_i[5]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[6] ),
        .Q(mem_cp0_reg_data_i[6]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[7] ),
        .Q(mem_cp0_reg_data_i[7]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[8] ),
        .Q(mem_cp0_reg_data_i[8]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_data_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_reg1_reg[9] ),
        .Q(mem_cp0_reg_data_i[9]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    mem_cp0_reg_we_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ex_cp0_reg_we_o),
        .Q(mem_cp0_reg_we_i),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_write_addr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(ex_cp0_reg_write_addr_o[0]),
        .Q(mem_cp0_reg_write_addr_i[0]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_write_addr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(ex_cp0_reg_write_addr_o[1]),
        .Q(mem_cp0_reg_write_addr_i[1]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_cp0_reg_write_addr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(ex_cp0_reg_write_addr_o[2]),
        .Q(mem_cp0_reg_write_addr_i[2]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(ex_link_addr_i[0]),
        .Q(mem_current_inst_addr_i[0]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [8]),
        .Q(mem_current_inst_addr_i[10]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [9]),
        .Q(mem_current_inst_addr_i[11]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [10]),
        .Q(mem_current_inst_addr_i[12]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [11]),
        .Q(mem_current_inst_addr_i[13]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [12]),
        .Q(mem_current_inst_addr_i[14]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [13]),
        .Q(mem_current_inst_addr_i[15]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [14]),
        .Q(mem_current_inst_addr_i[16]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [15]),
        .Q(mem_current_inst_addr_i[17]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [16]),
        .Q(mem_current_inst_addr_i[18]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [17]),
        .Q(mem_current_inst_addr_i[19]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(ex_link_addr_i[1]),
        .Q(mem_current_inst_addr_i[1]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [18]),
        .Q(mem_current_inst_addr_i[20]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [19]),
        .Q(mem_current_inst_addr_i[21]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [20]),
        .Q(mem_current_inst_addr_i[22]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [21]),
        .Q(mem_current_inst_addr_i[23]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [22]),
        .Q(mem_current_inst_addr_i[24]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [23]),
        .Q(mem_current_inst_addr_i[25]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [24]),
        .Q(mem_current_inst_addr_i[26]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [25]),
        .Q(mem_current_inst_addr_i[27]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [26]),
        .Q(mem_current_inst_addr_i[28]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [27]),
        .Q(mem_current_inst_addr_i[29]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [0]),
        .Q(mem_current_inst_addr_i[2]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [28]),
        .Q(mem_current_inst_addr_i[30]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [29]),
        .Q(mem_current_inst_addr_i[31]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [1]),
        .Q(mem_current_inst_addr_i[3]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [2]),
        .Q(mem_current_inst_addr_i[4]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [3]),
        .Q(mem_current_inst_addr_i[5]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [4]),
        .Q(mem_current_inst_addr_i[6]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [5]),
        .Q(mem_current_inst_addr_i[7]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [6]),
        .Q(mem_current_inst_addr_i[8]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_current_inst_addr_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_current_inst_addr_reg[31] [7]),
        .Q(mem_current_inst_addr_i[9]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_excepttype_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(ex_excepttype_o[0]),
        .Q(mem_excepttype_i[10]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_excepttype_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(ex_excepttype_o[1]),
        .Q(mem_excepttype_i[11]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[0] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [0]),
        .Q(\wb_hi_reg[31] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[10] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [10]),
        .Q(\wb_hi_reg[31] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[11] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [11]),
        .Q(\wb_hi_reg[31] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[12] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [12]),
        .Q(\wb_hi_reg[31] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[13] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [13]),
        .Q(\wb_hi_reg[31] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[14] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [14]),
        .Q(\wb_hi_reg[31] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[15] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [15]),
        .Q(\wb_hi_reg[31] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[16] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [16]),
        .Q(\wb_hi_reg[31] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[17] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [17]),
        .Q(\wb_hi_reg[31] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[18] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [18]),
        .Q(\wb_hi_reg[31] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[19] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [19]),
        .Q(\wb_hi_reg[31] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[1] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [1]),
        .Q(\wb_hi_reg[31] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[20] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [20]),
        .Q(\wb_hi_reg[31] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[21] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [21]),
        .Q(\wb_hi_reg[31] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[22] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [22]),
        .Q(\wb_hi_reg[31] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[23] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [23]),
        .Q(\wb_hi_reg[31] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[24] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [24]),
        .Q(\wb_hi_reg[31] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[25] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [25]),
        .Q(\wb_hi_reg[31] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[26] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [26]),
        .Q(\wb_hi_reg[31] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[27] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [27]),
        .Q(\wb_hi_reg[31] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[28] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [28]),
        .Q(\wb_hi_reg[31] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[29] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [29]),
        .Q(\wb_hi_reg[31] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[2] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [2]),
        .Q(\wb_hi_reg[31] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[30] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [30]),
        .Q(\wb_hi_reg[31] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[31] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [31]),
        .Q(\wb_hi_reg[31] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[3] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [3]),
        .Q(\wb_hi_reg[31] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[4] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [4]),
        .Q(\wb_hi_reg[31] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[5] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [5]),
        .Q(\wb_hi_reg[31] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[6] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [6]),
        .Q(\wb_hi_reg[31] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[7] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [7]),
        .Q(\wb_hi_reg[31] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[8] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [8]),
        .Q(\wb_hi_reg[31] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_hi_reg[9] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_0 [9]),
        .Q(\wb_hi_reg[31] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[0] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [0]),
        .Q(\wb_lo_reg[31] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[10] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [10]),
        .Q(\wb_lo_reg[31] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[11] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [11]),
        .Q(\wb_lo_reg[31] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[12] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [12]),
        .Q(\wb_lo_reg[31] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[13] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [13]),
        .Q(\wb_lo_reg[31] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[14] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [14]),
        .Q(\wb_lo_reg[31] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[15] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [15]),
        .Q(\wb_lo_reg[31] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[16] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [16]),
        .Q(\wb_lo_reg[31] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[17] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [17]),
        .Q(\wb_lo_reg[31] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[18] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [18]),
        .Q(\wb_lo_reg[31] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[19] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [19]),
        .Q(\wb_lo_reg[31] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[1] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [1]),
        .Q(\wb_lo_reg[31] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[20] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [20]),
        .Q(\wb_lo_reg[31] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[21] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [21]),
        .Q(\wb_lo_reg[31] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[22] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [22]),
        .Q(\wb_lo_reg[31] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[23] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [23]),
        .Q(\wb_lo_reg[31] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[24] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [24]),
        .Q(\wb_lo_reg[31] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[25] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [25]),
        .Q(\wb_lo_reg[31] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[26] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [26]),
        .Q(\wb_lo_reg[31] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[27] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [27]),
        .Q(\wb_lo_reg[31] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[28] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [28]),
        .Q(\wb_lo_reg[31] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[29] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [29]),
        .Q(\wb_lo_reg[31] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[2] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [2]),
        .Q(\wb_lo_reg[31] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[30] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [30]),
        .Q(\wb_lo_reg[31] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[31] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [31]),
        .Q(\wb_lo_reg[31] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[3] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [3]),
        .Q(\wb_lo_reg[31] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[4] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [4]),
        .Q(\wb_lo_reg[31] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[5] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [5]),
        .Q(\wb_lo_reg[31] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[6] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [6]),
        .Q(\wb_lo_reg[31] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[7] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [7]),
        .Q(\wb_lo_reg[31] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[8] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [8]),
        .Q(\wb_lo_reg[31] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_lo_reg[9] 
       (.C(CLK),
        .CE(mem_wdata0_n_4),
        .D(\ex_reg1_reg[31]_1 [9]),
        .Q(\wb_lo_reg[31] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wd_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_wd_reg[4] [0]),
        .Q(mem_wd_i[0]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wd_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_wd_reg[4] [1]),
        .Q(mem_wd_i[1]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wd_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_wd_reg[4] [2]),
        .Q(mem_wd_i[2]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wd_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_wd_reg[4] [3]),
        .Q(mem_wd_i[3]),
        .R(mem_wdata0__0_n_4));
  LUT6 #(
    .INIT(64'h000000000000C8FF)) 
    mem_wdata0
       (.I0(mem_excepttype_i[11]),
        .I1(mem_wdata0_i_1_n_4),
        .I2(mem_excepttype_i[10]),
        .I3(stalleq_from_ex),
        .I4(rst_IBUF),
        .I5(wb_cp0_reg_we_reg),
        .O(mem_wdata0_n_4));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3700)) 
    mem_wdata0__0
       (.I0(mem_excepttype_i[11]),
        .I1(mem_wdata0_i_1_n_4),
        .I2(mem_excepttype_i[10]),
        .I3(stalleq_from_ex),
        .I4(rst_IBUF),
        .I5(wb_cp0_reg_we_reg),
        .O(mem_wdata0__0_n_4));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    mem_wdata0_i_1
       (.I0(mem_wdata0_i_3_n_4),
        .I1(mem_wdata0_i_4_n_4),
        .I2(mem_current_inst_addr_i[15]),
        .I3(mem_current_inst_addr_i[14]),
        .I4(mem_wdata0_i_5_n_4),
        .I5(rst_IBUF),
        .O(mem_wdata0_i_1_n_4));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h00C8)) 
    mem_wdata0_i_2
       (.I0(mem_excepttype_i[11]),
        .I1(mem_wdata0_i_1_n_4),
        .I2(mem_excepttype_i[10]),
        .I3(rst_IBUF),
        .O(wb_cp0_reg_we_reg));
  LUT4 #(
    .INIT(16'hFFFE)) 
    mem_wdata0_i_3
       (.I0(mem_current_inst_addr_i[6]),
        .I1(mem_current_inst_addr_i[7]),
        .I2(mem_current_inst_addr_i[8]),
        .I3(mem_current_inst_addr_i[9]),
        .O(mem_wdata0_i_3_n_4));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    mem_wdata0_i_4
       (.I0(mem_wdata0_i_6_n_4),
        .I1(mem_current_inst_addr_i[16]),
        .I2(mem_current_inst_addr_i[17]),
        .I3(mem_current_inst_addr_i[18]),
        .I4(mem_current_inst_addr_i[19]),
        .I5(mem_wdata0_i_7_n_4),
        .O(mem_wdata0_i_4_n_4));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    mem_wdata0_i_5
       (.I0(mem_wdata0_i_8_n_4),
        .I1(mem_current_inst_addr_i[5]),
        .I2(mem_current_inst_addr_i[4]),
        .I3(mem_current_inst_addr_i[3]),
        .I4(mem_current_inst_addr_i[2]),
        .O(mem_wdata0_i_5_n_4));
  LUT4 #(
    .INIT(16'hFFFE)) 
    mem_wdata0_i_6
       (.I0(mem_current_inst_addr_i[20]),
        .I1(mem_current_inst_addr_i[21]),
        .I2(mem_current_inst_addr_i[22]),
        .I3(mem_current_inst_addr_i[23]),
        .O(mem_wdata0_i_6_n_4));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    mem_wdata0_i_7
       (.I0(mem_current_inst_addr_i[27]),
        .I1(mem_current_inst_addr_i[26]),
        .I2(mem_current_inst_addr_i[25]),
        .I3(mem_current_inst_addr_i[24]),
        .I4(mem_wdata0_i_9_n_4),
        .O(mem_wdata0_i_7_n_4));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    mem_wdata0_i_8
       (.I0(mem_current_inst_addr_i[13]),
        .I1(mem_current_inst_addr_i[12]),
        .I2(mem_current_inst_addr_i[11]),
        .I3(mem_current_inst_addr_i[10]),
        .I4(mem_current_inst_addr_i[0]),
        .I5(mem_current_inst_addr_i[1]),
        .O(mem_wdata0_i_8_n_4));
  LUT4 #(
    .INIT(16'hFFFE)) 
    mem_wdata0_i_9
       (.I0(mem_current_inst_addr_i[28]),
        .I1(mem_current_inst_addr_i[29]),
        .I2(mem_current_inst_addr_i[31]),
        .I3(mem_current_inst_addr_i[30]),
        .O(mem_wdata0_i_9_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [0]),
        .Q(mem_wdata_i[0]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [10]),
        .Q(mem_wdata_i[10]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [11]),
        .Q(mem_wdata_i[11]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [12]),
        .Q(mem_wdata_i[12]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [13]),
        .Q(mem_wdata_i[13]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [14]),
        .Q(mem_wdata_i[14]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [15]),
        .Q(mem_wdata_i[15]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [16]),
        .Q(mem_wdata_i[16]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [17]),
        .Q(mem_wdata_i[17]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [18]),
        .Q(mem_wdata_i[18]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [19]),
        .Q(mem_wdata_i[19]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [1]),
        .Q(mem_wdata_i[1]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [20]),
        .Q(mem_wdata_i[20]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [21]),
        .Q(mem_wdata_i[21]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [22]),
        .Q(mem_wdata_i[22]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [23]),
        .Q(mem_wdata_i[23]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [24]),
        .Q(mem_wdata_i[24]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [25]),
        .Q(mem_wdata_i[25]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [26]),
        .Q(mem_wdata_i[26]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [27]),
        .Q(mem_wdata_i[27]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [28]),
        .Q(mem_wdata_i[28]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [29]),
        .Q(mem_wdata_i[29]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [2]),
        .Q(mem_wdata_i[2]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [30]),
        .Q(mem_wdata_i[30]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [31]),
        .Q(mem_wdata_i[31]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [3]),
        .Q(mem_wdata_i[3]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [4]),
        .Q(mem_wdata_i[4]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [5]),
        .Q(mem_wdata_i[5]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [6]),
        .Q(mem_wdata_i[6]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [7]),
        .Q(mem_wdata_i[7]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [8]),
        .Q(mem_wdata_i[8]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ex_alusel_reg[2] [9]),
        .Q(mem_wdata_i[9]),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    mem_whilo_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ex_whilo_o),
        .Q(mem_whilo_i),
        .R(mem_wdata0__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    mem_wreg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ex_wreg_o),
        .Q(mem_wreg_i),
        .R(mem_wdata0__0_n_4));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \new_pc_reg[6]_i_1 
       (.I0(mem_excepttype_i[11]),
        .I1(mem_wdata0_i_1_n_4),
        .I2(mem_excepttype_i[10]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hF5D5)) 
    \new_pc_reg[6]_i_2 
       (.I0(stalleq_from_ex),
        .I1(mem_excepttype_i[11]),
        .I2(mem_wdata0_i_1_n_4),
        .I3(mem_excepttype_i[10]),
        .O(\pc_reg[5] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFC8FF)) 
    \pc[31]_i_1 
       (.I0(mem_excepttype_i[11]),
        .I1(mem_wdata0_i_1_n_4),
        .I2(mem_excepttype_i[10]),
        .I3(stalleq_from_ex),
        .I4(rst_IBUF),
        .I5(wb_cp0_reg_we_reg),
        .O(\pc_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[31]_i_20 
       (.I0(mem_wdata_i[31]),
        .I1(rst_IBUF),
        .O(mem_wdata_o));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \wb_hi[31]_i_1 
       (.I0(rst_IBUF),
        .I1(wb_cp0_reg_we_reg),
        .O(E));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[0]_i_9 
       (.I0(mem_cp0_reg_data_i[0]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[0]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wdata_o_reg[10]_i_13 
       (.I0(mem_cp0_reg_data_i[10]),
        .I1(rst_IBUF),
        .O(mem_cp0_reg_data_o));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[11]_i_20 
       (.I0(mem_cp0_reg_data_i[11]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[10]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[11]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[12]_i_11 
       (.I0(mem_cp0_reg_data_i[12]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[11]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[12]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[13]_i_15 
       (.I0(mem_cp0_reg_data_i[13]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[12]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[13]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[14]_i_11 
       (.I0(mem_cp0_reg_data_i[14]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[13]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[14]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[15]_i_16 
       (.I0(mem_cp0_reg_data_i[15]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[14]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[15]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[16]_i_10 
       (.I0(mem_cp0_reg_data_i[16]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[15]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[16]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[17]_i_15 
       (.I0(mem_cp0_reg_data_i[17]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[16]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[17]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[19]_i_22 
       (.I0(mem_cp0_reg_data_i[19]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[17]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[19]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[1]_i_16 
       (.I0(mem_cp0_reg_data_i[1]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[1]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[20]_i_11 
       (.I0(mem_cp0_reg_data_i[20]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[18]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[20]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[22]_i_11 
       (.I0(mem_cp0_reg_data_i[22]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[19]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[22]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[24]_i_11 
       (.I0(mem_cp0_reg_data_i[24]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[20]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[24]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[25]_i_11 
       (.I0(mem_cp0_reg_data_i[25]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[21]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[25]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[26]_i_15 
       (.I0(mem_cp0_reg_data_i[26]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[22]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[26]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[2]_i_11 
       (.I0(mem_cp0_reg_data_i[2]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[2]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wdata_o_reg[30]_i_15 
       (.I0(mem_whilo_i),
        .I1(rst_IBUF),
        .O(mem_whilo_o));
  LUT5 #(
    .INIT(32'h00200002)) 
    \wdata_o_reg[30]_i_17 
       (.I0(mem_cp0_reg_we_i),
        .I1(\wdata_o_reg[30]_i_23_n_4 ),
        .I2(\ex_inst_reg[13] [0]),
        .I3(rst_IBUF),
        .I4(mem_cp0_reg_write_addr_i[0]),
        .O(\mem_wdata_reg[0]_1 ));
  LUT5 #(
    .INIT(32'hFF6FCCF6)) 
    \wdata_o_reg[30]_i_23 
       (.I0(mem_cp0_reg_write_addr_i[1]),
        .I1(\ex_inst_reg[13] [1]),
        .I2(mem_cp0_reg_write_addr_i[2]),
        .I3(rst_IBUF),
        .I4(\ex_inst_reg[13] [2]),
        .O(\wdata_o_reg[30]_i_23_n_4 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[31]_i_23 
       (.I0(mem_cp0_reg_data_i[31]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[23]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[31]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[3]_i_17 
       (.I0(mem_cp0_reg_data_i[3]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[3]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[4]_i_11 
       (.I0(mem_cp0_reg_data_i[4]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[4]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[4]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[5]_i_11 
       (.I0(mem_cp0_reg_data_i[5]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[5]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[5]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[6]_i_16 
       (.I0(mem_cp0_reg_data_i[6]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[6]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[6]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[7]_i_12 
       (.I0(mem_cp0_reg_data_i[7]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[7]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[7]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[8]_i_11 
       (.I0(mem_cp0_reg_data_i[8]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[8]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \wdata_o_reg[9]_i_15 
       (.I0(mem_cp0_reg_data_i[9]),
        .I1(rst_IBUF),
        .I2(\mem_wdata_reg[0]_1 ),
        .I3(wb_cp0_reg_data_i[9]),
        .I4(wb_cp0_reg_we_reg_1),
        .O(\mem_wdata_reg[9]_0 ));
endmodule

module hilo
   (Q,
    \mem_wdata_reg[31] ,
    rst,
    wb_whilo_i,
    \wb_hi_reg[31] ,
    CLK,
    \wb_lo_reg[31] );
  output [31:0]Q;
  output [31:0]\mem_wdata_reg[31] ;
  input rst;
  input wb_whilo_i;
  input [31:0]\wb_hi_reg[31] ;
  input CLK;
  input [31:0]\wb_lo_reg[31] ;

  wire CLK;
  wire [31:0]Q;
  wire [31:0]\mem_wdata_reg[31] ;
  wire rst;
  wire [31:0]\wb_hi_reg[31] ;
  wire [31:0]\wb_lo_reg[31] ;
  wire wb_whilo_i;

  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[0] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [0]),
        .Q(Q[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[10] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [10]),
        .Q(Q[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[11] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [11]),
        .Q(Q[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[12] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [12]),
        .Q(Q[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[13] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [13]),
        .Q(Q[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[14] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [14]),
        .Q(Q[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[15] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [15]),
        .Q(Q[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[16] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [16]),
        .Q(Q[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[17] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [17]),
        .Q(Q[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[18] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [18]),
        .Q(Q[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[19] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [19]),
        .Q(Q[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[1] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [1]),
        .Q(Q[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[20] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [20]),
        .Q(Q[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[21] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [21]),
        .Q(Q[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[22] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [22]),
        .Q(Q[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[23] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [23]),
        .Q(Q[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[24] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [24]),
        .Q(Q[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[25] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [25]),
        .Q(Q[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[26] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [26]),
        .Q(Q[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[27] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [27]),
        .Q(Q[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[28] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [28]),
        .Q(Q[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[29] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [29]),
        .Q(Q[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[2] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [2]),
        .Q(Q[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[30] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [30]),
        .Q(Q[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[31] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [31]),
        .Q(Q[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[3] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [3]),
        .Q(Q[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[4] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [4]),
        .Q(Q[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[5] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [5]),
        .Q(Q[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[6] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [6]),
        .Q(Q[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[7] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [7]),
        .Q(Q[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[8] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [8]),
        .Q(Q[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hi_o_reg[9] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_hi_reg[31] [9]),
        .Q(Q[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[0] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [0]),
        .Q(\mem_wdata_reg[31] [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[10] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [10]),
        .Q(\mem_wdata_reg[31] [10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[11] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [11]),
        .Q(\mem_wdata_reg[31] [11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[12] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [12]),
        .Q(\mem_wdata_reg[31] [12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[13] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [13]),
        .Q(\mem_wdata_reg[31] [13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[14] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [14]),
        .Q(\mem_wdata_reg[31] [14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[15] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [15]),
        .Q(\mem_wdata_reg[31] [15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[16] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [16]),
        .Q(\mem_wdata_reg[31] [16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[17] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [17]),
        .Q(\mem_wdata_reg[31] [17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[18] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [18]),
        .Q(\mem_wdata_reg[31] [18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[19] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [19]),
        .Q(\mem_wdata_reg[31] [19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[1] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [1]),
        .Q(\mem_wdata_reg[31] [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[20] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [20]),
        .Q(\mem_wdata_reg[31] [20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[21] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [21]),
        .Q(\mem_wdata_reg[31] [21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[22] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [22]),
        .Q(\mem_wdata_reg[31] [22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[23] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [23]),
        .Q(\mem_wdata_reg[31] [23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[24] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [24]),
        .Q(\mem_wdata_reg[31] [24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[25] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [25]),
        .Q(\mem_wdata_reg[31] [25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[26] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [26]),
        .Q(\mem_wdata_reg[31] [26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[27] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [27]),
        .Q(\mem_wdata_reg[31] [27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[28] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [28]),
        .Q(\mem_wdata_reg[31] [28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[29] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [29]),
        .Q(\mem_wdata_reg[31] [29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[2] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [2]),
        .Q(\mem_wdata_reg[31] [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[30] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [30]),
        .Q(\mem_wdata_reg[31] [30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[31] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [31]),
        .Q(\mem_wdata_reg[31] [31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[3] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [3]),
        .Q(\mem_wdata_reg[31] [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[4] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [4]),
        .Q(\mem_wdata_reg[31] [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[5] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [5]),
        .Q(\mem_wdata_reg[31] [5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[6] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [6]),
        .Q(\mem_wdata_reg[31] [6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[7] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [7]),
        .Q(\mem_wdata_reg[31] [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[8] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [8]),
        .Q(\mem_wdata_reg[31] [8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \lo_o_reg[9] 
       (.C(CLK),
        .CE(wb_whilo_i),
        .D(\wb_lo_reg[31] [9]),
        .Q(\mem_wdata_reg[31] [9]),
        .R(rst));
endmodule

module id
   (id_wreg_o,
    reg2_read,
    reg1_read,
    D,
    \ex_reg2_reg[2] ,
    \ex_reg2_reg[12] ,
    \ex_reg2_reg[2]_0 ,
    \ex_reg2_reg[4] ,
    \ex_reg2_reg[4]_0 ,
    \ex_aluop_reg[6] ,
    \ex_alusel_reg[2] ,
    \id_inst_reg[28] ,
    p_0_in,
    E,
    \id_inst_reg[0] ,
    \mem_wd_reg[1] ,
    \id_inst_reg[28]_0 ,
    mem_wdata_i,
    \id_inst_reg[18] ,
    \id_inst_reg[4] ,
    \id_inst_reg[28]_1 ,
    \id_inst_reg[18]_0 ,
    \id_inst_reg[18]_1 ,
    \id_inst_reg[18]_2 ,
    \id_inst_reg[18]_3 ,
    \id_inst_reg[18]_4 ,
    \id_inst_reg[28]_2 ,
    \id_inst_reg[4]_0 ,
    \mem_wdata_reg[4] ,
    \id_inst_reg[5] ,
    \mem_wdata_reg[5] ,
    \mem_wdata_reg[6] ,
    \mem_wdata_reg[9] ,
    \mem_wdata_reg[10] ,
    \mem_wdata_reg[14] ,
    \id_inst_reg[18]_5 ,
    \mem_wdata_reg[16] ,
    \mem_wdata_reg[18] ,
    \id_inst_reg[18]_6 ,
    \mem_wdata_reg[19] ,
    \mem_wdata_reg[20] ,
    \mem_wdata_reg[25] ,
    \mem_wdata_reg[26] ,
    \id_inst_reg[18]_7 ,
    \mem_wdata_reg[28] ,
    \mem_wdata_reg[30] ,
    \ex_alusel_reg[2]_0 ,
    rst_IBUF,
    Q,
    ex_wreg_reg,
    wb_wdata_i,
    rdata20,
    \wb_wd_reg[4] ,
    \id_inst_reg[28]_3 ,
    \id_inst_reg[17] ,
    rst,
    \id_inst_reg[26] ,
    \id_inst_reg[0]_0 ,
    \id_inst_reg[18]_8 );
  output id_wreg_o;
  output reg2_read;
  output reg1_read;
  output [26:0]D;
  output \ex_reg2_reg[2] ;
  output [4:0]\ex_reg2_reg[12] ;
  output [2:0]\ex_reg2_reg[2]_0 ;
  output \ex_reg2_reg[4] ;
  output \ex_reg2_reg[4]_0 ;
  output [6:0]\ex_aluop_reg[6] ;
  output [2:0]\ex_alusel_reg[2] ;
  input \id_inst_reg[28] ;
  input p_0_in;
  input [0:0]E;
  input \id_inst_reg[0] ;
  input \mem_wd_reg[1] ;
  input \id_inst_reg[28]_0 ;
  input [12:0]mem_wdata_i;
  input \id_inst_reg[18] ;
  input \id_inst_reg[4] ;
  input \id_inst_reg[28]_1 ;
  input \id_inst_reg[18]_0 ;
  input \id_inst_reg[18]_1 ;
  input \id_inst_reg[18]_2 ;
  input \id_inst_reg[18]_3 ;
  input \id_inst_reg[18]_4 ;
  input \id_inst_reg[28]_2 ;
  input \id_inst_reg[4]_0 ;
  input \mem_wdata_reg[4] ;
  input \id_inst_reg[5] ;
  input \mem_wdata_reg[5] ;
  input \mem_wdata_reg[6] ;
  input \mem_wdata_reg[9] ;
  input \mem_wdata_reg[10] ;
  input \mem_wdata_reg[14] ;
  input \id_inst_reg[18]_5 ;
  input \mem_wdata_reg[16] ;
  input \mem_wdata_reg[18] ;
  input \id_inst_reg[18]_6 ;
  input \mem_wdata_reg[19] ;
  input \mem_wdata_reg[20] ;
  input \mem_wdata_reg[25] ;
  input \mem_wdata_reg[26] ;
  input \id_inst_reg[18]_7 ;
  input \mem_wdata_reg[28] ;
  input \mem_wdata_reg[30] ;
  input [12:0]\ex_alusel_reg[2]_0 ;
  input rst_IBUF;
  input [2:0]Q;
  input ex_wreg_reg;
  input [31:0]wb_wdata_i;
  input [31:0]rdata20;
  input \wb_wd_reg[4] ;
  input [6:0]\id_inst_reg[28]_3 ;
  input [0:0]\id_inst_reg[17] ;
  input rst;
  input [2:0]\id_inst_reg[26] ;
  input [0:0]\id_inst_reg[0]_0 ;
  input [2:0]\id_inst_reg[18]_8 ;

  wire [26:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [6:0]\ex_aluop_reg[6] ;
  wire [2:0]\ex_alusel_reg[2] ;
  wire [12:0]\ex_alusel_reg[2]_0 ;
  wire \ex_reg2[13]_i_2_n_4 ;
  wire \ex_reg2[15]_i_3_n_4 ;
  wire \ex_reg2[17]_i_2_n_4 ;
  wire \ex_reg2[21]_i_3_n_4 ;
  wire \ex_reg2[22]_i_2_n_4 ;
  wire \ex_reg2[23]_i_2_n_4 ;
  wire \ex_reg2[24]_i_3_n_4 ;
  wire \ex_reg2[27]_i_2_n_4 ;
  wire \ex_reg2[29]_i_2_n_4 ;
  wire \ex_reg2[2]_i_3_n_4 ;
  wire \ex_reg2[31]_i_5_n_4 ;
  wire \ex_reg2[31]_i_6_n_4 ;
  wire \ex_reg2[3]_i_3_n_4 ;
  wire \ex_reg2[7]_i_2_n_4 ;
  wire [4:0]\ex_reg2_reg[12] ;
  wire \ex_reg2_reg[2] ;
  wire [2:0]\ex_reg2_reg[2]_0 ;
  wire \ex_reg2_reg[4] ;
  wire \ex_reg2_reg[4]_0 ;
  wire ex_wreg_reg;
  wire \id_inst_reg[0] ;
  wire [0:0]\id_inst_reg[0]_0 ;
  wire [0:0]\id_inst_reg[17] ;
  wire \id_inst_reg[18] ;
  wire \id_inst_reg[18]_0 ;
  wire \id_inst_reg[18]_1 ;
  wire \id_inst_reg[18]_2 ;
  wire \id_inst_reg[18]_3 ;
  wire \id_inst_reg[18]_4 ;
  wire \id_inst_reg[18]_5 ;
  wire \id_inst_reg[18]_6 ;
  wire \id_inst_reg[18]_7 ;
  wire [2:0]\id_inst_reg[18]_8 ;
  wire [2:0]\id_inst_reg[26] ;
  wire \id_inst_reg[28] ;
  wire \id_inst_reg[28]_0 ;
  wire \id_inst_reg[28]_1 ;
  wire \id_inst_reg[28]_2 ;
  wire [6:0]\id_inst_reg[28]_3 ;
  wire \id_inst_reg[4] ;
  wire \id_inst_reg[4]_0 ;
  wire \id_inst_reg[5] ;
  wire id_wreg_o;
  wire \mem_wd_reg[1] ;
  wire [12:0]mem_wdata_i;
  wire \mem_wdata_reg[10] ;
  wire \mem_wdata_reg[14] ;
  wire \mem_wdata_reg[16] ;
  wire \mem_wdata_reg[18] ;
  wire \mem_wdata_reg[19] ;
  wire \mem_wdata_reg[20] ;
  wire \mem_wdata_reg[25] ;
  wire \mem_wdata_reg[26] ;
  wire \mem_wdata_reg[28] ;
  wire \mem_wdata_reg[30] ;
  wire \mem_wdata_reg[4] ;
  wire \mem_wdata_reg[5] ;
  wire \mem_wdata_reg[6] ;
  wire \mem_wdata_reg[9] ;
  wire p_0_in;
  wire [31:0]rdata20;
  wire reg1_read;
  wire [31:2]reg2_data;
  wire reg2_read;
  wire rst;
  wire rst_IBUF;
  wire \wb_wd_reg[4] ;
  wire [31:0]wb_wdata_i;

  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \aluop_o_reg[0] 
       (.CLR(rst),
        .D(\id_inst_reg[28]_3 [0]),
        .G(\id_inst_reg[17] ),
        .GE(1'b1),
        .Q(\ex_aluop_reg[6] [0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \aluop_o_reg[1] 
       (.CLR(rst),
        .D(\id_inst_reg[28]_3 [1]),
        .G(\id_inst_reg[17] ),
        .GE(1'b1),
        .Q(\ex_aluop_reg[6] [1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \aluop_o_reg[2] 
       (.CLR(rst),
        .D(\id_inst_reg[28]_3 [2]),
        .G(\id_inst_reg[17] ),
        .GE(1'b1),
        .Q(\ex_aluop_reg[6] [2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \aluop_o_reg[3] 
       (.CLR(rst),
        .D(\id_inst_reg[28]_3 [3]),
        .G(\id_inst_reg[17] ),
        .GE(1'b1),
        .Q(\ex_aluop_reg[6] [3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \aluop_o_reg[4] 
       (.CLR(rst),
        .D(\id_inst_reg[28]_3 [4]),
        .G(\id_inst_reg[17] ),
        .GE(1'b1),
        .Q(\ex_aluop_reg[6] [4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \aluop_o_reg[5] 
       (.CLR(rst),
        .D(\id_inst_reg[28]_3 [5]),
        .G(\id_inst_reg[17] ),
        .GE(1'b1),
        .Q(\ex_aluop_reg[6] [5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \aluop_o_reg[6] 
       (.CLR(rst),
        .D(\id_inst_reg[28]_3 [6]),
        .G(\id_inst_reg[17] ),
        .GE(1'b1),
        .Q(\ex_aluop_reg[6] [6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \alusel_o_reg[0] 
       (.CLR(rst),
        .D(\id_inst_reg[26] [0]),
        .G(\id_inst_reg[0]_0 ),
        .GE(1'b1),
        .Q(\ex_alusel_reg[2] [0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \alusel_o_reg[1] 
       (.CLR(rst),
        .D(\id_inst_reg[26] [1]),
        .G(\id_inst_reg[0]_0 ),
        .GE(1'b1),
        .Q(\ex_alusel_reg[2] [1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \alusel_o_reg[2] 
       (.CLR(rst),
        .D(\id_inst_reg[26] [2]),
        .G(\id_inst_reg[0]_0 ),
        .GE(1'b1),
        .Q(\ex_alusel_reg[2] [2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[0]_i_3 
       (.I0(wb_wdata_i[0]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[0]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(\ex_reg2_reg[12] [0]));
  LUT6 #(
    .INIT(64'hFFFFF1F0F0F0F0F0)) 
    \ex_reg2[10]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[28]_1 ),
        .I3(reg2_data[10]),
        .I4(\mem_wdata_reg[10] ),
        .I5(reg2_read),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[10]_i_2 
       (.I0(wb_wdata_i[10]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[10]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[11]_i_3 
       (.I0(wb_wdata_i[11]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[11]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(\ex_reg2_reg[12] [3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[12]_i_3 
       (.I0(wb_wdata_i[12]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[12]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(\ex_reg2_reg[12] [4]));
  LUT6 #(
    .INIT(64'hFFFFF4F0F0F0F0F0)) 
    \ex_reg2[13]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[28]_1 ),
        .I3(mem_wdata_i[3]),
        .I4(\ex_reg2[13]_i_2_n_4 ),
        .I5(reg2_read),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hB1A0)) 
    \ex_reg2[13]_i_2 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\ex_alusel_reg[2]_0 [3]),
        .I3(reg2_data[13]),
        .O(\ex_reg2[13]_i_2_n_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[13]_i_3 
       (.I0(wb_wdata_i[13]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[13]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[13]));
  LUT6 #(
    .INIT(64'hFFFFF1F0F0F0F0F0)) 
    \ex_reg2[14]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[28]_1 ),
        .I3(reg2_data[14]),
        .I4(\mem_wdata_reg[14] ),
        .I5(reg2_read),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[14]_i_2 
       (.I0(wb_wdata_i[14]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[14]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[14]));
  LUT6 #(
    .INIT(64'hFFFFF4F0F0F0F0F0)) 
    \ex_reg2[15]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[28]_1 ),
        .I3(mem_wdata_i[4]),
        .I4(\ex_reg2[15]_i_3_n_4 ),
        .I5(reg2_read),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hB1A0)) 
    \ex_reg2[15]_i_3 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\ex_alusel_reg[2]_0 [4]),
        .I3(reg2_data[15]),
        .O(\ex_reg2[15]_i_3_n_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[15]_i_4 
       (.I0(wb_wdata_i[15]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[15]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[15]));
  LUT6 #(
    .INIT(64'hFFFF1100F0F0F0F0)) 
    \ex_reg2[16]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[18]_5 ),
        .I3(reg2_data[16]),
        .I4(\mem_wdata_reg[16] ),
        .I5(reg2_read),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[16]_i_2 
       (.I0(wb_wdata_i[16]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[16]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[16]));
  LUT6 #(
    .INIT(64'hFFFF4400F0F0F0F0)) 
    \ex_reg2[17]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[18]_0 ),
        .I3(mem_wdata_i[5]),
        .I4(\ex_reg2[17]_i_2_n_4 ),
        .I5(reg2_read),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hB1A0)) 
    \ex_reg2[17]_i_2 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\ex_alusel_reg[2]_0 [5]),
        .I3(reg2_data[17]),
        .O(\ex_reg2[17]_i_2_n_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[17]_i_3 
       (.I0(wb_wdata_i[17]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[17]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[17]));
  LUT6 #(
    .INIT(64'hFFFF11000F0F0F0F)) 
    \ex_reg2[18]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[18]_1 ),
        .I3(reg2_data[18]),
        .I4(\mem_wdata_reg[18] ),
        .I5(reg2_read),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[18]_i_2 
       (.I0(wb_wdata_i[18]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[18]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[18]));
  LUT6 #(
    .INIT(64'hFFFF1100F0F0F0F0)) 
    \ex_reg2[19]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[18]_6 ),
        .I3(reg2_data[19]),
        .I4(\mem_wdata_reg[19] ),
        .I5(reg2_read),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[19]_i_3 
       (.I0(wb_wdata_i[19]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[19]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[19]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[1]_i_3 
       (.I0(wb_wdata_i[1]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[1]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(\ex_reg2_reg[12] [1]));
  LUT6 #(
    .INIT(64'hFFFF11000F0F0F0F)) 
    \ex_reg2[20]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[18]_2 ),
        .I3(reg2_data[20]),
        .I4(\mem_wdata_reg[20] ),
        .I5(reg2_read),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[20]_i_2 
       (.I0(wb_wdata_i[20]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[20]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[20]));
  LUT6 #(
    .INIT(64'hFFFF44000F0F0F0F)) 
    \ex_reg2[21]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[18]_1 ),
        .I3(mem_wdata_i[6]),
        .I4(\ex_reg2[21]_i_3_n_4 ),
        .I5(reg2_read),
        .O(D[16]));
  LUT4 #(
    .INIT(16'hB1A0)) 
    \ex_reg2[21]_i_3 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\ex_alusel_reg[2]_0 [6]),
        .I3(reg2_data[21]),
        .O(\ex_reg2[21]_i_3_n_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[21]_i_4 
       (.I0(wb_wdata_i[21]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[21]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[21]));
  LUT6 #(
    .INIT(64'hFFFF44000F0F0F0F)) 
    \ex_reg2[22]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[18]_2 ),
        .I3(mem_wdata_i[7]),
        .I4(\ex_reg2[22]_i_2_n_4 ),
        .I5(reg2_read),
        .O(D[17]));
  LUT4 #(
    .INIT(16'hB1A0)) 
    \ex_reg2[22]_i_2 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\ex_alusel_reg[2]_0 [7]),
        .I3(reg2_data[22]),
        .O(\ex_reg2[22]_i_2_n_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[22]_i_3 
       (.I0(wb_wdata_i[22]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[22]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[22]));
  LUT6 #(
    .INIT(64'hFFFF44000F0F0F0F)) 
    \ex_reg2[23]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[18]_2 ),
        .I3(mem_wdata_i[8]),
        .I4(\ex_reg2[23]_i_2_n_4 ),
        .I5(reg2_read),
        .O(D[18]));
  LUT4 #(
    .INIT(16'hB1A0)) 
    \ex_reg2[23]_i_2 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\ex_alusel_reg[2]_0 [8]),
        .I3(reg2_data[23]),
        .O(\ex_reg2[23]_i_2_n_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[23]_i_3 
       (.I0(wb_wdata_i[23]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[23]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[23]));
  LUT6 #(
    .INIT(64'hFFFF4400F0F0F0F0)) 
    \ex_reg2[24]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[18]_3 ),
        .I3(mem_wdata_i[9]),
        .I4(\ex_reg2[24]_i_3_n_4 ),
        .I5(reg2_read),
        .O(D[19]));
  LUT4 #(
    .INIT(16'hB1A0)) 
    \ex_reg2[24]_i_3 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\ex_alusel_reg[2]_0 [9]),
        .I3(reg2_data[24]),
        .O(\ex_reg2[24]_i_3_n_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[24]_i_4 
       (.I0(wb_wdata_i[24]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[24]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[24]));
  LUT6 #(
    .INIT(64'hFFFFF1F0F0F0F0F0)) 
    \ex_reg2[25]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[28]_2 ),
        .I3(reg2_data[25]),
        .I4(\mem_wdata_reg[25] ),
        .I5(reg2_read),
        .O(D[20]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[25]_i_2 
       (.I0(wb_wdata_i[25]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[25]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[25]));
  LUT6 #(
    .INIT(64'hFFFFF1F0F0F0F0F0)) 
    \ex_reg2[26]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[28]_2 ),
        .I3(reg2_data[26]),
        .I4(\mem_wdata_reg[26] ),
        .I5(reg2_read),
        .O(D[21]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[26]_i_2 
       (.I0(wb_wdata_i[26]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[26]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[26]));
  LUT6 #(
    .INIT(64'hFFFF4400F0F0F0F0)) 
    \ex_reg2[27]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[18]_4 ),
        .I3(mem_wdata_i[10]),
        .I4(\ex_reg2[27]_i_2_n_4 ),
        .I5(reg2_read),
        .O(D[22]));
  LUT4 #(
    .INIT(16'hB1A0)) 
    \ex_reg2[27]_i_2 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\ex_alusel_reg[2]_0 [10]),
        .I3(reg2_data[27]),
        .O(\ex_reg2[27]_i_2_n_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[27]_i_3 
       (.I0(wb_wdata_i[27]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[27]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[27]));
  LUT6 #(
    .INIT(64'hFFFF1100F0F0F0F0)) 
    \ex_reg2[28]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[18]_7 ),
        .I3(reg2_data[28]),
        .I4(\mem_wdata_reg[28] ),
        .I5(reg2_read),
        .O(D[23]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[28]_i_3 
       (.I0(wb_wdata_i[28]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[28]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[28]));
  LUT6 #(
    .INIT(64'hFFFFF4F0F0F0F0F0)) 
    \ex_reg2[29]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[28]_2 ),
        .I3(mem_wdata_i[11]),
        .I4(\ex_reg2[29]_i_2_n_4 ),
        .I5(reg2_read),
        .O(D[24]));
  LUT4 #(
    .INIT(16'hB1A0)) 
    \ex_reg2[29]_i_2 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\ex_alusel_reg[2]_0 [11]),
        .I3(reg2_data[29]),
        .O(\ex_reg2[29]_i_2_n_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[29]_i_3 
       (.I0(wb_wdata_i[29]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[29]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[29]));
  LUT6 #(
    .INIT(64'hFFFF4400F0F0F0F0)) 
    \ex_reg2[2]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[28]_0 ),
        .I3(mem_wdata_i[0]),
        .I4(\ex_reg2[2]_i_3_n_4 ),
        .I5(reg2_read),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hB1A0)) 
    \ex_reg2[2]_i_3 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\ex_alusel_reg[2]_0 [0]),
        .I3(reg2_data[2]),
        .O(\ex_reg2[2]_i_3_n_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[2]_i_4 
       (.I0(wb_wdata_i[2]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[2]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[2]));
  LUT6 #(
    .INIT(64'hFFFFF1F0F0F0F0F0)) 
    \ex_reg2[30]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[28]_2 ),
        .I3(reg2_data[30]),
        .I4(\mem_wdata_reg[30] ),
        .I5(reg2_read),
        .O(D[25]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[30]_i_2 
       (.I0(wb_wdata_i[30]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[30]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[30]));
  LUT5 #(
    .INIT(32'h88888880)) 
    \ex_reg2[30]_i_4 
       (.I0(\wb_wd_reg[4] ),
        .I1(reg2_read),
        .I2(\ex_reg2_reg[2]_0 [2]),
        .I3(\ex_reg2_reg[2]_0 [1]),
        .I4(\ex_reg2_reg[2]_0 [0]),
        .O(\ex_reg2_reg[4] ));
  LUT5 #(
    .INIT(32'h0000AAA8)) 
    \ex_reg2[30]_i_5 
       (.I0(reg2_read),
        .I1(\ex_reg2_reg[2]_0 [2]),
        .I2(\ex_reg2_reg[2]_0 [1]),
        .I3(\ex_reg2_reg[2]_0 [0]),
        .I4(\wb_wd_reg[4] ),
        .O(\ex_reg2_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF4F0F0F0F0F0)) 
    \ex_reg2[31]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[28]_2 ),
        .I3(mem_wdata_i[12]),
        .I4(\ex_reg2[31]_i_5_n_4 ),
        .I5(reg2_read),
        .O(D[26]));
  LUT5 #(
    .INIT(32'h0000208A)) 
    \ex_reg2[31]_i_2 
       (.I0(\ex_reg2[31]_i_6_n_4 ),
        .I1(rst_IBUF),
        .I2(Q[0]),
        .I3(\ex_reg2_reg[2]_0 [0]),
        .I4(ex_wreg_reg),
        .O(\ex_reg2_reg[2] ));
  LUT4 #(
    .INIT(16'hB1A0)) 
    \ex_reg2[31]_i_5 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\ex_alusel_reg[2]_0 [12]),
        .I3(reg2_data[31]),
        .O(\ex_reg2[31]_i_5_n_4 ));
  LUT5 #(
    .INIT(32'h05059009)) 
    \ex_reg2[31]_i_6 
       (.I0(\ex_reg2_reg[2]_0 [2]),
        .I1(Q[2]),
        .I2(\ex_reg2_reg[2]_0 [1]),
        .I3(Q[1]),
        .I4(rst_IBUF),
        .O(\ex_reg2[31]_i_6_n_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[31]_i_9 
       (.I0(wb_wdata_i[31]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[31]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[31]));
  LUT6 #(
    .INIT(64'hFFFF4400F0F0F0F0)) 
    \ex_reg2[3]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[18] ),
        .I3(mem_wdata_i[1]),
        .I4(\ex_reg2[3]_i_3_n_4 ),
        .I5(reg2_read),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hB1A0)) 
    \ex_reg2[3]_i_3 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\ex_alusel_reg[2]_0 [1]),
        .I3(reg2_data[3]),
        .O(\ex_reg2[3]_i_3_n_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[3]_i_4 
       (.I0(wb_wdata_i[3]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[3]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[3]));
  LUT6 #(
    .INIT(64'hFFFF1100F0F0F0F0)) 
    \ex_reg2[4]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[4]_0 ),
        .I3(reg2_data[4]),
        .I4(\mem_wdata_reg[4] ),
        .I5(reg2_read),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[4]_i_2 
       (.I0(wb_wdata_i[4]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[4]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[4]));
  LUT6 #(
    .INIT(64'hFFFF1100F0F0F0F0)) 
    \ex_reg2[5]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[5] ),
        .I3(reg2_data[5]),
        .I4(\mem_wdata_reg[5] ),
        .I5(reg2_read),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[5]_i_3 
       (.I0(wb_wdata_i[5]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[5]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[5]));
  LUT6 #(
    .INIT(64'hFFFF1100F0F0F0F0)) 
    \ex_reg2[6]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[4] ),
        .I3(reg2_data[6]),
        .I4(\mem_wdata_reg[6] ),
        .I5(reg2_read),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[6]_i_2 
       (.I0(wb_wdata_i[6]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[6]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[6]));
  LUT6 #(
    .INIT(64'hFFFF4400F0F0F0F0)) 
    \ex_reg2[7]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[4] ),
        .I3(mem_wdata_i[2]),
        .I4(\ex_reg2[7]_i_2_n_4 ),
        .I5(reg2_read),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hB1A0)) 
    \ex_reg2[7]_i_2 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\ex_alusel_reg[2]_0 [2]),
        .I3(reg2_data[7]),
        .O(\ex_reg2[7]_i_2_n_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[7]_i_3 
       (.I0(wb_wdata_i[7]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[7]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[8]_i_3 
       (.I0(wb_wdata_i[8]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[8]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(\ex_reg2_reg[12] [2]));
  LUT6 #(
    .INIT(64'hFFFFF1F0F0F0F0F0)) 
    \ex_reg2[9]_i_1 
       (.I0(\ex_reg2_reg[2] ),
        .I1(\mem_wd_reg[1] ),
        .I2(\id_inst_reg[28]_1 ),
        .I3(reg2_data[9]),
        .I4(\mem_wdata_reg[9] ),
        .I5(reg2_read),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg2[9]_i_2 
       (.I0(wb_wdata_i[9]),
        .I1(\ex_reg2_reg[4] ),
        .I2(rdata20[9]),
        .I3(\ex_reg2_reg[4]_0 ),
        .O(reg2_data[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    reg1_read_o_reg
       (.CLR(1'b0),
        .D(\id_inst_reg[0] ),
        .G(p_0_in),
        .GE(1'b1),
        .Q(reg1_read));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg2_addr_o_reg[0] 
       (.CLR(rst),
        .D(\id_inst_reg[18]_8 [0]),
        .G(E),
        .GE(1'b1),
        .Q(\ex_reg2_reg[2]_0 [0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg2_addr_o_reg[1] 
       (.CLR(rst),
        .D(\id_inst_reg[18]_8 [1]),
        .G(E),
        .GE(1'b1),
        .Q(\ex_reg2_reg[2]_0 [1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg2_addr_o_reg[2] 
       (.CLR(rst),
        .D(\id_inst_reg[18]_8 [2]),
        .G(E),
        .GE(1'b1),
        .Q(\ex_reg2_reg[2]_0 [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    reg2_read_o_reg
       (.CLR(1'b0),
        .D(E),
        .G(p_0_in),
        .GE(1'b1),
        .Q(reg2_read));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    wreg_o_reg
       (.CLR(1'b0),
        .D(\id_inst_reg[28] ),
        .G(p_0_in),
        .GE(1'b1),
        .Q(id_wreg_o));
endmodule

module id_ex
   (\mem_current_inst_addr_reg[1] ,
    \mem_wdata_reg[30] ,
    mul_ans__0,
    mul_ans,
    mul_ans__0_0,
    \mem_cp0_reg_data_reg[0] ,
    ex_cp0_reg_we_o,
    \mem_cp0_reg_data_reg[1] ,
    \mem_cp0_reg_data_reg[2] ,
    \mem_cp0_reg_data_reg[3] ,
    \mem_cp0_reg_data_reg[4] ,
    \mem_cp0_reg_data_reg[5] ,
    \mem_cp0_reg_data_reg[6] ,
    \mem_cp0_reg_data_reg[7] ,
    \mem_cp0_reg_data_reg[8] ,
    \mem_cp0_reg_data_reg[9] ,
    \mem_cp0_reg_data_reg[10] ,
    \mem_cp0_reg_data_reg[11] ,
    \mem_cp0_reg_data_reg[12] ,
    \mem_cp0_reg_data_reg[13] ,
    \mem_cp0_reg_data_reg[14] ,
    \mem_cp0_reg_data_reg[15] ,
    \mem_cp0_reg_data_reg[16] ,
    \mem_cp0_reg_data_reg[17] ,
    \mem_cp0_reg_data_reg[18] ,
    \mem_cp0_reg_data_reg[19] ,
    \mem_cp0_reg_data_reg[20] ,
    \mem_cp0_reg_data_reg[21] ,
    \mem_cp0_reg_data_reg[22] ,
    \mem_cp0_reg_data_reg[23] ,
    \mem_cp0_reg_data_reg[24] ,
    \mem_cp0_reg_data_reg[25] ,
    \mem_cp0_reg_data_reg[26] ,
    \mem_cp0_reg_data_reg[27] ,
    \mem_cp0_reg_data_reg[28] ,
    \mem_cp0_reg_data_reg[29] ,
    \mem_cp0_reg_data_reg[30] ,
    \mem_cp0_reg_data_reg[31] ,
    \ex_reg1_reg[30]_0 ,
    \ex_reg1_reg[29]_0 ,
    \ex_reg1_reg[24]_0 ,
    \ex_reg1_reg[3]_0 ,
    D,
    \ex_reg1_reg[0]_0 ,
    \ex_reg1_reg[2]_0 ,
    \ex_reg1_reg[6]_0 ,
    \ex_reg1_reg[7]_0 ,
    \ex_reg1_reg[9]_0 ,
    \ex_reg1_reg[10]_0 ,
    \ex_reg1_reg[13]_0 ,
    \ex_reg1_reg[14]_0 ,
    \ex_reg1_reg[18]_0 ,
    \ex_reg1_reg[19]_0 ,
    \ex_reg1_reg[21]_0 ,
    \ex_reg1_reg[22]_0 ,
    \ex_reg1_reg[23]_0 ,
    \ex_reg1_reg[25]_0 ,
    \ex_reg1_reg[26]_0 ,
    \ex_reg1_reg[28]_0 ,
    \pc_reg[31] ,
    \pc_reg[31]_0 ,
    \ex_reg1_reg[5]_0 ,
    ovassert0,
    \mem_wd_reg[4] ,
    \ex_reg2_reg[2]_0 ,
    \mem_hi_reg[31] ,
    \mem_lo_reg[31] ,
    \mem_wdata_reg[31] ,
    \mem_wdata_reg[10] ,
    ex_excepttype_o,
    n_0_468_BUFG_inst_n_1,
    \divider_reg[1] ,
    \state_reg[0] ,
    \mem_lo_reg[0] ,
    n_2_498_BUFG_inst_n_3,
    n_3_499_BUFG_inst_n_4,
    \mem_wdata_reg[0] ,
    mem_whilo_reg,
    \mem_lo_reg[2] ,
    mul_op2,
    mul_op1,
    ex_cp0_reg_write_addr_o,
    \mem_cp0_reg_write_addr_reg[2] ,
    n_1_934_BUFG_inst_n_2,
    ex_wreg_o,
    \mem_current_inst_addr_reg[31] ,
    \mem_excepttype_reg[11] ,
    E,
    id_wreg_o,
    CLK,
    Q,
    \lo_o_reg[27] ,
    \wb_cp0_reg_data_reg[27] ,
    rst_IBUF,
    mul_ans__1,
    P,
    \id_inst_reg[12] ,
    \id_inst_reg[28] ,
    reg1_read,
    mem_wdata_i,
    \ex_alusel_reg[2]_0 ,
    \id_inst_reg[22] ,
    \id_inst_reg[28]_0 ,
    \id_inst_reg[18] ,
    reg1_data,
    \id_inst_reg[4] ,
    \id_inst_reg[4]_0 ,
    \id_inst_reg[18]_0 ,
    \id_inst_reg[18]_1 ,
    \id_inst_reg[18]_2 ,
    \id_inst_reg[18]_3 ,
    \id_inst_reg[18]_4 ,
    \id_inst_reg[18]_5 ,
    mem_wdata_o,
    \id_inst_reg[21] ,
    \mem_wd_reg[2] ,
    mul_ans__2,
    \result_o_reg[63] ,
    mul_ans__2_0,
    mul_ans__1_0,
    mul_ans__2_1,
    mul_ans__2_2,
    mul_ans__1_1,
    mul_ans__2_3,
    mul_ans__1_2,
    mul_ans__2_4,
    mul_ans__1_3,
    mul_ans__2_5,
    mul_ans__1_4,
    mul_ans__2_6,
    mul_ans__2_7,
    mul_ans__1_5,
    mul_ans__2_8,
    mul_ans__1_6,
    mul_ans__2_9,
    mul_ans__2_10,
    mul_ans__1_7,
    mul_ans__2_11,
    mul_ans__1_8,
    mul_ans__2_12,
    mul_ans__1_9,
    mul_ans__2_13,
    mul_ans__1_10,
    mul_ans__2_14,
    mul_ans__1_11,
    mul_ans__2_15,
    mul_ans__2_16,
    mul_ans__2_17,
    mul_ans__2_18,
    mul_ans__2_19,
    mul_ans__2_20,
    mul_ans__2_21,
    mul_ans__2_22,
    mul_ans__2_23,
    mul_ans__2_24,
    mul_ans__2_25,
    mul_ans__2_26,
    mul_ans__2_27,
    mul_ans__2_28,
    mul_ans__2_29,
    mul_ans__2_30,
    mul_ans__2_31,
    mul_ans__2_32,
    mul_ans__2_33,
    mul_ans__2_34,
    mul_ans__2_35,
    mul_ans__2_36,
    mul_ans__2_37,
    mul_ans__2_38,
    mul_ans__2_39,
    mul_ans__2_40,
    mul_ans__2_41,
    mul_ans__2_42,
    mul_ans__2_43,
    mul_ans__2_44,
    mul_ans__2_45,
    mul_ans__2_46,
    \lo_o_reg[30] ,
    \wb_cp0_reg_data_reg[30] ,
    mem_whilo_reg_0,
    \lo_o_reg[29] ,
    \wb_cp0_reg_data_reg[29] ,
    mem_whilo_reg_1,
    \lo_o_reg[28] ,
    \wb_cp0_reg_data_reg[28] ,
    mem_whilo_reg_2,
    mem_whilo_reg_3,
    mem_whilo_reg_4,
    \wb_cp0_reg_data_reg[10] ,
    \wb_lo_reg[18] ,
    \wb_cp0_reg_data_reg[18] ,
    \wb_lo_reg[21] ,
    \wb_cp0_reg_data_reg[21] ,
    \ex_reg1_reg[23]_1 ,
    div_ready,
    \mem_cp0_reg_data_reg[31]_0 ,
    \wb_lo_reg[31] ,
    mem_whilo_reg_5,
    \wb_lo_reg[26] ,
    \mem_cp0_reg_data_reg[26]_0 ,
    mem_whilo_reg_6,
    \wb_lo_reg[25] ,
    \mem_cp0_reg_data_reg[25]_0 ,
    mem_whilo_reg_7,
    \wb_lo_reg[24] ,
    \mem_cp0_reg_data_reg[24]_0 ,
    mem_whilo_reg_8,
    \wb_lo_reg[22] ,
    \mem_cp0_reg_data_reg[22]_0 ,
    mem_whilo_reg_9,
    \wb_lo_reg[20] ,
    \mem_cp0_reg_data_reg[20]_0 ,
    mem_whilo_reg_10,
    \wb_lo_reg[19] ,
    \mem_cp0_reg_data_reg[19]_0 ,
    mem_whilo_reg_11,
    \wb_lo_reg[17] ,
    \mem_cp0_reg_data_reg[17]_0 ,
    mem_whilo_reg_12,
    \wb_lo_reg[16] ,
    \mem_cp0_reg_data_reg[16]_0 ,
    mem_whilo_reg_13,
    \wb_lo_reg[15] ,
    \mem_cp0_reg_data_reg[15]_0 ,
    mem_whilo_reg_14,
    \wb_lo_reg[14] ,
    \mem_cp0_reg_data_reg[14]_0 ,
    mem_whilo_reg_15,
    \wb_lo_reg[13] ,
    \mem_cp0_reg_data_reg[13]_0 ,
    mem_whilo_reg_16,
    \wb_lo_reg[12] ,
    \mem_cp0_reg_data_reg[12]_0 ,
    mem_whilo_reg_17,
    \wb_lo_reg[11] ,
    \mem_cp0_reg_data_reg[11]_0 ,
    mem_whilo_reg_18,
    \wb_lo_reg[9] ,
    \mem_cp0_reg_data_reg[9]_0 ,
    mem_whilo_reg_19,
    \wb_lo_reg[8] ,
    \mem_cp0_reg_data_reg[8]_0 ,
    mem_whilo_reg_20,
    \wb_lo_reg[7] ,
    \mem_cp0_reg_data_reg[7]_0 ,
    mem_whilo_reg_21,
    \wb_lo_reg[6] ,
    \mem_cp0_reg_data_reg[6]_0 ,
    mem_whilo_reg_22,
    \wb_lo_reg[5] ,
    \mem_cp0_reg_data_reg[5]_0 ,
    mem_whilo_reg_23,
    \wb_lo_reg[0] ,
    \mem_cp0_reg_data_reg[0]_0 ,
    mem_whilo_reg_24,
    \wb_lo_reg[1] ,
    \mem_cp0_reg_data_reg[1]_0 ,
    mem_whilo_reg_25,
    \wb_lo_reg[2] ,
    \mem_cp0_reg_data_reg[2]_0 ,
    mem_whilo_reg_26,
    \wb_lo_reg[3] ,
    \mem_cp0_reg_data_reg[3]_0 ,
    mem_whilo_reg_27,
    \wb_lo_reg[4] ,
    \mem_cp0_reg_data_reg[4]_0 ,
    mem_whilo_reg_28,
    O,
    mul_ans__1_12,
    mem_whilo_reg_29,
    mem_whilo_reg_30,
    \id_inst_reg[26] ,
    \id_inst_reg[28]_1 ,
    \mem_wdata_reg[31]_0 ,
    \id_inst_reg[17] ,
    \id_pc_reg[31] );
  output [1:0]\mem_current_inst_addr_reg[1] ;
  output \mem_wdata_reg[30] ;
  output mul_ans__0;
  output [31:0]mul_ans;
  output [31:0]mul_ans__0_0;
  output \mem_cp0_reg_data_reg[0] ;
  output ex_cp0_reg_we_o;
  output \mem_cp0_reg_data_reg[1] ;
  output \mem_cp0_reg_data_reg[2] ;
  output \mem_cp0_reg_data_reg[3] ;
  output \mem_cp0_reg_data_reg[4] ;
  output \mem_cp0_reg_data_reg[5] ;
  output \mem_cp0_reg_data_reg[6] ;
  output \mem_cp0_reg_data_reg[7] ;
  output \mem_cp0_reg_data_reg[8] ;
  output \mem_cp0_reg_data_reg[9] ;
  output \mem_cp0_reg_data_reg[10] ;
  output \mem_cp0_reg_data_reg[11] ;
  output \mem_cp0_reg_data_reg[12] ;
  output \mem_cp0_reg_data_reg[13] ;
  output \mem_cp0_reg_data_reg[14] ;
  output \mem_cp0_reg_data_reg[15] ;
  output \mem_cp0_reg_data_reg[16] ;
  output \mem_cp0_reg_data_reg[17] ;
  output \mem_cp0_reg_data_reg[18] ;
  output \mem_cp0_reg_data_reg[19] ;
  output \mem_cp0_reg_data_reg[20] ;
  output \mem_cp0_reg_data_reg[21] ;
  output \mem_cp0_reg_data_reg[22] ;
  output \mem_cp0_reg_data_reg[23] ;
  output \mem_cp0_reg_data_reg[24] ;
  output \mem_cp0_reg_data_reg[25] ;
  output \mem_cp0_reg_data_reg[26] ;
  output \mem_cp0_reg_data_reg[27] ;
  output \mem_cp0_reg_data_reg[28] ;
  output \mem_cp0_reg_data_reg[29] ;
  output \mem_cp0_reg_data_reg[30] ;
  output \mem_cp0_reg_data_reg[31] ;
  output \ex_reg1_reg[30]_0 ;
  output \ex_reg1_reg[29]_0 ;
  output \ex_reg1_reg[24]_0 ;
  output \ex_reg1_reg[3]_0 ;
  output [11:0]D;
  output \ex_reg1_reg[0]_0 ;
  output \ex_reg1_reg[2]_0 ;
  output \ex_reg1_reg[6]_0 ;
  output \ex_reg1_reg[7]_0 ;
  output \ex_reg1_reg[9]_0 ;
  output \ex_reg1_reg[10]_0 ;
  output \ex_reg1_reg[13]_0 ;
  output \ex_reg1_reg[14]_0 ;
  output \ex_reg1_reg[18]_0 ;
  output \ex_reg1_reg[19]_0 ;
  output \ex_reg1_reg[21]_0 ;
  output \ex_reg1_reg[22]_0 ;
  output \ex_reg1_reg[23]_0 ;
  output \ex_reg1_reg[25]_0 ;
  output \ex_reg1_reg[26]_0 ;
  output \ex_reg1_reg[28]_0 ;
  output \pc_reg[31] ;
  output \pc_reg[31]_0 ;
  output \ex_reg1_reg[5]_0 ;
  output ovassert0;
  output [3:0]\mem_wd_reg[4] ;
  output \ex_reg2_reg[2]_0 ;
  output [31:0]\mem_hi_reg[31] ;
  output [31:0]\mem_lo_reg[31] ;
  output [31:0]\mem_wdata_reg[31] ;
  output \mem_wdata_reg[10] ;
  output [0:0]ex_excepttype_o;
  output n_0_468_BUFG_inst_n_1;
  output \divider_reg[1] ;
  output \state_reg[0] ;
  output \mem_lo_reg[0] ;
  output n_2_498_BUFG_inst_n_3;
  output n_3_499_BUFG_inst_n_4;
  output [0:0]\mem_wdata_reg[0] ;
  output mem_whilo_reg;
  output \mem_lo_reg[2] ;
  output [30:0]mul_op2;
  output [30:0]mul_op1;
  output [2:0]ex_cp0_reg_write_addr_o;
  output [2:0]\mem_cp0_reg_write_addr_reg[2] ;
  output n_1_934_BUFG_inst_n_2;
  output ex_wreg_o;
  output [29:0]\mem_current_inst_addr_reg[31] ;
  input \mem_excepttype_reg[11] ;
  input [0:0]E;
  input id_wreg_o;
  input CLK;
  input [31:0]Q;
  input \lo_o_reg[27] ;
  input \wb_cp0_reg_data_reg[27] ;
  input rst_IBUF;
  input mul_ans__1;
  input [2:0]P;
  input [14:0]\id_inst_reg[12] ;
  input \id_inst_reg[28] ;
  input reg1_read;
  input [31:0]mem_wdata_i;
  input [30:0]\ex_alusel_reg[2]_0 ;
  input [6:0]\id_inst_reg[22] ;
  input \id_inst_reg[28]_0 ;
  input \id_inst_reg[18] ;
  input [17:0]reg1_data;
  input \id_inst_reg[4] ;
  input \id_inst_reg[4]_0 ;
  input \id_inst_reg[18]_0 ;
  input \id_inst_reg[18]_1 ;
  input \id_inst_reg[18]_2 ;
  input \id_inst_reg[18]_3 ;
  input \id_inst_reg[18]_4 ;
  input \id_inst_reg[18]_5 ;
  input [0:0]mem_wdata_o;
  input \id_inst_reg[21] ;
  input \mem_wd_reg[2] ;
  input mul_ans__2;
  input [63:0]\result_o_reg[63] ;
  input mul_ans__2_0;
  input mul_ans__1_0;
  input mul_ans__2_1;
  input mul_ans__2_2;
  input mul_ans__1_1;
  input mul_ans__2_3;
  input mul_ans__1_2;
  input mul_ans__2_4;
  input mul_ans__1_3;
  input mul_ans__2_5;
  input mul_ans__1_4;
  input mul_ans__2_6;
  input mul_ans__2_7;
  input mul_ans__1_5;
  input mul_ans__2_8;
  input mul_ans__1_6;
  input mul_ans__2_9;
  input mul_ans__2_10;
  input mul_ans__1_7;
  input mul_ans__2_11;
  input mul_ans__1_8;
  input mul_ans__2_12;
  input mul_ans__1_9;
  input mul_ans__2_13;
  input mul_ans__1_10;
  input mul_ans__2_14;
  input mul_ans__1_11;
  input mul_ans__2_15;
  input mul_ans__2_16;
  input mul_ans__2_17;
  input mul_ans__2_18;
  input mul_ans__2_19;
  input mul_ans__2_20;
  input mul_ans__2_21;
  input mul_ans__2_22;
  input mul_ans__2_23;
  input mul_ans__2_24;
  input mul_ans__2_25;
  input mul_ans__2_26;
  input mul_ans__2_27;
  input mul_ans__2_28;
  input mul_ans__2_29;
  input mul_ans__2_30;
  input mul_ans__2_31;
  input mul_ans__2_32;
  input mul_ans__2_33;
  input mul_ans__2_34;
  input mul_ans__2_35;
  input mul_ans__2_36;
  input mul_ans__2_37;
  input mul_ans__2_38;
  input mul_ans__2_39;
  input mul_ans__2_40;
  input mul_ans__2_41;
  input mul_ans__2_42;
  input mul_ans__2_43;
  input mul_ans__2_44;
  input mul_ans__2_45;
  input mul_ans__2_46;
  input \lo_o_reg[30] ;
  input \wb_cp0_reg_data_reg[30] ;
  input mem_whilo_reg_0;
  input \lo_o_reg[29] ;
  input \wb_cp0_reg_data_reg[29] ;
  input mem_whilo_reg_1;
  input \lo_o_reg[28] ;
  input \wb_cp0_reg_data_reg[28] ;
  input mem_whilo_reg_2;
  input mem_whilo_reg_3;
  input mem_whilo_reg_4;
  input \wb_cp0_reg_data_reg[10] ;
  input \wb_lo_reg[18] ;
  input \wb_cp0_reg_data_reg[18] ;
  input \wb_lo_reg[21] ;
  input \wb_cp0_reg_data_reg[21] ;
  input \ex_reg1_reg[23]_1 ;
  input div_ready;
  input \mem_cp0_reg_data_reg[31]_0 ;
  input \wb_lo_reg[31] ;
  input mem_whilo_reg_5;
  input \wb_lo_reg[26] ;
  input \mem_cp0_reg_data_reg[26]_0 ;
  input mem_whilo_reg_6;
  input \wb_lo_reg[25] ;
  input \mem_cp0_reg_data_reg[25]_0 ;
  input mem_whilo_reg_7;
  input \wb_lo_reg[24] ;
  input \mem_cp0_reg_data_reg[24]_0 ;
  input mem_whilo_reg_8;
  input \wb_lo_reg[22] ;
  input \mem_cp0_reg_data_reg[22]_0 ;
  input mem_whilo_reg_9;
  input \wb_lo_reg[20] ;
  input \mem_cp0_reg_data_reg[20]_0 ;
  input mem_whilo_reg_10;
  input \wb_lo_reg[19] ;
  input \mem_cp0_reg_data_reg[19]_0 ;
  input mem_whilo_reg_11;
  input \wb_lo_reg[17] ;
  input \mem_cp0_reg_data_reg[17]_0 ;
  input mem_whilo_reg_12;
  input \wb_lo_reg[16] ;
  input \mem_cp0_reg_data_reg[16]_0 ;
  input mem_whilo_reg_13;
  input \wb_lo_reg[15] ;
  input \mem_cp0_reg_data_reg[15]_0 ;
  input mem_whilo_reg_14;
  input \wb_lo_reg[14] ;
  input \mem_cp0_reg_data_reg[14]_0 ;
  input mem_whilo_reg_15;
  input \wb_lo_reg[13] ;
  input \mem_cp0_reg_data_reg[13]_0 ;
  input mem_whilo_reg_16;
  input \wb_lo_reg[12] ;
  input \mem_cp0_reg_data_reg[12]_0 ;
  input mem_whilo_reg_17;
  input \wb_lo_reg[11] ;
  input \mem_cp0_reg_data_reg[11]_0 ;
  input mem_whilo_reg_18;
  input \wb_lo_reg[9] ;
  input \mem_cp0_reg_data_reg[9]_0 ;
  input mem_whilo_reg_19;
  input \wb_lo_reg[8] ;
  input \mem_cp0_reg_data_reg[8]_0 ;
  input mem_whilo_reg_20;
  input \wb_lo_reg[7] ;
  input \mem_cp0_reg_data_reg[7]_0 ;
  input mem_whilo_reg_21;
  input \wb_lo_reg[6] ;
  input \mem_cp0_reg_data_reg[6]_0 ;
  input mem_whilo_reg_22;
  input \wb_lo_reg[5] ;
  input \mem_cp0_reg_data_reg[5]_0 ;
  input mem_whilo_reg_23;
  input \wb_lo_reg[0] ;
  input \mem_cp0_reg_data_reg[0]_0 ;
  input mem_whilo_reg_24;
  input \wb_lo_reg[1] ;
  input \mem_cp0_reg_data_reg[1]_0 ;
  input mem_whilo_reg_25;
  input \wb_lo_reg[2] ;
  input \mem_cp0_reg_data_reg[2]_0 ;
  input mem_whilo_reg_26;
  input \wb_lo_reg[3] ;
  input \mem_cp0_reg_data_reg[3]_0 ;
  input mem_whilo_reg_27;
  input \wb_lo_reg[4] ;
  input \mem_cp0_reg_data_reg[4]_0 ;
  input mem_whilo_reg_28;
  input [0:0]O;
  input [0:0]mul_ans__1_12;
  input mem_whilo_reg_29;
  input mem_whilo_reg_30;
  input [2:0]\id_inst_reg[26] ;
  input [6:0]\id_inst_reg[28]_1 ;
  input [31:0]\mem_wdata_reg[31]_0 ;
  input [3:0]\id_inst_reg[17] ;
  input [29:0]\id_pc_reg[31] ;

  wire CLK;
  wire [11:0]D;
  wire [0:0]E;
  wire [0:0]O;
  wire [2:0]P;
  wire [31:0]Q;
  wire \cp0_reg_read_addr_o_reg[2]_i_2_n_4 ;
  wire \cp0_reg_read_addr_o_reg[2]_i_3_n_4 ;
  wire div_ready;
  wire div_start_o_reg_i_2_n_4;
  wire \divider_reg[1] ;
  wire [30:0]\ex0/data1 ;
  wire \ex0/is_equal ;
  wire [31:1]\ex0/mul_op10 ;
  wire [31:1]\ex0/mul_op20 ;
  wire \ex0/p_0_in6_in ;
  wire [6:0]ex_aluop_i;
  wire [2:0]ex_alusel_i;
  wire [30:0]\ex_alusel_reg[2]_0 ;
  wire ex_cp0_reg_we_o;
  wire [2:0]ex_cp0_reg_write_addr_o;
  wire [0:0]ex_excepttype_o;
  wire [31:2]ex_link_addr_i;
  wire \ex_reg1[0]_i_2_n_4 ;
  wire \ex_reg1[11]_i_2_n_4 ;
  wire \ex_reg1[12]_i_2_n_4 ;
  wire \ex_reg1[15]_i_2_n_4 ;
  wire \ex_reg1[16]_i_2_n_4 ;
  wire \ex_reg1[17]_i_2_n_4 ;
  wire \ex_reg1[1]_i_2_n_4 ;
  wire \ex_reg1[20]_i_2_n_4 ;
  wire \ex_reg1[24]_i_1_n_4 ;
  wire \ex_reg1[24]_i_3_n_4 ;
  wire \ex_reg1[27]_i_3_n_4 ;
  wire \ex_reg1[29]_i_1_n_4 ;
  wire \ex_reg1[29]_i_3_n_4 ;
  wire \ex_reg1[30]_i_1_n_4 ;
  wire \ex_reg1[30]_i_3_n_4 ;
  wire \ex_reg1[31]_i_10_n_4 ;
  wire \ex_reg1[31]_i_3_n_4 ;
  wire \ex_reg1[31]_i_4_n_4 ;
  wire \ex_reg1[31]_i_8_n_4 ;
  wire \ex_reg1[3]_i_1_n_4 ;
  wire \ex_reg1[3]_i_3_n_4 ;
  wire \ex_reg1[4]_i_2_n_4 ;
  wire \ex_reg1[6]_i_2_n_4 ;
  wire \ex_reg1[8]_i_2_n_4 ;
  wire \ex_reg1_reg[0]_0 ;
  wire \ex_reg1_reg[10]_0 ;
  wire \ex_reg1_reg[13]_0 ;
  wire \ex_reg1_reg[14]_0 ;
  wire \ex_reg1_reg[18]_0 ;
  wire \ex_reg1_reg[19]_0 ;
  wire \ex_reg1_reg[21]_0 ;
  wire \ex_reg1_reg[22]_0 ;
  wire \ex_reg1_reg[23]_0 ;
  wire \ex_reg1_reg[23]_1 ;
  wire \ex_reg1_reg[24]_0 ;
  wire \ex_reg1_reg[25]_0 ;
  wire \ex_reg1_reg[26]_0 ;
  wire \ex_reg1_reg[28]_0 ;
  wire \ex_reg1_reg[29]_0 ;
  wire \ex_reg1_reg[2]_0 ;
  wire \ex_reg1_reg[30]_0 ;
  wire \ex_reg1_reg[3]_0 ;
  wire \ex_reg1_reg[5]_0 ;
  wire \ex_reg1_reg[6]_0 ;
  wire \ex_reg1_reg[7]_0 ;
  wire \ex_reg1_reg[9]_0 ;
  wire \ex_reg2_reg[2]_0 ;
  wire [4:4]ex_wd_o;
  wire ex_wreg_i;
  wire ex_wreg_o;
  wire \hi_o_reg[31]_i_15_n_4 ;
  wire \hi_o_reg[31]_i_2_n_4 ;
  wire \hi_o_reg[31]_i_3_n_4 ;
  wire [14:0]\id_inst_reg[12] ;
  wire [3:0]\id_inst_reg[17] ;
  wire \id_inst_reg[18] ;
  wire \id_inst_reg[18]_0 ;
  wire \id_inst_reg[18]_1 ;
  wire \id_inst_reg[18]_2 ;
  wire \id_inst_reg[18]_3 ;
  wire \id_inst_reg[18]_4 ;
  wire \id_inst_reg[18]_5 ;
  wire \id_inst_reg[21] ;
  wire [6:0]\id_inst_reg[22] ;
  wire [2:0]\id_inst_reg[26] ;
  wire \id_inst_reg[28] ;
  wire \id_inst_reg[28]_0 ;
  wire [6:0]\id_inst_reg[28]_1 ;
  wire \id_inst_reg[4] ;
  wire \id_inst_reg[4]_0 ;
  wire [29:0]\id_pc_reg[31] ;
  wire [31:31]id_reg1_o;
  wire id_wreg_o;
  wire \lo_o_reg[0]_i_2_n_4 ;
  wire \lo_o_reg[27] ;
  wire \lo_o_reg[28] ;
  wire \lo_o_reg[29] ;
  wire \lo_o_reg[2]_i_2_n_4 ;
  wire \lo_o_reg[30] ;
  wire \lo_o_reg[7]_i_2_n_4 ;
  wire \mem_cp0_reg_data_reg[0] ;
  wire \mem_cp0_reg_data_reg[0]_0 ;
  wire \mem_cp0_reg_data_reg[10] ;
  wire \mem_cp0_reg_data_reg[11] ;
  wire \mem_cp0_reg_data_reg[11]_0 ;
  wire \mem_cp0_reg_data_reg[12] ;
  wire \mem_cp0_reg_data_reg[12]_0 ;
  wire \mem_cp0_reg_data_reg[13] ;
  wire \mem_cp0_reg_data_reg[13]_0 ;
  wire \mem_cp0_reg_data_reg[14] ;
  wire \mem_cp0_reg_data_reg[14]_0 ;
  wire \mem_cp0_reg_data_reg[15] ;
  wire \mem_cp0_reg_data_reg[15]_0 ;
  wire \mem_cp0_reg_data_reg[16] ;
  wire \mem_cp0_reg_data_reg[16]_0 ;
  wire \mem_cp0_reg_data_reg[17] ;
  wire \mem_cp0_reg_data_reg[17]_0 ;
  wire \mem_cp0_reg_data_reg[18] ;
  wire \mem_cp0_reg_data_reg[19] ;
  wire \mem_cp0_reg_data_reg[19]_0 ;
  wire \mem_cp0_reg_data_reg[1] ;
  wire \mem_cp0_reg_data_reg[1]_0 ;
  wire \mem_cp0_reg_data_reg[20] ;
  wire \mem_cp0_reg_data_reg[20]_0 ;
  wire \mem_cp0_reg_data_reg[21] ;
  wire \mem_cp0_reg_data_reg[22] ;
  wire \mem_cp0_reg_data_reg[22]_0 ;
  wire \mem_cp0_reg_data_reg[23] ;
  wire \mem_cp0_reg_data_reg[24] ;
  wire \mem_cp0_reg_data_reg[24]_0 ;
  wire \mem_cp0_reg_data_reg[25] ;
  wire \mem_cp0_reg_data_reg[25]_0 ;
  wire \mem_cp0_reg_data_reg[26] ;
  wire \mem_cp0_reg_data_reg[26]_0 ;
  wire \mem_cp0_reg_data_reg[27] ;
  wire \mem_cp0_reg_data_reg[28] ;
  wire \mem_cp0_reg_data_reg[29] ;
  wire \mem_cp0_reg_data_reg[2] ;
  wire \mem_cp0_reg_data_reg[2]_0 ;
  wire \mem_cp0_reg_data_reg[30] ;
  wire \mem_cp0_reg_data_reg[31] ;
  wire \mem_cp0_reg_data_reg[31]_0 ;
  wire \mem_cp0_reg_data_reg[3] ;
  wire \mem_cp0_reg_data_reg[3]_0 ;
  wire \mem_cp0_reg_data_reg[4] ;
  wire \mem_cp0_reg_data_reg[4]_0 ;
  wire \mem_cp0_reg_data_reg[5] ;
  wire \mem_cp0_reg_data_reg[5]_0 ;
  wire \mem_cp0_reg_data_reg[6] ;
  wire \mem_cp0_reg_data_reg[6]_0 ;
  wire \mem_cp0_reg_data_reg[7] ;
  wire \mem_cp0_reg_data_reg[7]_0 ;
  wire \mem_cp0_reg_data_reg[8] ;
  wire \mem_cp0_reg_data_reg[8]_0 ;
  wire \mem_cp0_reg_data_reg[9] ;
  wire \mem_cp0_reg_data_reg[9]_0 ;
  wire mem_cp0_reg_we_i_2_n_4;
  wire mem_cp0_reg_we_i_3_n_4;
  wire [2:0]\mem_cp0_reg_write_addr_reg[2] ;
  wire [1:0]\mem_current_inst_addr_reg[1] ;
  wire [29:0]\mem_current_inst_addr_reg[31] ;
  wire \mem_excepttype[10]_i_10_n_4 ;
  wire \mem_excepttype[10]_i_11_n_4 ;
  wire \mem_excepttype[10]_i_12_n_4 ;
  wire \mem_excepttype[10]_i_13_n_4 ;
  wire \mem_excepttype[10]_i_14_n_4 ;
  wire \mem_excepttype[10]_i_15_n_4 ;
  wire \mem_excepttype[10]_i_16_n_4 ;
  wire \mem_excepttype[10]_i_18_n_4 ;
  wire \mem_excepttype[10]_i_19_n_4 ;
  wire \mem_excepttype[10]_i_20_n_4 ;
  wire \mem_excepttype[10]_i_22_n_4 ;
  wire \mem_excepttype[10]_i_23_n_4 ;
  wire \mem_excepttype[10]_i_24_n_4 ;
  wire \mem_excepttype[10]_i_25_n_4 ;
  wire \mem_excepttype[10]_i_26_n_4 ;
  wire \mem_excepttype[10]_i_27_n_4 ;
  wire \mem_excepttype[10]_i_28_n_4 ;
  wire \mem_excepttype[10]_i_29_n_4 ;
  wire \mem_excepttype[10]_i_2_n_4 ;
  wire \mem_excepttype[10]_i_31_n_4 ;
  wire \mem_excepttype[10]_i_32_n_4 ;
  wire \mem_excepttype[10]_i_33_n_4 ;
  wire \mem_excepttype[10]_i_34_n_4 ;
  wire \mem_excepttype[10]_i_36_n_4 ;
  wire \mem_excepttype[10]_i_37_n_4 ;
  wire \mem_excepttype[10]_i_38_n_4 ;
  wire \mem_excepttype[10]_i_39_n_4 ;
  wire \mem_excepttype[10]_i_3_n_4 ;
  wire \mem_excepttype[10]_i_40_n_4 ;
  wire \mem_excepttype[10]_i_41_n_4 ;
  wire \mem_excepttype[10]_i_42_n_4 ;
  wire \mem_excepttype[10]_i_43_n_4 ;
  wire \mem_excepttype[10]_i_44_n_4 ;
  wire \mem_excepttype[10]_i_45_n_4 ;
  wire \mem_excepttype[10]_i_46_n_4 ;
  wire \mem_excepttype[10]_i_47_n_4 ;
  wire \mem_excepttype[10]_i_48_n_4 ;
  wire \mem_excepttype[10]_i_49_n_4 ;
  wire \mem_excepttype[10]_i_4_n_4 ;
  wire \mem_excepttype[10]_i_50_n_4 ;
  wire \mem_excepttype[10]_i_51_n_4 ;
  wire \mem_excepttype[10]_i_52_n_4 ;
  wire \mem_excepttype[10]_i_53_n_4 ;
  wire \mem_excepttype[10]_i_54_n_4 ;
  wire \mem_excepttype[10]_i_55_n_4 ;
  wire \mem_excepttype[10]_i_6_n_4 ;
  wire \mem_excepttype[10]_i_9_n_4 ;
  wire \mem_excepttype_reg[10]_i_17_n_4 ;
  wire \mem_excepttype_reg[10]_i_17_n_5 ;
  wire \mem_excepttype_reg[10]_i_17_n_6 ;
  wire \mem_excepttype_reg[10]_i_17_n_7 ;
  wire \mem_excepttype_reg[10]_i_21_n_4 ;
  wire \mem_excepttype_reg[10]_i_21_n_5 ;
  wire \mem_excepttype_reg[10]_i_21_n_6 ;
  wire \mem_excepttype_reg[10]_i_21_n_7 ;
  wire \mem_excepttype_reg[10]_i_30_n_4 ;
  wire \mem_excepttype_reg[10]_i_30_n_5 ;
  wire \mem_excepttype_reg[10]_i_30_n_6 ;
  wire \mem_excepttype_reg[10]_i_30_n_7 ;
  wire \mem_excepttype_reg[10]_i_35_n_4 ;
  wire \mem_excepttype_reg[10]_i_35_n_5 ;
  wire \mem_excepttype_reg[10]_i_35_n_6 ;
  wire \mem_excepttype_reg[10]_i_35_n_7 ;
  wire \mem_excepttype_reg[10]_i_5_n_4 ;
  wire \mem_excepttype_reg[10]_i_5_n_5 ;
  wire \mem_excepttype_reg[10]_i_5_n_6 ;
  wire \mem_excepttype_reg[10]_i_5_n_7 ;
  wire \mem_excepttype_reg[10]_i_7_n_6 ;
  wire \mem_excepttype_reg[10]_i_7_n_7 ;
  wire \mem_excepttype_reg[10]_i_8_n_4 ;
  wire \mem_excepttype_reg[10]_i_8_n_5 ;
  wire \mem_excepttype_reg[10]_i_8_n_6 ;
  wire \mem_excepttype_reg[10]_i_8_n_7 ;
  wire \mem_excepttype_reg[11] ;
  wire [31:0]\mem_hi_reg[31] ;
  wire \mem_lo_reg[0] ;
  wire \mem_lo_reg[2] ;
  wire [31:0]\mem_lo_reg[31] ;
  wire \mem_wd_reg[2] ;
  wire [3:0]\mem_wd_reg[4] ;
  wire [31:0]mem_wdata_i;
  wire [0:0]mem_wdata_o;
  wire [0:0]\mem_wdata_reg[0] ;
  wire \mem_wdata_reg[10] ;
  wire \mem_wdata_reg[30] ;
  wire [31:0]\mem_wdata_reg[31] ;
  wire [31:0]\mem_wdata_reg[31]_0 ;
  wire mem_whilo_reg;
  wire mem_whilo_reg_0;
  wire mem_whilo_reg_1;
  wire mem_whilo_reg_10;
  wire mem_whilo_reg_11;
  wire mem_whilo_reg_12;
  wire mem_whilo_reg_13;
  wire mem_whilo_reg_14;
  wire mem_whilo_reg_15;
  wire mem_whilo_reg_16;
  wire mem_whilo_reg_17;
  wire mem_whilo_reg_18;
  wire mem_whilo_reg_19;
  wire mem_whilo_reg_2;
  wire mem_whilo_reg_20;
  wire mem_whilo_reg_21;
  wire mem_whilo_reg_22;
  wire mem_whilo_reg_23;
  wire mem_whilo_reg_24;
  wire mem_whilo_reg_25;
  wire mem_whilo_reg_26;
  wire mem_whilo_reg_27;
  wire mem_whilo_reg_28;
  wire mem_whilo_reg_29;
  wire mem_whilo_reg_3;
  wire mem_whilo_reg_30;
  wire mem_whilo_reg_4;
  wire mem_whilo_reg_5;
  wire mem_whilo_reg_6;
  wire mem_whilo_reg_7;
  wire mem_whilo_reg_8;
  wire mem_whilo_reg_9;
  wire [31:0]mul_ans;
  wire mul_ans__0;
  wire [31:0]mul_ans__0_0;
  wire mul_ans__0_i_16_n_4;
  wire mul_ans__0_i_16_n_5;
  wire mul_ans__0_i_16_n_6;
  wire mul_ans__0_i_16_n_7;
  wire mul_ans__0_i_17_n_4;
  wire mul_ans__0_i_17_n_5;
  wire mul_ans__0_i_17_n_6;
  wire mul_ans__0_i_17_n_7;
  wire mul_ans__0_i_18_n_4;
  wire mul_ans__0_i_18_n_5;
  wire mul_ans__0_i_18_n_6;
  wire mul_ans__0_i_18_n_7;
  wire mul_ans__0_i_19_n_4;
  wire mul_ans__0_i_20_n_4;
  wire mul_ans__0_i_21_n_4;
  wire mul_ans__0_i_22_n_4;
  wire mul_ans__0_i_23_n_4;
  wire mul_ans__0_i_24_n_4;
  wire mul_ans__0_i_25_n_4;
  wire mul_ans__0_i_26_n_4;
  wire mul_ans__0_i_27_n_4;
  wire mul_ans__0_i_28_n_4;
  wire mul_ans__0_i_29_n_4;
  wire mul_ans__0_i_30_n_4;
  wire mul_ans__1;
  wire mul_ans__1_0;
  wire mul_ans__1_1;
  wire mul_ans__1_10;
  wire mul_ans__1_11;
  wire [0:0]mul_ans__1_12;
  wire mul_ans__1_2;
  wire mul_ans__1_3;
  wire mul_ans__1_4;
  wire mul_ans__1_5;
  wire mul_ans__1_6;
  wire mul_ans__1_7;
  wire mul_ans__1_8;
  wire mul_ans__1_9;
  wire mul_ans__1_i_17_n_4;
  wire mul_ans__1_i_17_n_5;
  wire mul_ans__1_i_17_n_6;
  wire mul_ans__1_i_17_n_7;
  wire mul_ans__1_i_18_n_4;
  wire mul_ans__1_i_18_n_5;
  wire mul_ans__1_i_18_n_6;
  wire mul_ans__1_i_18_n_7;
  wire mul_ans__1_i_19_n_4;
  wire mul_ans__1_i_19_n_5;
  wire mul_ans__1_i_19_n_6;
  wire mul_ans__1_i_19_n_7;
  wire mul_ans__1_i_20_n_4;
  wire mul_ans__1_i_20_n_5;
  wire mul_ans__1_i_20_n_6;
  wire mul_ans__1_i_20_n_7;
  wire mul_ans__1_i_21_n_4;
  wire mul_ans__1_i_22_n_4;
  wire mul_ans__1_i_23_n_4;
  wire mul_ans__1_i_24_n_4;
  wire mul_ans__1_i_25_n_4;
  wire mul_ans__1_i_26_n_4;
  wire mul_ans__1_i_27_n_4;
  wire mul_ans__1_i_28_n_4;
  wire mul_ans__1_i_29_n_4;
  wire mul_ans__1_i_30_n_4;
  wire mul_ans__1_i_31_n_4;
  wire mul_ans__1_i_32_n_4;
  wire mul_ans__1_i_33_n_4;
  wire mul_ans__1_i_34_n_4;
  wire mul_ans__1_i_35_n_4;
  wire mul_ans__1_i_36_n_4;
  wire mul_ans__1_i_37_n_4;
  wire mul_ans__2;
  wire mul_ans__2_0;
  wire mul_ans__2_1;
  wire mul_ans__2_10;
  wire mul_ans__2_11;
  wire mul_ans__2_12;
  wire mul_ans__2_13;
  wire mul_ans__2_14;
  wire mul_ans__2_15;
  wire mul_ans__2_16;
  wire mul_ans__2_17;
  wire mul_ans__2_18;
  wire mul_ans__2_19;
  wire mul_ans__2_2;
  wire mul_ans__2_20;
  wire mul_ans__2_21;
  wire mul_ans__2_22;
  wire mul_ans__2_23;
  wire mul_ans__2_24;
  wire mul_ans__2_25;
  wire mul_ans__2_26;
  wire mul_ans__2_27;
  wire mul_ans__2_28;
  wire mul_ans__2_29;
  wire mul_ans__2_3;
  wire mul_ans__2_30;
  wire mul_ans__2_31;
  wire mul_ans__2_32;
  wire mul_ans__2_33;
  wire mul_ans__2_34;
  wire mul_ans__2_35;
  wire mul_ans__2_36;
  wire mul_ans__2_37;
  wire mul_ans__2_38;
  wire mul_ans__2_39;
  wire mul_ans__2_4;
  wire mul_ans__2_40;
  wire mul_ans__2_41;
  wire mul_ans__2_42;
  wire mul_ans__2_43;
  wire mul_ans__2_44;
  wire mul_ans__2_45;
  wire mul_ans__2_46;
  wire mul_ans__2_5;
  wire mul_ans__2_6;
  wire mul_ans__2_7;
  wire mul_ans__2_8;
  wire mul_ans__2_9;
  wire mul_ans_i_33_n_6;
  wire mul_ans_i_33_n_7;
  wire mul_ans_i_34_n_4;
  wire mul_ans_i_34_n_5;
  wire mul_ans_i_34_n_6;
  wire mul_ans_i_34_n_7;
  wire mul_ans_i_35_n_4;
  wire mul_ans_i_35_n_5;
  wire mul_ans_i_35_n_6;
  wire mul_ans_i_35_n_7;
  wire mul_ans_i_36_n_4;
  wire mul_ans_i_36_n_5;
  wire mul_ans_i_36_n_6;
  wire mul_ans_i_36_n_7;
  wire mul_ans_i_37_n_4;
  wire mul_ans_i_37_n_5;
  wire mul_ans_i_37_n_6;
  wire mul_ans_i_37_n_7;
  wire mul_ans_i_38_n_4;
  wire mul_ans_i_38_n_5;
  wire mul_ans_i_38_n_6;
  wire mul_ans_i_38_n_7;
  wire mul_ans_i_39_n_4;
  wire mul_ans_i_39_n_5;
  wire mul_ans_i_39_n_6;
  wire mul_ans_i_39_n_7;
  wire mul_ans_i_40_n_4;
  wire mul_ans_i_40_n_5;
  wire mul_ans_i_40_n_6;
  wire mul_ans_i_40_n_7;
  wire mul_ans_i_41_n_4;
  wire mul_ans_i_42_n_4;
  wire mul_ans_i_43_n_4;
  wire mul_ans_i_44_n_4;
  wire mul_ans_i_45_n_4;
  wire mul_ans_i_46_n_4;
  wire mul_ans_i_47_n_4;
  wire mul_ans_i_48_n_4;
  wire mul_ans_i_49_n_4;
  wire mul_ans_i_50_n_4;
  wire mul_ans_i_51_n_4;
  wire mul_ans_i_52_n_4;
  wire mul_ans_i_53_n_4;
  wire mul_ans_i_54_n_4;
  wire mul_ans_i_55_n_4;
  wire mul_ans_i_56_n_4;
  wire mul_ans_i_57_n_4;
  wire mul_ans_i_58_n_4;
  wire mul_ans_i_59_n_4;
  wire mul_ans_i_60_n_4;
  wire mul_ans_i_61_n_4;
  wire mul_ans_i_62_n_4;
  wire mul_ans_i_63_n_4;
  wire mul_ans_i_64_n_4;
  wire mul_ans_i_65_n_4;
  wire mul_ans_i_66_n_4;
  wire mul_ans_i_67_n_4;
  wire mul_ans_i_68_n_4;
  wire mul_ans_i_69_n_4;
  wire mul_ans_i_70_n_4;
  wire mul_ans_i_71_n_4;
  wire mul_ans_i_72_n_4;
  wire [30:0]mul_op1;
  wire [30:0]mul_op2;
  wire n_0_468_BUFG_inst_n_1;
  wire n_1_934_BUFG_inst_n_2;
  wire n_2_498_BUFG_inst_i_2_n_4;
  wire n_2_498_BUFG_inst_n_3;
  wire n_3_499_BUFG_inst_n_4;
  wire ovassert0;
  wire ovassert_reg_i_10_n_4;
  wire ovassert_reg_i_11_n_4;
  wire ovassert_reg_i_12_n_4;
  wire ovassert_reg_i_13_n_4;
  wire ovassert_reg_i_14_n_4;
  wire ovassert_reg_i_2_n_5;
  wire ovassert_reg_i_2_n_6;
  wire ovassert_reg_i_2_n_7;
  wire ovassert_reg_i_3_n_6;
  wire ovassert_reg_i_3_n_7;
  wire ovassert_reg_i_4_n_4;
  wire ovassert_reg_i_5_n_4;
  wire ovassert_reg_i_6_n_4;
  wire ovassert_reg_i_7_n_4;
  wire ovassert_reg_i_8_n_4;
  wire ovassert_reg_i_9_n_4;
  wire \pc_reg[31] ;
  wire \pc_reg[31]_0 ;
  wire [17:0]reg1_data;
  wire reg1_read;
  wire [63:0]\result_o_reg[63] ;
  wire rst_IBUF;
  wire \state_reg[0] ;
  wire \wb_cp0_reg_data_reg[10] ;
  wire \wb_cp0_reg_data_reg[18] ;
  wire \wb_cp0_reg_data_reg[21] ;
  wire \wb_cp0_reg_data_reg[27] ;
  wire \wb_cp0_reg_data_reg[28] ;
  wire \wb_cp0_reg_data_reg[29] ;
  wire \wb_cp0_reg_data_reg[30] ;
  wire \wb_lo_reg[0] ;
  wire \wb_lo_reg[11] ;
  wire \wb_lo_reg[12] ;
  wire \wb_lo_reg[13] ;
  wire \wb_lo_reg[14] ;
  wire \wb_lo_reg[15] ;
  wire \wb_lo_reg[16] ;
  wire \wb_lo_reg[17] ;
  wire \wb_lo_reg[18] ;
  wire \wb_lo_reg[19] ;
  wire \wb_lo_reg[1] ;
  wire \wb_lo_reg[20] ;
  wire \wb_lo_reg[21] ;
  wire \wb_lo_reg[22] ;
  wire \wb_lo_reg[24] ;
  wire \wb_lo_reg[25] ;
  wire \wb_lo_reg[26] ;
  wire \wb_lo_reg[2] ;
  wire \wb_lo_reg[31] ;
  wire \wb_lo_reg[3] ;
  wire \wb_lo_reg[4] ;
  wire \wb_lo_reg[5] ;
  wire \wb_lo_reg[6] ;
  wire \wb_lo_reg[7] ;
  wire \wb_lo_reg[8] ;
  wire \wb_lo_reg[9] ;
  wire \wdata_o_reg[0]_i_11_n_4 ;
  wire \wdata_o_reg[0]_i_12_n_4 ;
  wire \wdata_o_reg[0]_i_13_n_4 ;
  wire \wdata_o_reg[0]_i_2_n_4 ;
  wire \wdata_o_reg[0]_i_3_n_4 ;
  wire \wdata_o_reg[0]_i_4_n_4 ;
  wire \wdata_o_reg[0]_i_5_n_4 ;
  wire \wdata_o_reg[0]_i_6_n_4 ;
  wire \wdata_o_reg[0]_i_7_n_4 ;
  wire \wdata_o_reg[10]_i_10_n_4 ;
  wire \wdata_o_reg[10]_i_11_n_4 ;
  wire \wdata_o_reg[10]_i_2_n_4 ;
  wire \wdata_o_reg[10]_i_3_n_4 ;
  wire \wdata_o_reg[10]_i_4_n_4 ;
  wire \wdata_o_reg[10]_i_5_n_4 ;
  wire \wdata_o_reg[10]_i_6_n_4 ;
  wire \wdata_o_reg[10]_i_9_n_4 ;
  wire \wdata_o_reg[11]_i_10_n_4 ;
  wire \wdata_o_reg[11]_i_11_n_4 ;
  wire \wdata_o_reg[11]_i_12_n_4 ;
  wire \wdata_o_reg[11]_i_13_n_4 ;
  wire \wdata_o_reg[11]_i_14_n_4 ;
  wire \wdata_o_reg[11]_i_15_n_4 ;
  wire \wdata_o_reg[11]_i_16_n_4 ;
  wire \wdata_o_reg[11]_i_17_n_4 ;
  wire \wdata_o_reg[11]_i_18_n_4 ;
  wire \wdata_o_reg[11]_i_22_n_4 ;
  wire \wdata_o_reg[11]_i_23_n_4 ;
  wire \wdata_o_reg[11]_i_24_n_4 ;
  wire \wdata_o_reg[11]_i_25_n_4 ;
  wire \wdata_o_reg[11]_i_2_n_4 ;
  wire \wdata_o_reg[11]_i_3_n_4 ;
  wire \wdata_o_reg[11]_i_4_n_4 ;
  wire \wdata_o_reg[11]_i_5_n_4 ;
  wire \wdata_o_reg[11]_i_6_n_4 ;
  wire \wdata_o_reg[11]_i_6_n_5 ;
  wire \wdata_o_reg[11]_i_6_n_6 ;
  wire \wdata_o_reg[11]_i_6_n_7 ;
  wire \wdata_o_reg[11]_i_7_n_4 ;
  wire \wdata_o_reg[11]_i_8_n_4 ;
  wire \wdata_o_reg[11]_i_9_n_4 ;
  wire \wdata_o_reg[12]_i_2_n_4 ;
  wire \wdata_o_reg[12]_i_3_n_4 ;
  wire \wdata_o_reg[12]_i_4_n_4 ;
  wire \wdata_o_reg[12]_i_5_n_4 ;
  wire \wdata_o_reg[12]_i_6_n_4 ;
  wire \wdata_o_reg[12]_i_7_n_4 ;
  wire \wdata_o_reg[12]_i_8_n_4 ;
  wire \wdata_o_reg[12]_i_9_n_4 ;
  wire \wdata_o_reg[13]_i_10_n_4 ;
  wire \wdata_o_reg[13]_i_11_n_4 ;
  wire \wdata_o_reg[13]_i_12_n_4 ;
  wire \wdata_o_reg[13]_i_13_n_4 ;
  wire \wdata_o_reg[13]_i_17_n_4 ;
  wire \wdata_o_reg[13]_i_18_n_4 ;
  wire \wdata_o_reg[13]_i_19_n_4 ;
  wire \wdata_o_reg[13]_i_20_n_4 ;
  wire \wdata_o_reg[13]_i_2_n_4 ;
  wire \wdata_o_reg[13]_i_3_n_4 ;
  wire \wdata_o_reg[13]_i_4_n_4 ;
  wire \wdata_o_reg[13]_i_5_n_4 ;
  wire \wdata_o_reg[13]_i_6_n_4 ;
  wire \wdata_o_reg[13]_i_7_n_4 ;
  wire \wdata_o_reg[13]_i_8_n_4 ;
  wire \wdata_o_reg[13]_i_9_n_4 ;
  wire \wdata_o_reg[14]_i_2_n_4 ;
  wire \wdata_o_reg[14]_i_3_n_4 ;
  wire \wdata_o_reg[14]_i_4_n_4 ;
  wire \wdata_o_reg[14]_i_5_n_4 ;
  wire \wdata_o_reg[14]_i_6_n_4 ;
  wire \wdata_o_reg[14]_i_7_n_4 ;
  wire \wdata_o_reg[14]_i_8_n_4 ;
  wire \wdata_o_reg[14]_i_9_n_4 ;
  wire \wdata_o_reg[15]_i_10_n_4 ;
  wire \wdata_o_reg[15]_i_10_n_5 ;
  wire \wdata_o_reg[15]_i_10_n_6 ;
  wire \wdata_o_reg[15]_i_10_n_7 ;
  wire \wdata_o_reg[15]_i_11_n_4 ;
  wire \wdata_o_reg[15]_i_12_n_4 ;
  wire \wdata_o_reg[15]_i_13_n_4 ;
  wire \wdata_o_reg[15]_i_14_n_4 ;
  wire \wdata_o_reg[15]_i_18_n_4 ;
  wire \wdata_o_reg[15]_i_19_n_4 ;
  wire \wdata_o_reg[15]_i_20_n_4 ;
  wire \wdata_o_reg[15]_i_21_n_4 ;
  wire \wdata_o_reg[15]_i_22_n_4 ;
  wire \wdata_o_reg[15]_i_23_n_4 ;
  wire \wdata_o_reg[15]_i_24_n_4 ;
  wire \wdata_o_reg[15]_i_25_n_4 ;
  wire \wdata_o_reg[15]_i_26_n_4 ;
  wire \wdata_o_reg[15]_i_27_n_4 ;
  wire \wdata_o_reg[15]_i_2_n_4 ;
  wire \wdata_o_reg[15]_i_3_n_4 ;
  wire \wdata_o_reg[15]_i_4_n_4 ;
  wire \wdata_o_reg[15]_i_5_n_4 ;
  wire \wdata_o_reg[15]_i_6_n_4 ;
  wire \wdata_o_reg[15]_i_7_n_4 ;
  wire \wdata_o_reg[15]_i_8_n_4 ;
  wire \wdata_o_reg[15]_i_9_n_4 ;
  wire \wdata_o_reg[16]_i_2_n_4 ;
  wire \wdata_o_reg[16]_i_3_n_4 ;
  wire \wdata_o_reg[16]_i_4_n_4 ;
  wire \wdata_o_reg[16]_i_5_n_4 ;
  wire \wdata_o_reg[16]_i_6_n_4 ;
  wire \wdata_o_reg[16]_i_7_n_4 ;
  wire \wdata_o_reg[16]_i_8_n_4 ;
  wire \wdata_o_reg[17]_i_10_n_4 ;
  wire \wdata_o_reg[17]_i_11_n_4 ;
  wire \wdata_o_reg[17]_i_12_n_4 ;
  wire \wdata_o_reg[17]_i_13_n_4 ;
  wire \wdata_o_reg[17]_i_17_n_4 ;
  wire \wdata_o_reg[17]_i_18_n_4 ;
  wire \wdata_o_reg[17]_i_19_n_4 ;
  wire \wdata_o_reg[17]_i_20_n_4 ;
  wire \wdata_o_reg[17]_i_21_n_4 ;
  wire \wdata_o_reg[17]_i_22_n_4 ;
  wire \wdata_o_reg[17]_i_2_n_4 ;
  wire \wdata_o_reg[17]_i_3_n_4 ;
  wire \wdata_o_reg[17]_i_4_n_4 ;
  wire \wdata_o_reg[17]_i_5_n_4 ;
  wire \wdata_o_reg[17]_i_6_n_4 ;
  wire \wdata_o_reg[17]_i_7_n_4 ;
  wire \wdata_o_reg[17]_i_8_n_4 ;
  wire \wdata_o_reg[17]_i_9_n_4 ;
  wire \wdata_o_reg[18]_i_12_n_4 ;
  wire \wdata_o_reg[18]_i_2_n_4 ;
  wire \wdata_o_reg[18]_i_3_n_4 ;
  wire \wdata_o_reg[18]_i_4_n_4 ;
  wire \wdata_o_reg[18]_i_5_n_4 ;
  wire \wdata_o_reg[18]_i_6_n_4 ;
  wire \wdata_o_reg[18]_i_7_n_4 ;
  wire \wdata_o_reg[18]_i_8_n_4 ;
  wire \wdata_o_reg[18]_i_9_n_4 ;
  wire \wdata_o_reg[19]_i_10_n_4 ;
  wire \wdata_o_reg[19]_i_11_n_4 ;
  wire \wdata_o_reg[19]_i_12_n_4 ;
  wire \wdata_o_reg[19]_i_13_n_4 ;
  wire \wdata_o_reg[19]_i_14_n_4 ;
  wire \wdata_o_reg[19]_i_15_n_4 ;
  wire \wdata_o_reg[19]_i_16_n_4 ;
  wire \wdata_o_reg[19]_i_17_n_4 ;
  wire \wdata_o_reg[19]_i_18_n_4 ;
  wire \wdata_o_reg[19]_i_19_n_4 ;
  wire \wdata_o_reg[19]_i_20_n_4 ;
  wire \wdata_o_reg[19]_i_24_n_4 ;
  wire \wdata_o_reg[19]_i_25_n_4 ;
  wire \wdata_o_reg[19]_i_26_n_4 ;
  wire \wdata_o_reg[19]_i_27_n_4 ;
  wire \wdata_o_reg[19]_i_28_n_4 ;
  wire \wdata_o_reg[19]_i_2_n_4 ;
  wire \wdata_o_reg[19]_i_3_n_4 ;
  wire \wdata_o_reg[19]_i_4_n_4 ;
  wire \wdata_o_reg[19]_i_5_n_4 ;
  wire \wdata_o_reg[19]_i_6_n_4 ;
  wire \wdata_o_reg[19]_i_6_n_5 ;
  wire \wdata_o_reg[19]_i_6_n_6 ;
  wire \wdata_o_reg[19]_i_6_n_7 ;
  wire \wdata_o_reg[19]_i_7_n_4 ;
  wire \wdata_o_reg[19]_i_8_n_4 ;
  wire \wdata_o_reg[19]_i_9_n_4 ;
  wire \wdata_o_reg[1]_i_10_n_4 ;
  wire \wdata_o_reg[1]_i_11_n_4 ;
  wire \wdata_o_reg[1]_i_12_n_4 ;
  wire \wdata_o_reg[1]_i_13_n_4 ;
  wire \wdata_o_reg[1]_i_14_n_4 ;
  wire \wdata_o_reg[1]_i_18_n_4 ;
  wire \wdata_o_reg[1]_i_19_n_4 ;
  wire \wdata_o_reg[1]_i_2_n_4 ;
  wire \wdata_o_reg[1]_i_3_n_4 ;
  wire \wdata_o_reg[1]_i_4_n_4 ;
  wire \wdata_o_reg[1]_i_5_n_4 ;
  wire \wdata_o_reg[1]_i_6_n_4 ;
  wire \wdata_o_reg[1]_i_7_n_4 ;
  wire \wdata_o_reg[1]_i_8_n_4 ;
  wire \wdata_o_reg[1]_i_9_n_4 ;
  wire \wdata_o_reg[20]_i_2_n_4 ;
  wire \wdata_o_reg[20]_i_3_n_4 ;
  wire \wdata_o_reg[20]_i_4_n_4 ;
  wire \wdata_o_reg[20]_i_5_n_4 ;
  wire \wdata_o_reg[20]_i_6_n_4 ;
  wire \wdata_o_reg[20]_i_7_n_4 ;
  wire \wdata_o_reg[20]_i_8_n_4 ;
  wire \wdata_o_reg[20]_i_9_n_4 ;
  wire \wdata_o_reg[21]_i_10_n_4 ;
  wire \wdata_o_reg[21]_i_11_n_4 ;
  wire \wdata_o_reg[21]_i_12_n_4 ;
  wire \wdata_o_reg[21]_i_14_n_4 ;
  wire \wdata_o_reg[21]_i_15_n_4 ;
  wire \wdata_o_reg[21]_i_16_n_4 ;
  wire \wdata_o_reg[21]_i_17_n_4 ;
  wire \wdata_o_reg[21]_i_18_n_4 ;
  wire \wdata_o_reg[21]_i_19_n_4 ;
  wire \wdata_o_reg[21]_i_2_n_4 ;
  wire \wdata_o_reg[21]_i_3_n_4 ;
  wire \wdata_o_reg[21]_i_4_n_4 ;
  wire \wdata_o_reg[21]_i_5_n_4 ;
  wire \wdata_o_reg[21]_i_6_n_4 ;
  wire \wdata_o_reg[21]_i_9_n_4 ;
  wire \wdata_o_reg[22]_i_2_n_4 ;
  wire \wdata_o_reg[22]_i_3_n_4 ;
  wire \wdata_o_reg[22]_i_4_n_4 ;
  wire \wdata_o_reg[22]_i_5_n_4 ;
  wire \wdata_o_reg[22]_i_6_n_4 ;
  wire \wdata_o_reg[22]_i_7_n_4 ;
  wire \wdata_o_reg[22]_i_8_n_4 ;
  wire \wdata_o_reg[22]_i_9_n_4 ;
  wire \wdata_o_reg[23]_i_10_n_4 ;
  wire \wdata_o_reg[23]_i_11_n_4 ;
  wire \wdata_o_reg[23]_i_12_n_4 ;
  wire \wdata_o_reg[23]_i_13_n_4 ;
  wire \wdata_o_reg[23]_i_14_n_4 ;
  wire \wdata_o_reg[23]_i_18_n_4 ;
  wire \wdata_o_reg[23]_i_2_n_4 ;
  wire \wdata_o_reg[23]_i_3_n_4 ;
  wire \wdata_o_reg[23]_i_4_n_4 ;
  wire \wdata_o_reg[23]_i_5_n_4 ;
  wire \wdata_o_reg[23]_i_5_n_5 ;
  wire \wdata_o_reg[23]_i_5_n_6 ;
  wire \wdata_o_reg[23]_i_5_n_7 ;
  wire \wdata_o_reg[23]_i_6_n_4 ;
  wire \wdata_o_reg[23]_i_8_n_4 ;
  wire \wdata_o_reg[23]_i_9_n_4 ;
  wire \wdata_o_reg[24]_i_13_n_4 ;
  wire \wdata_o_reg[24]_i_2_n_4 ;
  wire \wdata_o_reg[24]_i_3_n_4 ;
  wire \wdata_o_reg[24]_i_4_n_4 ;
  wire \wdata_o_reg[24]_i_5_n_4 ;
  wire \wdata_o_reg[24]_i_6_n_4 ;
  wire \wdata_o_reg[24]_i_7_n_4 ;
  wire \wdata_o_reg[24]_i_8_n_4 ;
  wire \wdata_o_reg[24]_i_9_n_4 ;
  wire \wdata_o_reg[25]_i_13_n_4 ;
  wire \wdata_o_reg[25]_i_14_n_4 ;
  wire \wdata_o_reg[25]_i_15_n_4 ;
  wire \wdata_o_reg[25]_i_16_n_4 ;
  wire \wdata_o_reg[25]_i_17_n_4 ;
  wire \wdata_o_reg[25]_i_18_n_4 ;
  wire \wdata_o_reg[25]_i_2_n_4 ;
  wire \wdata_o_reg[25]_i_3_n_4 ;
  wire \wdata_o_reg[25]_i_4_n_4 ;
  wire \wdata_o_reg[25]_i_5_n_4 ;
  wire \wdata_o_reg[25]_i_6_n_4 ;
  wire \wdata_o_reg[25]_i_7_n_4 ;
  wire \wdata_o_reg[25]_i_8_n_4 ;
  wire \wdata_o_reg[25]_i_9_n_4 ;
  wire \wdata_o_reg[26]_i_10_n_4 ;
  wire \wdata_o_reg[26]_i_11_n_4 ;
  wire \wdata_o_reg[26]_i_12_n_4 ;
  wire \wdata_o_reg[26]_i_13_n_4 ;
  wire \wdata_o_reg[26]_i_18_n_4 ;
  wire \wdata_o_reg[26]_i_19_n_4 ;
  wire \wdata_o_reg[26]_i_20_n_4 ;
  wire \wdata_o_reg[26]_i_21_n_4 ;
  wire \wdata_o_reg[26]_i_22_n_4 ;
  wire \wdata_o_reg[26]_i_23_n_4 ;
  wire \wdata_o_reg[26]_i_24_n_4 ;
  wire \wdata_o_reg[26]_i_25_n_4 ;
  wire \wdata_o_reg[26]_i_26_n_4 ;
  wire \wdata_o_reg[26]_i_2_n_4 ;
  wire \wdata_o_reg[26]_i_3_n_4 ;
  wire \wdata_o_reg[26]_i_4_n_4 ;
  wire \wdata_o_reg[26]_i_5_n_4 ;
  wire \wdata_o_reg[26]_i_6_n_4 ;
  wire \wdata_o_reg[26]_i_7_n_4 ;
  wire \wdata_o_reg[26]_i_8_n_4 ;
  wire \wdata_o_reg[26]_i_9_n_4 ;
  wire \wdata_o_reg[27]_i_10_n_4 ;
  wire \wdata_o_reg[27]_i_11_n_4 ;
  wire \wdata_o_reg[27]_i_12_n_4 ;
  wire \wdata_o_reg[27]_i_13_n_4 ;
  wire \wdata_o_reg[27]_i_15_n_4 ;
  wire \wdata_o_reg[27]_i_16_n_4 ;
  wire \wdata_o_reg[27]_i_17_n_4 ;
  wire \wdata_o_reg[27]_i_18_n_4 ;
  wire \wdata_o_reg[27]_i_19_n_4 ;
  wire \wdata_o_reg[27]_i_2_n_4 ;
  wire \wdata_o_reg[27]_i_3_n_4 ;
  wire \wdata_o_reg[27]_i_4_n_4 ;
  wire \wdata_o_reg[27]_i_5_n_4 ;
  wire \wdata_o_reg[27]_i_5_n_5 ;
  wire \wdata_o_reg[27]_i_5_n_6 ;
  wire \wdata_o_reg[27]_i_5_n_7 ;
  wire \wdata_o_reg[27]_i_8_n_4 ;
  wire \wdata_o_reg[27]_i_9_n_4 ;
  wire \wdata_o_reg[28]_i_10_n_4 ;
  wire \wdata_o_reg[28]_i_11_n_4 ;
  wire \wdata_o_reg[28]_i_12_n_4 ;
  wire \wdata_o_reg[28]_i_2_n_4 ;
  wire \wdata_o_reg[28]_i_3_n_4 ;
  wire \wdata_o_reg[28]_i_4_n_4 ;
  wire \wdata_o_reg[28]_i_7_n_4 ;
  wire \wdata_o_reg[28]_i_8_n_4 ;
  wire \wdata_o_reg[29]_i_10_n_4 ;
  wire \wdata_o_reg[29]_i_11_n_4 ;
  wire \wdata_o_reg[29]_i_12_n_4 ;
  wire \wdata_o_reg[29]_i_13_n_4 ;
  wire \wdata_o_reg[29]_i_14_n_4 ;
  wire \wdata_o_reg[29]_i_2_n_4 ;
  wire \wdata_o_reg[29]_i_3_n_4 ;
  wire \wdata_o_reg[29]_i_4_n_4 ;
  wire \wdata_o_reg[29]_i_7_n_4 ;
  wire \wdata_o_reg[29]_i_8_n_4 ;
  wire \wdata_o_reg[2]_i_2_n_4 ;
  wire \wdata_o_reg[2]_i_3_n_4 ;
  wire \wdata_o_reg[2]_i_4_n_4 ;
  wire \wdata_o_reg[2]_i_5_n_4 ;
  wire \wdata_o_reg[2]_i_6_n_4 ;
  wire \wdata_o_reg[2]_i_7_n_4 ;
  wire \wdata_o_reg[2]_i_8_n_4 ;
  wire \wdata_o_reg[2]_i_9_n_4 ;
  wire \wdata_o_reg[30]_i_10_n_4 ;
  wire \wdata_o_reg[30]_i_11_n_4 ;
  wire \wdata_o_reg[30]_i_12_n_4 ;
  wire \wdata_o_reg[30]_i_13_n_4 ;
  wire \wdata_o_reg[30]_i_14_n_4 ;
  wire \wdata_o_reg[30]_i_19_n_4 ;
  wire \wdata_o_reg[30]_i_20_n_4 ;
  wire \wdata_o_reg[30]_i_21_n_4 ;
  wire \wdata_o_reg[30]_i_2_n_4 ;
  wire \wdata_o_reg[30]_i_3_n_4 ;
  wire \wdata_o_reg[30]_i_4_n_4 ;
  wire \wdata_o_reg[30]_i_5_n_4 ;
  wire \wdata_o_reg[30]_i_6_n_4 ;
  wire \wdata_o_reg[31]_i_10_n_4 ;
  wire \wdata_o_reg[31]_i_11_n_4 ;
  wire \wdata_o_reg[31]_i_12_n_4 ;
  wire \wdata_o_reg[31]_i_13_n_4 ;
  wire \wdata_o_reg[31]_i_14_n_4 ;
  wire \wdata_o_reg[31]_i_15_n_4 ;
  wire \wdata_o_reg[31]_i_16_n_4 ;
  wire \wdata_o_reg[31]_i_17_n_4 ;
  wire \wdata_o_reg[31]_i_18_n_4 ;
  wire \wdata_o_reg[31]_i_19_n_4 ;
  wire \wdata_o_reg[31]_i_20_n_4 ;
  wire \wdata_o_reg[31]_i_21_n_4 ;
  wire \wdata_o_reg[31]_i_22_n_4 ;
  wire \wdata_o_reg[31]_i_26_n_4 ;
  wire \wdata_o_reg[31]_i_27_n_4 ;
  wire \wdata_o_reg[31]_i_2_n_4 ;
  wire \wdata_o_reg[31]_i_3_n_4 ;
  wire \wdata_o_reg[31]_i_4_n_4 ;
  wire \wdata_o_reg[31]_i_5_n_4 ;
  wire \wdata_o_reg[31]_i_6_n_4 ;
  wire \wdata_o_reg[31]_i_7_n_4 ;
  wire \wdata_o_reg[31]_i_8_n_4 ;
  wire \wdata_o_reg[31]_i_9_n_4 ;
  wire \wdata_o_reg[3]_i_10_n_4 ;
  wire \wdata_o_reg[3]_i_10_n_5 ;
  wire \wdata_o_reg[3]_i_10_n_6 ;
  wire \wdata_o_reg[3]_i_10_n_7 ;
  wire \wdata_o_reg[3]_i_11_n_4 ;
  wire \wdata_o_reg[3]_i_12_n_4 ;
  wire \wdata_o_reg[3]_i_13_n_4 ;
  wire \wdata_o_reg[3]_i_14_n_4 ;
  wire \wdata_o_reg[3]_i_15_n_4 ;
  wire \wdata_o_reg[3]_i_19_n_4 ;
  wire \wdata_o_reg[3]_i_20_n_4 ;
  wire \wdata_o_reg[3]_i_21_n_4 ;
  wire \wdata_o_reg[3]_i_22_n_4 ;
  wire \wdata_o_reg[3]_i_23_n_4 ;
  wire \wdata_o_reg[3]_i_24_n_4 ;
  wire \wdata_o_reg[3]_i_25_n_4 ;
  wire \wdata_o_reg[3]_i_26_n_4 ;
  wire \wdata_o_reg[3]_i_27_n_4 ;
  wire \wdata_o_reg[3]_i_28_n_4 ;
  wire \wdata_o_reg[3]_i_2_n_4 ;
  wire \wdata_o_reg[3]_i_3_n_4 ;
  wire \wdata_o_reg[3]_i_4_n_4 ;
  wire \wdata_o_reg[3]_i_5_n_4 ;
  wire \wdata_o_reg[3]_i_6_n_4 ;
  wire \wdata_o_reg[3]_i_7_n_4 ;
  wire \wdata_o_reg[3]_i_8_n_4 ;
  wire \wdata_o_reg[3]_i_9_n_4 ;
  wire \wdata_o_reg[4]_i_2_n_4 ;
  wire \wdata_o_reg[4]_i_3_n_4 ;
  wire \wdata_o_reg[4]_i_4_n_4 ;
  wire \wdata_o_reg[4]_i_5_n_4 ;
  wire \wdata_o_reg[4]_i_6_n_4 ;
  wire \wdata_o_reg[4]_i_7_n_4 ;
  wire \wdata_o_reg[4]_i_8_n_4 ;
  wire \wdata_o_reg[4]_i_9_n_4 ;
  wire \wdata_o_reg[5]_i_13_n_4 ;
  wire \wdata_o_reg[5]_i_14_n_4 ;
  wire \wdata_o_reg[5]_i_2_n_4 ;
  wire \wdata_o_reg[5]_i_3_n_4 ;
  wire \wdata_o_reg[5]_i_4_n_4 ;
  wire \wdata_o_reg[5]_i_5_n_4 ;
  wire \wdata_o_reg[5]_i_6_n_4 ;
  wire \wdata_o_reg[5]_i_7_n_4 ;
  wire \wdata_o_reg[5]_i_8_n_4 ;
  wire \wdata_o_reg[5]_i_9_n_4 ;
  wire \wdata_o_reg[6]_i_10_n_4 ;
  wire \wdata_o_reg[6]_i_11_n_4 ;
  wire \wdata_o_reg[6]_i_12_n_4 ;
  wire \wdata_o_reg[6]_i_13_n_4 ;
  wire \wdata_o_reg[6]_i_14_n_4 ;
  wire \wdata_o_reg[6]_i_18_n_4 ;
  wire \wdata_o_reg[6]_i_19_n_4 ;
  wire \wdata_o_reg[6]_i_2_n_4 ;
  wire \wdata_o_reg[6]_i_3_n_4 ;
  wire \wdata_o_reg[6]_i_4_n_4 ;
  wire \wdata_o_reg[6]_i_5_n_4 ;
  wire \wdata_o_reg[6]_i_5_n_5 ;
  wire \wdata_o_reg[6]_i_5_n_6 ;
  wire \wdata_o_reg[6]_i_5_n_7 ;
  wire \wdata_o_reg[6]_i_6_n_4 ;
  wire \wdata_o_reg[6]_i_7_n_4 ;
  wire \wdata_o_reg[6]_i_8_n_4 ;
  wire \wdata_o_reg[6]_i_9_n_4 ;
  wire \wdata_o_reg[7]_i_10_n_4 ;
  wire \wdata_o_reg[7]_i_14_n_4 ;
  wire \wdata_o_reg[7]_i_15_n_4 ;
  wire \wdata_o_reg[7]_i_16_n_4 ;
  wire \wdata_o_reg[7]_i_2_n_4 ;
  wire \wdata_o_reg[7]_i_3_n_4 ;
  wire \wdata_o_reg[7]_i_4_n_4 ;
  wire \wdata_o_reg[7]_i_5_n_4 ;
  wire \wdata_o_reg[7]_i_6_n_4 ;
  wire \wdata_o_reg[7]_i_7_n_4 ;
  wire \wdata_o_reg[7]_i_8_n_4 ;
  wire \wdata_o_reg[7]_i_9_n_4 ;
  wire \wdata_o_reg[8]_i_13_n_4 ;
  wire \wdata_o_reg[8]_i_14_n_4 ;
  wire \wdata_o_reg[8]_i_15_n_4 ;
  wire \wdata_o_reg[8]_i_2_n_4 ;
  wire \wdata_o_reg[8]_i_3_n_4 ;
  wire \wdata_o_reg[8]_i_4_n_4 ;
  wire \wdata_o_reg[8]_i_5_n_4 ;
  wire \wdata_o_reg[8]_i_6_n_4 ;
  wire \wdata_o_reg[8]_i_7_n_4 ;
  wire \wdata_o_reg[8]_i_8_n_4 ;
  wire \wdata_o_reg[8]_i_9_n_4 ;
  wire \wdata_o_reg[9]_i_10_n_4 ;
  wire \wdata_o_reg[9]_i_11_n_4 ;
  wire \wdata_o_reg[9]_i_12_n_4 ;
  wire \wdata_o_reg[9]_i_13_n_4 ;
  wire \wdata_o_reg[9]_i_17_n_4 ;
  wire \wdata_o_reg[9]_i_18_n_4 ;
  wire \wdata_o_reg[9]_i_19_n_4 ;
  wire \wdata_o_reg[9]_i_20_n_4 ;
  wire \wdata_o_reg[9]_i_2_n_4 ;
  wire \wdata_o_reg[9]_i_3_n_4 ;
  wire \wdata_o_reg[9]_i_4_n_4 ;
  wire \wdata_o_reg[9]_i_5_n_4 ;
  wire \wdata_o_reg[9]_i_6_n_4 ;
  wire \wdata_o_reg[9]_i_7_n_4 ;
  wire \wdata_o_reg[9]_i_8_n_4 ;
  wire \wdata_o_reg[9]_i_9_n_4 ;
  wire [3:0]\NLW_mem_excepttype_reg[10]_i_17_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_excepttype_reg[10]_i_21_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_excepttype_reg[10]_i_30_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_excepttype_reg[10]_i_35_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_excepttype_reg[10]_i_5_O_UNCONNECTED ;
  wire [3:3]\NLW_mem_excepttype_reg[10]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_mem_excepttype_reg[10]_i_7_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_excepttype_reg[10]_i_8_O_UNCONNECTED ;
  wire [3:2]NLW_mul_ans_i_33_CO_UNCONNECTED;
  wire [3:3]NLW_mul_ans_i_33_O_UNCONNECTED;
  wire [3:3]NLW_ovassert_reg_i_2_CO_UNCONNECTED;
  wire [3:2]NLW_ovassert_reg_i_3_CO_UNCONNECTED;
  wire [3:3]NLW_ovassert_reg_i_3_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \cp0_reg_read_addr_o_reg[2]_i_1 
       (.I0(ex_aluop_i[2]),
        .I1(ex_aluop_i[3]),
        .I2(ex_aluop_i[6]),
        .I3(\cp0_reg_read_addr_o_reg[2]_i_2_n_4 ),
        .I4(rst_IBUF),
        .I5(\cp0_reg_read_addr_o_reg[2]_i_3_n_4 ),
        .O(\mem_wdata_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cp0_reg_read_addr_o_reg[2]_i_2 
       (.I0(ex_aluop_i[1]),
        .I1(ex_aluop_i[0]),
        .O(\cp0_reg_read_addr_o_reg[2]_i_2_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cp0_reg_read_addr_o_reg[2]_i_3 
       (.I0(ex_aluop_i[5]),
        .I1(ex_aluop_i[4]),
        .O(\cp0_reg_read_addr_o_reg[2]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    div_start_o_reg_i_1
       (.I0(ex_aluop_i[1]),
        .I1(ex_aluop_i[3]),
        .I2(div_start_o_reg_i_2_n_4),
        .I3(ex_aluop_i[4]),
        .I4(ex_aluop_i[5]),
        .I5(div_ready),
        .O(\state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'hE)) 
    div_start_o_reg_i_2
       (.I0(ex_aluop_i[2]),
        .I1(ex_aluop_i[6]),
        .O(div_start_o_reg_i_2_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \ex_aluop_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[28]_1 [0]),
        .Q(ex_aluop_i[0]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_aluop_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[28]_1 [1]),
        .Q(ex_aluop_i[1]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_aluop_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[28]_1 [2]),
        .Q(ex_aluop_i[2]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_aluop_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[28]_1 [3]),
        .Q(ex_aluop_i[3]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_aluop_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[28]_1 [4]),
        .Q(ex_aluop_i[4]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_aluop_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[28]_1 [5]),
        .Q(ex_aluop_i[5]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_aluop_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[28]_1 [6]),
        .Q(ex_aluop_i[6]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_alusel_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[26] [0]),
        .Q(ex_alusel_i[0]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_alusel_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[26] [1]),
        .Q(ex_alusel_i[1]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_alusel_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[26] [2]),
        .Q(ex_alusel_i[2]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(Q[10]),
        .Q(\mem_current_inst_addr_reg[31] [8]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(Q[11]),
        .Q(\mem_current_inst_addr_reg[31] [9]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(Q[12]),
        .Q(\mem_current_inst_addr_reg[31] [10]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(Q[13]),
        .Q(\mem_current_inst_addr_reg[31] [11]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(Q[14]),
        .Q(\mem_current_inst_addr_reg[31] [12]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(Q[15]),
        .Q(\mem_current_inst_addr_reg[31] [13]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(Q[16]),
        .Q(\mem_current_inst_addr_reg[31] [14]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(Q[17]),
        .Q(\mem_current_inst_addr_reg[31] [15]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(Q[18]),
        .Q(\mem_current_inst_addr_reg[31] [16]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(Q[19]),
        .Q(\mem_current_inst_addr_reg[31] [17]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(Q[20]),
        .Q(\mem_current_inst_addr_reg[31] [18]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(Q[21]),
        .Q(\mem_current_inst_addr_reg[31] [19]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(Q[22]),
        .Q(\mem_current_inst_addr_reg[31] [20]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(Q[23]),
        .Q(\mem_current_inst_addr_reg[31] [21]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(Q[24]),
        .Q(\mem_current_inst_addr_reg[31] [22]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(Q[25]),
        .Q(\mem_current_inst_addr_reg[31] [23]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(Q[26]),
        .Q(\mem_current_inst_addr_reg[31] [24]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(Q[27]),
        .Q(\mem_current_inst_addr_reg[31] [25]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[28] 
       (.C(CLK),
        .CE(E),
        .D(Q[28]),
        .Q(\mem_current_inst_addr_reg[31] [26]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[29] 
       (.C(CLK),
        .CE(E),
        .D(Q[29]),
        .Q(\mem_current_inst_addr_reg[31] [27]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .Q(\mem_current_inst_addr_reg[31] [0]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[30] 
       (.C(CLK),
        .CE(E),
        .D(Q[30]),
        .Q(\mem_current_inst_addr_reg[31] [28]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[31] 
       (.C(CLK),
        .CE(E),
        .D(Q[31]),
        .Q(\mem_current_inst_addr_reg[31] [29]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .Q(\mem_current_inst_addr_reg[31] [1]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .Q(\mem_current_inst_addr_reg[31] [2]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .Q(\mem_current_inst_addr_reg[31] [3]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .Q(\mem_current_inst_addr_reg[31] [4]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Q[7]),
        .Q(\mem_current_inst_addr_reg[31] [5]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(Q[8]),
        .Q(\mem_current_inst_addr_reg[31] [6]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_current_inst_addr_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(Q[9]),
        .Q(\mem_current_inst_addr_reg[31] [7]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_inst_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[22] [3]),
        .Q(\mem_cp0_reg_write_addr_reg[2] [0]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_inst_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[22] [4]),
        .Q(\mem_cp0_reg_write_addr_reg[2] [1]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_inst_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[22] [5]),
        .Q(\mem_cp0_reg_write_addr_reg[2] [2]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(Q[0]),
        .Q(\mem_current_inst_addr_reg[1] [0]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [8]),
        .Q(ex_link_addr_i[10]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [9]),
        .Q(ex_link_addr_i[11]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [10]),
        .Q(ex_link_addr_i[12]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [11]),
        .Q(ex_link_addr_i[13]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [12]),
        .Q(ex_link_addr_i[14]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [13]),
        .Q(ex_link_addr_i[15]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [14]),
        .Q(ex_link_addr_i[16]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [15]),
        .Q(ex_link_addr_i[17]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [16]),
        .Q(ex_link_addr_i[18]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [17]),
        .Q(ex_link_addr_i[19]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .Q(\mem_current_inst_addr_reg[1] [1]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [18]),
        .Q(ex_link_addr_i[20]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [19]),
        .Q(ex_link_addr_i[21]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [20]),
        .Q(ex_link_addr_i[22]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [21]),
        .Q(ex_link_addr_i[23]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [22]),
        .Q(ex_link_addr_i[24]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [23]),
        .Q(ex_link_addr_i[25]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [24]),
        .Q(ex_link_addr_i[26]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [25]),
        .Q(ex_link_addr_i[27]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[28] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [26]),
        .Q(ex_link_addr_i[28]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[29] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [27]),
        .Q(ex_link_addr_i[29]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [0]),
        .Q(ex_link_addr_i[2]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[30] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [28]),
        .Q(ex_link_addr_i[30]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[31] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [29]),
        .Q(ex_link_addr_i[31]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [1]),
        .Q(ex_link_addr_i[3]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [2]),
        .Q(ex_link_addr_i[4]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [3]),
        .Q(ex_link_addr_i[5]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [4]),
        .Q(ex_link_addr_i[6]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [5]),
        .Q(ex_link_addr_i[7]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [6]),
        .Q(ex_link_addr_i[8]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_link_addr_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(\id_pc_reg[31] [7]),
        .Q(ex_link_addr_i[9]),
        .R(\mem_excepttype_reg[11] ));
  LUT6 #(
    .INIT(64'hF400F400F4FFF400)) 
    \ex_reg1[0]_i_1 
       (.I0(\ex_reg1_reg[0]_0 ),
        .I1(\ex_alusel_reg[2]_0 [0]),
        .I2(\ex_reg1[0]_i_2_n_4 ),
        .I3(reg1_read),
        .I4(\id_inst_reg[22] [0]),
        .I5(\id_inst_reg[28]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h44444F44)) 
    \ex_reg1[0]_i_2 
       (.I0(\ex_reg1_reg[6]_0 ),
        .I1(reg1_data[0]),
        .I2(\ex_reg1[31]_i_4_n_4 ),
        .I3(mem_wdata_i[0]),
        .I4(rst_IBUF),
        .O(\ex_reg1[0]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \ex_reg1[10]_i_4 
       (.I0(\ex_reg1[31]_i_4_n_4 ),
        .I1(mem_wdata_i[10]),
        .I2(rst_IBUF),
        .I3(\ex_reg1_reg[0]_0 ),
        .I4(\ex_alusel_reg[2]_0 [9]),
        .O(\ex_reg1_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hF400F400F4FFF400)) 
    \ex_reg1[11]_i_1 
       (.I0(\ex_reg1_reg[0]_0 ),
        .I1(\ex_alusel_reg[2]_0 [10]),
        .I2(\ex_reg1[11]_i_2_n_4 ),
        .I3(reg1_read),
        .I4(\id_inst_reg[22] [3]),
        .I5(\id_inst_reg[28]_0 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h444444F4)) 
    \ex_reg1[11]_i_2 
       (.I0(\ex_reg1_reg[6]_0 ),
        .I1(reg1_data[7]),
        .I2(mem_wdata_i[11]),
        .I3(rst_IBUF),
        .I4(\ex_reg1[31]_i_4_n_4 ),
        .O(\ex_reg1[11]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'hF400F400F4FFF400)) 
    \ex_reg1[12]_i_1 
       (.I0(\ex_reg1_reg[0]_0 ),
        .I1(\ex_alusel_reg[2]_0 [11]),
        .I2(\ex_reg1[12]_i_2_n_4 ),
        .I3(reg1_read),
        .I4(\id_inst_reg[22] [4]),
        .I5(\id_inst_reg[28]_0 ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h44444F44)) 
    \ex_reg1[12]_i_2 
       (.I0(\ex_reg1_reg[6]_0 ),
        .I1(reg1_data[8]),
        .I2(\ex_reg1[31]_i_4_n_4 ),
        .I3(mem_wdata_i[12]),
        .I4(rst_IBUF),
        .O(\ex_reg1[12]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \ex_reg1[13]_i_4 
       (.I0(\ex_reg1[31]_i_4_n_4 ),
        .I1(mem_wdata_i[13]),
        .I2(rst_IBUF),
        .I3(\ex_reg1_reg[0]_0 ),
        .I4(\ex_alusel_reg[2]_0 [12]),
        .O(\ex_reg1_reg[13]_0 ));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \ex_reg1[14]_i_4 
       (.I0(\ex_reg1[31]_i_4_n_4 ),
        .I1(mem_wdata_i[14]),
        .I2(rst_IBUF),
        .I3(\ex_reg1_reg[0]_0 ),
        .I4(\ex_alusel_reg[2]_0 [13]),
        .O(\ex_reg1_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hFF04FFFFFF040000)) 
    \ex_reg1[15]_i_1 
       (.I0(\ex_reg1[31]_i_4_n_4 ),
        .I1(mem_wdata_i[15]),
        .I2(rst_IBUF),
        .I3(\ex_reg1[15]_i_2_n_4 ),
        .I4(reg1_read),
        .I5(\id_inst_reg[18]_0 ),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \ex_reg1[15]_i_2 
       (.I0(\ex_reg1_reg[0]_0 ),
        .I1(\ex_alusel_reg[2]_0 [14]),
        .I2(\ex_reg1_reg[6]_0 ),
        .I3(reg1_data[9]),
        .O(\ex_reg1[15]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    \ex_reg1[16]_i_1 
       (.I0(\ex_reg1_reg[0]_0 ),
        .I1(\ex_alusel_reg[2]_0 [15]),
        .I2(\ex_reg1[16]_i_2_n_4 ),
        .I3(reg1_read),
        .I4(\id_inst_reg[18]_1 ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \ex_reg1[16]_i_2 
       (.I0(\ex_reg1[31]_i_4_n_4 ),
        .I1(mem_wdata_i[16]),
        .I2(rst_IBUF),
        .I3(\ex_reg1_reg[6]_0 ),
        .I4(reg1_data[10]),
        .O(\ex_reg1[16]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    \ex_reg1[17]_i_1 
       (.I0(\ex_reg1_reg[0]_0 ),
        .I1(\ex_alusel_reg[2]_0 [16]),
        .I2(\ex_reg1[17]_i_2_n_4 ),
        .I3(reg1_read),
        .I4(\id_inst_reg[18]_2 ),
        .O(D[9]));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \ex_reg1[17]_i_2 
       (.I0(\ex_reg1[31]_i_4_n_4 ),
        .I1(mem_wdata_i[17]),
        .I2(rst_IBUF),
        .I3(\ex_reg1_reg[6]_0 ),
        .I4(reg1_data[11]),
        .O(\ex_reg1[17]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \ex_reg1[18]_i_4 
       (.I0(\ex_reg1[31]_i_4_n_4 ),
        .I1(mem_wdata_i[18]),
        .I2(rst_IBUF),
        .I3(\ex_reg1_reg[0]_0 ),
        .I4(\ex_alusel_reg[2]_0 [17]),
        .O(\ex_reg1_reg[18]_0 ));
  LUT6 #(
    .INIT(64'h04FF04FFFFFF04FF)) 
    \ex_reg1[19]_i_3 
       (.I0(\ex_reg1[31]_i_4_n_4 ),
        .I1(mem_wdata_i[19]),
        .I2(rst_IBUF),
        .I3(reg1_read),
        .I4(\ex_alusel_reg[2]_0 [18]),
        .I5(\ex_reg1_reg[0]_0 ),
        .O(\ex_reg1_reg[19]_0 ));
  LUT6 #(
    .INIT(64'hF400F400F4FFF400)) 
    \ex_reg1[1]_i_1 
       (.I0(\ex_reg1_reg[0]_0 ),
        .I1(\ex_alusel_reg[2]_0 [1]),
        .I2(\ex_reg1[1]_i_2_n_4 ),
        .I3(reg1_read),
        .I4(\id_inst_reg[22] [1]),
        .I5(\id_inst_reg[28]_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h0404FF04)) 
    \ex_reg1[1]_i_2 
       (.I0(\ex_reg1[31]_i_4_n_4 ),
        .I1(mem_wdata_i[1]),
        .I2(rst_IBUF),
        .I3(reg1_data[1]),
        .I4(\ex_reg1_reg[6]_0 ),
        .O(\ex_reg1[1]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'hFF040000FF04FFFF)) 
    \ex_reg1[20]_i_1 
       (.I0(\ex_reg1[31]_i_4_n_4 ),
        .I1(mem_wdata_i[20]),
        .I2(rst_IBUF),
        .I3(\ex_reg1[20]_i_2_n_4 ),
        .I4(reg1_read),
        .I5(\id_inst_reg[18]_3 ),
        .O(D[10]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \ex_reg1[20]_i_2 
       (.I0(\ex_reg1_reg[0]_0 ),
        .I1(\ex_alusel_reg[2]_0 [19]),
        .I2(\ex_reg1_reg[6]_0 ),
        .I3(reg1_data[12]),
        .O(\ex_reg1[20]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'h44444F44)) 
    \ex_reg1[21]_i_3 
       (.I0(\ex_reg1_reg[0]_0 ),
        .I1(\ex_alusel_reg[2]_0 [20]),
        .I2(\ex_reg1[31]_i_4_n_4 ),
        .I3(mem_wdata_i[21]),
        .I4(rst_IBUF),
        .O(\ex_reg1_reg[21]_0 ));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \ex_reg1[22]_i_3 
       (.I0(\ex_reg1[31]_i_4_n_4 ),
        .I1(mem_wdata_i[22]),
        .I2(rst_IBUF),
        .I3(\ex_reg1_reg[0]_0 ),
        .I4(\ex_alusel_reg[2]_0 [21]),
        .O(\ex_reg1_reg[22]_0 ));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \ex_reg1[23]_i_4 
       (.I0(\ex_reg1[31]_i_4_n_4 ),
        .I1(mem_wdata_i[23]),
        .I2(rst_IBUF),
        .I3(\ex_reg1_reg[0]_0 ),
        .I4(\ex_alusel_reg[2]_0 [22]),
        .O(\ex_reg1_reg[23]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ex_reg1[24]_i_1 
       (.I0(\ex_reg1_reg[24]_0 ),
        .O(\ex_reg1[24]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'h545554555455FFFF)) 
    \ex_reg1[24]_i_2 
       (.I0(\ex_reg1[24]_i_3_n_4 ),
        .I1(\ex_reg1[31]_i_4_n_4 ),
        .I2(rst_IBUF),
        .I3(mem_wdata_i[24]),
        .I4(\id_inst_reg[18]_4 ),
        .I5(reg1_read),
        .O(\ex_reg1_reg[24]_0 ));
  LUT5 #(
    .INIT(32'h4F4FFF4F)) 
    \ex_reg1[24]_i_3 
       (.I0(\ex_reg1_reg[6]_0 ),
        .I1(reg1_data[13]),
        .I2(reg1_read),
        .I3(\ex_alusel_reg[2]_0 [23]),
        .I4(\ex_reg1_reg[0]_0 ),
        .O(\ex_reg1[24]_i_3_n_4 ));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \ex_reg1[25]_i_4 
       (.I0(\ex_reg1[31]_i_4_n_4 ),
        .I1(mem_wdata_i[25]),
        .I2(rst_IBUF),
        .I3(\ex_reg1_reg[0]_0 ),
        .I4(\ex_alusel_reg[2]_0 [24]),
        .O(\ex_reg1_reg[25]_0 ));
  LUT5 #(
    .INIT(32'h44444F44)) 
    \ex_reg1[26]_i_3 
       (.I0(\ex_reg1_reg[0]_0 ),
        .I1(\ex_alusel_reg[2]_0 [25]),
        .I2(\ex_reg1[31]_i_4_n_4 ),
        .I3(mem_wdata_i[26]),
        .I4(rst_IBUF),
        .O(\ex_reg1_reg[26]_0 ));
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    \ex_reg1[27]_i_1 
       (.I0(\ex_reg1_reg[0]_0 ),
        .I1(\ex_alusel_reg[2]_0 [26]),
        .I2(\ex_reg1[27]_i_3_n_4 ),
        .I3(reg1_read),
        .I4(\id_inst_reg[18]_5 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \ex_reg1[27]_i_2 
       (.I0(rst_IBUF),
        .I1(ex_wreg_i),
        .I2(ovassert0),
        .I3(\mem_wd_reg[4] [3]),
        .I4(\ex_reg1[31]_i_8_n_4 ),
        .I5(\id_inst_reg[21] ),
        .O(\ex_reg1_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h44444F44)) 
    \ex_reg1[27]_i_3 
       (.I0(\ex_reg1_reg[6]_0 ),
        .I1(reg1_data[14]),
        .I2(\ex_reg1[31]_i_4_n_4 ),
        .I3(mem_wdata_i[27]),
        .I4(rst_IBUF),
        .O(\ex_reg1[27]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h04FF04FFFFFF04FF)) 
    \ex_reg1[28]_i_3 
       (.I0(\ex_reg1[31]_i_4_n_4 ),
        .I1(mem_wdata_i[28]),
        .I2(rst_IBUF),
        .I3(reg1_read),
        .I4(\ex_alusel_reg[2]_0 [27]),
        .I5(\ex_reg1_reg[0]_0 ),
        .O(\ex_reg1_reg[28]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ex_reg1[29]_i_1 
       (.I0(\ex_reg1_reg[29]_0 ),
        .O(\ex_reg1[29]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'h00FDFFFF00FD0000)) 
    \ex_reg1[29]_i_2 
       (.I0(mem_wdata_i[29]),
        .I1(rst_IBUF),
        .I2(\ex_reg1[31]_i_4_n_4 ),
        .I3(\ex_reg1[29]_i_3_n_4 ),
        .I4(reg1_read),
        .I5(\id_inst_reg[28] ),
        .O(\ex_reg1_reg[29]_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \ex_reg1[29]_i_3 
       (.I0(\ex_reg1_reg[0]_0 ),
        .I1(\ex_alusel_reg[2]_0 [28]),
        .I2(\ex_reg1_reg[6]_0 ),
        .I3(reg1_data[15]),
        .O(\ex_reg1[29]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h04FF04FFFFFF04FF)) 
    \ex_reg1[2]_i_3 
       (.I0(\ex_reg1[31]_i_4_n_4 ),
        .I1(mem_wdata_i[2]),
        .I2(rst_IBUF),
        .I3(reg1_read),
        .I4(\ex_alusel_reg[2]_0 [2]),
        .I5(\ex_reg1_reg[0]_0 ),
        .O(\ex_reg1_reg[2]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ex_reg1[30]_i_1 
       (.I0(\ex_reg1_reg[30]_0 ),
        .O(\ex_reg1[30]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'h00FDFFFF00FD0000)) 
    \ex_reg1[30]_i_2 
       (.I0(mem_wdata_i[30]),
        .I1(rst_IBUF),
        .I2(\ex_reg1[31]_i_4_n_4 ),
        .I3(\ex_reg1[30]_i_3_n_4 ),
        .I4(reg1_read),
        .I5(\id_inst_reg[28] ),
        .O(\ex_reg1_reg[30]_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \ex_reg1[30]_i_3 
       (.I0(\ex_reg1_reg[0]_0 ),
        .I1(\ex_alusel_reg[2]_0 [29]),
        .I2(\ex_reg1_reg[6]_0 ),
        .I3(reg1_data[16]),
        .O(\ex_reg1[30]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h0000D1DD0000D1D1)) 
    \ex_reg1[31]_i_1 
       (.I0(\id_inst_reg[28] ),
        .I1(reg1_read),
        .I2(\ex_reg1[31]_i_3_n_4 ),
        .I3(\ex_reg1[31]_i_4_n_4 ),
        .I4(rst_IBUF),
        .I5(mem_wdata_i[31]),
        .O(id_reg1_o));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[31]_i_10 
       (.I0(ex_wreg_i),
        .I1(rst_IBUF),
        .O(\ex_reg1[31]_i_10_n_4 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \ex_reg1[31]_i_3 
       (.I0(\ex_reg1_reg[0]_0 ),
        .I1(\ex_alusel_reg[2]_0 [30]),
        .I2(\ex_reg1_reg[6]_0 ),
        .I3(reg1_data[17]),
        .O(\ex_reg1[31]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h00020000FFFFFFFF)) 
    \ex_reg1[31]_i_4 
       (.I0(\id_inst_reg[21] ),
        .I1(\ex_reg1[31]_i_8_n_4 ),
        .I2(ex_wd_o),
        .I3(ovassert0),
        .I4(\ex_reg1[31]_i_10_n_4 ),
        .I5(\mem_wd_reg[2] ),
        .O(\ex_reg1[31]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAA)) 
    \ex_reg1[31]_i_5 
       (.I0(\mem_wd_reg[2] ),
        .I1(\id_inst_reg[21] ),
        .I2(\ex_reg1[31]_i_8_n_4 ),
        .I3(ex_wd_o),
        .I4(ovassert0),
        .I5(\ex_reg1[31]_i_10_n_4 ),
        .O(\ex_reg1_reg[6]_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \ex_reg1[31]_i_8 
       (.I0(\mem_wd_reg[4] [1]),
        .I1(rst_IBUF),
        .I2(\id_inst_reg[22] [6]),
        .O(\ex_reg1[31]_i_8_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[31]_i_9 
       (.I0(\mem_wd_reg[4] [3]),
        .I1(rst_IBUF),
        .O(ex_wd_o));
  LUT1 #(
    .INIT(2'h1)) 
    \ex_reg1[3]_i_1 
       (.I0(\ex_reg1_reg[3]_0 ),
        .O(\ex_reg1[3]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'h545554555455FFFF)) 
    \ex_reg1[3]_i_2 
       (.I0(\ex_reg1[3]_i_3_n_4 ),
        .I1(\ex_reg1[31]_i_4_n_4 ),
        .I2(rst_IBUF),
        .I3(mem_wdata_i[3]),
        .I4(\id_inst_reg[18] ),
        .I5(reg1_read),
        .O(\ex_reg1_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h4F4FFF4F)) 
    \ex_reg1[3]_i_3 
       (.I0(\ex_reg1_reg[6]_0 ),
        .I1(reg1_data[2]),
        .I2(reg1_read),
        .I3(\ex_alusel_reg[2]_0 [3]),
        .I4(\ex_reg1_reg[0]_0 ),
        .O(\ex_reg1[3]_i_3_n_4 ));
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    \ex_reg1[4]_i_1 
       (.I0(\ex_reg1_reg[0]_0 ),
        .I1(\ex_alusel_reg[2]_0 [4]),
        .I2(\ex_reg1[4]_i_2_n_4 ),
        .I3(reg1_read),
        .I4(\id_inst_reg[4] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \ex_reg1[4]_i_2 
       (.I0(\ex_reg1[31]_i_4_n_4 ),
        .I1(mem_wdata_i[4]),
        .I2(rst_IBUF),
        .I3(\ex_reg1_reg[6]_0 ),
        .I4(reg1_data[3]),
        .O(\ex_reg1[4]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \ex_reg1[5]_i_2 
       (.I0(\ex_reg1[31]_i_4_n_4 ),
        .I1(mem_wdata_i[5]),
        .I2(rst_IBUF),
        .I3(\ex_reg1_reg[6]_0 ),
        .I4(reg1_data[4]),
        .O(\ex_reg1_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFF04FFFFFF040000)) 
    \ex_reg1[6]_i_1 
       (.I0(\ex_reg1[31]_i_4_n_4 ),
        .I1(mem_wdata_i[6]),
        .I2(rst_IBUF),
        .I3(\ex_reg1[6]_i_2_n_4 ),
        .I4(reg1_read),
        .I5(\id_inst_reg[4]_0 ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \ex_reg1[6]_i_2 
       (.I0(\ex_reg1_reg[0]_0 ),
        .I1(\ex_alusel_reg[2]_0 [5]),
        .I2(\ex_reg1_reg[6]_0 ),
        .I3(reg1_data[5]),
        .O(\ex_reg1[6]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \ex_reg1[7]_i_4 
       (.I0(\ex_reg1[31]_i_4_n_4 ),
        .I1(mem_wdata_i[7]),
        .I2(rst_IBUF),
        .I3(\ex_reg1_reg[0]_0 ),
        .I4(\ex_alusel_reg[2]_0 [6]),
        .O(\ex_reg1_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hF400F400F4FFF400)) 
    \ex_reg1[8]_i_1 
       (.I0(\ex_reg1_reg[0]_0 ),
        .I1(\ex_alusel_reg[2]_0 [7]),
        .I2(\ex_reg1[8]_i_2_n_4 ),
        .I3(reg1_read),
        .I4(\id_inst_reg[22] [2]),
        .I5(\id_inst_reg[28]_0 ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h444444F4)) 
    \ex_reg1[8]_i_2 
       (.I0(\ex_reg1_reg[6]_0 ),
        .I1(reg1_data[6]),
        .I2(mem_wdata_i[8]),
        .I3(rst_IBUF),
        .I4(\ex_reg1[31]_i_4_n_4 ),
        .O(\ex_reg1[8]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \ex_reg1[9]_i_4 
       (.I0(\ex_reg1[31]_i_4_n_4 ),
        .I1(mem_wdata_i[9]),
        .I2(rst_IBUF),
        .I3(\ex_reg1_reg[0]_0 ),
        .I4(\ex_alusel_reg[2]_0 [8]),
        .O(\ex_reg1_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(mul_ans[0]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[12] [4]),
        .Q(mul_ans[10]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(mul_ans[11]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(mul_ans[12]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[12] [5]),
        .Q(mul_ans[13]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[12] [6]),
        .Q(mul_ans[14]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .Q(mul_ans[15]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(D[8]),
        .Q(mul_ans[16]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(D[9]),
        .Q(mul_ans[17]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[12] [7]),
        .Q(mul_ans[18]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[12] [8]),
        .Q(mul_ans[19]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(mul_ans[1]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(D[10]),
        .Q(mul_ans[20]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[12] [9]),
        .Q(mul_ans[21]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[12] [10]),
        .Q(mul_ans[22]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[12] [11]),
        .Q(mul_ans[23]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(\ex_reg1[24]_i_1_n_4 ),
        .Q(mul_ans[24]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[12] [12]),
        .Q(mul_ans[25]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[12] [13]),
        .Q(mul_ans[26]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(D[11]),
        .Q(mul_ans[27]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[28] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[12] [14]),
        .Q(mul_ans[28]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[29] 
       (.C(CLK),
        .CE(E),
        .D(\ex_reg1[29]_i_1_n_4 ),
        .Q(mul_ans[29]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[12] [0]),
        .Q(mul_ans[2]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[30] 
       (.C(CLK),
        .CE(E),
        .D(\ex_reg1[30]_i_1_n_4 ),
        .Q(mul_ans[30]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[31] 
       (.C(CLK),
        .CE(E),
        .D(id_reg1_o),
        .Q(mul_ans[31]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\ex_reg1[3]_i_1_n_4 ),
        .Q(mul_ans[3]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(mul_ans[4]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[12] [1]),
        .Q(mul_ans[5]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(mul_ans[6]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[12] [2]),
        .Q(mul_ans[7]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(mul_ans[8]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[12] [3]),
        .Q(mul_ans[9]),
        .R(\mem_excepttype_reg[11] ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \ex_reg2[31]_i_7 
       (.I0(rst_IBUF),
        .I1(ex_wreg_i),
        .I2(ovassert0),
        .I3(\mem_wd_reg[4] [3]),
        .O(\ex_reg2_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [0]),
        .Q(mul_ans__0_0[0]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [10]),
        .Q(mul_ans__0_0[10]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [11]),
        .Q(mul_ans__0_0[11]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [12]),
        .Q(mul_ans__0_0[12]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [13]),
        .Q(mul_ans__0_0[13]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [14]),
        .Q(mul_ans__0_0[14]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [15]),
        .Q(mul_ans__0_0[15]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [16]),
        .Q(mul_ans__0_0[16]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [17]),
        .Q(mul_ans__0_0[17]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [18]),
        .Q(mul_ans__0_0[18]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [19]),
        .Q(mul_ans__0_0[19]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [1]),
        .Q(mul_ans__0_0[1]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [20]),
        .Q(mul_ans__0_0[20]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [21]),
        .Q(mul_ans__0_0[21]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [22]),
        .Q(mul_ans__0_0[22]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [23]),
        .Q(mul_ans__0_0[23]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [24]),
        .Q(mul_ans__0_0[24]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [25]),
        .Q(mul_ans__0_0[25]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [26]),
        .Q(mul_ans__0_0[26]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [27]),
        .Q(mul_ans__0_0[27]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[28] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [28]),
        .Q(mul_ans__0_0[28]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[29] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [29]),
        .Q(mul_ans__0_0[29]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [2]),
        .Q(mul_ans__0_0[2]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[30] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [30]),
        .Q(mul_ans__0_0[30]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[31] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [31]),
        .Q(mul_ans__0_0[31]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [3]),
        .Q(mul_ans__0_0[3]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [4]),
        .Q(mul_ans__0_0[4]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [5]),
        .Q(mul_ans__0_0[5]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [6]),
        .Q(mul_ans__0_0[6]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [7]),
        .Q(mul_ans__0_0[7]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [8]),
        .Q(mul_ans__0_0[8]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(\mem_wdata_reg[31]_0 [9]),
        .Q(mul_ans__0_0[9]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_wd_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[17] [0]),
        .Q(\mem_wd_reg[4] [0]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_wd_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[17] [1]),
        .Q(\mem_wd_reg[4] [1]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_wd_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[17] [2]),
        .Q(\mem_wd_reg[4] [2]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_wd_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\id_inst_reg[17] [3]),
        .Q(\mem_wd_reg[4] [3]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    ex_wreg_reg
       (.C(CLK),
        .CE(E),
        .D(id_wreg_o),
        .Q(ex_wreg_i),
        .R(\mem_excepttype_reg[11] ));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[0]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[0]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2),
        .I5(\result_o_reg[63] [32]),
        .O(\mem_hi_reg[31] [0]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[10]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[10]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_9),
        .I5(\result_o_reg[63] [42]),
        .O(\mem_hi_reg[31] [10]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[11]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[11]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_10),
        .I5(\result_o_reg[63] [43]),
        .O(\mem_hi_reg[31] [11]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[12]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[12]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_11),
        .I5(\result_o_reg[63] [44]),
        .O(\mem_hi_reg[31] [12]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[13]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[13]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_12),
        .I5(\result_o_reg[63] [45]),
        .O(\mem_hi_reg[31] [13]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[14]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[14]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_13),
        .I5(\result_o_reg[63] [46]),
        .O(\mem_hi_reg[31] [14]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[15]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[15]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_14),
        .I5(\result_o_reg[63] [47]),
        .O(\mem_hi_reg[31] [15]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[16]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[16]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_15),
        .I5(\result_o_reg[63] [48]),
        .O(\mem_hi_reg[31] [16]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[17]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[17]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_17),
        .I5(\result_o_reg[63] [49]),
        .O(\mem_hi_reg[31] [17]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[18]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[18]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_19),
        .I5(\result_o_reg[63] [50]),
        .O(\mem_hi_reg[31] [18]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[19]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[19]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_21),
        .I5(\result_o_reg[63] [51]),
        .O(\mem_hi_reg[31] [19]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[1]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[1]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_0),
        .I5(\result_o_reg[63] [33]),
        .O(\mem_hi_reg[31] [1]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[20]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[20]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_23),
        .I5(\result_o_reg[63] [52]),
        .O(\mem_hi_reg[31] [20]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[21]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[21]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_25),
        .I5(\result_o_reg[63] [53]),
        .O(\mem_hi_reg[31] [21]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[22]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[22]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_27),
        .I5(\result_o_reg[63] [54]),
        .O(\mem_hi_reg[31] [22]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[23]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[23]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_29),
        .I5(\result_o_reg[63] [55]),
        .O(\mem_hi_reg[31] [23]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[24]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[24]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_31),
        .I5(\result_o_reg[63] [56]),
        .O(\mem_hi_reg[31] [24]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[25]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[25]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_33),
        .I5(\result_o_reg[63] [57]),
        .O(\mem_hi_reg[31] [25]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[26]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[26]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_35),
        .I5(\result_o_reg[63] [58]),
        .O(\mem_hi_reg[31] [26]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[27]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[27]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_37),
        .I5(\result_o_reg[63] [59]),
        .O(\mem_hi_reg[31] [27]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[28]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[28]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_39),
        .I5(\result_o_reg[63] [60]),
        .O(\mem_hi_reg[31] [28]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[29]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[29]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_41),
        .I5(\result_o_reg[63] [61]),
        .O(\mem_hi_reg[31] [29]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[2]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[2]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_1),
        .I5(\result_o_reg[63] [34]),
        .O(\mem_hi_reg[31] [2]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[30]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[30]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_43),
        .I5(\result_o_reg[63] [62]),
        .O(\mem_hi_reg[31] [30]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[31]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[31]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_45),
        .I5(\result_o_reg[63] [63]),
        .O(\mem_hi_reg[31] [31]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \hi_o_reg[31]_i_15 
       (.I0(ex_aluop_i[6]),
        .I1(ex_aluop_i[2]),
        .I2(ex_aluop_i[4]),
        .I3(ex_aluop_i[5]),
        .O(\hi_o_reg[31]_i_15_n_4 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \hi_o_reg[31]_i_2 
       (.I0(ex_aluop_i[5]),
        .I1(ex_aluop_i[4]),
        .I2(ex_aluop_i[2]),
        .I3(ex_aluop_i[6]),
        .I4(rst_IBUF),
        .O(\hi_o_reg[31]_i_2_n_4 ));
  LUT3 #(
    .INIT(8'h47)) 
    \hi_o_reg[31]_i_3 
       (.I0(ex_aluop_i[1]),
        .I1(ex_aluop_i[3]),
        .I2(ex_aluop_i[0]),
        .O(\hi_o_reg[31]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h6606666666666666)) 
    \hi_o_reg[31]_i_7 
       (.I0(mul_ans__0_0[31]),
        .I1(mul_ans[31]),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(ex_aluop_i[3]),
        .I5(\hi_o_reg[31]_i_15_n_4 ),
        .O(\mem_lo_reg[2] ));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[3]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[3]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_2),
        .I5(\result_o_reg[63] [35]),
        .O(\mem_hi_reg[31] [3]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[4]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[4]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_3),
        .I5(\result_o_reg[63] [36]),
        .O(\mem_hi_reg[31] [4]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[5]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[5]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_4),
        .I5(\result_o_reg[63] [37]),
        .O(\mem_hi_reg[31] [5]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[6]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[6]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_5),
        .I5(\result_o_reg[63] [38]),
        .O(\mem_hi_reg[31] [6]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[7]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[7]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_6),
        .I5(\result_o_reg[63] [39]),
        .O(\mem_hi_reg[31] [7]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[8]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[8]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_7),
        .I5(\result_o_reg[63] [40]),
        .O(\mem_hi_reg[31] [8]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \hi_o_reg[9]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[9]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(mul_ans__2_8),
        .I5(\result_o_reg[63] [41]),
        .O(\mem_hi_reg[31] [9]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[0]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[0]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [0]),
        .I5(\lo_o_reg[0]_i_2_n_4 ),
        .O(\mem_lo_reg[31] [0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \lo_o_reg[0]_i_2 
       (.I0(mul_ans__0),
        .I1(rst_IBUF),
        .I2(P[0]),
        .O(\lo_o_reg[0]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[10]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[10]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [10]),
        .I5(mul_ans__1),
        .O(\mem_lo_reg[31] [10]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[11]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[11]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [11]),
        .I5(mul_ans__1_7),
        .O(\mem_lo_reg[31] [11]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[12]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[12]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [12]),
        .I5(mul_ans__1_8),
        .O(\mem_lo_reg[31] [12]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[13]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[13]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [13]),
        .I5(mul_ans__1_9),
        .O(\mem_lo_reg[31] [13]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[14]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[14]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [14]),
        .I5(mul_ans__1_10),
        .O(\mem_lo_reg[31] [14]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[15]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[15]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [15]),
        .I5(mul_ans__1_11),
        .O(\mem_lo_reg[31] [15]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[16]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[16]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [16]),
        .I5(mul_ans__2_16),
        .O(\mem_lo_reg[31] [16]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[17]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[17]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [17]),
        .I5(mul_ans__2_18),
        .O(\mem_lo_reg[31] [17]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[18]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[18]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [18]),
        .I5(mul_ans__2_20),
        .O(\mem_lo_reg[31] [18]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[19]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[19]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [19]),
        .I5(mul_ans__2_22),
        .O(\mem_lo_reg[31] [19]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[1]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[1]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [1]),
        .I5(mul_ans__1_0),
        .O(\mem_lo_reg[31] [1]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[20]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[20]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [20]),
        .I5(mul_ans__2_24),
        .O(\mem_lo_reg[31] [20]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[21]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[21]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [21]),
        .I5(mul_ans__2_26),
        .O(\mem_lo_reg[31] [21]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[22]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[22]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [22]),
        .I5(mul_ans__2_28),
        .O(\mem_lo_reg[31] [22]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[23]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[23]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [23]),
        .I5(mul_ans__2_30),
        .O(\mem_lo_reg[31] [23]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[24]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[24]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [24]),
        .I5(mul_ans__2_32),
        .O(\mem_lo_reg[31] [24]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[25]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[25]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [25]),
        .I5(mul_ans__2_34),
        .O(\mem_lo_reg[31] [25]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[26]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[26]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [26]),
        .I5(mul_ans__2_36),
        .O(\mem_lo_reg[31] [26]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[27]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[27]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [27]),
        .I5(mul_ans__2_38),
        .O(\mem_lo_reg[31] [27]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[28]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[28]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [28]),
        .I5(mul_ans__2_40),
        .O(\mem_lo_reg[31] [28]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[29]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[29]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [29]),
        .I5(mul_ans__2_42),
        .O(\mem_lo_reg[31] [29]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \lo_o_reg[2]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[2]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\lo_o_reg[2]_i_2_n_4 ),
        .I5(\result_o_reg[63] [2]),
        .O(\mem_lo_reg[31] [2]));
  LUT5 #(
    .INIT(32'h10111000)) 
    \lo_o_reg[2]_i_2 
       (.I0(rst_IBUF),
        .I1(mul_ans__0),
        .I2(O),
        .I3(\mem_lo_reg[2] ),
        .I4(P[1]),
        .O(\lo_o_reg[2]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[30]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[30]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [30]),
        .I5(mul_ans__2_44),
        .O(\mem_lo_reg[31] [30]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[31]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[31]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [31]),
        .I5(mul_ans__2_46),
        .O(\mem_lo_reg[31] [31]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[3]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[3]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [3]),
        .I5(mul_ans__1_1),
        .O(\mem_lo_reg[31] [3]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[4]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[4]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [4]),
        .I5(mul_ans__1_2),
        .O(\mem_lo_reg[31] [4]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[5]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[5]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [5]),
        .I5(mul_ans__1_3),
        .O(\mem_lo_reg[31] [5]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[6]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[6]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [6]),
        .I5(mul_ans__1_4),
        .O(\mem_lo_reg[31] [6]));
  LUT6 #(
    .INIT(64'hAA080A08AA080008)) 
    \lo_o_reg[7]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[7]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\lo_o_reg[7]_i_2_n_4 ),
        .I5(\result_o_reg[63] [7]),
        .O(\mem_lo_reg[31] [7]));
  LUT5 #(
    .INIT(32'h10111000)) 
    \lo_o_reg[7]_i_2 
       (.I0(rst_IBUF),
        .I1(mul_ans__0),
        .I2(mul_ans__1_12),
        .I3(\mem_lo_reg[2] ),
        .I4(P[2]),
        .O(\lo_o_reg[7]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[8]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[8]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [8]),
        .I5(mul_ans__1_5),
        .O(\mem_lo_reg[31] [8]));
  LUT6 #(
    .INIT(64'h0A080008AA08AA08)) 
    \lo_o_reg[9]_i_1 
       (.I0(\hi_o_reg[31]_i_2_n_4 ),
        .I1(mul_ans[9]),
        .I2(\hi_o_reg[31]_i_3_n_4 ),
        .I3(ex_aluop_i[3]),
        .I4(\result_o_reg[63] [9]),
        .I5(mul_ans__1_6),
        .O(\mem_lo_reg[31] [9]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[0]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[0]),
        .O(\mem_cp0_reg_data_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[10]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[10]),
        .O(\mem_cp0_reg_data_reg[10] ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[11]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[11]),
        .O(\mem_cp0_reg_data_reg[11] ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[12]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[12]),
        .O(\mem_cp0_reg_data_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[13]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[13]),
        .O(\mem_cp0_reg_data_reg[13] ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[14]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[14]),
        .O(\mem_cp0_reg_data_reg[14] ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[15]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[15]),
        .O(\mem_cp0_reg_data_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[16]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[16]),
        .O(\mem_cp0_reg_data_reg[16] ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[17]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[17]),
        .O(\mem_cp0_reg_data_reg[17] ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[18]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[18]),
        .O(\mem_cp0_reg_data_reg[18] ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[19]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[19]),
        .O(\mem_cp0_reg_data_reg[19] ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[1]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[1]),
        .O(\mem_cp0_reg_data_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[20]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[20]),
        .O(\mem_cp0_reg_data_reg[20] ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[21]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[21]),
        .O(\mem_cp0_reg_data_reg[21] ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[22]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[22]),
        .O(\mem_cp0_reg_data_reg[22] ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[23]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[23]),
        .O(\mem_cp0_reg_data_reg[23] ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[24]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[24]),
        .O(\mem_cp0_reg_data_reg[24] ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[25]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[25]),
        .O(\mem_cp0_reg_data_reg[25] ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[26]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[26]),
        .O(\mem_cp0_reg_data_reg[26] ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[27]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[27]),
        .O(\mem_cp0_reg_data_reg[27] ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[28]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[28]),
        .O(\mem_cp0_reg_data_reg[28] ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[29]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[29]),
        .O(\mem_cp0_reg_data_reg[29] ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[2]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[2]),
        .O(\mem_cp0_reg_data_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[30]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[30]),
        .O(\mem_cp0_reg_data_reg[30] ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[31]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[31]),
        .O(\mem_cp0_reg_data_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[3]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[3]),
        .O(\mem_cp0_reg_data_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[4]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[4]),
        .O(\mem_cp0_reg_data_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[5]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[5]),
        .O(\mem_cp0_reg_data_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[6]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[6]),
        .O(\mem_cp0_reg_data_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[7]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[7]),
        .O(\mem_cp0_reg_data_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[8]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[8]),
        .O(\mem_cp0_reg_data_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_data[9]_i_1 
       (.I0(ex_cp0_reg_we_o),
        .I1(mul_ans[9]),
        .O(\mem_cp0_reg_data_reg[9] ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    mem_cp0_reg_we_i_1
       (.I0(ex_aluop_i[2]),
        .I1(rst_IBUF),
        .I2(ex_aluop_i[6]),
        .I3(ex_aluop_i[1]),
        .I4(mem_cp0_reg_we_i_2_n_4),
        .I5(mem_cp0_reg_we_i_3_n_4),
        .O(ex_cp0_reg_we_o));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h1)) 
    mem_cp0_reg_we_i_2
       (.I0(ex_aluop_i[3]),
        .I1(ex_aluop_i[0]),
        .O(mem_cp0_reg_we_i_2_n_4));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'hB)) 
    mem_cp0_reg_we_i_3
       (.I0(ex_aluop_i[4]),
        .I1(ex_aluop_i[5]),
        .O(mem_cp0_reg_we_i_3_n_4));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_write_addr[0]_i_1 
       (.I0(\mem_cp0_reg_write_addr_reg[2] [0]),
        .I1(ex_cp0_reg_we_o),
        .O(ex_cp0_reg_write_addr_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_write_addr[1]_i_1 
       (.I0(\mem_cp0_reg_write_addr_reg[2] [1]),
        .I1(ex_cp0_reg_we_o),
        .O(ex_cp0_reg_write_addr_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_cp0_reg_write_addr[2]_i_1 
       (.I0(\mem_cp0_reg_write_addr_reg[2] [2]),
        .I1(ex_cp0_reg_we_o),
        .O(ex_cp0_reg_write_addr_o[2]));
  LUT6 #(
    .INIT(64'h00000000060606F6)) 
    \mem_excepttype[10]_i_1 
       (.I0(\mem_excepttype[10]_i_2_n_4 ),
        .I1(ex_aluop_i[1]),
        .I2(ex_aluop_i[2]),
        .I3(\mem_excepttype[10]_i_3_n_4 ),
        .I4(ex_aluop_i[0]),
        .I5(\mem_excepttype[10]_i_4_n_4 ),
        .O(ex_excepttype_o));
  LUT4 #(
    .INIT(16'h22B2)) 
    \mem_excepttype[10]_i_10 
       (.I0(mul_ans__0_0[29]),
        .I1(mul_ans[29]),
        .I2(mul_ans__0_0[28]),
        .I3(mul_ans[28]),
        .O(\mem_excepttype[10]_i_10_n_4 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \mem_excepttype[10]_i_11 
       (.I0(mul_ans__0_0[27]),
        .I1(mul_ans[27]),
        .I2(mul_ans__0_0[26]),
        .I3(mul_ans[26]),
        .O(\mem_excepttype[10]_i_11_n_4 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \mem_excepttype[10]_i_12 
       (.I0(mul_ans__0_0[25]),
        .I1(mul_ans[25]),
        .I2(mul_ans__0_0[24]),
        .I3(mul_ans[24]),
        .O(\mem_excepttype[10]_i_12_n_4 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_excepttype[10]_i_13 
       (.I0(mul_ans__0_0[31]),
        .I1(mul_ans[31]),
        .I2(mul_ans[30]),
        .I3(mul_ans__0_0[30]),
        .O(\mem_excepttype[10]_i_13_n_4 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_excepttype[10]_i_14 
       (.I0(mul_ans[29]),
        .I1(mul_ans__0_0[29]),
        .I2(mul_ans[28]),
        .I3(mul_ans__0_0[28]),
        .O(\mem_excepttype[10]_i_14_n_4 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_excepttype[10]_i_15 
       (.I0(mul_ans[27]),
        .I1(mul_ans__0_0[27]),
        .I2(mul_ans[26]),
        .I3(mul_ans__0_0[26]),
        .O(\mem_excepttype[10]_i_15_n_4 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_excepttype[10]_i_16 
       (.I0(mul_ans[25]),
        .I1(mul_ans__0_0[25]),
        .I2(mul_ans[24]),
        .I3(mul_ans__0_0[24]),
        .O(\mem_excepttype[10]_i_16_n_4 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_excepttype[10]_i_18 
       (.I0(mul_ans__0_0[31]),
        .I1(mul_ans[31]),
        .I2(mul_ans[30]),
        .I3(mul_ans__0_0[30]),
        .O(\mem_excepttype[10]_i_18_n_4 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem_excepttype[10]_i_19 
       (.I0(mul_ans__0_0[28]),
        .I1(mul_ans[28]),
        .I2(mul_ans__0_0[29]),
        .I3(mul_ans[29]),
        .I4(mul_ans[27]),
        .I5(mul_ans__0_0[27]),
        .O(\mem_excepttype[10]_i_19_n_4 ));
  LUT5 #(
    .INIT(32'h555530F3)) 
    \mem_excepttype[10]_i_2 
       (.I0(\mem_excepttype_reg[10]_i_5_n_4 ),
        .I1(mul_ans[31]),
        .I2(mul_ans__0_0[31]),
        .I3(\ex0/p_0_in6_in ),
        .I4(\mem_excepttype[10]_i_6_n_4 ),
        .O(\mem_excepttype[10]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem_excepttype[10]_i_20 
       (.I0(mul_ans__0_0[24]),
        .I1(mul_ans[24]),
        .I2(mul_ans__0_0[25]),
        .I3(mul_ans[25]),
        .I4(mul_ans[26]),
        .I5(mul_ans__0_0[26]),
        .O(\mem_excepttype[10]_i_20_n_4 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \mem_excepttype[10]_i_22 
       (.I0(mul_ans__0_0[23]),
        .I1(mul_ans[23]),
        .I2(mul_ans__0_0[22]),
        .I3(mul_ans[22]),
        .O(\mem_excepttype[10]_i_22_n_4 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \mem_excepttype[10]_i_23 
       (.I0(mul_ans__0_0[21]),
        .I1(mul_ans[21]),
        .I2(mul_ans__0_0[20]),
        .I3(mul_ans[20]),
        .O(\mem_excepttype[10]_i_23_n_4 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \mem_excepttype[10]_i_24 
       (.I0(mul_ans__0_0[19]),
        .I1(mul_ans[19]),
        .I2(mul_ans__0_0[18]),
        .I3(mul_ans[18]),
        .O(\mem_excepttype[10]_i_24_n_4 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \mem_excepttype[10]_i_25 
       (.I0(mul_ans__0_0[17]),
        .I1(mul_ans[17]),
        .I2(mul_ans__0_0[16]),
        .I3(mul_ans[16]),
        .O(\mem_excepttype[10]_i_25_n_4 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_excepttype[10]_i_26 
       (.I0(mul_ans[23]),
        .I1(mul_ans__0_0[23]),
        .I2(mul_ans[22]),
        .I3(mul_ans__0_0[22]),
        .O(\mem_excepttype[10]_i_26_n_4 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_excepttype[10]_i_27 
       (.I0(mul_ans[21]),
        .I1(mul_ans__0_0[21]),
        .I2(mul_ans[20]),
        .I3(mul_ans__0_0[20]),
        .O(\mem_excepttype[10]_i_27_n_4 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_excepttype[10]_i_28 
       (.I0(mul_ans[19]),
        .I1(mul_ans__0_0[19]),
        .I2(mul_ans[18]),
        .I3(mul_ans__0_0[18]),
        .O(\mem_excepttype[10]_i_28_n_4 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_excepttype[10]_i_29 
       (.I0(mul_ans[17]),
        .I1(mul_ans__0_0[17]),
        .I2(mul_ans[16]),
        .I3(mul_ans__0_0[16]),
        .O(\mem_excepttype[10]_i_29_n_4 ));
  LUT6 #(
    .INIT(64'h5555555559555555)) 
    \mem_excepttype[10]_i_3 
       (.I0(\ex0/is_equal ),
        .I1(ex_aluop_i[2]),
        .I2(ex_aluop_i[3]),
        .I3(ex_aluop_i[1]),
        .I4(ex_aluop_i[4]),
        .I5(ovassert_reg_i_13_n_4),
        .O(\mem_excepttype[10]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem_excepttype[10]_i_31 
       (.I0(mul_ans__0_0[22]),
        .I1(mul_ans[22]),
        .I2(mul_ans__0_0[23]),
        .I3(mul_ans[23]),
        .I4(mul_ans[21]),
        .I5(mul_ans__0_0[21]),
        .O(\mem_excepttype[10]_i_31_n_4 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem_excepttype[10]_i_32 
       (.I0(mul_ans__0_0[18]),
        .I1(mul_ans[18]),
        .I2(mul_ans__0_0[19]),
        .I3(mul_ans[19]),
        .I4(mul_ans[20]),
        .I5(mul_ans__0_0[20]),
        .O(\mem_excepttype[10]_i_32_n_4 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem_excepttype[10]_i_33 
       (.I0(mul_ans__0_0[16]),
        .I1(mul_ans[16]),
        .I2(mul_ans__0_0[17]),
        .I3(mul_ans[17]),
        .I4(mul_ans[15]),
        .I5(mul_ans__0_0[15]),
        .O(\mem_excepttype[10]_i_33_n_4 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem_excepttype[10]_i_34 
       (.I0(mul_ans__0_0[12]),
        .I1(mul_ans[12]),
        .I2(mul_ans__0_0[13]),
        .I3(mul_ans[13]),
        .I4(mul_ans[14]),
        .I5(mul_ans__0_0[14]),
        .O(\mem_excepttype[10]_i_34_n_4 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \mem_excepttype[10]_i_36 
       (.I0(mul_ans__0_0[15]),
        .I1(mul_ans[15]),
        .I2(mul_ans__0_0[14]),
        .I3(mul_ans[14]),
        .O(\mem_excepttype[10]_i_36_n_4 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \mem_excepttype[10]_i_37 
       (.I0(mul_ans__0_0[13]),
        .I1(mul_ans[13]),
        .I2(mul_ans__0_0[12]),
        .I3(mul_ans[12]),
        .O(\mem_excepttype[10]_i_37_n_4 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \mem_excepttype[10]_i_38 
       (.I0(mul_ans__0_0[11]),
        .I1(mul_ans[11]),
        .I2(mul_ans__0_0[10]),
        .I3(mul_ans[10]),
        .O(\mem_excepttype[10]_i_38_n_4 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \mem_excepttype[10]_i_39 
       (.I0(mul_ans__0_0[9]),
        .I1(mul_ans[9]),
        .I2(mul_ans__0_0[8]),
        .I3(mul_ans[8]),
        .O(\mem_excepttype[10]_i_39_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \mem_excepttype[10]_i_4 
       (.I0(ex_aluop_i[4]),
        .I1(ex_aluop_i[6]),
        .I2(ex_aluop_i[5]),
        .I3(ex_aluop_i[3]),
        .O(\mem_excepttype[10]_i_4_n_4 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_excepttype[10]_i_40 
       (.I0(mul_ans[15]),
        .I1(mul_ans__0_0[15]),
        .I2(mul_ans[14]),
        .I3(mul_ans__0_0[14]),
        .O(\mem_excepttype[10]_i_40_n_4 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_excepttype[10]_i_41 
       (.I0(mul_ans[13]),
        .I1(mul_ans__0_0[13]),
        .I2(mul_ans[12]),
        .I3(mul_ans__0_0[12]),
        .O(\mem_excepttype[10]_i_41_n_4 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_excepttype[10]_i_42 
       (.I0(mul_ans[11]),
        .I1(mul_ans__0_0[11]),
        .I2(mul_ans[10]),
        .I3(mul_ans__0_0[10]),
        .O(\mem_excepttype[10]_i_42_n_4 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_excepttype[10]_i_43 
       (.I0(mul_ans[9]),
        .I1(mul_ans__0_0[9]),
        .I2(mul_ans[8]),
        .I3(mul_ans__0_0[8]),
        .O(\mem_excepttype[10]_i_43_n_4 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem_excepttype[10]_i_44 
       (.I0(mul_ans__0_0[10]),
        .I1(mul_ans[10]),
        .I2(mul_ans__0_0[11]),
        .I3(mul_ans[11]),
        .I4(mul_ans[9]),
        .I5(mul_ans__0_0[9]),
        .O(\mem_excepttype[10]_i_44_n_4 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem_excepttype[10]_i_45 
       (.I0(mul_ans__0_0[6]),
        .I1(mul_ans[6]),
        .I2(mul_ans__0_0[7]),
        .I3(mul_ans[7]),
        .I4(mul_ans[8]),
        .I5(mul_ans__0_0[8]),
        .O(\mem_excepttype[10]_i_45_n_4 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem_excepttype[10]_i_46 
       (.I0(mul_ans__0_0[4]),
        .I1(mul_ans[4]),
        .I2(mul_ans__0_0[5]),
        .I3(mul_ans[5]),
        .I4(mul_ans[3]),
        .I5(mul_ans__0_0[3]),
        .O(\mem_excepttype[10]_i_46_n_4 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem_excepttype[10]_i_47 
       (.I0(mul_ans__0_0[0]),
        .I1(mul_ans[0]),
        .I2(mul_ans__0_0[1]),
        .I3(mul_ans[1]),
        .I4(mul_ans[2]),
        .I5(mul_ans__0_0[2]),
        .O(\mem_excepttype[10]_i_47_n_4 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \mem_excepttype[10]_i_48 
       (.I0(mul_ans__0_0[7]),
        .I1(mul_ans[7]),
        .I2(mul_ans__0_0[6]),
        .I3(mul_ans[6]),
        .O(\mem_excepttype[10]_i_48_n_4 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \mem_excepttype[10]_i_49 
       (.I0(mul_ans__0_0[5]),
        .I1(mul_ans[5]),
        .I2(mul_ans__0_0[4]),
        .I3(mul_ans[4]),
        .O(\mem_excepttype[10]_i_49_n_4 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \mem_excepttype[10]_i_50 
       (.I0(mul_ans__0_0[3]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[2]),
        .I3(mul_ans[2]),
        .O(\mem_excepttype[10]_i_50_n_4 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \mem_excepttype[10]_i_51 
       (.I0(mul_ans__0_0[1]),
        .I1(mul_ans[1]),
        .I2(mul_ans__0_0[0]),
        .I3(mul_ans[0]),
        .O(\mem_excepttype[10]_i_51_n_4 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_excepttype[10]_i_52 
       (.I0(mul_ans[7]),
        .I1(mul_ans__0_0[7]),
        .I2(mul_ans[6]),
        .I3(mul_ans__0_0[6]),
        .O(\mem_excepttype[10]_i_52_n_4 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_excepttype[10]_i_53 
       (.I0(mul_ans[5]),
        .I1(mul_ans__0_0[5]),
        .I2(mul_ans[4]),
        .I3(mul_ans__0_0[4]),
        .O(\mem_excepttype[10]_i_53_n_4 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_excepttype[10]_i_54 
       (.I0(mul_ans[3]),
        .I1(mul_ans__0_0[3]),
        .I2(mul_ans[2]),
        .I3(mul_ans__0_0[2]),
        .O(\mem_excepttype[10]_i_54_n_4 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_excepttype[10]_i_55 
       (.I0(mul_ans[1]),
        .I1(mul_ans__0_0[1]),
        .I2(mul_ans[0]),
        .I3(mul_ans__0_0[0]),
        .O(\mem_excepttype[10]_i_55_n_4 ));
  LUT5 #(
    .INIT(32'hFFFFFFA7)) 
    \mem_excepttype[10]_i_6 
       (.I0(ex_aluop_i[3]),
        .I1(ex_aluop_i[1]),
        .I2(ex_aluop_i[4]),
        .I3(ovassert_reg_i_13_n_4),
        .I4(ex_aluop_i[2]),
        .O(\mem_excepttype[10]_i_6_n_4 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \mem_excepttype[10]_i_9 
       (.I0(mul_ans[31]),
        .I1(mul_ans__0_0[31]),
        .I2(mul_ans__0_0[30]),
        .I3(mul_ans[30]),
        .O(\mem_excepttype[10]_i_9_n_4 ));
  CARRY4 \mem_excepttype_reg[10]_i_17 
       (.CI(\mem_excepttype_reg[10]_i_30_n_4 ),
        .CO({\mem_excepttype_reg[10]_i_17_n_4 ,\mem_excepttype_reg[10]_i_17_n_5 ,\mem_excepttype_reg[10]_i_17_n_6 ,\mem_excepttype_reg[10]_i_17_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_mem_excepttype_reg[10]_i_17_O_UNCONNECTED [3:0]),
        .S({\mem_excepttype[10]_i_31_n_4 ,\mem_excepttype[10]_i_32_n_4 ,\mem_excepttype[10]_i_33_n_4 ,\mem_excepttype[10]_i_34_n_4 }));
  CARRY4 \mem_excepttype_reg[10]_i_21 
       (.CI(\mem_excepttype_reg[10]_i_35_n_4 ),
        .CO({\mem_excepttype_reg[10]_i_21_n_4 ,\mem_excepttype_reg[10]_i_21_n_5 ,\mem_excepttype_reg[10]_i_21_n_6 ,\mem_excepttype_reg[10]_i_21_n_7 }),
        .CYINIT(1'b0),
        .DI({\mem_excepttype[10]_i_36_n_4 ,\mem_excepttype[10]_i_37_n_4 ,\mem_excepttype[10]_i_38_n_4 ,\mem_excepttype[10]_i_39_n_4 }),
        .O(\NLW_mem_excepttype_reg[10]_i_21_O_UNCONNECTED [3:0]),
        .S({\mem_excepttype[10]_i_40_n_4 ,\mem_excepttype[10]_i_41_n_4 ,\mem_excepttype[10]_i_42_n_4 ,\mem_excepttype[10]_i_43_n_4 }));
  CARRY4 \mem_excepttype_reg[10]_i_30 
       (.CI(1'b0),
        .CO({\mem_excepttype_reg[10]_i_30_n_4 ,\mem_excepttype_reg[10]_i_30_n_5 ,\mem_excepttype_reg[10]_i_30_n_6 ,\mem_excepttype_reg[10]_i_30_n_7 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_mem_excepttype_reg[10]_i_30_O_UNCONNECTED [3:0]),
        .S({\mem_excepttype[10]_i_44_n_4 ,\mem_excepttype[10]_i_45_n_4 ,\mem_excepttype[10]_i_46_n_4 ,\mem_excepttype[10]_i_47_n_4 }));
  CARRY4 \mem_excepttype_reg[10]_i_35 
       (.CI(1'b0),
        .CO({\mem_excepttype_reg[10]_i_35_n_4 ,\mem_excepttype_reg[10]_i_35_n_5 ,\mem_excepttype_reg[10]_i_35_n_6 ,\mem_excepttype_reg[10]_i_35_n_7 }),
        .CYINIT(1'b0),
        .DI({\mem_excepttype[10]_i_48_n_4 ,\mem_excepttype[10]_i_49_n_4 ,\mem_excepttype[10]_i_50_n_4 ,\mem_excepttype[10]_i_51_n_4 }),
        .O(\NLW_mem_excepttype_reg[10]_i_35_O_UNCONNECTED [3:0]),
        .S({\mem_excepttype[10]_i_52_n_4 ,\mem_excepttype[10]_i_53_n_4 ,\mem_excepttype[10]_i_54_n_4 ,\mem_excepttype[10]_i_55_n_4 }));
  CARRY4 \mem_excepttype_reg[10]_i_5 
       (.CI(\mem_excepttype_reg[10]_i_8_n_4 ),
        .CO({\mem_excepttype_reg[10]_i_5_n_4 ,\mem_excepttype_reg[10]_i_5_n_5 ,\mem_excepttype_reg[10]_i_5_n_6 ,\mem_excepttype_reg[10]_i_5_n_7 }),
        .CYINIT(1'b0),
        .DI({\mem_excepttype[10]_i_9_n_4 ,\mem_excepttype[10]_i_10_n_4 ,\mem_excepttype[10]_i_11_n_4 ,\mem_excepttype[10]_i_12_n_4 }),
        .O(\NLW_mem_excepttype_reg[10]_i_5_O_UNCONNECTED [3:0]),
        .S({\mem_excepttype[10]_i_13_n_4 ,\mem_excepttype[10]_i_14_n_4 ,\mem_excepttype[10]_i_15_n_4 ,\mem_excepttype[10]_i_16_n_4 }));
  CARRY4 \mem_excepttype_reg[10]_i_7 
       (.CI(\mem_excepttype_reg[10]_i_17_n_4 ),
        .CO({\NLW_mem_excepttype_reg[10]_i_7_CO_UNCONNECTED [3],\ex0/is_equal ,\mem_excepttype_reg[10]_i_7_n_6 ,\mem_excepttype_reg[10]_i_7_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_mem_excepttype_reg[10]_i_7_O_UNCONNECTED [3:0]),
        .S({1'b0,\mem_excepttype[10]_i_18_n_4 ,\mem_excepttype[10]_i_19_n_4 ,\mem_excepttype[10]_i_20_n_4 }));
  CARRY4 \mem_excepttype_reg[10]_i_8 
       (.CI(\mem_excepttype_reg[10]_i_21_n_4 ),
        .CO({\mem_excepttype_reg[10]_i_8_n_4 ,\mem_excepttype_reg[10]_i_8_n_5 ,\mem_excepttype_reg[10]_i_8_n_6 ,\mem_excepttype_reg[10]_i_8_n_7 }),
        .CYINIT(1'b0),
        .DI({\mem_excepttype[10]_i_22_n_4 ,\mem_excepttype[10]_i_23_n_4 ,\mem_excepttype[10]_i_24_n_4 ,\mem_excepttype[10]_i_25_n_4 }),
        .O(\NLW_mem_excepttype_reg[10]_i_8_O_UNCONNECTED [3:0]),
        .S({\mem_excepttype[10]_i_26_n_4 ,\mem_excepttype[10]_i_27_n_4 ,\mem_excepttype[10]_i_28_n_4 ,\mem_excepttype[10]_i_29_n_4 }));
  LUT2 #(
    .INIT(4'h2)) 
    mem_wreg_i_1
       (.I0(ex_wreg_i),
        .I1(ovassert0),
        .O(ex_wreg_o));
  LUT4 #(
    .INIT(16'hAAA8)) 
    mul_ans__0_i_1
       (.I0(mul_ans__0_0[31]),
        .I1(ex_aluop_i[0]),
        .I2(mul_ans__0),
        .I3(\ex0/mul_op20 [31]),
        .O(mul_op2[30]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__0_i_10
       (.I0(mul_ans__0_0[22]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [22]),
        .O(mul_op2[21]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__0_i_11
       (.I0(mul_ans__0_0[21]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [21]),
        .O(mul_op2[20]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__0_i_12
       (.I0(mul_ans__0_0[20]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [20]),
        .O(mul_op2[19]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__0_i_13
       (.I0(mul_ans__0_0[19]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [19]),
        .O(mul_op2[18]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__0_i_14
       (.I0(mul_ans__0_0[18]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [18]),
        .O(mul_op2[17]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__0_i_15
       (.I0(mul_ans__0_0[17]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [17]),
        .O(mul_op2[16]));
  CARRY4 mul_ans__0_i_16
       (.CI(mul_ans__0_i_17_n_4),
        .CO({mul_ans__0_i_16_n_4,mul_ans__0_i_16_n_5,mul_ans__0_i_16_n_6,mul_ans__0_i_16_n_7}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ex0/mul_op20 [28:25]),
        .S({mul_ans__0_i_19_n_4,mul_ans__0_i_20_n_4,mul_ans__0_i_21_n_4,mul_ans__0_i_22_n_4}));
  CARRY4 mul_ans__0_i_17
       (.CI(mul_ans__0_i_18_n_4),
        .CO({mul_ans__0_i_17_n_4,mul_ans__0_i_17_n_5,mul_ans__0_i_17_n_6,mul_ans__0_i_17_n_7}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ex0/mul_op20 [24:21]),
        .S({mul_ans__0_i_23_n_4,mul_ans__0_i_24_n_4,mul_ans__0_i_25_n_4,mul_ans__0_i_26_n_4}));
  CARRY4 mul_ans__0_i_18
       (.CI(mul_ans_i_37_n_4),
        .CO({mul_ans__0_i_18_n_4,mul_ans__0_i_18_n_5,mul_ans__0_i_18_n_6,mul_ans__0_i_18_n_7}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ex0/mul_op20 [20:17]),
        .S({mul_ans__0_i_27_n_4,mul_ans__0_i_28_n_4,mul_ans__0_i_29_n_4,mul_ans__0_i_30_n_4}));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__0_i_19
       (.I0(mul_ans__0_0[28]),
        .O(mul_ans__0_i_19_n_4));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__0_i_2
       (.I0(mul_ans__0_0[30]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [30]),
        .O(mul_op2[29]));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__0_i_20
       (.I0(mul_ans__0_0[27]),
        .O(mul_ans__0_i_20_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__0_i_21
       (.I0(mul_ans__0_0[26]),
        .O(mul_ans__0_i_21_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__0_i_22
       (.I0(mul_ans__0_0[25]),
        .O(mul_ans__0_i_22_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__0_i_23
       (.I0(mul_ans__0_0[24]),
        .O(mul_ans__0_i_23_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__0_i_24
       (.I0(mul_ans__0_0[23]),
        .O(mul_ans__0_i_24_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__0_i_25
       (.I0(mul_ans__0_0[22]),
        .O(mul_ans__0_i_25_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__0_i_26
       (.I0(mul_ans__0_0[21]),
        .O(mul_ans__0_i_26_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__0_i_27
       (.I0(mul_ans__0_0[20]),
        .O(mul_ans__0_i_27_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__0_i_28
       (.I0(mul_ans__0_0[19]),
        .O(mul_ans__0_i_28_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__0_i_29
       (.I0(mul_ans__0_0[18]),
        .O(mul_ans__0_i_29_n_4));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__0_i_3
       (.I0(mul_ans__0_0[29]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [29]),
        .O(mul_op2[28]));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__0_i_30
       (.I0(mul_ans__0_0[17]),
        .O(mul_ans__0_i_30_n_4));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__0_i_4
       (.I0(mul_ans__0_0[28]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [28]),
        .O(mul_op2[27]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__0_i_5
       (.I0(mul_ans__0_0[27]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [27]),
        .O(mul_op2[26]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__0_i_6
       (.I0(mul_ans__0_0[26]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [26]),
        .O(mul_op2[25]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__0_i_7
       (.I0(mul_ans__0_0[25]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [25]),
        .O(mul_op2[24]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__0_i_8
       (.I0(mul_ans__0_0[24]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [24]),
        .O(mul_op2[23]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__0_i_9
       (.I0(mul_ans__0_0[23]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [23]),
        .O(mul_op2[22]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__1_i_1
       (.I0(mul_ans[16]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [16]),
        .O(mul_op1[15]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__1_i_10
       (.I0(mul_ans[7]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [7]),
        .O(mul_op1[6]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__1_i_11
       (.I0(mul_ans[6]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [6]),
        .O(mul_op1[5]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__1_i_12
       (.I0(mul_ans[5]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [5]),
        .O(mul_op1[4]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__1_i_13
       (.I0(mul_ans[4]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [4]),
        .O(mul_op1[3]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__1_i_14
       (.I0(mul_ans[3]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [3]),
        .O(mul_op1[2]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__1_i_15
       (.I0(mul_ans[2]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [2]),
        .O(mul_op1[1]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__1_i_16
       (.I0(mul_ans[1]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [1]),
        .O(mul_op1[0]));
  CARRY4 mul_ans__1_i_17
       (.CI(mul_ans__1_i_18_n_4),
        .CO({mul_ans__1_i_17_n_4,mul_ans__1_i_17_n_5,mul_ans__1_i_17_n_6,mul_ans__1_i_17_n_7}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ex0/mul_op10 [16:13]),
        .S({mul_ans__1_i_21_n_4,mul_ans__1_i_22_n_4,mul_ans__1_i_23_n_4,mul_ans__1_i_24_n_4}));
  CARRY4 mul_ans__1_i_18
       (.CI(mul_ans__1_i_19_n_4),
        .CO({mul_ans__1_i_18_n_4,mul_ans__1_i_18_n_5,mul_ans__1_i_18_n_6,mul_ans__1_i_18_n_7}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ex0/mul_op10 [12:9]),
        .S({mul_ans__1_i_25_n_4,mul_ans__1_i_26_n_4,mul_ans__1_i_27_n_4,mul_ans__1_i_28_n_4}));
  CARRY4 mul_ans__1_i_19
       (.CI(mul_ans__1_i_20_n_4),
        .CO({mul_ans__1_i_19_n_4,mul_ans__1_i_19_n_5,mul_ans__1_i_19_n_6,mul_ans__1_i_19_n_7}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ex0/mul_op10 [8:5]),
        .S({mul_ans__1_i_29_n_4,mul_ans__1_i_30_n_4,mul_ans__1_i_31_n_4,mul_ans__1_i_32_n_4}));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__1_i_2
       (.I0(mul_ans[15]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [15]),
        .O(mul_op1[14]));
  CARRY4 mul_ans__1_i_20
       (.CI(1'b0),
        .CO({mul_ans__1_i_20_n_4,mul_ans__1_i_20_n_5,mul_ans__1_i_20_n_6,mul_ans__1_i_20_n_7}),
        .CYINIT(mul_ans__1_i_33_n_4),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ex0/mul_op10 [4:1]),
        .S({mul_ans__1_i_34_n_4,mul_ans__1_i_35_n_4,mul_ans__1_i_36_n_4,mul_ans__1_i_37_n_4}));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__1_i_21
       (.I0(mul_ans[16]),
        .O(mul_ans__1_i_21_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__1_i_22
       (.I0(mul_ans[15]),
        .O(mul_ans__1_i_22_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__1_i_23
       (.I0(mul_ans[14]),
        .O(mul_ans__1_i_23_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__1_i_24
       (.I0(mul_ans[13]),
        .O(mul_ans__1_i_24_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__1_i_25
       (.I0(mul_ans[12]),
        .O(mul_ans__1_i_25_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__1_i_26
       (.I0(mul_ans[11]),
        .O(mul_ans__1_i_26_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__1_i_27
       (.I0(mul_ans[10]),
        .O(mul_ans__1_i_27_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__1_i_28
       (.I0(mul_ans[9]),
        .O(mul_ans__1_i_28_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__1_i_29
       (.I0(mul_ans[8]),
        .O(mul_ans__1_i_29_n_4));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__1_i_3
       (.I0(mul_ans[14]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [14]),
        .O(mul_op1[13]));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__1_i_30
       (.I0(mul_ans[7]),
        .O(mul_ans__1_i_30_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__1_i_31
       (.I0(mul_ans[6]),
        .O(mul_ans__1_i_31_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__1_i_32
       (.I0(mul_ans[5]),
        .O(mul_ans__1_i_32_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__1_i_33
       (.I0(mul_ans[0]),
        .O(mul_ans__1_i_33_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__1_i_34
       (.I0(mul_ans[4]),
        .O(mul_ans__1_i_34_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__1_i_35
       (.I0(mul_ans[3]),
        .O(mul_ans__1_i_35_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__1_i_36
       (.I0(mul_ans[2]),
        .O(mul_ans__1_i_36_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans__1_i_37
       (.I0(mul_ans[1]),
        .O(mul_ans__1_i_37_n_4));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__1_i_4
       (.I0(mul_ans[13]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [13]),
        .O(mul_op1[12]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__1_i_5
       (.I0(mul_ans[12]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [12]),
        .O(mul_op1[11]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__1_i_6
       (.I0(mul_ans[11]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [11]),
        .O(mul_op1[10]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__1_i_7
       (.I0(mul_ans[10]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [10]),
        .O(mul_op1[9]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__1_i_8
       (.I0(mul_ans[9]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [9]),
        .O(mul_op1[8]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans__1_i_9
       (.I0(mul_ans[8]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [8]),
        .O(mul_op1[7]));
  LUT4 #(
    .INIT(16'hAAA8)) 
    mul_ans_i_1
       (.I0(mul_ans[31]),
        .I1(ex_aluop_i[0]),
        .I2(mul_ans__0),
        .I3(\ex0/mul_op10 [31]),
        .O(mul_op1[30]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_10
       (.I0(mul_ans[22]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [22]),
        .O(mul_op1[21]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_11
       (.I0(mul_ans[21]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [21]),
        .O(mul_op1[20]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_12
       (.I0(mul_ans[20]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [20]),
        .O(mul_op1[19]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_13
       (.I0(mul_ans[19]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [19]),
        .O(mul_op1[18]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_14
       (.I0(mul_ans[18]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [18]),
        .O(mul_op1[17]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_15
       (.I0(mul_ans[17]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [17]),
        .O(mul_op1[16]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_16
       (.I0(mul_ans__0_0[16]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [16]),
        .O(mul_op2[15]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_17
       (.I0(mul_ans__0_0[15]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [15]),
        .O(mul_op2[14]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_18
       (.I0(mul_ans__0_0[14]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [14]),
        .O(mul_op2[13]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_19
       (.I0(mul_ans__0_0[13]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [13]),
        .O(mul_op2[12]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_2
       (.I0(mul_ans[30]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [30]),
        .O(mul_op1[29]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_20
       (.I0(mul_ans__0_0[12]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [12]),
        .O(mul_op2[11]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_21
       (.I0(mul_ans__0_0[11]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [11]),
        .O(mul_op2[10]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_22
       (.I0(mul_ans__0_0[10]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [10]),
        .O(mul_op2[9]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_23
       (.I0(mul_ans__0_0[9]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [9]),
        .O(mul_op2[8]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_24
       (.I0(mul_ans__0_0[8]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [8]),
        .O(mul_op2[7]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_25
       (.I0(mul_ans__0_0[7]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [7]),
        .O(mul_op2[6]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_26
       (.I0(mul_ans__0_0[6]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [6]),
        .O(mul_op2[5]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_27
       (.I0(mul_ans__0_0[5]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [5]),
        .O(mul_op2[4]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_28
       (.I0(mul_ans__0_0[4]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [4]),
        .O(mul_op2[3]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_29
       (.I0(mul_ans__0_0[3]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [3]),
        .O(mul_op2[2]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_3
       (.I0(mul_ans[29]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [29]),
        .O(mul_op1[28]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_30
       (.I0(mul_ans__0_0[2]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [2]),
        .O(mul_op2[1]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_31
       (.I0(mul_ans__0_0[1]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans__0_0[31]),
        .I4(\ex0/mul_op20 [1]),
        .O(mul_op2[0]));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    mul_ans_i_32
       (.I0(ex_aluop_i[1]),
        .I1(ex_aluop_i[5]),
        .I2(ex_aluop_i[2]),
        .I3(ex_aluop_i[6]),
        .I4(ex_aluop_i[3]),
        .I5(ex_aluop_i[4]),
        .O(mul_ans__0));
  CARRY4 mul_ans_i_33
       (.CI(mul_ans_i_34_n_4),
        .CO({NLW_mul_ans_i_33_CO_UNCONNECTED[3:2],mul_ans_i_33_n_6,mul_ans_i_33_n_7}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_mul_ans_i_33_O_UNCONNECTED[3],\ex0/mul_op10 [31:29]}),
        .S({1'b0,mul_ans_i_41_n_4,mul_ans_i_42_n_4,mul_ans_i_43_n_4}));
  CARRY4 mul_ans_i_34
       (.CI(mul_ans_i_35_n_4),
        .CO({mul_ans_i_34_n_4,mul_ans_i_34_n_5,mul_ans_i_34_n_6,mul_ans_i_34_n_7}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ex0/mul_op10 [28:25]),
        .S({mul_ans_i_44_n_4,mul_ans_i_45_n_4,mul_ans_i_46_n_4,mul_ans_i_47_n_4}));
  CARRY4 mul_ans_i_35
       (.CI(mul_ans_i_36_n_4),
        .CO({mul_ans_i_35_n_4,mul_ans_i_35_n_5,mul_ans_i_35_n_6,mul_ans_i_35_n_7}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ex0/mul_op10 [24:21]),
        .S({mul_ans_i_48_n_4,mul_ans_i_49_n_4,mul_ans_i_50_n_4,mul_ans_i_51_n_4}));
  CARRY4 mul_ans_i_36
       (.CI(mul_ans__1_i_17_n_4),
        .CO({mul_ans_i_36_n_4,mul_ans_i_36_n_5,mul_ans_i_36_n_6,mul_ans_i_36_n_7}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ex0/mul_op10 [20:17]),
        .S({mul_ans_i_52_n_4,mul_ans_i_53_n_4,mul_ans_i_54_n_4,mul_ans_i_55_n_4}));
  CARRY4 mul_ans_i_37
       (.CI(mul_ans_i_38_n_4),
        .CO({mul_ans_i_37_n_4,mul_ans_i_37_n_5,mul_ans_i_37_n_6,mul_ans_i_37_n_7}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ex0/mul_op20 [16:13]),
        .S({mul_ans_i_56_n_4,mul_ans_i_57_n_4,mul_ans_i_58_n_4,mul_ans_i_59_n_4}));
  CARRY4 mul_ans_i_38
       (.CI(mul_ans_i_39_n_4),
        .CO({mul_ans_i_38_n_4,mul_ans_i_38_n_5,mul_ans_i_38_n_6,mul_ans_i_38_n_7}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ex0/mul_op20 [12:9]),
        .S({mul_ans_i_60_n_4,mul_ans_i_61_n_4,mul_ans_i_62_n_4,mul_ans_i_63_n_4}));
  CARRY4 mul_ans_i_39
       (.CI(mul_ans_i_40_n_4),
        .CO({mul_ans_i_39_n_4,mul_ans_i_39_n_5,mul_ans_i_39_n_6,mul_ans_i_39_n_7}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ex0/mul_op20 [8:5]),
        .S({mul_ans_i_64_n_4,mul_ans_i_65_n_4,mul_ans_i_66_n_4,mul_ans_i_67_n_4}));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_4
       (.I0(mul_ans[28]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [28]),
        .O(mul_op1[27]));
  CARRY4 mul_ans_i_40
       (.CI(1'b0),
        .CO({mul_ans_i_40_n_4,mul_ans_i_40_n_5,mul_ans_i_40_n_6,mul_ans_i_40_n_7}),
        .CYINIT(mul_ans_i_68_n_4),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ex0/mul_op20 [4:1]),
        .S({mul_ans_i_69_n_4,mul_ans_i_70_n_4,mul_ans_i_71_n_4,mul_ans_i_72_n_4}));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_41
       (.I0(mul_ans[31]),
        .O(mul_ans_i_41_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_42
       (.I0(mul_ans[30]),
        .O(mul_ans_i_42_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_43
       (.I0(mul_ans[29]),
        .O(mul_ans_i_43_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_44
       (.I0(mul_ans[28]),
        .O(mul_ans_i_44_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_45
       (.I0(mul_ans[27]),
        .O(mul_ans_i_45_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_46
       (.I0(mul_ans[26]),
        .O(mul_ans_i_46_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_47
       (.I0(mul_ans[25]),
        .O(mul_ans_i_47_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_48
       (.I0(mul_ans[24]),
        .O(mul_ans_i_48_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_49
       (.I0(mul_ans[23]),
        .O(mul_ans_i_49_n_4));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_5
       (.I0(mul_ans[27]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [27]),
        .O(mul_op1[26]));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_50
       (.I0(mul_ans[22]),
        .O(mul_ans_i_50_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_51
       (.I0(mul_ans[21]),
        .O(mul_ans_i_51_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_52
       (.I0(mul_ans[20]),
        .O(mul_ans_i_52_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_53
       (.I0(mul_ans[19]),
        .O(mul_ans_i_53_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_54
       (.I0(mul_ans[18]),
        .O(mul_ans_i_54_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_55
       (.I0(mul_ans[17]),
        .O(mul_ans_i_55_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_56
       (.I0(mul_ans__0_0[16]),
        .O(mul_ans_i_56_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_57
       (.I0(mul_ans__0_0[15]),
        .O(mul_ans_i_57_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_58
       (.I0(mul_ans__0_0[14]),
        .O(mul_ans_i_58_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_59
       (.I0(mul_ans__0_0[13]),
        .O(mul_ans_i_59_n_4));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_6
       (.I0(mul_ans[26]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [26]),
        .O(mul_op1[25]));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_60
       (.I0(mul_ans__0_0[12]),
        .O(mul_ans_i_60_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_61
       (.I0(mul_ans__0_0[11]),
        .O(mul_ans_i_61_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_62
       (.I0(mul_ans__0_0[10]),
        .O(mul_ans_i_62_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_63
       (.I0(mul_ans__0_0[9]),
        .O(mul_ans_i_63_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_64
       (.I0(mul_ans__0_0[8]),
        .O(mul_ans_i_64_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_65
       (.I0(mul_ans__0_0[7]),
        .O(mul_ans_i_65_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_66
       (.I0(mul_ans__0_0[6]),
        .O(mul_ans_i_66_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_67
       (.I0(mul_ans__0_0[5]),
        .O(mul_ans_i_67_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_68
       (.I0(mul_ans__0_0[0]),
        .O(mul_ans_i_68_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_69
       (.I0(mul_ans__0_0[4]),
        .O(mul_ans_i_69_n_4));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_7
       (.I0(mul_ans[25]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [25]),
        .O(mul_op1[24]));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_70
       (.I0(mul_ans__0_0[3]),
        .O(mul_ans_i_70_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_71
       (.I0(mul_ans__0_0[2]),
        .O(mul_ans_i_71_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    mul_ans_i_72
       (.I0(mul_ans__0_0[1]),
        .O(mul_ans_i_72_n_4));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_8
       (.I0(mul_ans[24]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [24]),
        .O(mul_op1[23]));
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    mul_ans_i_9
       (.I0(mul_ans[23]),
        .I1(mul_ans__0),
        .I2(ex_aluop_i[0]),
        .I3(mul_ans[31]),
        .I4(\ex0/mul_op10 [23]),
        .O(mul_op1[22]));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    n_0_468_BUFG_inst_i_1
       (.I0(ex_aluop_i[1]),
        .I1(ex_aluop_i[3]),
        .I2(div_start_o_reg_i_2_n_4),
        .I3(ex_aluop_i[4]),
        .I4(ex_aluop_i[5]),
        .I5(rst_IBUF),
        .O(n_0_468_BUFG_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    n_1_934_BUFG_inst_i_1
       (.I0(ex_alusel_i[1]),
        .I1(ex_alusel_i[2]),
        .I2(ex_alusel_i[0]),
        .I3(rst_IBUF),
        .O(n_1_934_BUFG_inst_n_2));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    n_2_498_BUFG_inst_i_1
       (.I0(ex_aluop_i[5]),
        .I1(ex_aluop_i[4]),
        .I2(rst_IBUF),
        .I3(n_2_498_BUFG_inst_i_2_n_4),
        .I4(ex_aluop_i[1]),
        .I5(ex_aluop_i[0]),
        .O(n_2_498_BUFG_inst_n_3));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h01)) 
    n_2_498_BUFG_inst_i_2
       (.I0(ex_aluop_i[6]),
        .I1(ex_aluop_i[3]),
        .I2(ex_aluop_i[2]),
        .O(n_2_498_BUFG_inst_i_2_n_4));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    n_3_499_BUFG_inst_i_1
       (.I0(ex_aluop_i[1]),
        .I1(ex_aluop_i[0]),
        .I2(rst_IBUF),
        .I3(ex_aluop_i[4]),
        .I4(ex_aluop_i[5]),
        .I5(n_2_498_BUFG_inst_i_2_n_4),
        .O(n_3_499_BUFG_inst_n_4));
  LUT6 #(
    .INIT(64'h0000000044422242)) 
    ovassert_reg_i_1
       (.I0(\ex0/p_0_in6_in ),
        .I1(mul_ans[31]),
        .I2(\ex0/mul_op20 [31]),
        .I3(ovassert_reg_i_4_n_4),
        .I4(mul_ans__0_0[31]),
        .I5(ovassert_reg_i_5_n_4),
        .O(ovassert0));
  LUT1 #(
    .INIT(2'h1)) 
    ovassert_reg_i_10
       (.I0(mul_ans__0_0[31]),
        .O(ovassert_reg_i_10_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    ovassert_reg_i_11
       (.I0(mul_ans__0_0[30]),
        .O(ovassert_reg_i_11_n_4));
  LUT1 #(
    .INIT(2'h1)) 
    ovassert_reg_i_12
       (.I0(mul_ans__0_0[29]),
        .O(ovassert_reg_i_12_n_4));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    ovassert_reg_i_13
       (.I0(ex_aluop_i[0]),
        .I1(ex_aluop_i[6]),
        .I2(ex_aluop_i[5]),
        .O(ovassert_reg_i_13_n_4));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    ovassert_reg_i_14
       (.I0(ex_aluop_i[2]),
        .I1(ex_aluop_i[6]),
        .I2(ex_aluop_i[4]),
        .I3(ex_aluop_i[5]),
        .I4(ex_aluop_i[3]),
        .O(ovassert_reg_i_14_n_4));
  CARRY4 ovassert_reg_i_2
       (.CI(\wdata_o_reg[27]_i_5_n_4 ),
        .CO({NLW_ovassert_reg_i_2_CO_UNCONNECTED[3],ovassert_reg_i_2_n_5,ovassert_reg_i_2_n_6,ovassert_reg_i_2_n_7}),
        .CYINIT(1'b0),
        .DI({1'b0,mul_ans[30:28]}),
        .O({\ex0/p_0_in6_in ,\ex0/data1 [30:28]}),
        .S({ovassert_reg_i_6_n_4,ovassert_reg_i_7_n_4,ovassert_reg_i_8_n_4,ovassert_reg_i_9_n_4}));
  CARRY4 ovassert_reg_i_3
       (.CI(mul_ans__0_i_16_n_4),
        .CO({NLW_ovassert_reg_i_3_CO_UNCONNECTED[3:2],ovassert_reg_i_3_n_6,ovassert_reg_i_3_n_7}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_ovassert_reg_i_3_O_UNCONNECTED[3],\ex0/mul_op20 [31:29]}),
        .S({1'b0,ovassert_reg_i_10_n_4,ovassert_reg_i_11_n_4,ovassert_reg_i_12_n_4}));
  LUT6 #(
    .INIT(64'hFEEF0000FFEFFFEF)) 
    ovassert_reg_i_4
       (.I0(ex_aluop_i[2]),
        .I1(ovassert_reg_i_13_n_4),
        .I2(ex_aluop_i[4]),
        .I3(ex_aluop_i[3]),
        .I4(ovassert_reg_i_14_n_4),
        .I5(ex_aluop_i[1]),
        .O(ovassert_reg_i_4_n_4));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    ovassert_reg_i_5
       (.I0(ex_aluop_i[0]),
        .I1(ex_aluop_i[3]),
        .I2(ex_aluop_i[5]),
        .I3(ex_aluop_i[4]),
        .I4(ex_aluop_i[6]),
        .I5(ex_aluop_i[2]),
        .O(ovassert_reg_i_5_n_4));
  LUT4 #(
    .INIT(16'h56A6)) 
    ovassert_reg_i_6
       (.I0(mul_ans[31]),
        .I1(\ex0/mul_op20 [31]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[31]),
        .O(ovassert_reg_i_6_n_4));
  LUT4 #(
    .INIT(16'h56A6)) 
    ovassert_reg_i_7
       (.I0(mul_ans[30]),
        .I1(\ex0/mul_op20 [30]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[30]),
        .O(ovassert_reg_i_7_n_4));
  LUT4 #(
    .INIT(16'h56A6)) 
    ovassert_reg_i_8
       (.I0(mul_ans[29]),
        .I1(\ex0/mul_op20 [29]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[29]),
        .O(ovassert_reg_i_8_n_4));
  LUT4 #(
    .INIT(16'h56A6)) 
    ovassert_reg_i_9
       (.I0(mul_ans[28]),
        .I1(\ex0/mul_op20 [28]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[28]),
        .O(ovassert_reg_i_9_n_4));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \pc[31]_i_16 
       (.I0(mem_wdata_o),
        .I1(\ex_reg1[31]_i_4_n_4 ),
        .I2(reg1_data[17]),
        .I3(\ex_reg1_reg[6]_0 ),
        .I4(\ex_alusel_reg[2]_0 [30]),
        .I5(\ex_reg1_reg[0]_0 ),
        .O(\pc_reg[31]_0 ));
  LUT6 #(
    .INIT(64'h00FDFFFF00FD0000)) 
    \pc[31]_i_19 
       (.I0(mem_wdata_i[31]),
        .I1(rst_IBUF),
        .I2(\ex_reg1[31]_i_4_n_4 ),
        .I3(\ex_reg1[31]_i_3_n_4 ),
        .I4(reg1_read),
        .I5(\id_inst_reg[28] ),
        .O(\pc_reg[31] ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    signed_div_o_reg_i_1
       (.I0(ex_aluop_i[1]),
        .I1(ex_aluop_i[3]),
        .I2(div_start_o_reg_i_2_n_4),
        .I3(ex_aluop_i[4]),
        .I4(ex_aluop_i[5]),
        .I5(ex_aluop_i[0]),
        .O(\divider_reg[1] ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    stallreq_reg_i_2
       (.I0(ex_aluop_i[5]),
        .I1(ex_aluop_i[4]),
        .I2(ex_aluop_i[2]),
        .I3(ex_aluop_i[6]),
        .I4(ex_aluop_i[3]),
        .I5(ex_aluop_i[1]),
        .O(\mem_lo_reg[0] ));
  LUT6 #(
    .INIT(64'h2A2222222A22AAAA)) 
    \wdata_o_reg[0]_i_1 
       (.I0(\wdata_o_reg[0]_i_2_n_4 ),
        .I1(ex_alusel_i[2]),
        .I2(ex_alusel_i[0]),
        .I3(\mem_current_inst_addr_reg[1] [0]),
        .I4(ex_alusel_i[1]),
        .I5(\wdata_o_reg[0]_i_3_n_4 ),
        .O(\mem_wdata_reg[31] [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[0]_i_11 
       (.I0(\wdata_o_reg[1]_i_12_n_4 ),
        .I1(mul_ans[0]),
        .I2(\wdata_o_reg[0]_i_12_n_4 ),
        .O(\wdata_o_reg[0]_i_11_n_4 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata_o_reg[0]_i_12 
       (.I0(\wdata_o_reg[1]_i_11_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[3]_i_28_n_4 ),
        .I3(mul_ans[2]),
        .I4(\wdata_o_reg[0]_i_13_n_4 ),
        .O(\wdata_o_reg[0]_i_12_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[0]_i_13 
       (.I0(mul_ans__0_0[24]),
        .I1(mul_ans__0_0[8]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[16]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[0]),
        .O(\wdata_o_reg[0]_i_13_n_4 ));
  LUT6 #(
    .INIT(64'hAEFFAAAAAEAAAAAA)) 
    \wdata_o_reg[0]_i_2 
       (.I0(\wdata_o_reg[0]_i_4_n_4 ),
        .I1(\wdata_o_reg[0]_i_5_n_4 ),
        .I2(\wdata_o_reg[26]_i_7_n_4 ),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[26]_i_6_n_4 ),
        .I5(\wdata_o_reg[0]_i_6_n_4 ),
        .O(\wdata_o_reg[0]_i_2_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hFFBFFFB0)) 
    \wdata_o_reg[0]_i_3 
       (.I0(mul_ans__0),
        .I1(P[0]),
        .I2(ex_alusel_i[0]),
        .I3(rst_IBUF),
        .I4(\wdata_o_reg[0]_i_7_n_4 ),
        .O(\wdata_o_reg[0]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[0]_i_4 
       (.I0(ex_alusel_i[2]),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[0]),
        .I4(mul_ans__0_0[0]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[0]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[0]_i_5 
       (.I0(\wb_lo_reg[0] ),
        .I1(\mem_cp0_reg_data_reg[0]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[0]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_24),
        .O(\wdata_o_reg[0]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'hF000F10100000000)) 
    \wdata_o_reg[0]_i_6 
       (.I0(\wdata_o_reg[1]_i_13_n_4 ),
        .I1(mul_ans[0]),
        .I2(ex_aluop_i[1]),
        .I3(\wdata_o_reg[0]_i_11_n_4 ),
        .I4(ex_aluop_i[0]),
        .I5(\wdata_o_reg[31]_i_7_n_4 ),
        .O(\wdata_o_reg[0]_i_6_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFD1DD)) 
    \wdata_o_reg[0]_i_7 
       (.I0(\ex0/data1 [0]),
        .I1(ex_aluop_i[3]),
        .I2(\mem_excepttype[10]_i_2_n_4 ),
        .I3(ex_aluop_i[1]),
        .I4(mem_cp0_reg_we_i_3_n_4),
        .I5(div_start_o_reg_i_2_n_4),
        .O(\wdata_o_reg[0]_i_7_n_4 ));
  LUT6 #(
    .INIT(64'h00000000FFFF08FF)) 
    \wdata_o_reg[10]_i_1 
       (.I0(ex_alusel_i[1]),
        .I1(ex_link_addr_i[10]),
        .I2(ex_alusel_i[0]),
        .I3(ex_alusel_i[2]),
        .I4(\wdata_o_reg[10]_i_2_n_4 ),
        .I5(\wdata_o_reg[10]_i_3_n_4 ),
        .O(\mem_wdata_reg[31] [10]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h00030005)) 
    \wdata_o_reg[10]_i_10 
       (.I0(\wdata_o_reg[11]_i_18_n_4 ),
        .I1(\wdata_o_reg[9]_i_12_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(mul_ans[0]),
        .O(\wdata_o_reg[10]_i_10_n_4 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \wdata_o_reg[10]_i_11 
       (.I0(\wdata_o_reg[11]_i_16_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[9]_i_10_n_4 ),
        .I3(\wdata_o_reg[13]_i_10_n_4 ),
        .I4(\wdata_o_reg[11]_i_15_n_4 ),
        .I5(mul_ans[0]),
        .O(\wdata_o_reg[10]_i_11_n_4 ));
  LUT5 #(
    .INIT(32'h04550404)) 
    \wdata_o_reg[10]_i_2 
       (.I0(ex_alusel_i[1]),
        .I1(ex_alusel_i[0]),
        .I2(mul_ans__1),
        .I3(\wdata_o_reg[31]_i_9_n_4 ),
        .I4(\ex0/data1 [10]),
        .O(\wdata_o_reg[10]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h000000007F4F7F7F)) 
    \wdata_o_reg[10]_i_3 
       (.I0(\wdata_o_reg[10]_i_4_n_4 ),
        .I1(ex_alusel_i[0]),
        .I2(\wdata_o_reg[26]_i_6_n_4 ),
        .I3(\wdata_o_reg[10]_i_5_n_4 ),
        .I4(\wdata_o_reg[31]_i_7_n_4 ),
        .I5(\wdata_o_reg[10]_i_6_n_4 ),
        .O(\wdata_o_reg[10]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \wdata_o_reg[10]_i_4 
       (.I0(mem_whilo_reg_4),
        .I1(\mem_wdata_reg[10] ),
        .I2(mul_ans[10]),
        .I3(\mem_wdata_reg[30] ),
        .I4(\wb_cp0_reg_data_reg[10] ),
        .I5(\wdata_o_reg[26]_i_7_n_4 ),
        .O(\wdata_o_reg[10]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'h000D0F0F000F0F0F)) 
    \wdata_o_reg[10]_i_5 
       (.I0(mul_ans__0_0[31]),
        .I1(\wdata_o_reg[10]_i_9_n_4 ),
        .I2(\wdata_o_reg[10]_i_10_n_4 ),
        .I3(\wdata_o_reg[10]_i_11_n_4 ),
        .I4(ex_aluop_i[1]),
        .I5(ex_aluop_i[0]),
        .O(\wdata_o_reg[10]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[10]_i_6 
       (.I0(ex_alusel_i[2]),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[10]),
        .I4(mul_ans__0_0[10]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[10]_i_6_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h0700FF00)) 
    \wdata_o_reg[10]_i_9 
       (.I0(mul_ans[2]),
        .I1(mul_ans[1]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[31]),
        .I4(mul_ans[4]),
        .O(\wdata_o_reg[10]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'h0000DDD0DDDDDDDD)) 
    \wdata_o_reg[11]_i_1 
       (.I0(ex_alusel_i[2]),
        .I1(\wdata_o_reg[11]_i_2_n_4 ),
        .I2(\wdata_o_reg[11]_i_3_n_4 ),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[11]_i_4_n_4 ),
        .I5(\wdata_o_reg[11]_i_5_n_4 ),
        .O(\mem_wdata_reg[31] [11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[11]_i_10 
       (.I0(\wb_lo_reg[11] ),
        .I1(\mem_cp0_reg_data_reg[11]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[11]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_18),
        .O(\wdata_o_reg[11]_i_10_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[11]_i_11 
       (.I0(mul_ans[11]),
        .I1(\ex0/mul_op20 [11]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[11]),
        .O(\wdata_o_reg[11]_i_11_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[11]_i_12 
       (.I0(mul_ans[10]),
        .I1(\ex0/mul_op20 [10]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[10]),
        .O(\wdata_o_reg[11]_i_12_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[11]_i_13 
       (.I0(mul_ans[9]),
        .I1(\ex0/mul_op20 [9]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[9]),
        .O(\wdata_o_reg[11]_i_13_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[11]_i_14 
       (.I0(mul_ans[8]),
        .I1(\ex0/mul_op20 [8]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[8]),
        .O(\wdata_o_reg[11]_i_14_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[11]_i_15 
       (.I0(\wdata_o_reg[15]_i_22_n_4 ),
        .I1(mul_ans[2]),
        .I2(\wdata_o_reg[11]_i_22_n_4 ),
        .O(\wdata_o_reg[11]_i_15_n_4 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \wdata_o_reg[11]_i_16 
       (.I0(mul_ans__0_0[24]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[16]),
        .I3(mul_ans[4]),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[11]_i_23_n_4 ),
        .O(\wdata_o_reg[11]_i_16_n_4 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[11]_i_17 
       (.I0(\wdata_o_reg[11]_i_24_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[13]_i_19_n_4 ),
        .O(\wdata_o_reg[11]_i_17_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[11]_i_18 
       (.I0(\wdata_o_reg[11]_i_25_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[13]_i_20_n_4 ),
        .O(\wdata_o_reg[11]_i_18_n_4 ));
  LUT6 #(
    .INIT(64'h03008B8833338B88)) 
    \wdata_o_reg[11]_i_2 
       (.I0(ex_link_addr_i[11]),
        .I1(ex_alusel_i[1]),
        .I2(\wdata_o_reg[31]_i_9_n_4 ),
        .I3(\ex0/data1 [11]),
        .I4(ex_alusel_i[0]),
        .I5(mul_ans__1_7),
        .O(\wdata_o_reg[11]_i_2_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \wdata_o_reg[11]_i_22 
       (.I0(mul_ans__0_0[19]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[27]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[11]),
        .O(\wdata_o_reg[11]_i_22_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \wdata_o_reg[11]_i_23 
       (.I0(mul_ans__0_0[20]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[28]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[12]),
        .O(\wdata_o_reg[11]_i_23_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    \wdata_o_reg[11]_i_24 
       (.I0(mul_ans__0_0[5]),
        .I1(mul_ans[2]),
        .I2(mul_ans__0_0[1]),
        .I3(mul_ans[3]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[9]),
        .O(\wdata_o_reg[11]_i_24_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    \wdata_o_reg[11]_i_25 
       (.I0(mul_ans__0_0[4]),
        .I1(mul_ans[2]),
        .I2(mul_ans__0_0[0]),
        .I3(mul_ans[3]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[8]),
        .O(\wdata_o_reg[11]_i_25_n_4 ));
  LUT6 #(
    .INIT(64'hAAAAA000AAAAA080)) 
    \wdata_o_reg[11]_i_3 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(\wdata_o_reg[11]_i_7_n_4 ),
        .I4(\wdata_o_reg[11]_i_8_n_4 ),
        .I5(\wdata_o_reg[11]_i_9_n_4 ),
        .O(\wdata_o_reg[11]_i_3_n_4 ));
  LUT5 #(
    .INIT(32'hFFD0FFFF)) 
    \wdata_o_reg[11]_i_4 
       (.I0(\wdata_o_reg[11]_i_10_n_4 ),
        .I1(\wdata_o_reg[26]_i_7_n_4 ),
        .I2(ex_alusel_i[0]),
        .I3(rst_IBUF),
        .I4(ex_alusel_i[1]),
        .O(\wdata_o_reg[11]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'h5041411555555555)) 
    \wdata_o_reg[11]_i_5 
       (.I0(ex_alusel_i[2]),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[11]),
        .I4(mul_ans__0_0[11]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[11]_i_5_n_4 ));
  CARRY4 \wdata_o_reg[11]_i_6 
       (.CI(\wdata_o_reg[6]_i_5_n_4 ),
        .CO({\wdata_o_reg[11]_i_6_n_4 ,\wdata_o_reg[11]_i_6_n_5 ,\wdata_o_reg[11]_i_6_n_6 ,\wdata_o_reg[11]_i_6_n_7 }),
        .CYINIT(1'b0),
        .DI(mul_ans[11:8]),
        .O(\ex0/data1 [11:8]),
        .S({\wdata_o_reg[11]_i_11_n_4 ,\wdata_o_reg[11]_i_12_n_4 ,\wdata_o_reg[11]_i_13_n_4 ,\wdata_o_reg[11]_i_14_n_4 }));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \wdata_o_reg[11]_i_7 
       (.I0(\wdata_o_reg[13]_i_10_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[11]_i_15_n_4 ),
        .I3(\wdata_o_reg[13]_i_11_n_4 ),
        .I4(\wdata_o_reg[11]_i_16_n_4 ),
        .I5(mul_ans[0]),
        .O(\wdata_o_reg[11]_i_7_n_4 ));
  LUT5 #(
    .INIT(32'h00030005)) 
    \wdata_o_reg[11]_i_8 
       (.I0(\wdata_o_reg[11]_i_17_n_4 ),
        .I1(\wdata_o_reg[11]_i_18_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(mul_ans[0]),
        .O(\wdata_o_reg[11]_i_8_n_4 ));
  LUT6 #(
    .INIT(64'h55775777FFFFFFFF)) 
    \wdata_o_reg[11]_i_9 
       (.I0(mul_ans[4]),
        .I1(mul_ans[3]),
        .I2(mul_ans[1]),
        .I3(mul_ans[2]),
        .I4(mul_ans[0]),
        .I5(mul_ans__0_0[31]),
        .O(\wdata_o_reg[11]_i_9_n_4 ));
  MUXF7 \wdata_o_reg[12]_i_1 
       (.I0(\wdata_o_reg[12]_i_2_n_4 ),
        .I1(\wdata_o_reg[12]_i_3_n_4 ),
        .O(\mem_wdata_reg[31] [12]),
        .S(ex_alusel_i[2]));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[12]_i_2 
       (.I0(\wdata_o_reg[12]_i_4_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[12]),
        .I4(mul_ans__0_0[12]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[12]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h038833BB03880388)) 
    \wdata_o_reg[12]_i_3 
       (.I0(ex_link_addr_i[12]),
        .I1(ex_alusel_i[1]),
        .I2(mul_ans__1_8),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[31]_i_9_n_4 ),
        .I5(\ex0/data1 [12]),
        .O(\wdata_o_reg[12]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h0020F02000200020)) 
    \wdata_o_reg[12]_i_4 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(\wdata_o_reg[12]_i_5_n_4 ),
        .I2(\wdata_o_reg[26]_i_6_n_4 ),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[26]_i_7_n_4 ),
        .I5(\wdata_o_reg[12]_i_6_n_4 ),
        .O(\wdata_o_reg[12]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'h000D0F0F000F0F0F)) 
    \wdata_o_reg[12]_i_5 
       (.I0(mul_ans__0_0[31]),
        .I1(\wdata_o_reg[12]_i_7_n_4 ),
        .I2(\wdata_o_reg[12]_i_8_n_4 ),
        .I3(\wdata_o_reg[12]_i_9_n_4 ),
        .I4(ex_aluop_i[1]),
        .I5(ex_aluop_i[0]),
        .O(\wdata_o_reg[12]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[12]_i_6 
       (.I0(\wb_lo_reg[12] ),
        .I1(\mem_cp0_reg_data_reg[12]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[12]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_17),
        .O(\wdata_o_reg[12]_i_6_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h10F0)) 
    \wdata_o_reg[12]_i_7 
       (.I0(mul_ans[2]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[31]),
        .I3(mul_ans[4]),
        .O(\wdata_o_reg[12]_i_7_n_4 ));
  LUT5 #(
    .INIT(32'h00030005)) 
    \wdata_o_reg[12]_i_8 
       (.I0(\wdata_o_reg[13]_i_13_n_4 ),
        .I1(\wdata_o_reg[11]_i_17_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(mul_ans[0]),
        .O(\wdata_o_reg[12]_i_8_n_4 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \wdata_o_reg[12]_i_9 
       (.I0(\wdata_o_reg[13]_i_11_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[11]_i_16_n_4 ),
        .I3(\wdata_o_reg[15]_i_11_n_4 ),
        .I4(\wdata_o_reg[13]_i_10_n_4 ),
        .I5(mul_ans[0]),
        .O(\wdata_o_reg[12]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'hD0D0D0D0DDDDDDD0)) 
    \wdata_o_reg[13]_i_1 
       (.I0(ex_alusel_i[2]),
        .I1(\wdata_o_reg[13]_i_2_n_4 ),
        .I2(\wdata_o_reg[13]_i_3_n_4 ),
        .I3(\wdata_o_reg[13]_i_4_n_4 ),
        .I4(ex_alusel_i[0]),
        .I5(\wdata_o_reg[13]_i_5_n_4 ),
        .O(\mem_wdata_reg[31] [13]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \wdata_o_reg[13]_i_10 
       (.I0(mul_ans__0_0[25]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[17]),
        .I3(mul_ans[4]),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[13]_i_17_n_4 ),
        .O(\wdata_o_reg[13]_i_10_n_4 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \wdata_o_reg[13]_i_11 
       (.I0(mul_ans__0_0[26]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[18]),
        .I3(mul_ans[4]),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[13]_i_18_n_4 ),
        .O(\wdata_o_reg[13]_i_11_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[13]_i_12 
       (.I0(\wdata_o_reg[13]_i_19_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[15]_i_24_n_4 ),
        .O(\wdata_o_reg[13]_i_12_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[13]_i_13 
       (.I0(\wdata_o_reg[13]_i_20_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[15]_i_25_n_4 ),
        .O(\wdata_o_reg[13]_i_13_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \wdata_o_reg[13]_i_17 
       (.I0(mul_ans__0_0[21]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[29]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[13]),
        .O(\wdata_o_reg[13]_i_17_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \wdata_o_reg[13]_i_18 
       (.I0(mul_ans__0_0[22]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[30]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[14]),
        .O(\wdata_o_reg[13]_i_18_n_4 ));
  LUT6 #(
    .INIT(64'hFCFFF4F4FCFFF7F7)) 
    \wdata_o_reg[13]_i_19 
       (.I0(mul_ans__0_0[7]),
        .I1(mul_ans[2]),
        .I2(mul_ans[4]),
        .I3(mul_ans__0_0[3]),
        .I4(mul_ans[3]),
        .I5(mul_ans__0_0[11]),
        .O(\wdata_o_reg[13]_i_19_n_4 ));
  LUT6 #(
    .INIT(64'h03008B8833338B88)) 
    \wdata_o_reg[13]_i_2 
       (.I0(ex_link_addr_i[13]),
        .I1(ex_alusel_i[1]),
        .I2(\wdata_o_reg[31]_i_9_n_4 ),
        .I3(\ex0/data1 [13]),
        .I4(ex_alusel_i[0]),
        .I5(mul_ans__1_9),
        .O(\wdata_o_reg[13]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    \wdata_o_reg[13]_i_20 
       (.I0(mul_ans__0_0[6]),
        .I1(mul_ans[2]),
        .I2(mul_ans__0_0[2]),
        .I3(mul_ans[3]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[10]),
        .O(\wdata_o_reg[13]_i_20_n_4 ));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[13]_i_3 
       (.I0(ex_alusel_i[2]),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[13]),
        .I4(mul_ans__0_0[13]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[13]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'hAAAAA000AAAAA080)) 
    \wdata_o_reg[13]_i_4 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(\wdata_o_reg[13]_i_6_n_4 ),
        .I4(\wdata_o_reg[13]_i_7_n_4 ),
        .I5(\wdata_o_reg[13]_i_8_n_4 ),
        .O(\wdata_o_reg[13]_i_4_n_4 ));
  LUT5 #(
    .INIT(32'hFFD0FFFF)) 
    \wdata_o_reg[13]_i_5 
       (.I0(\wdata_o_reg[13]_i_9_n_4 ),
        .I1(\wdata_o_reg[26]_i_7_n_4 ),
        .I2(ex_alusel_i[0]),
        .I3(rst_IBUF),
        .I4(ex_alusel_i[1]),
        .O(\wdata_o_reg[13]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \wdata_o_reg[13]_i_6 
       (.I0(\wdata_o_reg[15]_i_11_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[13]_i_10_n_4 ),
        .I3(\wdata_o_reg[15]_i_12_n_4 ),
        .I4(\wdata_o_reg[13]_i_11_n_4 ),
        .I5(mul_ans[0]),
        .O(\wdata_o_reg[13]_i_6_n_4 ));
  LUT5 #(
    .INIT(32'h00030005)) 
    \wdata_o_reg[13]_i_7 
       (.I0(\wdata_o_reg[13]_i_12_n_4 ),
        .I1(\wdata_o_reg[13]_i_13_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(mul_ans[0]),
        .O(\wdata_o_reg[13]_i_7_n_4 ));
  LUT6 #(
    .INIT(64'h55575757FFFFFFFF)) 
    \wdata_o_reg[13]_i_8 
       (.I0(mul_ans[4]),
        .I1(mul_ans[3]),
        .I2(mul_ans[2]),
        .I3(mul_ans[0]),
        .I4(mul_ans[1]),
        .I5(mul_ans__0_0[31]),
        .O(\wdata_o_reg[13]_i_8_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[13]_i_9 
       (.I0(\wb_lo_reg[13] ),
        .I1(\mem_cp0_reg_data_reg[13]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[13]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_16),
        .O(\wdata_o_reg[13]_i_9_n_4 ));
  LUT4 #(
    .INIT(16'hE0EE)) 
    \wdata_o_reg[14]_i_1 
       (.I0(\wdata_o_reg[14]_i_2_n_4 ),
        .I1(\wdata_o_reg[14]_i_3_n_4 ),
        .I2(\wdata_o_reg[14]_i_4_n_4 ),
        .I3(ex_alusel_i[2]),
        .O(\mem_wdata_reg[31] [14]));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[14]_i_2 
       (.I0(ex_alusel_i[2]),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[14]),
        .I4(mul_ans__0_0[14]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[14]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h0020F02000200020)) 
    \wdata_o_reg[14]_i_3 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(\wdata_o_reg[14]_i_5_n_4 ),
        .I2(\wdata_o_reg[26]_i_6_n_4 ),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[26]_i_7_n_4 ),
        .I5(\wdata_o_reg[14]_i_6_n_4 ),
        .O(\wdata_o_reg[14]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h03008B8833338B88)) 
    \wdata_o_reg[14]_i_4 
       (.I0(ex_link_addr_i[14]),
        .I1(ex_alusel_i[1]),
        .I2(\wdata_o_reg[31]_i_9_n_4 ),
        .I3(\ex0/data1 [14]),
        .I4(ex_alusel_i[0]),
        .I5(mul_ans__1_10),
        .O(\wdata_o_reg[14]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'h000D0F0F000F0F0F)) 
    \wdata_o_reg[14]_i_5 
       (.I0(mul_ans__0_0[31]),
        .I1(\wdata_o_reg[14]_i_7_n_4 ),
        .I2(\wdata_o_reg[14]_i_8_n_4 ),
        .I3(\wdata_o_reg[14]_i_9_n_4 ),
        .I4(ex_aluop_i[1]),
        .I5(ex_aluop_i[0]),
        .O(\wdata_o_reg[14]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[14]_i_6 
       (.I0(\wb_lo_reg[14] ),
        .I1(\mem_cp0_reg_data_reg[14]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[14]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_15),
        .O(\wdata_o_reg[14]_i_6_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h0100FF00)) 
    \wdata_o_reg[14]_i_7 
       (.I0(mul_ans[1]),
        .I1(mul_ans[2]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[31]),
        .I4(mul_ans[4]),
        .O(\wdata_o_reg[14]_i_7_n_4 ));
  LUT5 #(
    .INIT(32'h00030005)) 
    \wdata_o_reg[14]_i_8 
       (.I0(\wdata_o_reg[15]_i_14_n_4 ),
        .I1(\wdata_o_reg[13]_i_12_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(mul_ans[0]),
        .O(\wdata_o_reg[14]_i_8_n_4 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \wdata_o_reg[14]_i_9 
       (.I0(\wdata_o_reg[15]_i_12_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[13]_i_11_n_4 ),
        .I3(\wdata_o_reg[17]_i_11_n_4 ),
        .I4(\wdata_o_reg[15]_i_11_n_4 ),
        .I5(mul_ans[0]),
        .O(\wdata_o_reg[14]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'hFF0E0000FF0EFF0E)) 
    \wdata_o_reg[15]_i_1 
       (.I0(\wdata_o_reg[15]_i_2_n_4 ),
        .I1(ex_alusel_i[0]),
        .I2(\wdata_o_reg[15]_i_3_n_4 ),
        .I3(\wdata_o_reg[15]_i_4_n_4 ),
        .I4(\wdata_o_reg[15]_i_5_n_4 ),
        .I5(ex_alusel_i[2]),
        .O(\mem_wdata_reg[31] [15]));
  CARRY4 \wdata_o_reg[15]_i_10 
       (.CI(\wdata_o_reg[11]_i_6_n_4 ),
        .CO({\wdata_o_reg[15]_i_10_n_4 ,\wdata_o_reg[15]_i_10_n_5 ,\wdata_o_reg[15]_i_10_n_6 ,\wdata_o_reg[15]_i_10_n_7 }),
        .CYINIT(1'b0),
        .DI(mul_ans[15:12]),
        .O(\ex0/data1 [15:12]),
        .S({\wdata_o_reg[15]_i_18_n_4 ,\wdata_o_reg[15]_i_19_n_4 ,\wdata_o_reg[15]_i_20_n_4 ,\wdata_o_reg[15]_i_21_n_4 }));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \wdata_o_reg[15]_i_11 
       (.I0(mul_ans__0_0[27]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[19]),
        .I3(mul_ans[4]),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[15]_i_22_n_4 ),
        .O(\wdata_o_reg[15]_i_11_n_4 ));
  LUT6 #(
    .INIT(64'h0000FFFF00B800B8)) 
    \wdata_o_reg[15]_i_12 
       (.I0(mul_ans__0_0[24]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[16]),
        .I3(mul_ans[4]),
        .I4(\wdata_o_reg[15]_i_23_n_4 ),
        .I5(mul_ans[2]),
        .O(\wdata_o_reg[15]_i_12_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \wdata_o_reg[15]_i_13 
       (.I0(\wdata_o_reg[17]_i_19_n_4 ),
        .I1(\wdata_o_reg[15]_i_24_n_4 ),
        .I2(mul_ans[1]),
        .O(\wdata_o_reg[15]_i_13_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[15]_i_14 
       (.I0(\wdata_o_reg[15]_i_25_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[17]_i_20_n_4 ),
        .O(\wdata_o_reg[15]_i_14_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[15]_i_18 
       (.I0(mul_ans[15]),
        .I1(\ex0/mul_op20 [15]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[15]),
        .O(\wdata_o_reg[15]_i_18_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[15]_i_19 
       (.I0(mul_ans[14]),
        .I1(\ex0/mul_op20 [14]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[14]),
        .O(\wdata_o_reg[15]_i_19_n_4 ));
  LUT6 #(
    .INIT(64'hAAAAA000AAAAA080)) 
    \wdata_o_reg[15]_i_2 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(\wdata_o_reg[15]_i_6_n_4 ),
        .I4(\wdata_o_reg[15]_i_7_n_4 ),
        .I5(\wdata_o_reg[15]_i_8_n_4 ),
        .O(\wdata_o_reg[15]_i_2_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[15]_i_20 
       (.I0(mul_ans[13]),
        .I1(\ex0/mul_op20 [13]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[13]),
        .O(\wdata_o_reg[15]_i_20_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[15]_i_21 
       (.I0(mul_ans[12]),
        .I1(\ex0/mul_op20 [12]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[12]),
        .O(\wdata_o_reg[15]_i_21_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \wdata_o_reg[15]_i_22 
       (.I0(mul_ans__0_0[23]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[31]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[15]),
        .O(\wdata_o_reg[15]_i_22_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \wdata_o_reg[15]_i_23 
       (.I0(mul_ans__0_0[28]),
        .I1(mul_ans[3]),
        .I2(mul_ans[4]),
        .I3(mul_ans__0_0[20]),
        .O(\wdata_o_reg[15]_i_23_n_4 ));
  LUT6 #(
    .INIT(64'hF4F7F4F70000FFFF)) 
    \wdata_o_reg[15]_i_24 
       (.I0(mul_ans__0_0[1]),
        .I1(mul_ans[3]),
        .I2(mul_ans[4]),
        .I3(mul_ans__0_0[9]),
        .I4(\wdata_o_reg[15]_i_26_n_4 ),
        .I5(mul_ans[2]),
        .O(\wdata_o_reg[15]_i_24_n_4 ));
  LUT6 #(
    .INIT(64'hF4F7F4F70000FFFF)) 
    \wdata_o_reg[15]_i_25 
       (.I0(mul_ans__0_0[0]),
        .I1(mul_ans[3]),
        .I2(mul_ans[4]),
        .I3(mul_ans__0_0[8]),
        .I4(\wdata_o_reg[15]_i_27_n_4 ),
        .I5(mul_ans[2]),
        .O(\wdata_o_reg[15]_i_25_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \wdata_o_reg[15]_i_26 
       (.I0(mul_ans__0_0[5]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[13]),
        .I3(mul_ans[4]),
        .O(\wdata_o_reg[15]_i_26_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \wdata_o_reg[15]_i_27 
       (.I0(mul_ans__0_0[4]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[12]),
        .I3(mul_ans[4]),
        .O(\wdata_o_reg[15]_i_27_n_4 ));
  LUT5 #(
    .INIT(32'hFFD0FFFF)) 
    \wdata_o_reg[15]_i_3 
       (.I0(\wdata_o_reg[15]_i_9_n_4 ),
        .I1(\wdata_o_reg[26]_i_7_n_4 ),
        .I2(ex_alusel_i[0]),
        .I3(rst_IBUF),
        .I4(ex_alusel_i[1]),
        .O(\wdata_o_reg[15]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[15]_i_4 
       (.I0(ex_alusel_i[2]),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[15]),
        .I4(mul_ans__0_0[15]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[15]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'h03008B8833338B88)) 
    \wdata_o_reg[15]_i_5 
       (.I0(ex_link_addr_i[15]),
        .I1(ex_alusel_i[1]),
        .I2(\wdata_o_reg[31]_i_9_n_4 ),
        .I3(\ex0/data1 [15]),
        .I4(ex_alusel_i[0]),
        .I5(mul_ans__1_11),
        .O(\wdata_o_reg[15]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'h3300FFCCB8B8B8B8)) 
    \wdata_o_reg[15]_i_6 
       (.I0(\wdata_o_reg[17]_i_11_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[15]_i_11_n_4 ),
        .I3(\wdata_o_reg[15]_i_12_n_4 ),
        .I4(\wdata_o_reg[17]_i_10_n_4 ),
        .I5(mul_ans[0]),
        .O(\wdata_o_reg[15]_i_6_n_4 ));
  LUT5 #(
    .INIT(32'h00030005)) 
    \wdata_o_reg[15]_i_7 
       (.I0(\wdata_o_reg[15]_i_13_n_4 ),
        .I1(\wdata_o_reg[15]_i_14_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(mul_ans[0]),
        .O(\wdata_o_reg[15]_i_7_n_4 ));
  LUT6 #(
    .INIT(64'h55555557FFFFFFFF)) 
    \wdata_o_reg[15]_i_8 
       (.I0(mul_ans[4]),
        .I1(mul_ans[3]),
        .I2(mul_ans[2]),
        .I3(mul_ans[1]),
        .I4(mul_ans[0]),
        .I5(mul_ans__0_0[31]),
        .O(\wdata_o_reg[15]_i_8_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[15]_i_9 
       (.I0(\wb_lo_reg[15] ),
        .I1(\mem_cp0_reg_data_reg[15]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[15]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_14),
        .O(\wdata_o_reg[15]_i_9_n_4 ));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \wdata_o_reg[16]_i_1 
       (.I0(ex_alusel_i[2]),
        .I1(\wdata_o_reg[16]_i_2_n_4 ),
        .I2(\wdata_o_reg[16]_i_3_n_4 ),
        .I3(\wdata_o_reg[16]_i_4_n_4 ),
        .O(\mem_wdata_reg[31] [16]));
  LUT6 #(
    .INIT(64'h03008B8833338B88)) 
    \wdata_o_reg[16]_i_2 
       (.I0(ex_link_addr_i[16]),
        .I1(ex_alusel_i[1]),
        .I2(\wdata_o_reg[31]_i_9_n_4 ),
        .I3(\ex0/data1 [16]),
        .I4(ex_alusel_i[0]),
        .I5(mul_ans__2_16),
        .O(\wdata_o_reg[16]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[16]_i_3 
       (.I0(ex_alusel_i[2]),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[16]),
        .I4(mul_ans__0_0[16]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[16]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'hFFDF0FDFFFDFFFDF)) 
    \wdata_o_reg[16]_i_4 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(\wdata_o_reg[16]_i_5_n_4 ),
        .I2(\wdata_o_reg[26]_i_6_n_4 ),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[26]_i_7_n_4 ),
        .I5(\wdata_o_reg[16]_i_6_n_4 ),
        .O(\wdata_o_reg[16]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'h070F0F0F000F000F)) 
    \wdata_o_reg[16]_i_5 
       (.I0(mul_ans[4]),
        .I1(mul_ans__0_0[31]),
        .I2(\wdata_o_reg[16]_i_7_n_4 ),
        .I3(ex_aluop_i[1]),
        .I4(ex_aluop_i[0]),
        .I5(\wdata_o_reg[16]_i_8_n_4 ),
        .O(\wdata_o_reg[16]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[16]_i_6 
       (.I0(\wb_lo_reg[16] ),
        .I1(\mem_cp0_reg_data_reg[16]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[16]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_13),
        .O(\wdata_o_reg[16]_i_6_n_4 ));
  LUT5 #(
    .INIT(32'h0003000A)) 
    \wdata_o_reg[16]_i_7 
       (.I0(\wdata_o_reg[17]_i_13_n_4 ),
        .I1(\wdata_o_reg[15]_i_13_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(mul_ans[0]),
        .O(\wdata_o_reg[16]_i_7_n_4 ));
  LUT6 #(
    .INIT(64'hF000FF0FC5C5C5C5)) 
    \wdata_o_reg[16]_i_8 
       (.I0(\wdata_o_reg[15]_i_12_n_4 ),
        .I1(\wdata_o_reg[17]_i_10_n_4 ),
        .I2(mul_ans[1]),
        .I3(\wdata_o_reg[19]_i_18_n_4 ),
        .I4(\wdata_o_reg[17]_i_11_n_4 ),
        .I5(mul_ans[0]),
        .O(\wdata_o_reg[16]_i_8_n_4 ));
  LUT6 #(
    .INIT(64'hFF0E0000FF0EFF0E)) 
    \wdata_o_reg[17]_i_1 
       (.I0(\wdata_o_reg[17]_i_2_n_4 ),
        .I1(ex_alusel_i[0]),
        .I2(\wdata_o_reg[17]_i_3_n_4 ),
        .I3(\wdata_o_reg[17]_i_4_n_4 ),
        .I4(\wdata_o_reg[17]_i_5_n_4 ),
        .I5(ex_alusel_i[2]),
        .O(\mem_wdata_reg[31] [17]));
  LUT6 #(
    .INIT(64'hBBBB8B88BBBB8BBB)) 
    \wdata_o_reg[17]_i_10 
       (.I0(\wdata_o_reg[17]_i_17_n_4 ),
        .I1(mul_ans[2]),
        .I2(mul_ans__0_0[26]),
        .I3(mul_ans[3]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[18]),
        .O(\wdata_o_reg[17]_i_10_n_4 ));
  LUT6 #(
    .INIT(64'h0000FFFF00B800B8)) 
    \wdata_o_reg[17]_i_11 
       (.I0(mul_ans__0_0[25]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[17]),
        .I3(mul_ans[4]),
        .I4(\wdata_o_reg[17]_i_18_n_4 ),
        .I5(mul_ans[2]),
        .O(\wdata_o_reg[17]_i_11_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[17]_i_12 
       (.I0(\wdata_o_reg[17]_i_19_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[19]_i_25_n_4 ),
        .O(\wdata_o_reg[17]_i_12_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \wdata_o_reg[17]_i_13 
       (.I0(\wdata_o_reg[17]_i_20_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[19]_i_27_n_4 ),
        .O(\wdata_o_reg[17]_i_13_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \wdata_o_reg[17]_i_17 
       (.I0(mul_ans__0_0[30]),
        .I1(mul_ans[3]),
        .I2(mul_ans[4]),
        .I3(mul_ans__0_0[22]),
        .O(\wdata_o_reg[17]_i_17_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \wdata_o_reg[17]_i_18 
       (.I0(mul_ans__0_0[29]),
        .I1(mul_ans[3]),
        .I2(mul_ans[4]),
        .I3(mul_ans__0_0[21]),
        .O(\wdata_o_reg[17]_i_18_n_4 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \wdata_o_reg[17]_i_19 
       (.I0(mul_ans__0_0[11]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[3]),
        .I3(mul_ans[4]),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[17]_i_21_n_4 ),
        .O(\wdata_o_reg[17]_i_19_n_4 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAA2200)) 
    \wdata_o_reg[17]_i_2 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(\wdata_o_reg[17]_i_6_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(\wdata_o_reg[17]_i_7_n_4 ),
        .I5(\wdata_o_reg[17]_i_8_n_4 ),
        .O(\wdata_o_reg[17]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF47FF47)) 
    \wdata_o_reg[17]_i_20 
       (.I0(mul_ans__0_0[6]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[14]),
        .I3(mul_ans[4]),
        .I4(\wdata_o_reg[17]_i_22_n_4 ),
        .I5(mul_ans[2]),
        .O(\wdata_o_reg[17]_i_20_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \wdata_o_reg[17]_i_21 
       (.I0(mul_ans__0_0[7]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[15]),
        .I3(mul_ans[4]),
        .O(\wdata_o_reg[17]_i_21_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \wdata_o_reg[17]_i_22 
       (.I0(mul_ans__0_0[2]),
        .I1(mul_ans[3]),
        .I2(mul_ans[4]),
        .I3(mul_ans__0_0[10]),
        .O(\wdata_o_reg[17]_i_22_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFFD0FFFF)) 
    \wdata_o_reg[17]_i_3 
       (.I0(\wdata_o_reg[17]_i_9_n_4 ),
        .I1(\wdata_o_reg[26]_i_7_n_4 ),
        .I2(ex_alusel_i[0]),
        .I3(rst_IBUF),
        .I4(ex_alusel_i[1]),
        .O(\wdata_o_reg[17]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[17]_i_4 
       (.I0(ex_alusel_i[2]),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[17]),
        .I4(mul_ans__0_0[17]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[17]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'h03008B8833338B88)) 
    \wdata_o_reg[17]_i_5 
       (.I0(ex_link_addr_i[17]),
        .I1(ex_alusel_i[1]),
        .I2(\wdata_o_reg[31]_i_9_n_4 ),
        .I3(\ex0/data1 [17]),
        .I4(ex_alusel_i[0]),
        .I5(mul_ans__2_18),
        .O(\wdata_o_reg[17]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8CC00FF33)) 
    \wdata_o_reg[17]_i_6 
       (.I0(\wdata_o_reg[19]_i_16_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[17]_i_10_n_4 ),
        .I3(\wdata_o_reg[19]_i_18_n_4 ),
        .I4(\wdata_o_reg[17]_i_11_n_4 ),
        .I5(mul_ans[0]),
        .O(\wdata_o_reg[17]_i_6_n_4 ));
  LUT5 #(
    .INIT(32'h03020002)) 
    \wdata_o_reg[17]_i_7 
       (.I0(\wdata_o_reg[17]_i_12_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[0]),
        .I4(\wdata_o_reg[17]_i_13_n_4 ),
        .O(\wdata_o_reg[17]_i_7_n_4 ));
  LUT6 #(
    .INIT(64'hA888888888888888)) 
    \wdata_o_reg[17]_i_8 
       (.I0(mul_ans__0_0[31]),
        .I1(mul_ans[4]),
        .I2(mul_ans[1]),
        .I3(mul_ans[0]),
        .I4(mul_ans[3]),
        .I5(mul_ans[2]),
        .O(\wdata_o_reg[17]_i_8_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[17]_i_9 
       (.I0(\wb_lo_reg[17] ),
        .I1(\mem_cp0_reg_data_reg[17]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[17]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_12),
        .O(\wdata_o_reg[17]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'hCFDDCCDDCCDDCCDD)) 
    \wdata_o_reg[18]_i_1 
       (.I0(\wdata_o_reg[18]_i_2_n_4 ),
        .I1(\wdata_o_reg[18]_i_3_n_4 ),
        .I2(ex_alusel_i[0]),
        .I3(ex_alusel_i[2]),
        .I4(ex_link_addr_i[18]),
        .I5(ex_alusel_i[1]),
        .O(\mem_wdata_reg[31] [18]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[18]_i_12 
       (.I0(mul_ans[18]),
        .I1(\mem_wdata_reg[10] ),
        .I2(mem_whilo_reg_29),
        .O(\wdata_o_reg[18]_i_12_n_4 ));
  LUT6 #(
    .INIT(64'hA082822AAAAAAAAA)) 
    \wdata_o_reg[18]_i_2 
       (.I0(\wdata_o_reg[18]_i_4_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[18]),
        .I4(mul_ans__0_0[18]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[18]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h0040444400400040)) 
    \wdata_o_reg[18]_i_3 
       (.I0(ex_alusel_i[1]),
        .I1(ex_alusel_i[2]),
        .I2(\ex0/data1 [18]),
        .I3(\wdata_o_reg[31]_i_9_n_4 ),
        .I4(mul_ans__2_20),
        .I5(ex_alusel_i[0]),
        .O(\wdata_o_reg[18]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'hFF0FFFDFFFFFFFDF)) 
    \wdata_o_reg[18]_i_4 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(\wdata_o_reg[18]_i_5_n_4 ),
        .I2(ex_alusel_i[1]),
        .I3(rst_IBUF),
        .I4(ex_alusel_i[0]),
        .I5(\wdata_o_reg[18]_i_6_n_4 ),
        .O(\wdata_o_reg[18]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'h0B0F0F0F000F000F)) 
    \wdata_o_reg[18]_i_5 
       (.I0(\wdata_o_reg[18]_i_7_n_4 ),
        .I1(mul_ans__0_0[31]),
        .I2(\wdata_o_reg[18]_i_8_n_4 ),
        .I3(ex_aluop_i[1]),
        .I4(ex_aluop_i[0]),
        .I5(\wdata_o_reg[18]_i_9_n_4 ),
        .O(\wdata_o_reg[18]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'h00000000F2FFF200)) 
    \wdata_o_reg[18]_i_6 
       (.I0(\mem_wdata_reg[10] ),
        .I1(\wb_lo_reg[18] ),
        .I2(\wb_cp0_reg_data_reg[18] ),
        .I3(\mem_wdata_reg[30] ),
        .I4(\wdata_o_reg[18]_i_12_n_4 ),
        .I5(\wdata_o_reg[26]_i_7_n_4 ),
        .O(\wdata_o_reg[18]_i_6_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h02222222)) 
    \wdata_o_reg[18]_i_7 
       (.I0(mul_ans__0_0[31]),
        .I1(mul_ans[4]),
        .I2(mul_ans[1]),
        .I3(mul_ans[2]),
        .I4(mul_ans[3]),
        .O(\wdata_o_reg[18]_i_7_n_4 ));
  LUT5 #(
    .INIT(32'h03020002)) 
    \wdata_o_reg[18]_i_8 
       (.I0(\wdata_o_reg[19]_i_20_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[0]),
        .I4(\wdata_o_reg[17]_i_12_n_4 ),
        .O(\wdata_o_reg[18]_i_8_n_4 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \wdata_o_reg[18]_i_9 
       (.I0(\wdata_o_reg[19]_i_16_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[17]_i_10_n_4 ),
        .I3(\wdata_o_reg[19]_i_17_n_4 ),
        .I4(\wdata_o_reg[19]_i_18_n_4 ),
        .I5(mul_ans[0]),
        .O(\wdata_o_reg[18]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'hD0D0D0D0DDDDDDD0)) 
    \wdata_o_reg[19]_i_1 
       (.I0(ex_alusel_i[2]),
        .I1(\wdata_o_reg[19]_i_2_n_4 ),
        .I2(\wdata_o_reg[19]_i_3_n_4 ),
        .I3(\wdata_o_reg[19]_i_4_n_4 ),
        .I4(ex_alusel_i[0]),
        .I5(\wdata_o_reg[19]_i_5_n_4 ),
        .O(\mem_wdata_reg[31] [19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[19]_i_10 
       (.I0(\wb_lo_reg[19] ),
        .I1(\mem_cp0_reg_data_reg[19]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[19]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_11),
        .O(\wdata_o_reg[19]_i_10_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[19]_i_11 
       (.I0(mul_ans[19]),
        .I1(\ex0/mul_op20 [19]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[19]),
        .O(\wdata_o_reg[19]_i_11_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[19]_i_12 
       (.I0(mul_ans[18]),
        .I1(\ex0/mul_op20 [18]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[18]),
        .O(\wdata_o_reg[19]_i_12_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[19]_i_13 
       (.I0(mul_ans[17]),
        .I1(\ex0/mul_op20 [17]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[17]),
        .O(\wdata_o_reg[19]_i_13_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[19]_i_14 
       (.I0(mul_ans[16]),
        .I1(\ex0/mul_op20 [16]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[16]),
        .O(\wdata_o_reg[19]_i_14_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    \wdata_o_reg[19]_i_15 
       (.I0(mul_ans__0_0[26]),
        .I1(mul_ans[2]),
        .I2(mul_ans__0_0[30]),
        .I3(mul_ans[3]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[22]),
        .O(\wdata_o_reg[19]_i_15_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    \wdata_o_reg[19]_i_16 
       (.I0(mul_ans__0_0[24]),
        .I1(mul_ans[2]),
        .I2(mul_ans__0_0[28]),
        .I3(mul_ans[3]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[20]),
        .O(\wdata_o_reg[19]_i_16_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    \wdata_o_reg[19]_i_17 
       (.I0(mul_ans__0_0[25]),
        .I1(mul_ans[2]),
        .I2(mul_ans__0_0[29]),
        .I3(mul_ans[3]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[21]),
        .O(\wdata_o_reg[19]_i_17_n_4 ));
  LUT6 #(
    .INIT(64'hBBBB8B88BBBB8BBB)) 
    \wdata_o_reg[19]_i_18 
       (.I0(\wdata_o_reg[19]_i_24_n_4 ),
        .I1(mul_ans[2]),
        .I2(mul_ans__0_0[27]),
        .I3(mul_ans[3]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[19]),
        .O(\wdata_o_reg[19]_i_18_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[19]_i_19 
       (.I0(\wdata_o_reg[19]_i_25_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[19]_i_26_n_4 ),
        .O(\wdata_o_reg[19]_i_19_n_4 ));
  LUT6 #(
    .INIT(64'h03008B8833338B88)) 
    \wdata_o_reg[19]_i_2 
       (.I0(ex_link_addr_i[19]),
        .I1(ex_alusel_i[1]),
        .I2(\wdata_o_reg[31]_i_9_n_4 ),
        .I3(\ex0/data1 [19]),
        .I4(ex_alusel_i[0]),
        .I5(mul_ans__2_22),
        .O(\wdata_o_reg[19]_i_2_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[19]_i_20 
       (.I0(\wdata_o_reg[19]_i_27_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[19]_i_28_n_4 ),
        .O(\wdata_o_reg[19]_i_20_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \wdata_o_reg[19]_i_24 
       (.I0(mul_ans__0_0[31]),
        .I1(mul_ans[3]),
        .I2(mul_ans[4]),
        .I3(mul_ans__0_0[23]),
        .O(\wdata_o_reg[19]_i_24_n_4 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \wdata_o_reg[19]_i_25 
       (.I0(mul_ans__0_0[5]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[13]),
        .I3(mul_ans[4]),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[21]_i_18_n_4 ),
        .O(\wdata_o_reg[19]_i_25_n_4 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \wdata_o_reg[19]_i_26 
       (.I0(mul_ans__0_0[7]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[15]),
        .I3(mul_ans[4]),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[26]_i_24_n_4 ),
        .O(\wdata_o_reg[19]_i_26_n_4 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \wdata_o_reg[19]_i_27 
       (.I0(mul_ans__0_0[4]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[12]),
        .I3(mul_ans[4]),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[21]_i_19_n_4 ),
        .O(\wdata_o_reg[19]_i_27_n_4 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \wdata_o_reg[19]_i_28 
       (.I0(mul_ans__0_0[6]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[14]),
        .I3(mul_ans[4]),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[25]_i_18_n_4 ),
        .O(\wdata_o_reg[19]_i_28_n_4 ));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[19]_i_3 
       (.I0(ex_alusel_i[2]),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[19]),
        .I4(mul_ans__0_0[19]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[19]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAA2200)) 
    \wdata_o_reg[19]_i_4 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(\wdata_o_reg[19]_i_7_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(\wdata_o_reg[19]_i_8_n_4 ),
        .I5(\wdata_o_reg[19]_i_9_n_4 ),
        .O(\wdata_o_reg[19]_i_4_n_4 ));
  LUT5 #(
    .INIT(32'hFFD0FFFF)) 
    \wdata_o_reg[19]_i_5 
       (.I0(\wdata_o_reg[19]_i_10_n_4 ),
        .I1(\wdata_o_reg[26]_i_7_n_4 ),
        .I2(ex_alusel_i[0]),
        .I3(rst_IBUF),
        .I4(ex_alusel_i[1]),
        .O(\wdata_o_reg[19]_i_5_n_4 ));
  CARRY4 \wdata_o_reg[19]_i_6 
       (.CI(\wdata_o_reg[15]_i_10_n_4 ),
        .CO({\wdata_o_reg[19]_i_6_n_4 ,\wdata_o_reg[19]_i_6_n_5 ,\wdata_o_reg[19]_i_6_n_6 ,\wdata_o_reg[19]_i_6_n_7 }),
        .CYINIT(1'b0),
        .DI(mul_ans[19:16]),
        .O(\ex0/data1 [19:16]),
        .S({\wdata_o_reg[19]_i_11_n_4 ,\wdata_o_reg[19]_i_12_n_4 ,\wdata_o_reg[19]_i_13_n_4 ,\wdata_o_reg[19]_i_14_n_4 }));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \wdata_o_reg[19]_i_7 
       (.I0(\wdata_o_reg[19]_i_15_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[19]_i_16_n_4 ),
        .I3(\wdata_o_reg[19]_i_17_n_4 ),
        .I4(\wdata_o_reg[19]_i_18_n_4 ),
        .I5(mul_ans[0]),
        .O(\wdata_o_reg[19]_i_7_n_4 ));
  LUT5 #(
    .INIT(32'h03020002)) 
    \wdata_o_reg[19]_i_8 
       (.I0(\wdata_o_reg[19]_i_19_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[0]),
        .I4(\wdata_o_reg[19]_i_20_n_4 ),
        .O(\wdata_o_reg[19]_i_8_n_4 ));
  LUT6 #(
    .INIT(64'hFF880000FF800000)) 
    \wdata_o_reg[19]_i_9 
       (.I0(mul_ans[3]),
        .I1(mul_ans[2]),
        .I2(mul_ans[1]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[31]),
        .I5(mul_ans[0]),
        .O(\wdata_o_reg[19]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'h0000FF0EFF0EFF0E)) 
    \wdata_o_reg[1]_i_1 
       (.I0(\wdata_o_reg[1]_i_2_n_4 ),
        .I1(ex_alusel_i[0]),
        .I2(\wdata_o_reg[1]_i_3_n_4 ),
        .I3(\wdata_o_reg[1]_i_4_n_4 ),
        .I4(ex_alusel_i[2]),
        .I5(\wdata_o_reg[1]_i_5_n_4 ),
        .O(\mem_wdata_reg[31] [1]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[1]_i_10 
       (.I0(\wdata_o_reg[3]_i_27_n_4 ),
        .I1(mul_ans[2]),
        .I2(\wdata_o_reg[3]_i_28_n_4 ),
        .O(\wdata_o_reg[1]_i_10_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[1]_i_11 
       (.I0(\wdata_o_reg[3]_i_26_n_4 ),
        .I1(mul_ans[2]),
        .I2(\wdata_o_reg[1]_i_18_n_4 ),
        .O(\wdata_o_reg[1]_i_11_n_4 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wdata_o_reg[1]_i_12 
       (.I0(\wdata_o_reg[3]_i_12_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[3]_i_23_n_4 ),
        .I3(mul_ans[2]),
        .I4(\wdata_o_reg[1]_i_19_n_4 ),
        .O(\wdata_o_reg[1]_i_12_n_4 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \wdata_o_reg[1]_i_13 
       (.I0(mul_ans[1]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[0]),
        .I3(mul_ans[4]),
        .I4(mul_ans[2]),
        .O(\wdata_o_reg[1]_i_13_n_4 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \wdata_o_reg[1]_i_14 
       (.I0(mul_ans[1]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[1]),
        .I3(mul_ans[4]),
        .I4(mul_ans[2]),
        .O(\wdata_o_reg[1]_i_14_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[1]_i_18 
       (.I0(mul_ans__0_0[26]),
        .I1(mul_ans__0_0[10]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[18]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[2]),
        .O(\wdata_o_reg[1]_i_18_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[1]_i_19 
       (.I0(mul_ans__0_0[25]),
        .I1(mul_ans__0_0[9]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[17]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[1]),
        .O(\wdata_o_reg[1]_i_19_n_4 ));
  LUT6 #(
    .INIT(64'hAAAAA000AAAAA080)) 
    \wdata_o_reg[1]_i_2 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(\wdata_o_reg[1]_i_6_n_4 ),
        .I4(\wdata_o_reg[1]_i_7_n_4 ),
        .I5(\wdata_o_reg[1]_i_8_n_4 ),
        .O(\wdata_o_reg[1]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'hFFD0FFFF)) 
    \wdata_o_reg[1]_i_3 
       (.I0(\wdata_o_reg[1]_i_9_n_4 ),
        .I1(\wdata_o_reg[26]_i_7_n_4 ),
        .I2(ex_alusel_i[0]),
        .I3(rst_IBUF),
        .I4(ex_alusel_i[1]),
        .O(\wdata_o_reg[1]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[1]_i_4 
       (.I0(ex_alusel_i[2]),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[1]),
        .I4(mul_ans__0_0[1]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[1]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'hF7C7C4C4F7C7F7C7)) 
    \wdata_o_reg[1]_i_5 
       (.I0(\mem_current_inst_addr_reg[1] [1]),
        .I1(ex_alusel_i[1]),
        .I2(ex_alusel_i[0]),
        .I3(mul_ans__1_0),
        .I4(\wdata_o_reg[31]_i_9_n_4 ),
        .I5(\ex0/data1 [1]),
        .O(\wdata_o_reg[1]_i_5_n_4 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata_o_reg[1]_i_6 
       (.I0(\wdata_o_reg[1]_i_10_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[1]_i_11_n_4 ),
        .I3(mul_ans[0]),
        .I4(\wdata_o_reg[1]_i_12_n_4 ),
        .O(\wdata_o_reg[1]_i_6_n_4 ));
  LUT5 #(
    .INIT(32'h00000053)) 
    \wdata_o_reg[1]_i_7 
       (.I0(\wdata_o_reg[1]_i_13_n_4 ),
        .I1(\wdata_o_reg[1]_i_14_n_4 ),
        .I2(mul_ans[0]),
        .I3(ex_aluop_i[0]),
        .I4(ex_aluop_i[1]),
        .O(\wdata_o_reg[1]_i_7_n_4 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \wdata_o_reg[1]_i_8 
       (.I0(mul_ans[4]),
        .I1(mul_ans[3]),
        .I2(mul_ans[2]),
        .I3(mul_ans[0]),
        .I4(mul_ans[1]),
        .I5(mul_ans__0_0[31]),
        .O(\wdata_o_reg[1]_i_8_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[1]_i_9 
       (.I0(\wb_lo_reg[1] ),
        .I1(\mem_cp0_reg_data_reg[1]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[1]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_25),
        .O(\wdata_o_reg[1]_i_9_n_4 ));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \wdata_o_reg[20]_i_1 
       (.I0(ex_alusel_i[2]),
        .I1(\wdata_o_reg[20]_i_2_n_4 ),
        .I2(\wdata_o_reg[20]_i_3_n_4 ),
        .I3(\wdata_o_reg[20]_i_4_n_4 ),
        .O(\mem_wdata_reg[31] [20]));
  LUT6 #(
    .INIT(64'h03008B8833338B88)) 
    \wdata_o_reg[20]_i_2 
       (.I0(ex_link_addr_i[20]),
        .I1(ex_alusel_i[1]),
        .I2(\wdata_o_reg[31]_i_9_n_4 ),
        .I3(\ex0/data1 [20]),
        .I4(ex_alusel_i[0]),
        .I5(mul_ans__2_24),
        .O(\wdata_o_reg[20]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h0020F02000200020)) 
    \wdata_o_reg[20]_i_3 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(\wdata_o_reg[20]_i_5_n_4 ),
        .I2(\wdata_o_reg[26]_i_6_n_4 ),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[26]_i_7_n_4 ),
        .I5(\wdata_o_reg[20]_i_6_n_4 ),
        .O(\wdata_o_reg[20]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h5041411555555555)) 
    \wdata_o_reg[20]_i_4 
       (.I0(ex_alusel_i[2]),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[20]),
        .I4(mul_ans__0_0[20]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[20]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'h0B0F0F0F000F000F)) 
    \wdata_o_reg[20]_i_5 
       (.I0(\wdata_o_reg[20]_i_7_n_4 ),
        .I1(mul_ans__0_0[31]),
        .I2(\wdata_o_reg[20]_i_8_n_4 ),
        .I3(ex_aluop_i[1]),
        .I4(ex_aluop_i[0]),
        .I5(\wdata_o_reg[20]_i_9_n_4 ),
        .O(\wdata_o_reg[20]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[20]_i_6 
       (.I0(\wb_lo_reg[20] ),
        .I1(\mem_cp0_reg_data_reg[20]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[20]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_10),
        .O(\wdata_o_reg[20]_i_6_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h0222)) 
    \wdata_o_reg[20]_i_7 
       (.I0(mul_ans__0_0[31]),
        .I1(mul_ans[4]),
        .I2(mul_ans[3]),
        .I3(mul_ans[2]),
        .O(\wdata_o_reg[20]_i_7_n_4 ));
  LUT5 #(
    .INIT(32'h03020002)) 
    \wdata_o_reg[20]_i_8 
       (.I0(\wdata_o_reg[21]_i_17_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[0]),
        .I4(\wdata_o_reg[19]_i_19_n_4 ),
        .O(\wdata_o_reg[20]_i_8_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[20]_i_9 
       (.I0(\wdata_o_reg[21]_i_15_n_4 ),
        .I1(\wdata_o_reg[19]_i_17_n_4 ),
        .I2(mul_ans[0]),
        .I3(\wdata_o_reg[19]_i_15_n_4 ),
        .I4(mul_ans[1]),
        .I5(\wdata_o_reg[19]_i_16_n_4 ),
        .O(\wdata_o_reg[20]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'hCFDDCCDDCCDDCCDD)) 
    \wdata_o_reg[21]_i_1 
       (.I0(\wdata_o_reg[21]_i_2_n_4 ),
        .I1(\wdata_o_reg[21]_i_3_n_4 ),
        .I2(ex_alusel_i[0]),
        .I3(ex_alusel_i[2]),
        .I4(ex_link_addr_i[21]),
        .I5(ex_alusel_i[1]),
        .O(\mem_wdata_reg[31] [21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[21]_i_10 
       (.I0(\wdata_o_reg[21]_i_14_n_4 ),
        .I1(\wdata_o_reg[19]_i_15_n_4 ),
        .I2(mul_ans[0]),
        .I3(\wdata_o_reg[21]_i_15_n_4 ),
        .I4(mul_ans[1]),
        .I5(\wdata_o_reg[19]_i_17_n_4 ),
        .O(\wdata_o_reg[21]_i_10_n_4 ));
  LUT5 #(
    .INIT(32'h03020002)) 
    \wdata_o_reg[21]_i_11 
       (.I0(\wdata_o_reg[21]_i_16_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[0]),
        .I4(\wdata_o_reg[21]_i_17_n_4 ),
        .O(\wdata_o_reg[21]_i_11_n_4 ));
  LUT6 #(
    .INIT(64'hFC00F800F800F800)) 
    \wdata_o_reg[21]_i_12 
       (.I0(mul_ans[2]),
        .I1(mul_ans[3]),
        .I2(mul_ans[4]),
        .I3(mul_ans__0_0[31]),
        .I4(mul_ans[0]),
        .I5(mul_ans[1]),
        .O(\wdata_o_reg[21]_i_12_n_4 ));
  LUT5 #(
    .INIT(32'hFFFFF4F7)) 
    \wdata_o_reg[21]_i_14 
       (.I0(mul_ans__0_0[28]),
        .I1(mul_ans[2]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[24]),
        .I4(mul_ans[4]),
        .O(\wdata_o_reg[21]_i_14_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    \wdata_o_reg[21]_i_15 
       (.I0(mul_ans__0_0[27]),
        .I1(mul_ans[2]),
        .I2(mul_ans__0_0[31]),
        .I3(mul_ans[3]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[23]),
        .O(\wdata_o_reg[21]_i_15_n_4 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \wdata_o_reg[21]_i_16 
       (.I0(\wdata_o_reg[21]_i_18_n_4 ),
        .I1(mul_ans[2]),
        .I2(\wdata_o_reg[26]_i_26_n_4 ),
        .I3(\wdata_o_reg[19]_i_26_n_4 ),
        .I4(mul_ans[1]),
        .O(\wdata_o_reg[21]_i_16_n_4 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \wdata_o_reg[21]_i_17 
       (.I0(\wdata_o_reg[21]_i_19_n_4 ),
        .I1(mul_ans[2]),
        .I2(\wdata_o_reg[27]_i_18_n_4 ),
        .I3(\wdata_o_reg[19]_i_28_n_4 ),
        .I4(mul_ans[1]),
        .O(\wdata_o_reg[21]_i_17_n_4 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \wdata_o_reg[21]_i_18 
       (.I0(mul_ans__0_0[9]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[1]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[17]),
        .O(\wdata_o_reg[21]_i_18_n_4 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \wdata_o_reg[21]_i_19 
       (.I0(mul_ans__0_0[8]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[0]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[16]),
        .O(\wdata_o_reg[21]_i_19_n_4 ));
  LUT6 #(
    .INIT(64'h00000000F4FFF7FF)) 
    \wdata_o_reg[21]_i_2 
       (.I0(\wdata_o_reg[21]_i_4_n_4 ),
        .I1(ex_alusel_i[0]),
        .I2(rst_IBUF),
        .I3(ex_alusel_i[1]),
        .I4(\wdata_o_reg[21]_i_5_n_4 ),
        .I5(\wdata_o_reg[21]_i_6_n_4 ),
        .O(\wdata_o_reg[21]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h0040444400400040)) 
    \wdata_o_reg[21]_i_3 
       (.I0(ex_alusel_i[1]),
        .I1(ex_alusel_i[2]),
        .I2(\ex0/data1 [21]),
        .I3(\wdata_o_reg[31]_i_9_n_4 ),
        .I4(mul_ans__2_26),
        .I5(ex_alusel_i[0]),
        .O(\wdata_o_reg[21]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h00000000F2FFF200)) 
    \wdata_o_reg[21]_i_4 
       (.I0(\mem_wdata_reg[10] ),
        .I1(\wb_lo_reg[21] ),
        .I2(\wb_cp0_reg_data_reg[21] ),
        .I3(\mem_wdata_reg[30] ),
        .I4(\wdata_o_reg[21]_i_9_n_4 ),
        .I5(\wdata_o_reg[26]_i_7_n_4 ),
        .O(\wdata_o_reg[21]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAA2200)) 
    \wdata_o_reg[21]_i_5 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(\wdata_o_reg[21]_i_10_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(\wdata_o_reg[21]_i_11_n_4 ),
        .I5(\wdata_o_reg[21]_i_12_n_4 ),
        .O(\wdata_o_reg[21]_i_5_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h02A82880)) 
    \wdata_o_reg[21]_i_6 
       (.I0(\wdata_o_reg[30]_i_5_n_4 ),
        .I1(mul_ans__0_0[21]),
        .I2(mul_ans[21]),
        .I3(ex_aluop_i[1]),
        .I4(ex_aluop_i[0]),
        .O(\wdata_o_reg[21]_i_6_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[21]_i_9 
       (.I0(mul_ans[21]),
        .I1(\mem_wdata_reg[10] ),
        .I2(mem_whilo_reg_30),
        .O(\wdata_o_reg[21]_i_9_n_4 ));
  MUXF7 \wdata_o_reg[22]_i_1 
       (.I0(\wdata_o_reg[22]_i_2_n_4 ),
        .I1(\wdata_o_reg[22]_i_3_n_4 ),
        .O(\mem_wdata_reg[31] [22]),
        .S(ex_alusel_i[2]));
  LUT6 #(
    .INIT(64'h36680000FFFFFFFF)) 
    \wdata_o_reg[22]_i_2 
       (.I0(ex_aluop_i[0]),
        .I1(ex_aluop_i[1]),
        .I2(mul_ans[22]),
        .I3(mul_ans__0_0[22]),
        .I4(\wdata_o_reg[30]_i_5_n_4 ),
        .I5(\wdata_o_reg[22]_i_4_n_4 ),
        .O(\wdata_o_reg[22]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h03008B8833338B88)) 
    \wdata_o_reg[22]_i_3 
       (.I0(ex_link_addr_i[22]),
        .I1(ex_alusel_i[1]),
        .I2(\wdata_o_reg[31]_i_9_n_4 ),
        .I3(\ex0/data1 [22]),
        .I4(ex_alusel_i[0]),
        .I5(mul_ans__2_28),
        .O(\wdata_o_reg[22]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'hFFDF0FDFFFDFFFDF)) 
    \wdata_o_reg[22]_i_4 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(\wdata_o_reg[22]_i_5_n_4 ),
        .I2(\wdata_o_reg[26]_i_6_n_4 ),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[26]_i_7_n_4 ),
        .I5(\wdata_o_reg[22]_i_6_n_4 ),
        .O(\wdata_o_reg[22]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'h0B0F0F0F000F000F)) 
    \wdata_o_reg[22]_i_5 
       (.I0(\wdata_o_reg[22]_i_7_n_4 ),
        .I1(mul_ans__0_0[31]),
        .I2(\wdata_o_reg[22]_i_8_n_4 ),
        .I3(ex_aluop_i[1]),
        .I4(ex_aluop_i[0]),
        .I5(\wdata_o_reg[22]_i_9_n_4 ),
        .O(\wdata_o_reg[22]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[22]_i_6 
       (.I0(\wb_lo_reg[22] ),
        .I1(\mem_cp0_reg_data_reg[22]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[22]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_9),
        .O(\wdata_o_reg[22]_i_6_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h000C040C)) 
    \wdata_o_reg[22]_i_7 
       (.I0(mul_ans[1]),
        .I1(mul_ans__0_0[31]),
        .I2(mul_ans[4]),
        .I3(mul_ans[3]),
        .I4(mul_ans[2]),
        .O(\wdata_o_reg[22]_i_7_n_4 ));
  LUT5 #(
    .INIT(32'h03020002)) 
    \wdata_o_reg[22]_i_8 
       (.I0(\wdata_o_reg[23]_i_18_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[0]),
        .I4(\wdata_o_reg[21]_i_16_n_4 ),
        .O(\wdata_o_reg[22]_i_8_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[22]_i_9 
       (.I0(\wdata_o_reg[25]_i_15_n_4 ),
        .I1(\wdata_o_reg[21]_i_15_n_4 ),
        .I2(mul_ans[0]),
        .I3(\wdata_o_reg[21]_i_14_n_4 ),
        .I4(mul_ans[1]),
        .I5(\wdata_o_reg[19]_i_15_n_4 ),
        .O(\wdata_o_reg[22]_i_9_n_4 ));
  MUXF7 \wdata_o_reg[23]_i_1 
       (.I0(\wdata_o_reg[23]_i_2_n_4 ),
        .I1(\wdata_o_reg[23]_i_3_n_4 ),
        .O(\mem_wdata_reg[31] [23]),
        .S(ex_alusel_i[2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[23]_i_10 
       (.I0(mul_ans[21]),
        .I1(\ex0/mul_op20 [21]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[21]),
        .O(\wdata_o_reg[23]_i_10_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[23]_i_11 
       (.I0(mul_ans[20]),
        .I1(\ex0/mul_op20 [20]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[20]),
        .O(\wdata_o_reg[23]_i_11_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[23]_i_12 
       (.I0(\wdata_o_reg[26]_i_22_n_4 ),
        .I1(\wdata_o_reg[21]_i_14_n_4 ),
        .I2(mul_ans[0]),
        .I3(\wdata_o_reg[25]_i_15_n_4 ),
        .I4(mul_ans[1]),
        .I5(\wdata_o_reg[21]_i_15_n_4 ),
        .O(\wdata_o_reg[23]_i_12_n_4 ));
  LUT5 #(
    .INIT(32'h03020002)) 
    \wdata_o_reg[23]_i_13 
       (.I0(\wdata_o_reg[24]_i_13_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[0]),
        .I4(\wdata_o_reg[23]_i_18_n_4 ),
        .O(\wdata_o_reg[23]_i_13_n_4 ));
  LUT6 #(
    .INIT(64'hFC00FC00FC00F800)) 
    \wdata_o_reg[23]_i_14 
       (.I0(mul_ans[2]),
        .I1(mul_ans[3]),
        .I2(mul_ans[4]),
        .I3(mul_ans__0_0[31]),
        .I4(mul_ans[1]),
        .I5(mul_ans[0]),
        .O(\wdata_o_reg[23]_i_14_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[23]_i_18 
       (.I0(\wdata_o_reg[21]_i_19_n_4 ),
        .I1(\wdata_o_reg[27]_i_18_n_4 ),
        .I2(mul_ans[1]),
        .I3(\wdata_o_reg[25]_i_18_n_4 ),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[29]_i_13_n_4 ),
        .O(\wdata_o_reg[23]_i_18_n_4 ));
  LUT6 #(
    .INIT(64'h36680000FFFFFFFF)) 
    \wdata_o_reg[23]_i_2 
       (.I0(ex_aluop_i[0]),
        .I1(ex_aluop_i[1]),
        .I2(mul_ans[23]),
        .I3(mul_ans__0_0[23]),
        .I4(\wdata_o_reg[30]_i_5_n_4 ),
        .I5(\wdata_o_reg[23]_i_4_n_4 ),
        .O(\wdata_o_reg[23]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h038833BB03880388)) 
    \wdata_o_reg[23]_i_3 
       (.I0(ex_link_addr_i[23]),
        .I1(ex_alusel_i[1]),
        .I2(mul_ans__2_30),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[31]_i_9_n_4 ),
        .I5(\ex0/data1 [23]),
        .O(\wdata_o_reg[23]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'hFFF7F3F7FFF7FFF7)) 
    \wdata_o_reg[23]_i_4 
       (.I0(\wdata_o_reg[23]_i_6_n_4 ),
        .I1(ex_alusel_i[1]),
        .I2(rst_IBUF),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[26]_i_7_n_4 ),
        .I5(\ex_reg1_reg[23]_1 ),
        .O(\wdata_o_reg[23]_i_4_n_4 ));
  CARRY4 \wdata_o_reg[23]_i_5 
       (.CI(\wdata_o_reg[19]_i_6_n_4 ),
        .CO({\wdata_o_reg[23]_i_5_n_4 ,\wdata_o_reg[23]_i_5_n_5 ,\wdata_o_reg[23]_i_5_n_6 ,\wdata_o_reg[23]_i_5_n_7 }),
        .CYINIT(1'b0),
        .DI(mul_ans[23:20]),
        .O(\ex0/data1 [23:20]),
        .S({\wdata_o_reg[23]_i_8_n_4 ,\wdata_o_reg[23]_i_9_n_4 ,\wdata_o_reg[23]_i_10_n_4 ,\wdata_o_reg[23]_i_11_n_4 }));
  LUT6 #(
    .INIT(64'hAAAAA200AAAA2200)) 
    \wdata_o_reg[23]_i_6 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(\wdata_o_reg[23]_i_12_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(\wdata_o_reg[23]_i_13_n_4 ),
        .I5(\wdata_o_reg[23]_i_14_n_4 ),
        .O(\wdata_o_reg[23]_i_6_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[23]_i_8 
       (.I0(mul_ans[23]),
        .I1(\ex0/mul_op20 [23]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[23]),
        .O(\wdata_o_reg[23]_i_8_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[23]_i_9 
       (.I0(mul_ans[22]),
        .I1(\ex0/mul_op20 [22]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[22]),
        .O(\wdata_o_reg[23]_i_9_n_4 ));
  MUXF7 \wdata_o_reg[24]_i_1 
       (.I0(\wdata_o_reg[24]_i_2_n_4 ),
        .I1(\wdata_o_reg[24]_i_3_n_4 ),
        .O(\mem_wdata_reg[31] [24]),
        .S(ex_alusel_i[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[24]_i_13 
       (.I0(\wdata_o_reg[21]_i_18_n_4 ),
        .I1(\wdata_o_reg[26]_i_26_n_4 ),
        .I2(mul_ans[1]),
        .I3(\wdata_o_reg[26]_i_24_n_4 ),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[26]_i_25_n_4 ),
        .O(\wdata_o_reg[24]_i_13_n_4 ));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[24]_i_2 
       (.I0(\wdata_o_reg[24]_i_4_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[24]),
        .I4(mul_ans__0_0[24]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[24]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h038833BB03880388)) 
    \wdata_o_reg[24]_i_3 
       (.I0(ex_link_addr_i[24]),
        .I1(ex_alusel_i[1]),
        .I2(mul_ans__2_32),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[31]_i_9_n_4 ),
        .I5(\ex0/data1 [24]),
        .O(\wdata_o_reg[24]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h0080F08000800080)) 
    \wdata_o_reg[24]_i_4 
       (.I0(\wdata_o_reg[24]_i_5_n_4 ),
        .I1(\wdata_o_reg[31]_i_7_n_4 ),
        .I2(\wdata_o_reg[26]_i_6_n_4 ),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[26]_i_7_n_4 ),
        .I5(\wdata_o_reg[24]_i_6_n_4 ),
        .O(\wdata_o_reg[24]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'hFF400F0FFF400000)) 
    \wdata_o_reg[24]_i_5 
       (.I0(\wdata_o_reg[24]_i_7_n_4 ),
        .I1(mul_ans__0_0[31]),
        .I2(ex_aluop_i[0]),
        .I3(\wdata_o_reg[24]_i_8_n_4 ),
        .I4(ex_aluop_i[1]),
        .I5(\wdata_o_reg[24]_i_9_n_4 ),
        .O(\wdata_o_reg[24]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[24]_i_6 
       (.I0(\wb_lo_reg[24] ),
        .I1(\mem_cp0_reg_data_reg[24]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[24]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_8),
        .O(\wdata_o_reg[24]_i_6_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \wdata_o_reg[24]_i_7 
       (.I0(mul_ans[3]),
        .I1(mul_ans__0_0[31]),
        .I2(mul_ans[4]),
        .O(\wdata_o_reg[24]_i_7_n_4 ));
  LUT5 #(
    .INIT(32'h00FF3535)) 
    \wdata_o_reg[24]_i_8 
       (.I0(\wdata_o_reg[21]_i_14_n_4 ),
        .I1(\wdata_o_reg[26]_i_22_n_4 ),
        .I2(mul_ans[1]),
        .I3(\wdata_o_reg[25]_i_13_n_4 ),
        .I4(mul_ans[0]),
        .O(\wdata_o_reg[24]_i_8_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[24]_i_9 
       (.I0(\wdata_o_reg[24]_i_13_n_4 ),
        .I1(mul_ans[0]),
        .I2(\wdata_o_reg[25]_i_14_n_4 ),
        .O(\wdata_o_reg[24]_i_9_n_4 ));
  LUT4 #(
    .INIT(16'hE0EE)) 
    \wdata_o_reg[25]_i_1 
       (.I0(\wdata_o_reg[25]_i_2_n_4 ),
        .I1(\wdata_o_reg[25]_i_3_n_4 ),
        .I2(\wdata_o_reg[25]_i_4_n_4 ),
        .I3(ex_alusel_i[2]),
        .O(\mem_wdata_reg[31] [25]));
  LUT6 #(
    .INIT(64'hEEEEE2EEEEEEE222)) 
    \wdata_o_reg[25]_i_13 
       (.I0(\wdata_o_reg[25]_i_15_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[25]_i_16_n_4 ),
        .I3(mul_ans[2]),
        .I4(mul_ans[3]),
        .I5(\wdata_o_reg[25]_i_17_n_4 ),
        .O(\wdata_o_reg[25]_i_13_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[25]_i_14 
       (.I0(\wdata_o_reg[25]_i_18_n_4 ),
        .I1(\wdata_o_reg[29]_i_13_n_4 ),
        .I2(mul_ans[1]),
        .I3(\wdata_o_reg[27]_i_18_n_4 ),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[31]_i_13_n_4 ),
        .O(\wdata_o_reg[25]_i_14_n_4 ));
  LUT5 #(
    .INIT(32'hFFFFF4F7)) 
    \wdata_o_reg[25]_i_15 
       (.I0(mul_ans__0_0[29]),
        .I1(mul_ans[2]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[25]),
        .I4(mul_ans[4]),
        .O(\wdata_o_reg[25]_i_15_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \wdata_o_reg[25]_i_16 
       (.I0(mul_ans[4]),
        .I1(mul_ans__0_0[31]),
        .O(\wdata_o_reg[25]_i_16_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \wdata_o_reg[25]_i_17 
       (.I0(mul_ans[4]),
        .I1(mul_ans__0_0[27]),
        .O(\wdata_o_reg[25]_i_17_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \wdata_o_reg[25]_i_18 
       (.I0(mul_ans__0_0[10]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[2]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[18]),
        .O(\wdata_o_reg[25]_i_18_n_4 ));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[25]_i_2 
       (.I0(ex_alusel_i[2]),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[25]),
        .I4(mul_ans__0_0[25]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[25]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h00080C0800080008)) 
    \wdata_o_reg[25]_i_3 
       (.I0(\wdata_o_reg[25]_i_5_n_4 ),
        .I1(ex_alusel_i[1]),
        .I2(rst_IBUF),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[26]_i_7_n_4 ),
        .I5(\wdata_o_reg[25]_i_6_n_4 ),
        .O(\wdata_o_reg[25]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h03008B8833338B88)) 
    \wdata_o_reg[25]_i_4 
       (.I0(ex_link_addr_i[25]),
        .I1(ex_alusel_i[1]),
        .I2(\wdata_o_reg[31]_i_9_n_4 ),
        .I3(\ex0/data1 [25]),
        .I4(ex_alusel_i[0]),
        .I5(mul_ans__2_34),
        .O(\wdata_o_reg[25]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAA2200)) 
    \wdata_o_reg[25]_i_5 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(\wdata_o_reg[25]_i_7_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(\wdata_o_reg[25]_i_8_n_4 ),
        .I5(\wdata_o_reg[25]_i_9_n_4 ),
        .O(\wdata_o_reg[25]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[25]_i_6 
       (.I0(\wb_lo_reg[25] ),
        .I1(\mem_cp0_reg_data_reg[25]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[25]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_7),
        .O(\wdata_o_reg[25]_i_6_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[25]_i_7 
       (.I0(\wdata_o_reg[26]_i_18_n_4 ),
        .I1(mul_ans[0]),
        .I2(\wdata_o_reg[25]_i_13_n_4 ),
        .O(\wdata_o_reg[25]_i_7_n_4 ));
  LUT5 #(
    .INIT(32'h03020002)) 
    \wdata_o_reg[25]_i_8 
       (.I0(\wdata_o_reg[26]_i_20_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[0]),
        .I4(\wdata_o_reg[25]_i_14_n_4 ),
        .O(\wdata_o_reg[25]_i_8_n_4 ));
  LUT6 #(
    .INIT(64'hCCC8C8C8C8C8C8C8)) 
    \wdata_o_reg[25]_i_9 
       (.I0(mul_ans[4]),
        .I1(mul_ans__0_0[31]),
        .I2(mul_ans[3]),
        .I3(mul_ans[0]),
        .I4(mul_ans[1]),
        .I5(mul_ans[2]),
        .O(\wdata_o_reg[25]_i_9_n_4 ));
  LUT4 #(
    .INIT(16'hE0EE)) 
    \wdata_o_reg[26]_i_1 
       (.I0(\wdata_o_reg[26]_i_2_n_4 ),
        .I1(\wdata_o_reg[26]_i_3_n_4 ),
        .I2(\wdata_o_reg[26]_i_4_n_4 ),
        .I3(ex_alusel_i[2]),
        .O(\mem_wdata_reg[31] [26]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \wdata_o_reg[26]_i_10 
       (.I0(\wdata_o_reg[26]_i_18_n_4 ),
        .I1(\wdata_o_reg[26]_i_19_n_4 ),
        .I2(mul_ans[0]),
        .O(\wdata_o_reg[26]_i_10_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[26]_i_11 
       (.I0(\wdata_o_reg[26]_i_20_n_4 ),
        .I1(mul_ans[0]),
        .I2(\wdata_o_reg[27]_i_15_n_4 ),
        .O(\wdata_o_reg[26]_i_11_n_4 ));
  LUT6 #(
    .INIT(64'hAEEE0CCC5DDDFCFC)) 
    \wdata_o_reg[26]_i_12 
       (.I0(ex_aluop_i[2]),
        .I1(ex_aluop_i[6]),
        .I2(ex_aluop_i[3]),
        .I3(ex_aluop_i[4]),
        .I4(ex_aluop_i[0]),
        .I5(ex_aluop_i[1]),
        .O(\wdata_o_reg[26]_i_12_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFF2E)) 
    \wdata_o_reg[26]_i_13 
       (.I0(ex_aluop_i[2]),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[3]),
        .I3(ex_aluop_i[5]),
        .O(\wdata_o_reg[26]_i_13_n_4 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFB)) 
    \wdata_o_reg[26]_i_16 
       (.I0(\wdata_o_reg[26]_i_21_n_4 ),
        .I1(ex_aluop_i[4]),
        .I2(ex_aluop_i[6]),
        .I3(ex_aluop_i[0]),
        .I4(ex_aluop_i[3]),
        .I5(ex_aluop_i[2]),
        .O(\mem_wdata_reg[10] ));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFEF0000)) 
    \wdata_o_reg[26]_i_18 
       (.I0(mul_ans[2]),
        .I1(mul_ans[4]),
        .I2(mul_ans__0_0[28]),
        .I3(mul_ans[3]),
        .I4(mul_ans[1]),
        .I5(\wdata_o_reg[26]_i_22_n_4 ),
        .O(\wdata_o_reg[26]_i_18_n_4 ));
  LUT6 #(
    .INIT(64'hFFEFFFEF0000FFFF)) 
    \wdata_o_reg[26]_i_19 
       (.I0(mul_ans[2]),
        .I1(mul_ans[4]),
        .I2(mul_ans__0_0[29]),
        .I3(mul_ans[3]),
        .I4(\wdata_o_reg[26]_i_23_n_4 ),
        .I5(mul_ans[1]),
        .O(\wdata_o_reg[26]_i_19_n_4 ));
  LUT6 #(
    .INIT(64'h0080F08000800080)) 
    \wdata_o_reg[26]_i_2 
       (.I0(\wdata_o_reg[26]_i_5_n_4 ),
        .I1(\wdata_o_reg[31]_i_7_n_4 ),
        .I2(\wdata_o_reg[26]_i_6_n_4 ),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[26]_i_7_n_4 ),
        .I5(\wdata_o_reg[26]_i_8_n_4 ),
        .O(\wdata_o_reg[26]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[26]_i_20 
       (.I0(\wdata_o_reg[26]_i_24_n_4 ),
        .I1(\wdata_o_reg[26]_i_25_n_4 ),
        .I2(mul_ans[1]),
        .I3(\wdata_o_reg[26]_i_26_n_4 ),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[31]_i_26_n_4 ),
        .O(\wdata_o_reg[26]_i_20_n_4 ));
  LUT2 #(
    .INIT(4'hE)) 
    \wdata_o_reg[26]_i_21 
       (.I0(ex_aluop_i[1]),
        .I1(ex_aluop_i[5]),
        .O(\wdata_o_reg[26]_i_21_n_4 ));
  LUT5 #(
    .INIT(32'hFFFFF4F7)) 
    \wdata_o_reg[26]_i_22 
       (.I0(mul_ans__0_0[30]),
        .I1(mul_ans[2]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[26]),
        .I4(mul_ans[4]),
        .O(\wdata_o_reg[26]_i_22_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \wdata_o_reg[26]_i_23 
       (.I0(mul_ans__0_0[31]),
        .I1(mul_ans[2]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[27]),
        .I4(mul_ans[4]),
        .O(\wdata_o_reg[26]_i_23_n_4 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \wdata_o_reg[26]_i_24 
       (.I0(mul_ans__0_0[11]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[3]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[19]),
        .O(\wdata_o_reg[26]_i_24_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \wdata_o_reg[26]_i_25 
       (.I0(mul_ans__0_0[15]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[7]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[23]),
        .O(\wdata_o_reg[26]_i_25_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \wdata_o_reg[26]_i_26 
       (.I0(mul_ans__0_0[13]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[5]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[21]),
        .O(\wdata_o_reg[26]_i_26_n_4 ));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[26]_i_3 
       (.I0(ex_alusel_i[2]),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[26]),
        .I4(mul_ans__0_0[26]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[26]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h03008B8833338B88)) 
    \wdata_o_reg[26]_i_4 
       (.I0(ex_link_addr_i[26]),
        .I1(ex_alusel_i[1]),
        .I2(\wdata_o_reg[31]_i_9_n_4 ),
        .I3(\ex0/data1 [26]),
        .I4(ex_alusel_i[0]),
        .I5(mul_ans__2_36),
        .O(\wdata_o_reg[26]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'hFF200F0FFF200000)) 
    \wdata_o_reg[26]_i_5 
       (.I0(mul_ans__0_0[31]),
        .I1(\wdata_o_reg[26]_i_9_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(\wdata_o_reg[26]_i_10_n_4 ),
        .I4(ex_aluop_i[1]),
        .I5(\wdata_o_reg[26]_i_11_n_4 ),
        .O(\wdata_o_reg[26]_i_5_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wdata_o_reg[26]_i_6 
       (.I0(ex_alusel_i[1]),
        .I1(rst_IBUF),
        .O(\wdata_o_reg[26]_i_6_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFD10D)) 
    \wdata_o_reg[26]_i_7 
       (.I0(ex_aluop_i[6]),
        .I1(ex_aluop_i[1]),
        .I2(ex_aluop_i[4]),
        .I3(ex_aluop_i[3]),
        .I4(\wdata_o_reg[26]_i_12_n_4 ),
        .I5(\wdata_o_reg[26]_i_13_n_4 ),
        .O(\wdata_o_reg[26]_i_7_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[26]_i_8 
       (.I0(\wb_lo_reg[26] ),
        .I1(\mem_cp0_reg_data_reg[26]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[26]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_6),
        .O(\wdata_o_reg[26]_i_8_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h00040404)) 
    \wdata_o_reg[26]_i_9 
       (.I0(mul_ans[4]),
        .I1(mul_ans__0_0[31]),
        .I2(mul_ans[3]),
        .I3(mul_ans[2]),
        .I4(mul_ans[1]),
        .O(\wdata_o_reg[26]_i_9_n_4 ));
  MUXF7 \wdata_o_reg[27]_i_1 
       (.I0(\wdata_o_reg[27]_i_2_n_4 ),
        .I1(\wdata_o_reg[27]_i_3_n_4 ),
        .O(\mem_wdata_reg[31] [27]),
        .S(ex_alusel_i[2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[27]_i_10 
       (.I0(mul_ans[27]),
        .I1(\ex0/mul_op20 [27]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[27]),
        .O(\wdata_o_reg[27]_i_10_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[27]_i_11 
       (.I0(mul_ans[26]),
        .I1(\ex0/mul_op20 [26]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[26]),
        .O(\wdata_o_reg[27]_i_11_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[27]_i_12 
       (.I0(mul_ans[25]),
        .I1(\ex0/mul_op20 [25]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[25]),
        .O(\wdata_o_reg[27]_i_12_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[27]_i_13 
       (.I0(mul_ans[24]),
        .I1(\ex0/mul_op20 [24]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[24]),
        .O(\wdata_o_reg[27]_i_13_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[27]_i_15 
       (.I0(\wdata_o_reg[27]_i_18_n_4 ),
        .I1(\wdata_o_reg[31]_i_13_n_4 ),
        .I2(mul_ans[1]),
        .I3(\wdata_o_reg[29]_i_13_n_4 ),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[31]_i_15_n_4 ),
        .O(\wdata_o_reg[27]_i_15_n_4 ));
  LUT6 #(
    .INIT(64'hA3A3000FA3A30000)) 
    \wdata_o_reg[27]_i_16 
       (.I0(\wdata_o_reg[28]_i_11_n_4 ),
        .I1(\wdata_o_reg[26]_i_19_n_4 ),
        .I2(mul_ans[0]),
        .I3(ex_aluop_i[0]),
        .I4(ex_aluop_i[1]),
        .I5(\wdata_o_reg[28]_i_12_n_4 ),
        .O(\wdata_o_reg[27]_i_16_n_4 ));
  LUT6 #(
    .INIT(64'h3070FFFFFFFFFFFF)) 
    \wdata_o_reg[27]_i_17 
       (.I0(mul_ans[1]),
        .I1(mul_ans[2]),
        .I2(\wdata_o_reg[24]_i_7_n_4 ),
        .I3(mul_ans[0]),
        .I4(mul_ans__0_0[31]),
        .I5(\wdata_o_reg[27]_i_19_n_4 ),
        .O(\wdata_o_reg[27]_i_17_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \wdata_o_reg[27]_i_18 
       (.I0(mul_ans__0_0[12]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[4]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[20]),
        .O(\wdata_o_reg[27]_i_18_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wdata_o_reg[27]_i_19 
       (.I0(ex_aluop_i[1]),
        .I1(ex_aluop_i[0]),
        .O(\wdata_o_reg[27]_i_19_n_4 ));
  LUT6 #(
    .INIT(64'h36680000FFFFFFFF)) 
    \wdata_o_reg[27]_i_2 
       (.I0(ex_aluop_i[0]),
        .I1(ex_aluop_i[1]),
        .I2(mul_ans[27]),
        .I3(mul_ans__0_0[27]),
        .I4(\wdata_o_reg[30]_i_5_n_4 ),
        .I5(\wdata_o_reg[27]_i_4_n_4 ),
        .O(\wdata_o_reg[27]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h03008B8833338B88)) 
    \wdata_o_reg[27]_i_3 
       (.I0(ex_link_addr_i[27]),
        .I1(ex_alusel_i[1]),
        .I2(\wdata_o_reg[31]_i_9_n_4 ),
        .I3(\ex0/data1 [27]),
        .I4(ex_alusel_i[0]),
        .I5(mul_ans__2_38),
        .O(\wdata_o_reg[27]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'hFF080000FFFFFFFF)) 
    \wdata_o_reg[27]_i_4 
       (.I0(\mem_wdata_reg[30] ),
        .I1(\lo_o_reg[27] ),
        .I2(\wb_cp0_reg_data_reg[27] ),
        .I3(\wdata_o_reg[27]_i_8_n_4 ),
        .I4(\wdata_o_reg[27]_i_9_n_4 ),
        .I5(\wdata_o_reg[26]_i_6_n_4 ),
        .O(\wdata_o_reg[27]_i_4_n_4 ));
  CARRY4 \wdata_o_reg[27]_i_5 
       (.CI(\wdata_o_reg[23]_i_5_n_4 ),
        .CO({\wdata_o_reg[27]_i_5_n_4 ,\wdata_o_reg[27]_i_5_n_5 ,\wdata_o_reg[27]_i_5_n_6 ,\wdata_o_reg[27]_i_5_n_7 }),
        .CYINIT(1'b0),
        .DI(mul_ans[27:24]),
        .O(\ex0/data1 [27:24]),
        .S({\wdata_o_reg[27]_i_10_n_4 ,\wdata_o_reg[27]_i_11_n_4 ,\wdata_o_reg[27]_i_12_n_4 ,\wdata_o_reg[27]_i_13_n_4 }));
  LUT6 #(
    .INIT(64'hDDDDDDDDDFDDDFFF)) 
    \wdata_o_reg[27]_i_8 
       (.I0(ex_alusel_i[0]),
        .I1(\wdata_o_reg[26]_i_7_n_4 ),
        .I2(mul_ans[27]),
        .I3(\mem_wdata_reg[10] ),
        .I4(mem_whilo_reg_3),
        .I5(\mem_wdata_reg[30] ),
        .O(\wdata_o_reg[27]_i_8_n_4 ));
  LUT6 #(
    .INIT(64'hFFFF0B00FFFFFFFF)) 
    \wdata_o_reg[27]_i_9 
       (.I0(\wdata_o_reg[31]_i_6_n_4 ),
        .I1(\wdata_o_reg[27]_i_15_n_4 ),
        .I2(\wdata_o_reg[27]_i_16_n_4 ),
        .I3(\wdata_o_reg[27]_i_17_n_4 ),
        .I4(ex_alusel_i[0]),
        .I5(\wdata_o_reg[31]_i_7_n_4 ),
        .O(\wdata_o_reg[27]_i_9_n_4 ));
  MUXF7 \wdata_o_reg[28]_i_1 
       (.I0(\wdata_o_reg[28]_i_2_n_4 ),
        .I1(\wdata_o_reg[28]_i_3_n_4 ),
        .O(\mem_wdata_reg[31] [28]),
        .S(ex_alusel_i[2]));
  LUT6 #(
    .INIT(64'hAA0FCC00AA00CC00)) 
    \wdata_o_reg[28]_i_10 
       (.I0(\wdata_o_reg[29]_i_14_n_4 ),
        .I1(\wdata_o_reg[28]_i_11_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(mul_ans[0]),
        .I5(\wdata_o_reg[28]_i_12_n_4 ),
        .O(\wdata_o_reg[28]_i_10_n_4 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \wdata_o_reg[28]_i_11 
       (.I0(mul_ans__0_0[30]),
        .I1(mul_ans[1]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[28]),
        .I4(mul_ans[4]),
        .I5(mul_ans[2]),
        .O(\wdata_o_reg[28]_i_11_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[28]_i_12 
       (.I0(\wdata_o_reg[26]_i_26_n_4 ),
        .I1(\wdata_o_reg[31]_i_26_n_4 ),
        .I2(mul_ans[1]),
        .I3(\wdata_o_reg[26]_i_25_n_4 ),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[31]_i_21_n_4 ),
        .O(\wdata_o_reg[28]_i_12_n_4 ));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[28]_i_2 
       (.I0(\wdata_o_reg[28]_i_4_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[28]),
        .I4(mul_ans__0_0[28]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[28]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h038833BB03880388)) 
    \wdata_o_reg[28]_i_3 
       (.I0(ex_link_addr_i[28]),
        .I1(ex_alusel_i[1]),
        .I2(mul_ans__2_40),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[31]_i_9_n_4 ),
        .I5(\ex0/data1 [28]),
        .O(\wdata_o_reg[28]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \wdata_o_reg[28]_i_4 
       (.I0(\wdata_o_reg[26]_i_6_n_4 ),
        .I1(\mem_wdata_reg[30] ),
        .I2(\lo_o_reg[28] ),
        .I3(\wb_cp0_reg_data_reg[28] ),
        .I4(\wdata_o_reg[28]_i_7_n_4 ),
        .I5(\wdata_o_reg[28]_i_8_n_4 ),
        .O(\wdata_o_reg[28]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDFDDDFFF)) 
    \wdata_o_reg[28]_i_7 
       (.I0(ex_alusel_i[0]),
        .I1(\wdata_o_reg[26]_i_7_n_4 ),
        .I2(mul_ans[28]),
        .I3(\mem_wdata_reg[10] ),
        .I4(mem_whilo_reg_2),
        .I5(\mem_wdata_reg[30] ),
        .O(\wdata_o_reg[28]_i_7_n_4 ));
  LUT6 #(
    .INIT(64'h0B000B0BFFFFFFFF)) 
    \wdata_o_reg[28]_i_8 
       (.I0(\wdata_o_reg[31]_i_19_n_4 ),
        .I1(\wdata_o_reg[29]_i_10_n_4 ),
        .I2(\wdata_o_reg[28]_i_10_n_4 ),
        .I3(\wdata_o_reg[31]_i_11_n_4 ),
        .I4(\wdata_o_reg[31]_i_12_n_4 ),
        .I5(\wdata_o_reg[30]_i_12_n_4 ),
        .O(\wdata_o_reg[28]_i_8_n_4 ));
  MUXF7 \wdata_o_reg[29]_i_1 
       (.I0(\wdata_o_reg[29]_i_2_n_4 ),
        .I1(\wdata_o_reg[29]_i_3_n_4 ),
        .O(\mem_wdata_reg[31] [29]),
        .S(ex_alusel_i[2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \wdata_o_reg[29]_i_10 
       (.I0(\wdata_o_reg[29]_i_13_n_4 ),
        .I1(mul_ans[2]),
        .I2(\wdata_o_reg[31]_i_15_n_4 ),
        .I3(\wdata_o_reg[31]_i_13_n_4 ),
        .I4(\wdata_o_reg[31]_i_14_n_4 ),
        .I5(mul_ans[1]),
        .O(\wdata_o_reg[29]_i_10_n_4 ));
  LUT6 #(
    .INIT(64'hF0FF0044F0000044)) 
    \wdata_o_reg[29]_i_11 
       (.I0(ex_aluop_i[0]),
        .I1(\wdata_o_reg[30]_i_21_n_4 ),
        .I2(\wdata_o_reg[30]_i_20_n_4 ),
        .I3(mul_ans[0]),
        .I4(ex_aluop_i[1]),
        .I5(\wdata_o_reg[29]_i_14_n_4 ),
        .O(\wdata_o_reg[29]_i_11_n_4 ));
  LUT6 #(
    .INIT(64'h0000001000100010)) 
    \wdata_o_reg[29]_i_12 
       (.I0(mul_ans[4]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[31]),
        .I3(mul_ans[2]),
        .I4(mul_ans[0]),
        .I5(mul_ans[1]),
        .O(\wdata_o_reg[29]_i_12_n_4 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \wdata_o_reg[29]_i_13 
       (.I0(mul_ans__0_0[14]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[6]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[22]),
        .O(\wdata_o_reg[29]_i_13_n_4 ));
  LUT6 #(
    .INIT(64'h00000000000B0008)) 
    \wdata_o_reg[29]_i_14 
       (.I0(mul_ans__0_0[31]),
        .I1(mul_ans[1]),
        .I2(mul_ans[2]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[29]),
        .I5(mul_ans[3]),
        .O(\wdata_o_reg[29]_i_14_n_4 ));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[29]_i_2 
       (.I0(\wdata_o_reg[29]_i_4_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[29]),
        .I4(mul_ans__0_0[29]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[29]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h038833BB03880388)) 
    \wdata_o_reg[29]_i_3 
       (.I0(ex_link_addr_i[29]),
        .I1(ex_alusel_i[1]),
        .I2(mul_ans__2_42),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[31]_i_9_n_4 ),
        .I5(\ex0/data1 [29]),
        .O(\wdata_o_reg[29]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \wdata_o_reg[29]_i_4 
       (.I0(\wdata_o_reg[26]_i_6_n_4 ),
        .I1(\mem_wdata_reg[30] ),
        .I2(\lo_o_reg[29] ),
        .I3(\wb_cp0_reg_data_reg[29] ),
        .I4(\wdata_o_reg[29]_i_7_n_4 ),
        .I5(\wdata_o_reg[29]_i_8_n_4 ),
        .O(\wdata_o_reg[29]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDFDDDFFF)) 
    \wdata_o_reg[29]_i_7 
       (.I0(ex_alusel_i[0]),
        .I1(\wdata_o_reg[26]_i_7_n_4 ),
        .I2(mul_ans[29]),
        .I3(\mem_wdata_reg[10] ),
        .I4(mem_whilo_reg_1),
        .I5(\mem_wdata_reg[30] ),
        .O(\wdata_o_reg[29]_i_7_n_4 ));
  LUT6 #(
    .INIT(64'h0B000B0BFFFFFFFF)) 
    \wdata_o_reg[29]_i_8 
       (.I0(\wdata_o_reg[31]_i_6_n_4 ),
        .I1(\wdata_o_reg[29]_i_10_n_4 ),
        .I2(\wdata_o_reg[29]_i_11_n_4 ),
        .I3(\wdata_o_reg[29]_i_12_n_4 ),
        .I4(\wdata_o_reg[31]_i_12_n_4 ),
        .I5(\wdata_o_reg[30]_i_12_n_4 ),
        .O(\wdata_o_reg[29]_i_8_n_4 ));
  MUXF7 \wdata_o_reg[2]_i_1 
       (.I0(\wdata_o_reg[2]_i_2_n_4 ),
        .I1(\wdata_o_reg[2]_i_3_n_4 ),
        .O(\mem_wdata_reg[31] [2]),
        .S(ex_alusel_i[2]));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[2]_i_2 
       (.I0(\wdata_o_reg[2]_i_4_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[2]),
        .I4(mul_ans__0_0[2]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[2]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h38083B3B38083808)) 
    \wdata_o_reg[2]_i_3 
       (.I0(ex_link_addr_i[2]),
        .I1(ex_alusel_i[1]),
        .I2(ex_alusel_i[0]),
        .I3(\lo_o_reg[2]_i_2_n_4 ),
        .I4(\wdata_o_reg[31]_i_9_n_4 ),
        .I5(\ex0/data1 [2]),
        .O(\wdata_o_reg[2]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h00080C0800080008)) 
    \wdata_o_reg[2]_i_4 
       (.I0(\wdata_o_reg[2]_i_5_n_4 ),
        .I1(ex_alusel_i[1]),
        .I2(rst_IBUF),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[26]_i_7_n_4 ),
        .I5(\wdata_o_reg[2]_i_6_n_4 ),
        .O(\wdata_o_reg[2]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA000A080)) 
    \wdata_o_reg[2]_i_5 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(\wdata_o_reg[2]_i_7_n_4 ),
        .I4(\wdata_o_reg[2]_i_8_n_4 ),
        .I5(\wdata_o_reg[2]_i_9_n_4 ),
        .O(\wdata_o_reg[2]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[2]_i_6 
       (.I0(\wb_lo_reg[2] ),
        .I1(\mem_cp0_reg_data_reg[2]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[2]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_26),
        .O(\wdata_o_reg[2]_i_6_n_4 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \wdata_o_reg[2]_i_7 
       (.I0(\wdata_o_reg[1]_i_10_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[1]_i_11_n_4 ),
        .I3(\wdata_o_reg[3]_i_11_n_4 ),
        .I4(\wdata_o_reg[3]_i_12_n_4 ),
        .I5(mul_ans[0]),
        .O(\wdata_o_reg[2]_i_7_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \wdata_o_reg[2]_i_8 
       (.I0(mul_ans[1]),
        .I1(mul_ans[4]),
        .I2(mul_ans[3]),
        .I3(mul_ans[2]),
        .I4(mul_ans__0_0[31]),
        .O(\wdata_o_reg[2]_i_8_n_4 ));
  LUT5 #(
    .INIT(32'h00030005)) 
    \wdata_o_reg[2]_i_9 
       (.I0(\wdata_o_reg[3]_i_15_n_4 ),
        .I1(\wdata_o_reg[1]_i_14_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(mul_ans[0]),
        .O(\wdata_o_reg[2]_i_9_n_4 ));
  MUXF7 \wdata_o_reg[30]_i_1 
       (.I0(\wdata_o_reg[30]_i_2_n_4 ),
        .I1(\wdata_o_reg[30]_i_3_n_4 ),
        .O(\mem_wdata_reg[31] [30]),
        .S(ex_alusel_i[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0047FFFF)) 
    \wdata_o_reg[30]_i_10 
       (.I0(mul_ans[30]),
        .I1(\mem_wdata_reg[10] ),
        .I2(mem_whilo_reg_0),
        .I3(\mem_wdata_reg[30] ),
        .I4(ex_alusel_i[0]),
        .I5(\wdata_o_reg[26]_i_7_n_4 ),
        .O(\wdata_o_reg[30]_i_10_n_4 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \wdata_o_reg[30]_i_11 
       (.I0(ex_aluop_i[3]),
        .I1(ex_aluop_i[2]),
        .I2(ex_alusel_i[0]),
        .I3(ex_aluop_i[4]),
        .I4(ex_aluop_i[5]),
        .I5(ex_aluop_i[6]),
        .O(\wdata_o_reg[30]_i_11_n_4 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wdata_o_reg[30]_i_12 
       (.I0(ex_aluop_i[4]),
        .I1(ex_aluop_i[5]),
        .I2(ex_aluop_i[6]),
        .I3(ex_aluop_i[3]),
        .I4(ex_aluop_i[2]),
        .I5(ex_alusel_i[0]),
        .O(\wdata_o_reg[30]_i_12_n_4 ));
  LUT6 #(
    .INIT(64'hAA0FCC00AA00CC00)) 
    \wdata_o_reg[30]_i_13 
       (.I0(\wdata_o_reg[30]_i_19_n_4 ),
        .I1(\wdata_o_reg[30]_i_20_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(mul_ans[0]),
        .I5(\wdata_o_reg[30]_i_21_n_4 ),
        .O(\wdata_o_reg[30]_i_13_n_4 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \wdata_o_reg[30]_i_14 
       (.I0(mul_ans[4]),
        .I1(mul_ans__0_0[31]),
        .I2(mul_ans[3]),
        .I3(mul_ans[2]),
        .I4(mul_ans[1]),
        .I5(mul_ans[0]),
        .O(\wdata_o_reg[30]_i_14_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \wdata_o_reg[30]_i_19 
       (.I0(mul_ans[1]),
        .I1(mul_ans[2]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[31]),
        .I4(mul_ans[4]),
        .O(\wdata_o_reg[30]_i_19_n_4 ));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[30]_i_2 
       (.I0(\wdata_o_reg[30]_i_4_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[30]),
        .I4(mul_ans__0_0[30]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[30]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \wdata_o_reg[30]_i_20 
       (.I0(mul_ans[3]),
        .I1(mul_ans__0_0[30]),
        .I2(mul_ans[4]),
        .I3(mul_ans[2]),
        .I4(mul_ans[1]),
        .O(\wdata_o_reg[30]_i_20_n_4 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata_o_reg[30]_i_21 
       (.I0(\wdata_o_reg[26]_i_25_n_4 ),
        .I1(mul_ans[2]),
        .I2(\wdata_o_reg[31]_i_21_n_4 ),
        .I3(mul_ans[1]),
        .I4(\wdata_o_reg[31]_i_22_n_4 ),
        .O(\wdata_o_reg[30]_i_21_n_4 ));
  LUT6 #(
    .INIT(64'h038833BB03880388)) 
    \wdata_o_reg[30]_i_3 
       (.I0(ex_link_addr_i[30]),
        .I1(ex_alusel_i[1]),
        .I2(mul_ans__2_44),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[31]_i_9_n_4 ),
        .I5(\ex0/data1 [30]),
        .O(\wdata_o_reg[30]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h888888888AAAAAAA)) 
    \wdata_o_reg[30]_i_4 
       (.I0(\wdata_o_reg[26]_i_6_n_4 ),
        .I1(\wdata_o_reg[30]_i_6_n_4 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(\lo_o_reg[30] ),
        .I4(\wb_cp0_reg_data_reg[30] ),
        .I5(\wdata_o_reg[30]_i_10_n_4 ),
        .O(\wdata_o_reg[30]_i_4_n_4 ));
  LUT3 #(
    .INIT(8'h02)) 
    \wdata_o_reg[30]_i_5 
       (.I0(\wdata_o_reg[30]_i_11_n_4 ),
        .I1(ex_alusel_i[1]),
        .I2(rst_IBUF),
        .O(\wdata_o_reg[30]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'hAA20AAAAAA20AA20)) 
    \wdata_o_reg[30]_i_6 
       (.I0(\wdata_o_reg[30]_i_12_n_4 ),
        .I1(\wdata_o_reg[31]_i_19_n_4 ),
        .I2(\wdata_o_reg[31]_i_5_n_4 ),
        .I3(\wdata_o_reg[30]_i_13_n_4 ),
        .I4(\wdata_o_reg[30]_i_14_n_4 ),
        .I5(\wdata_o_reg[31]_i_12_n_4 ),
        .O(\wdata_o_reg[30]_i_6_n_4 ));
  LUT6 #(
    .INIT(64'h0000000000018000)) 
    \wdata_o_reg[30]_i_7 
       (.I0(ex_aluop_i[6]),
        .I1(ex_aluop_i[3]),
        .I2(ex_aluop_i[2]),
        .I3(ex_aluop_i[0]),
        .I4(ex_aluop_i[1]),
        .I5(\cp0_reg_read_addr_o_reg[2]_i_3_n_4 ),
        .O(\mem_wdata_reg[30] ));
  MUXF7 \wdata_o_reg[31]_i_1 
       (.I0(\wdata_o_reg[31]_i_2_n_4 ),
        .I1(\wdata_o_reg[31]_i_3_n_4 ),
        .O(\mem_wdata_reg[31] [31]),
        .S(ex_alusel_i[2]));
  LUT6 #(
    .INIT(64'h5554445411100010)) 
    \wdata_o_reg[31]_i_10 
       (.I0(\wdata_o_reg[31]_i_19_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[31]_i_20_n_4 ),
        .I3(mul_ans[2]),
        .I4(\wdata_o_reg[31]_i_21_n_4 ),
        .I5(\wdata_o_reg[31]_i_22_n_4 ),
        .O(\wdata_o_reg[31]_i_10_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \wdata_o_reg[31]_i_11 
       (.I0(mul_ans[2]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[31]),
        .I3(mul_ans[4]),
        .O(\wdata_o_reg[31]_i_11_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \wdata_o_reg[31]_i_12 
       (.I0(ex_aluop_i[0]),
        .I1(ex_aluop_i[1]),
        .I2(mul_ans__0_0[31]),
        .O(\wdata_o_reg[31]_i_12_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[31]_i_13 
       (.I0(mul_ans__0_0[0]),
        .I1(mul_ans__0_0[16]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[8]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[24]),
        .O(\wdata_o_reg[31]_i_13_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[31]_i_14 
       (.I0(mul_ans__0_0[4]),
        .I1(mul_ans__0_0[20]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[12]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[28]),
        .O(\wdata_o_reg[31]_i_14_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[31]_i_15 
       (.I0(mul_ans__0_0[2]),
        .I1(mul_ans__0_0[18]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[10]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[26]),
        .O(\wdata_o_reg[31]_i_15_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[31]_i_16 
       (.I0(mul_ans__0_0[6]),
        .I1(mul_ans__0_0[22]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[14]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[30]),
        .O(\wdata_o_reg[31]_i_16_n_4 ));
  LUT6 #(
    .INIT(64'h5151511551151555)) 
    \wdata_o_reg[31]_i_17 
       (.I0(ex_alusel_i[1]),
        .I1(\wdata_o_reg[30]_i_11_n_4 ),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans__0_0[31]),
        .I4(mul_ans[31]),
        .I5(ex_aluop_i[0]),
        .O(\wdata_o_reg[31]_i_17_n_4 ));
  LUT6 #(
    .INIT(64'hC0C0CFCF505F505F)) 
    \wdata_o_reg[31]_i_18 
       (.I0(\mem_cp0_reg_data_reg[31]_0 ),
        .I1(\wb_lo_reg[31] ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mem_whilo_reg_5),
        .I4(mul_ans[31]),
        .I5(\mem_wdata_reg[10] ),
        .O(\wdata_o_reg[31]_i_18_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \wdata_o_reg[31]_i_19 
       (.I0(mul_ans[0]),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .O(\wdata_o_reg[31]_i_19_n_4 ));
  LUT6 #(
    .INIT(64'h00000000FFFFAE00)) 
    \wdata_o_reg[31]_i_2 
       (.I0(\wdata_o_reg[31]_i_4_n_4 ),
        .I1(\wdata_o_reg[31]_i_5_n_4 ),
        .I2(\wdata_o_reg[31]_i_6_n_4 ),
        .I3(\wdata_o_reg[31]_i_7_n_4 ),
        .I4(ex_alusel_i[0]),
        .I5(\wdata_o_reg[31]_i_8_n_4 ),
        .O(\wdata_o_reg[31]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[31]_i_20 
       (.I0(mul_ans__0_0[7]),
        .I1(mul_ans__0_0[23]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[15]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[31]),
        .O(\wdata_o_reg[31]_i_20_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[31]_i_21 
       (.I0(mul_ans__0_0[3]),
        .I1(mul_ans__0_0[19]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[11]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[27]),
        .O(\wdata_o_reg[31]_i_21_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[31]_i_22 
       (.I0(\wdata_o_reg[31]_i_26_n_4 ),
        .I1(mul_ans[2]),
        .I2(\wdata_o_reg[31]_i_27_n_4 ),
        .O(\wdata_o_reg[31]_i_22_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[31]_i_26 
       (.I0(mul_ans__0_0[1]),
        .I1(mul_ans__0_0[17]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[9]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[25]),
        .O(\wdata_o_reg[31]_i_26_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[31]_i_27 
       (.I0(mul_ans__0_0[5]),
        .I1(mul_ans__0_0[21]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[13]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[29]),
        .O(\wdata_o_reg[31]_i_27_n_4 ));
  LUT6 #(
    .INIT(64'h038833BB03880388)) 
    \wdata_o_reg[31]_i_3 
       (.I0(ex_link_addr_i[31]),
        .I1(ex_alusel_i[1]),
        .I2(mul_ans__2_46),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[31]_i_9_n_4 ),
        .I5(\ex0/p_0_in6_in ),
        .O(\wdata_o_reg[31]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFABAAAAAA)) 
    \wdata_o_reg[31]_i_4 
       (.I0(\wdata_o_reg[31]_i_10_n_4 ),
        .I1(mul_ans[0]),
        .I2(mul_ans[1]),
        .I3(\wdata_o_reg[31]_i_11_n_4 ),
        .I4(ex_aluop_i[1]),
        .I5(\wdata_o_reg[31]_i_12_n_4 ),
        .O(\wdata_o_reg[31]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \wdata_o_reg[31]_i_5 
       (.I0(\wdata_o_reg[31]_i_13_n_4 ),
        .I1(mul_ans[2]),
        .I2(\wdata_o_reg[31]_i_14_n_4 ),
        .I3(mul_ans[1]),
        .I4(\wdata_o_reg[31]_i_15_n_4 ),
        .I5(\wdata_o_reg[31]_i_16_n_4 ),
        .O(\wdata_o_reg[31]_i_5_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \wdata_o_reg[31]_i_6 
       (.I0(ex_aluop_i[0]),
        .I1(ex_aluop_i[1]),
        .I2(mul_ans[0]),
        .O(\wdata_o_reg[31]_i_6_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \wdata_o_reg[31]_i_7 
       (.I0(ex_aluop_i[2]),
        .I1(ex_aluop_i[3]),
        .I2(ex_aluop_i[6]),
        .I3(ex_aluop_i[5]),
        .I4(ex_aluop_i[4]),
        .O(\wdata_o_reg[31]_i_7_n_4 ));
  LUT6 #(
    .INIT(64'hFEEEFEEEFEEEEEEE)) 
    \wdata_o_reg[31]_i_8 
       (.I0(\wdata_o_reg[31]_i_17_n_4 ),
        .I1(rst_IBUF),
        .I2(ex_alusel_i[0]),
        .I3(ex_alusel_i[1]),
        .I4(\wdata_o_reg[26]_i_7_n_4 ),
        .I5(\wdata_o_reg[31]_i_18_n_4 ),
        .O(\wdata_o_reg[31]_i_8_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \wdata_o_reg[31]_i_9 
       (.I0(ex_aluop_i[3]),
        .I1(ex_aluop_i[5]),
        .I2(ex_aluop_i[4]),
        .I3(div_start_o_reg_i_2_n_4),
        .I4(ex_alusel_i[0]),
        .I5(rst_IBUF),
        .O(\wdata_o_reg[31]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'h0000AAFEAAFEAAFE)) 
    \wdata_o_reg[3]_i_1 
       (.I0(\wdata_o_reg[3]_i_2_n_4 ),
        .I1(\wdata_o_reg[3]_i_3_n_4 ),
        .I2(ex_alusel_i[0]),
        .I3(\wdata_o_reg[3]_i_4_n_4 ),
        .I4(ex_alusel_i[2]),
        .I5(\wdata_o_reg[3]_i_5_n_4 ),
        .O(\mem_wdata_reg[31] [3]));
  CARRY4 \wdata_o_reg[3]_i_10 
       (.CI(1'b0),
        .CO({\wdata_o_reg[3]_i_10_n_4 ,\wdata_o_reg[3]_i_10_n_5 ,\wdata_o_reg[3]_i_10_n_6 ,\wdata_o_reg[3]_i_10_n_7 }),
        .CYINIT(1'b0),
        .DI(mul_ans[3:0]),
        .O(\ex0/data1 [3:0]),
        .S({\wdata_o_reg[3]_i_19_n_4 ,\wdata_o_reg[3]_i_20_n_4 ,\wdata_o_reg[3]_i_21_n_4 ,\wdata_o_reg[3]_i_22_n_4 }));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[3]_i_11 
       (.I0(\wdata_o_reg[9]_i_18_n_4 ),
        .I1(mul_ans[2]),
        .I2(\wdata_o_reg[3]_i_23_n_4 ),
        .O(\wdata_o_reg[3]_i_11_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[3]_i_12 
       (.I0(\wdata_o_reg[3]_i_24_n_4 ),
        .I1(mul_ans[2]),
        .I2(\wdata_o_reg[3]_i_25_n_4 ),
        .O(\wdata_o_reg[3]_i_12_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[3]_i_13 
       (.I0(\wdata_o_reg[9]_i_17_n_4 ),
        .I1(\wdata_o_reg[3]_i_26_n_4 ),
        .I2(mul_ans[1]),
        .I3(\wdata_o_reg[3]_i_27_n_4 ),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[3]_i_28_n_4 ),
        .O(\wdata_o_reg[3]_i_13_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF4F7)) 
    \wdata_o_reg[3]_i_14 
       (.I0(mul_ans__0_0[1]),
        .I1(mul_ans[1]),
        .I2(mul_ans[2]),
        .I3(mul_ans__0_0[3]),
        .I4(mul_ans[3]),
        .I5(mul_ans[4]),
        .O(\wdata_o_reg[3]_i_14_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4FFF7)) 
    \wdata_o_reg[3]_i_15 
       (.I0(mul_ans__0_0[0]),
        .I1(mul_ans[1]),
        .I2(mul_ans[2]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[2]),
        .I5(mul_ans[3]),
        .O(\wdata_o_reg[3]_i_15_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[3]_i_19 
       (.I0(mul_ans[3]),
        .I1(\ex0/mul_op20 [3]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[3]),
        .O(\wdata_o_reg[3]_i_19_n_4 ));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[3]_i_2 
       (.I0(ex_alusel_i[2]),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[3]),
        .I4(mul_ans__0_0[3]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[3]_i_2_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[3]_i_20 
       (.I0(mul_ans[2]),
        .I1(\ex0/mul_op20 [2]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[2]),
        .O(\wdata_o_reg[3]_i_20_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[3]_i_21 
       (.I0(mul_ans[1]),
        .I1(\ex0/mul_op20 [1]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[1]),
        .O(\wdata_o_reg[3]_i_21_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wdata_o_reg[3]_i_22 
       (.I0(mul_ans[0]),
        .I1(mul_ans__0_0[0]),
        .O(\wdata_o_reg[3]_i_22_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[3]_i_23 
       (.I0(mul_ans__0_0[29]),
        .I1(mul_ans__0_0[13]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[21]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[5]),
        .O(\wdata_o_reg[3]_i_23_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[3]_i_24 
       (.I0(mul_ans__0_0[31]),
        .I1(mul_ans__0_0[15]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[23]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[7]),
        .O(\wdata_o_reg[3]_i_24_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[3]_i_25 
       (.I0(mul_ans__0_0[27]),
        .I1(mul_ans__0_0[11]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[19]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[3]),
        .O(\wdata_o_reg[3]_i_25_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[3]_i_26 
       (.I0(mul_ans__0_0[30]),
        .I1(mul_ans__0_0[14]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[22]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[6]),
        .O(\wdata_o_reg[3]_i_26_n_4 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \wdata_o_reg[3]_i_27 
       (.I0(mul_ans__0_0[16]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[24]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[8]),
        .O(\wdata_o_reg[3]_i_27_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[3]_i_28 
       (.I0(mul_ans__0_0[28]),
        .I1(mul_ans__0_0[12]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[20]),
        .I4(mul_ans[4]),
        .I5(mul_ans__0_0[4]),
        .O(\wdata_o_reg[3]_i_28_n_4 ));
  LUT6 #(
    .INIT(64'hAAAAA000AAAAA080)) 
    \wdata_o_reg[3]_i_3 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(\wdata_o_reg[3]_i_6_n_4 ),
        .I4(\wdata_o_reg[3]_i_7_n_4 ),
        .I5(\wdata_o_reg[3]_i_8_n_4 ),
        .O(\wdata_o_reg[3]_i_3_n_4 ));
  LUT5 #(
    .INIT(32'hFFD0FFFF)) 
    \wdata_o_reg[3]_i_4 
       (.I0(\wdata_o_reg[3]_i_9_n_4 ),
        .I1(\wdata_o_reg[26]_i_7_n_4 ),
        .I2(ex_alusel_i[0]),
        .I3(rst_IBUF),
        .I4(ex_alusel_i[1]),
        .O(\wdata_o_reg[3]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'hF7C7C4C4F7C7F7C7)) 
    \wdata_o_reg[3]_i_5 
       (.I0(ex_link_addr_i[3]),
        .I1(ex_alusel_i[1]),
        .I2(ex_alusel_i[0]),
        .I3(mul_ans__1_1),
        .I4(\wdata_o_reg[31]_i_9_n_4 ),
        .I5(\ex0/data1 [3]),
        .O(\wdata_o_reg[3]_i_5_n_4 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \wdata_o_reg[3]_i_6 
       (.I0(\wdata_o_reg[3]_i_11_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[3]_i_12_n_4 ),
        .I3(\wdata_o_reg[3]_i_13_n_4 ),
        .I4(mul_ans[0]),
        .O(\wdata_o_reg[3]_i_6_n_4 ));
  LUT5 #(
    .INIT(32'h00030005)) 
    \wdata_o_reg[3]_i_7 
       (.I0(\wdata_o_reg[3]_i_14_n_4 ),
        .I1(\wdata_o_reg[3]_i_15_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(mul_ans[0]),
        .O(\wdata_o_reg[3]_i_7_n_4 ));
  LUT6 #(
    .INIT(64'h3FFF7FFFFFFFFFFF)) 
    \wdata_o_reg[3]_i_8 
       (.I0(mul_ans[1]),
        .I1(mul_ans[4]),
        .I2(mul_ans[3]),
        .I3(mul_ans[2]),
        .I4(mul_ans[0]),
        .I5(mul_ans__0_0[31]),
        .O(\wdata_o_reg[3]_i_8_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[3]_i_9 
       (.I0(\wb_lo_reg[3] ),
        .I1(\mem_cp0_reg_data_reg[3]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[3]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_27),
        .O(\wdata_o_reg[3]_i_9_n_4 ));
  MUXF7 \wdata_o_reg[4]_i_1 
       (.I0(\wdata_o_reg[4]_i_2_n_4 ),
        .I1(\wdata_o_reg[4]_i_3_n_4 ),
        .O(\mem_wdata_reg[31] [4]),
        .S(ex_alusel_i[2]));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[4]_i_2 
       (.I0(\wdata_o_reg[4]_i_4_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[4]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[4]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h03008B8833338B88)) 
    \wdata_o_reg[4]_i_3 
       (.I0(ex_link_addr_i[4]),
        .I1(ex_alusel_i[1]),
        .I2(\wdata_o_reg[31]_i_9_n_4 ),
        .I3(\ex0/data1 [4]),
        .I4(ex_alusel_i[0]),
        .I5(mul_ans__1_2),
        .O(\wdata_o_reg[4]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h0020F02000200020)) 
    \wdata_o_reg[4]_i_4 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(\wdata_o_reg[4]_i_5_n_4 ),
        .I2(\wdata_o_reg[26]_i_6_n_4 ),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[26]_i_7_n_4 ),
        .I5(\wdata_o_reg[4]_i_6_n_4 ),
        .O(\wdata_o_reg[4]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'h000D0F0F000F0F0F)) 
    \wdata_o_reg[4]_i_5 
       (.I0(mul_ans__0_0[31]),
        .I1(\wdata_o_reg[4]_i_7_n_4 ),
        .I2(\wdata_o_reg[4]_i_8_n_4 ),
        .I3(\wdata_o_reg[4]_i_9_n_4 ),
        .I4(ex_aluop_i[1]),
        .I5(ex_aluop_i[0]),
        .O(\wdata_o_reg[4]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[4]_i_6 
       (.I0(\wb_lo_reg[4] ),
        .I1(\mem_cp0_reg_data_reg[4]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[4]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_28),
        .O(\wdata_o_reg[4]_i_6_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h70F0)) 
    \wdata_o_reg[4]_i_7 
       (.I0(mul_ans[2]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[31]),
        .I3(mul_ans[4]),
        .O(\wdata_o_reg[4]_i_7_n_4 ));
  LUT5 #(
    .INIT(32'h00030005)) 
    \wdata_o_reg[4]_i_8 
       (.I0(\wdata_o_reg[5]_i_14_n_4 ),
        .I1(\wdata_o_reg[3]_i_14_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(mul_ans[0]),
        .O(\wdata_o_reg[4]_i_8_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[4]_i_9 
       (.I0(\wdata_o_reg[5]_i_13_n_4 ),
        .I1(mul_ans[0]),
        .I2(\wdata_o_reg[3]_i_13_n_4 ),
        .O(\wdata_o_reg[4]_i_9_n_4 ));
  MUXF7 \wdata_o_reg[5]_i_1 
       (.I0(\wdata_o_reg[5]_i_2_n_4 ),
        .I1(\wdata_o_reg[5]_i_3_n_4 ),
        .O(\mem_wdata_reg[31] [5]),
        .S(ex_alusel_i[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[5]_i_13 
       (.I0(\wdata_o_reg[11]_i_22_n_4 ),
        .I1(\wdata_o_reg[3]_i_24_n_4 ),
        .I2(mul_ans[1]),
        .I3(\wdata_o_reg[9]_i_18_n_4 ),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[3]_i_23_n_4 ),
        .O(\wdata_o_reg[5]_i_13_n_4 ));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFEF0000)) 
    \wdata_o_reg[5]_i_14 
       (.I0(mul_ans[2]),
        .I1(mul_ans[4]),
        .I2(mul_ans__0_0[2]),
        .I3(mul_ans[3]),
        .I4(mul_ans[1]),
        .I5(\wdata_o_reg[7]_i_16_n_4 ),
        .O(\wdata_o_reg[5]_i_14_n_4 ));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[5]_i_2 
       (.I0(\wdata_o_reg[5]_i_4_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[5]),
        .I4(mul_ans__0_0[5]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[5]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h03008B8833338B88)) 
    \wdata_o_reg[5]_i_3 
       (.I0(ex_link_addr_i[5]),
        .I1(ex_alusel_i[1]),
        .I2(\wdata_o_reg[31]_i_9_n_4 ),
        .I3(\ex0/data1 [5]),
        .I4(ex_alusel_i[0]),
        .I5(mul_ans__1_3),
        .O(\wdata_o_reg[5]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h00080C0800080008)) 
    \wdata_o_reg[5]_i_4 
       (.I0(\wdata_o_reg[5]_i_5_n_4 ),
        .I1(ex_alusel_i[1]),
        .I2(rst_IBUF),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[26]_i_7_n_4 ),
        .I5(\wdata_o_reg[5]_i_6_n_4 ),
        .O(\wdata_o_reg[5]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'hAAAAA000AAAAA080)) 
    \wdata_o_reg[5]_i_5 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(\wdata_o_reg[5]_i_7_n_4 ),
        .I4(\wdata_o_reg[5]_i_8_n_4 ),
        .I5(\wdata_o_reg[5]_i_9_n_4 ),
        .O(\wdata_o_reg[5]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[5]_i_6 
       (.I0(\wb_lo_reg[5] ),
        .I1(\mem_cp0_reg_data_reg[5]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[5]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_23),
        .O(\wdata_o_reg[5]_i_6_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[5]_i_7 
       (.I0(\wdata_o_reg[6]_i_19_n_4 ),
        .I1(mul_ans[0]),
        .I2(\wdata_o_reg[5]_i_13_n_4 ),
        .O(\wdata_o_reg[5]_i_7_n_4 ));
  LUT5 #(
    .INIT(32'h00030005)) 
    \wdata_o_reg[5]_i_8 
       (.I0(\wdata_o_reg[6]_i_18_n_4 ),
        .I1(\wdata_o_reg[5]_i_14_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(mul_ans[0]),
        .O(\wdata_o_reg[5]_i_8_n_4 ));
  LUT6 #(
    .INIT(64'h777F7F7FFFFFFFFF)) 
    \wdata_o_reg[5]_i_9 
       (.I0(mul_ans[4]),
        .I1(mul_ans[3]),
        .I2(mul_ans[2]),
        .I3(mul_ans[0]),
        .I4(mul_ans[1]),
        .I5(mul_ans__0_0[31]),
        .O(\wdata_o_reg[5]_i_9_n_4 ));
  MUXF7 \wdata_o_reg[6]_i_1 
       (.I0(\wdata_o_reg[6]_i_2_n_4 ),
        .I1(\wdata_o_reg[6]_i_3_n_4 ),
        .O(\mem_wdata_reg[31] [6]),
        .S(ex_alusel_i[2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[6]_i_10 
       (.I0(mul_ans[5]),
        .I1(\ex0/mul_op20 [5]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[5]),
        .O(\wdata_o_reg[6]_i_10_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[6]_i_11 
       (.I0(mul_ans[4]),
        .I1(\ex0/mul_op20 [4]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[4]),
        .O(\wdata_o_reg[6]_i_11_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h1F00FF00)) 
    \wdata_o_reg[6]_i_12 
       (.I0(mul_ans[1]),
        .I1(mul_ans[2]),
        .I2(mul_ans[3]),
        .I3(mul_ans__0_0[31]),
        .I4(mul_ans[4]),
        .O(\wdata_o_reg[6]_i_12_n_4 ));
  LUT5 #(
    .INIT(32'h00030005)) 
    \wdata_o_reg[6]_i_13 
       (.I0(\wdata_o_reg[7]_i_15_n_4 ),
        .I1(\wdata_o_reg[6]_i_18_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(mul_ans[0]),
        .O(\wdata_o_reg[6]_i_13_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[6]_i_14 
       (.I0(\wdata_o_reg[7]_i_14_n_4 ),
        .I1(mul_ans[0]),
        .I2(\wdata_o_reg[6]_i_19_n_4 ),
        .O(\wdata_o_reg[6]_i_14_n_4 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFB0000)) 
    \wdata_o_reg[6]_i_18 
       (.I0(mul_ans[2]),
        .I1(mul_ans__0_0[3]),
        .I2(mul_ans[3]),
        .I3(mul_ans[4]),
        .I4(mul_ans[1]),
        .I5(\wdata_o_reg[8]_i_15_n_4 ),
        .O(\wdata_o_reg[6]_i_18_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[6]_i_19 
       (.I0(\wdata_o_reg[11]_i_23_n_4 ),
        .I1(\wdata_o_reg[3]_i_27_n_4 ),
        .I2(mul_ans[1]),
        .I3(\wdata_o_reg[9]_i_17_n_4 ),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[3]_i_26_n_4 ),
        .O(\wdata_o_reg[6]_i_19_n_4 ));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[6]_i_2 
       (.I0(\wdata_o_reg[6]_i_4_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[6]),
        .I4(mul_ans__0_0[6]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[6]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h038833BB03880388)) 
    \wdata_o_reg[6]_i_3 
       (.I0(ex_link_addr_i[6]),
        .I1(ex_alusel_i[1]),
        .I2(mul_ans__1_4),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[31]_i_9_n_4 ),
        .I5(\ex0/data1 [6]),
        .O(\wdata_o_reg[6]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h0020F02000200020)) 
    \wdata_o_reg[6]_i_4 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(\wdata_o_reg[6]_i_6_n_4 ),
        .I2(\wdata_o_reg[26]_i_6_n_4 ),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[26]_i_7_n_4 ),
        .I5(\wdata_o_reg[6]_i_7_n_4 ),
        .O(\wdata_o_reg[6]_i_4_n_4 ));
  CARRY4 \wdata_o_reg[6]_i_5 
       (.CI(\wdata_o_reg[3]_i_10_n_4 ),
        .CO({\wdata_o_reg[6]_i_5_n_4 ,\wdata_o_reg[6]_i_5_n_5 ,\wdata_o_reg[6]_i_5_n_6 ,\wdata_o_reg[6]_i_5_n_7 }),
        .CYINIT(1'b0),
        .DI(mul_ans[7:4]),
        .O(\ex0/data1 [7:4]),
        .S({\wdata_o_reg[6]_i_8_n_4 ,\wdata_o_reg[6]_i_9_n_4 ,\wdata_o_reg[6]_i_10_n_4 ,\wdata_o_reg[6]_i_11_n_4 }));
  LUT6 #(
    .INIT(64'h000D0F0F000F0F0F)) 
    \wdata_o_reg[6]_i_6 
       (.I0(mul_ans__0_0[31]),
        .I1(\wdata_o_reg[6]_i_12_n_4 ),
        .I2(\wdata_o_reg[6]_i_13_n_4 ),
        .I3(\wdata_o_reg[6]_i_14_n_4 ),
        .I4(ex_aluop_i[1]),
        .I5(ex_aluop_i[0]),
        .O(\wdata_o_reg[6]_i_6_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[6]_i_7 
       (.I0(\wb_lo_reg[6] ),
        .I1(\mem_cp0_reg_data_reg[6]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[6]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_22),
        .O(\wdata_o_reg[6]_i_7_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[6]_i_8 
       (.I0(mul_ans[7]),
        .I1(\ex0/mul_op20 [7]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[7]),
        .O(\wdata_o_reg[6]_i_8_n_4 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \wdata_o_reg[6]_i_9 
       (.I0(mul_ans[6]),
        .I1(\ex0/mul_op20 [6]),
        .I2(ovassert_reg_i_4_n_4),
        .I3(mul_ans__0_0[6]),
        .O(\wdata_o_reg[6]_i_9_n_4 ));
  MUXF7 \wdata_o_reg[7]_i_1 
       (.I0(\wdata_o_reg[7]_i_2_n_4 ),
        .I1(\wdata_o_reg[7]_i_3_n_4 ),
        .O(\mem_wdata_reg[31] [7]),
        .S(ex_alusel_i[2]));
  LUT6 #(
    .INIT(64'h7777777FFFFFFFFF)) 
    \wdata_o_reg[7]_i_10 
       (.I0(mul_ans[4]),
        .I1(mul_ans[3]),
        .I2(mul_ans[2]),
        .I3(mul_ans[1]),
        .I4(mul_ans[0]),
        .I5(mul_ans__0_0[31]),
        .O(\wdata_o_reg[7]_i_10_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[7]_i_14 
       (.I0(\wdata_o_reg[13]_i_17_n_4 ),
        .I1(\wdata_o_reg[9]_i_18_n_4 ),
        .I2(mul_ans[1]),
        .I3(\wdata_o_reg[11]_i_22_n_4 ),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[3]_i_24_n_4 ),
        .O(\wdata_o_reg[7]_i_14_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[7]_i_15 
       (.I0(\wdata_o_reg[7]_i_16_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[9]_i_20_n_4 ),
        .O(\wdata_o_reg[7]_i_15_n_4 ));
  LUT5 #(
    .INIT(32'hFFF4FFF7)) 
    \wdata_o_reg[7]_i_16 
       (.I0(mul_ans__0_0[0]),
        .I1(mul_ans[2]),
        .I2(mul_ans[3]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[4]),
        .O(\wdata_o_reg[7]_i_16_n_4 ));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[7]_i_2 
       (.I0(\wdata_o_reg[7]_i_4_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[7]),
        .I4(mul_ans__0_0[7]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[7]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h30883088308830BB)) 
    \wdata_o_reg[7]_i_3 
       (.I0(ex_link_addr_i[7]),
        .I1(ex_alusel_i[1]),
        .I2(\lo_o_reg[7]_i_2_n_4 ),
        .I3(ex_alusel_i[0]),
        .I4(rst_IBUF),
        .I5(\wdata_o_reg[7]_i_5_n_4 ),
        .O(\wdata_o_reg[7]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h00080C0800080008)) 
    \wdata_o_reg[7]_i_4 
       (.I0(\wdata_o_reg[7]_i_6_n_4 ),
        .I1(ex_alusel_i[1]),
        .I2(rst_IBUF),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[26]_i_7_n_4 ),
        .I5(\wdata_o_reg[7]_i_7_n_4 ),
        .O(\wdata_o_reg[7]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \wdata_o_reg[7]_i_5 
       (.I0(ex_aluop_i[5]),
        .I1(ex_aluop_i[3]),
        .I2(ex_aluop_i[4]),
        .I3(\ex0/data1 [7]),
        .I4(ex_aluop_i[2]),
        .I5(ex_aluop_i[6]),
        .O(\wdata_o_reg[7]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'hAAAAA000AAAAA080)) 
    \wdata_o_reg[7]_i_6 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(\wdata_o_reg[7]_i_8_n_4 ),
        .I4(\wdata_o_reg[7]_i_9_n_4 ),
        .I5(\wdata_o_reg[7]_i_10_n_4 ),
        .O(\wdata_o_reg[7]_i_6_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[7]_i_7 
       (.I0(\wb_lo_reg[7] ),
        .I1(\mem_cp0_reg_data_reg[7]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[7]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_21),
        .O(\wdata_o_reg[7]_i_7_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[7]_i_8 
       (.I0(\wdata_o_reg[8]_i_14_n_4 ),
        .I1(mul_ans[0]),
        .I2(\wdata_o_reg[7]_i_14_n_4 ),
        .O(\wdata_o_reg[7]_i_8_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h00030005)) 
    \wdata_o_reg[7]_i_9 
       (.I0(\wdata_o_reg[8]_i_13_n_4 ),
        .I1(\wdata_o_reg[7]_i_15_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(mul_ans[0]),
        .O(\wdata_o_reg[7]_i_9_n_4 ));
  LUT4 #(
    .INIT(16'hE0EE)) 
    \wdata_o_reg[8]_i_1 
       (.I0(\wdata_o_reg[8]_i_2_n_4 ),
        .I1(\wdata_o_reg[8]_i_3_n_4 ),
        .I2(\wdata_o_reg[8]_i_4_n_4 ),
        .I3(ex_alusel_i[2]),
        .O(\mem_wdata_reg[31] [8]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[8]_i_13 
       (.I0(\wdata_o_reg[8]_i_15_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[9]_i_19_n_4 ),
        .O(\wdata_o_reg[8]_i_13_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[8]_i_14 
       (.I0(\wdata_o_reg[13]_i_18_n_4 ),
        .I1(\wdata_o_reg[9]_i_17_n_4 ),
        .I2(mul_ans[1]),
        .I3(\wdata_o_reg[11]_i_23_n_4 ),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[3]_i_27_n_4 ),
        .O(\wdata_o_reg[8]_i_14_n_4 ));
  LUT5 #(
    .INIT(32'hFFF4FFF7)) 
    \wdata_o_reg[8]_i_15 
       (.I0(mul_ans__0_0[1]),
        .I1(mul_ans[2]),
        .I2(mul_ans[3]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[5]),
        .O(\wdata_o_reg[8]_i_15_n_4 ));
  LUT6 #(
    .INIT(64'h0020F02000200020)) 
    \wdata_o_reg[8]_i_2 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(\wdata_o_reg[8]_i_5_n_4 ),
        .I2(\wdata_o_reg[26]_i_6_n_4 ),
        .I3(ex_alusel_i[0]),
        .I4(\wdata_o_reg[26]_i_7_n_4 ),
        .I5(\wdata_o_reg[8]_i_6_n_4 ),
        .O(\wdata_o_reg[8]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[8]_i_3 
       (.I0(ex_alusel_i[2]),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[8]),
        .I4(mul_ans__0_0[8]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[8]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h03008B8833338B88)) 
    \wdata_o_reg[8]_i_4 
       (.I0(ex_link_addr_i[8]),
        .I1(ex_alusel_i[1]),
        .I2(\wdata_o_reg[31]_i_9_n_4 ),
        .I3(\ex0/data1 [8]),
        .I4(ex_alusel_i[0]),
        .I5(mul_ans__1_5),
        .O(\wdata_o_reg[8]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'h000D0F0F000F0F0F)) 
    \wdata_o_reg[8]_i_5 
       (.I0(mul_ans__0_0[31]),
        .I1(\wdata_o_reg[8]_i_7_n_4 ),
        .I2(\wdata_o_reg[8]_i_8_n_4 ),
        .I3(\wdata_o_reg[8]_i_9_n_4 ),
        .I4(ex_aluop_i[1]),
        .I5(ex_aluop_i[0]),
        .O(\wdata_o_reg[8]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[8]_i_6 
       (.I0(\wb_lo_reg[8] ),
        .I1(\mem_cp0_reg_data_reg[8]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[8]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_20),
        .O(\wdata_o_reg[8]_i_6_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h4C)) 
    \wdata_o_reg[8]_i_7 
       (.I0(mul_ans[3]),
        .I1(mul_ans__0_0[31]),
        .I2(mul_ans[4]),
        .O(\wdata_o_reg[8]_i_7_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00030005)) 
    \wdata_o_reg[8]_i_8 
       (.I0(\wdata_o_reg[9]_i_13_n_4 ),
        .I1(\wdata_o_reg[8]_i_13_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(mul_ans[0]),
        .O(\wdata_o_reg[8]_i_8_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[8]_i_9 
       (.I0(\wdata_o_reg[9]_i_11_n_4 ),
        .I1(mul_ans[0]),
        .I2(\wdata_o_reg[8]_i_14_n_4 ),
        .O(\wdata_o_reg[8]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'hD0D0D0D0DDDDDDD0)) 
    \wdata_o_reg[9]_i_1 
       (.I0(ex_alusel_i[2]),
        .I1(\wdata_o_reg[9]_i_2_n_4 ),
        .I2(\wdata_o_reg[9]_i_3_n_4 ),
        .I3(\wdata_o_reg[9]_i_4_n_4 ),
        .I4(ex_alusel_i[0]),
        .I5(\wdata_o_reg[9]_i_5_n_4 ),
        .O(\mem_wdata_reg[31] [9]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[9]_i_10 
       (.I0(\wdata_o_reg[13]_i_18_n_4 ),
        .I1(mul_ans[2]),
        .I2(\wdata_o_reg[9]_i_17_n_4 ),
        .O(\wdata_o_reg[9]_i_10_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[9]_i_11 
       (.I0(\wdata_o_reg[15]_i_22_n_4 ),
        .I1(\wdata_o_reg[11]_i_22_n_4 ),
        .I2(mul_ans[1]),
        .I3(\wdata_o_reg[13]_i_17_n_4 ),
        .I4(mul_ans[2]),
        .I5(\wdata_o_reg[9]_i_18_n_4 ),
        .O(\wdata_o_reg[9]_i_11_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[9]_i_12 
       (.I0(\wdata_o_reg[9]_i_19_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[11]_i_24_n_4 ),
        .O(\wdata_o_reg[9]_i_12_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wdata_o_reg[9]_i_13 
       (.I0(\wdata_o_reg[9]_i_20_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[11]_i_25_n_4 ),
        .O(\wdata_o_reg[9]_i_13_n_4 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \wdata_o_reg[9]_i_17 
       (.I0(mul_ans__0_0[18]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[26]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[10]),
        .O(\wdata_o_reg[9]_i_17_n_4 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \wdata_o_reg[9]_i_18 
       (.I0(mul_ans__0_0[17]),
        .I1(mul_ans[3]),
        .I2(mul_ans__0_0[25]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[9]),
        .O(\wdata_o_reg[9]_i_18_n_4 ));
  LUT5 #(
    .INIT(32'hFFF4FFF7)) 
    \wdata_o_reg[9]_i_19 
       (.I0(mul_ans__0_0[3]),
        .I1(mul_ans[2]),
        .I2(mul_ans[3]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[7]),
        .O(\wdata_o_reg[9]_i_19_n_4 ));
  LUT6 #(
    .INIT(64'h03008B8833338B88)) 
    \wdata_o_reg[9]_i_2 
       (.I0(ex_link_addr_i[9]),
        .I1(ex_alusel_i[1]),
        .I2(\wdata_o_reg[31]_i_9_n_4 ),
        .I3(\ex0/data1 [9]),
        .I4(ex_alusel_i[0]),
        .I5(mul_ans__1_6),
        .O(\wdata_o_reg[9]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'hFFF4FFF7)) 
    \wdata_o_reg[9]_i_20 
       (.I0(mul_ans__0_0[2]),
        .I1(mul_ans[2]),
        .I2(mul_ans[3]),
        .I3(mul_ans[4]),
        .I4(mul_ans__0_0[6]),
        .O(\wdata_o_reg[9]_i_20_n_4 ));
  LUT6 #(
    .INIT(64'hAFBEBEEAAAAAAAAA)) 
    \wdata_o_reg[9]_i_3 
       (.I0(ex_alusel_i[2]),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(mul_ans[9]),
        .I4(mul_ans__0_0[9]),
        .I5(\wdata_o_reg[30]_i_5_n_4 ),
        .O(\wdata_o_reg[9]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'hAAAAA000AAAAA080)) 
    \wdata_o_reg[9]_i_4 
       (.I0(\wdata_o_reg[31]_i_7_n_4 ),
        .I1(ex_aluop_i[0]),
        .I2(ex_aluop_i[1]),
        .I3(\wdata_o_reg[9]_i_6_n_4 ),
        .I4(\wdata_o_reg[9]_i_7_n_4 ),
        .I5(\wdata_o_reg[9]_i_8_n_4 ),
        .O(\wdata_o_reg[9]_i_4_n_4 ));
  LUT5 #(
    .INIT(32'hFFD0FFFF)) 
    \wdata_o_reg[9]_i_5 
       (.I0(\wdata_o_reg[9]_i_9_n_4 ),
        .I1(\wdata_o_reg[26]_i_7_n_4 ),
        .I2(ex_alusel_i[0]),
        .I3(rst_IBUF),
        .I4(ex_alusel_i[1]),
        .O(\wdata_o_reg[9]_i_5_n_4 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wdata_o_reg[9]_i_6 
       (.I0(\wdata_o_reg[11]_i_16_n_4 ),
        .I1(mul_ans[1]),
        .I2(\wdata_o_reg[9]_i_10_n_4 ),
        .I3(mul_ans[0]),
        .I4(\wdata_o_reg[9]_i_11_n_4 ),
        .O(\wdata_o_reg[9]_i_6_n_4 ));
  LUT5 #(
    .INIT(32'h00030005)) 
    \wdata_o_reg[9]_i_7 
       (.I0(\wdata_o_reg[9]_i_12_n_4 ),
        .I1(\wdata_o_reg[9]_i_13_n_4 ),
        .I2(ex_aluop_i[0]),
        .I3(ex_aluop_i[1]),
        .I4(mul_ans[0]),
        .O(\wdata_o_reg[9]_i_7_n_4 ));
  LUT6 #(
    .INIT(64'h57777777FFFFFFFF)) 
    \wdata_o_reg[9]_i_8 
       (.I0(mul_ans[4]),
        .I1(mul_ans[3]),
        .I2(mul_ans[0]),
        .I3(mul_ans[1]),
        .I4(mul_ans[2]),
        .I5(mul_ans__0_0[31]),
        .O(\wdata_o_reg[9]_i_8_n_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wdata_o_reg[9]_i_9 
       (.I0(\wb_lo_reg[9] ),
        .I1(\mem_cp0_reg_data_reg[9]_0 ),
        .I2(\mem_wdata_reg[30] ),
        .I3(mul_ans[9]),
        .I4(\mem_wdata_reg[10] ),
        .I5(mem_whilo_reg_19),
        .O(\wdata_o_reg[9]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'h0004000400040000)) 
    whilo_o_reg_i_1
       (.I0(ex_aluop_i[5]),
        .I1(ex_aluop_i[4]),
        .I2(ex_aluop_i[2]),
        .I3(ex_aluop_i[6]),
        .I4(ex_aluop_i[0]),
        .I5(ex_aluop_i[3]),
        .O(mem_whilo_reg));
endmodule

module if_id
   (D,
    \pc_reg[25] ,
    \ex_alusel_reg[2] ,
    \ex_aluop_reg[6] ,
    \pc_reg[31] ,
    \ex_reg1_reg[28] ,
    \ex_wd_reg[4] ,
    \ex_current_inst_addr_reg[31] ,
    \ex_reg2_reg[2] ,
    \ex_reg1_reg[5] ,
    \ex_reg1_reg[31] ,
    \ex_reg1_reg[31]_0 ,
    ADDRA,
    \ex_reg2_reg[29] ,
    \ex_reg1_reg[16] ,
    \ex_reg1_reg[17] ,
    \ex_reg2_reg[19] ,
    \ex_reg2_reg[21] ,
    \ex_reg1_reg[20] ,
    \ex_reg2_reg[24] ,
    \ex_reg1_reg[27] ,
    \ex_reg2_reg[28] ,
    \ex_reg2_reg[3] ,
    \ex_reg2_reg[5] ,
    \ex_reg1_reg[4] ,
    \ex_reg1_reg[6] ,
    \ex_reg2_reg[13] ,
    \ex_reg1_reg[15] ,
    ex_wreg_reg,
    \ex_alusel_reg[2]_0 ,
    \ex_aluop_reg[0] ,
    \ex_reg1_reg[5]_0 ,
    E,
    \ex_reg2_reg[12] ,
    \ex_link_addr_reg[31] ,
    reg1_data,
    \ex_reg1_reg[26] ,
    Q,
    \mem_excepttype_reg[11] ,
    pc0,
    rst_IBUF,
    ex_wreg_reg_0,
    \mem_wdata_reg[2] ,
    reg1_read,
    \mem_wdata_reg[3] ,
    \mem_wdata_reg[5] ,
    ex_wreg_reg_1,
    \ex_alusel_reg[2]_1 ,
    \mem_wdata_reg[7] ,
    \mem_wdata_reg[9] ,
    \mem_wdata_reg[10] ,
    \mem_wdata_reg[13] ,
    \mem_wdata_reg[14] ,
    \mem_wdata_reg[18] ,
    \mem_wdata_reg[19] ,
    \mem_wdata_reg[21] ,
    \mem_wdata_reg[22] ,
    \mem_wdata_reg[23] ,
    \mem_wdata_reg[24] ,
    \mem_wdata_reg[25] ,
    \mem_wdata_reg[26] ,
    \mem_wdata_reg[28] ,
    \mem_wdata_reg[29] ,
    \mem_wdata_reg[30] ,
    \mem_wdata_reg[31] ,
    \mem_wdata_reg[31]_0 ,
    \mem_wd_reg[2] ,
    rdata10,
    wb_wdata_i,
    \ex_wd_reg[2] ,
    reg2_read,
    \wb_wdata_reg[19] ,
    \wb_wdata_reg[13] ,
    \mem_wdata_reg[12] ,
    \mem_wdata_reg[11] ,
    \mem_wdata_reg[8] ,
    \mem_wdata_reg[1] ,
    \mem_wdata_reg[0] ,
    S,
    \id_pc_reg[24]_0 ,
    \id_pc_reg[28]_0 ,
    \id_pc_reg[31]_0 ,
    \id_inst_reg[23]_0 ,
    wb_wd_i,
    \mem_excepttype_reg[11]_0 ,
    \mem_excepttype_reg[11]_1 ,
    CLK,
    \pc_reg[5] ,
    \mem_excepttype_reg[11]_2 );
  output [31:0]D;
  output [10:0]\pc_reg[25] ;
  output [0:0]\ex_alusel_reg[2] ;
  output [6:0]\ex_aluop_reg[6] ;
  output [13:0]\pc_reg[31] ;
  output [14:0]\ex_reg1_reg[28] ;
  output [3:0]\ex_wd_reg[4] ;
  output [31:0]\ex_current_inst_addr_reg[31] ;
  output \ex_reg2_reg[2] ;
  output \ex_reg1_reg[5] ;
  output \ex_reg1_reg[31] ;
  output \ex_reg1_reg[31]_0 ;
  output [2:0]ADDRA;
  output \ex_reg2_reg[29] ;
  output \ex_reg1_reg[16] ;
  output \ex_reg1_reg[17] ;
  output \ex_reg2_reg[19] ;
  output \ex_reg2_reg[21] ;
  output \ex_reg1_reg[20] ;
  output \ex_reg2_reg[24] ;
  output \ex_reg1_reg[27] ;
  output \ex_reg2_reg[28] ;
  output \ex_reg2_reg[3] ;
  output \ex_reg2_reg[5] ;
  output \ex_reg1_reg[4] ;
  output \ex_reg1_reg[6] ;
  output \ex_reg2_reg[13] ;
  output \ex_reg1_reg[15] ;
  output ex_wreg_reg;
  output [2:0]\ex_alusel_reg[2]_0 ;
  output [0:0]\ex_aluop_reg[0] ;
  output \ex_reg1_reg[5]_0 ;
  output [0:0]E;
  output [4:0]\ex_reg2_reg[12] ;
  output [29:0]\ex_link_addr_reg[31] ;
  output [17:0]reg1_data;
  output \ex_reg1_reg[26] ;
  input [31:0]Q;
  input \mem_excepttype_reg[11] ;
  input [30:0]pc0;
  input rst_IBUF;
  input [11:0]ex_wreg_reg_0;
  input \mem_wdata_reg[2] ;
  input reg1_read;
  input \mem_wdata_reg[3] ;
  input \mem_wdata_reg[5] ;
  input ex_wreg_reg_1;
  input [0:0]\ex_alusel_reg[2]_1 ;
  input \mem_wdata_reg[7] ;
  input \mem_wdata_reg[9] ;
  input \mem_wdata_reg[10] ;
  input \mem_wdata_reg[13] ;
  input \mem_wdata_reg[14] ;
  input \mem_wdata_reg[18] ;
  input \mem_wdata_reg[19] ;
  input \mem_wdata_reg[21] ;
  input \mem_wdata_reg[22] ;
  input \mem_wdata_reg[23] ;
  input \mem_wdata_reg[24] ;
  input \mem_wdata_reg[25] ;
  input \mem_wdata_reg[26] ;
  input \mem_wdata_reg[28] ;
  input \mem_wdata_reg[29] ;
  input \mem_wdata_reg[30] ;
  input \mem_wdata_reg[31] ;
  input \mem_wdata_reg[31]_0 ;
  input \mem_wd_reg[2] ;
  input [31:0]rdata10;
  input [31:0]wb_wdata_i;
  input [1:0]\ex_wd_reg[2] ;
  input reg2_read;
  input \wb_wdata_reg[19] ;
  input \wb_wdata_reg[13] ;
  input \mem_wdata_reg[12] ;
  input \mem_wdata_reg[11] ;
  input \mem_wdata_reg[8] ;
  input \mem_wdata_reg[1] ;
  input \mem_wdata_reg[0] ;
  input [1:0]S;
  input [3:0]\id_pc_reg[24]_0 ;
  input [3:0]\id_pc_reg[28]_0 ;
  input [2:0]\id_pc_reg[31]_0 ;
  input \id_inst_reg[23]_0 ;
  input [1:0]wb_wd_i;
  input \mem_excepttype_reg[11]_0 ;
  input [0:0]\mem_excepttype_reg[11]_1 ;
  input CLK;
  input [16:0]\pc_reg[5] ;
  input [1:0]\mem_excepttype_reg[11]_2 ;

  wire [2:0]ADDRA;
  wire CLK;
  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [1:0]S;
  wire \aluop_o_reg[1]_i_2_n_4 ;
  wire \aluop_o_reg[2]_i_2_n_4 ;
  wire \aluop_o_reg[6]_i_3_n_4 ;
  wire \aluop_o_reg[6]_i_4_n_4 ;
  wire \alusel_o_reg[2]_i_3_n_4 ;
  wire \alusel_o_reg[2]_i_4_n_4 ;
  wire \alusel_o_reg[2]_i_5_n_4 ;
  wire [0:0]\ex_aluop_reg[0] ;
  wire [6:0]\ex_aluop_reg[6] ;
  wire [0:0]\ex_alusel_reg[2] ;
  wire [2:0]\ex_alusel_reg[2]_0 ;
  wire [0:0]\ex_alusel_reg[2]_1 ;
  wire [31:0]\ex_current_inst_addr_reg[31] ;
  wire \ex_link_addr[5]_i_2_n_4 ;
  wire \ex_link_addr_reg[13]_i_1_n_4 ;
  wire \ex_link_addr_reg[13]_i_1_n_5 ;
  wire \ex_link_addr_reg[13]_i_1_n_6 ;
  wire \ex_link_addr_reg[13]_i_1_n_7 ;
  wire \ex_link_addr_reg[17]_i_1_n_4 ;
  wire \ex_link_addr_reg[17]_i_1_n_5 ;
  wire \ex_link_addr_reg[17]_i_1_n_6 ;
  wire \ex_link_addr_reg[17]_i_1_n_7 ;
  wire \ex_link_addr_reg[21]_i_1_n_4 ;
  wire \ex_link_addr_reg[21]_i_1_n_5 ;
  wire \ex_link_addr_reg[21]_i_1_n_6 ;
  wire \ex_link_addr_reg[21]_i_1_n_7 ;
  wire \ex_link_addr_reg[25]_i_1_n_4 ;
  wire \ex_link_addr_reg[25]_i_1_n_5 ;
  wire \ex_link_addr_reg[25]_i_1_n_6 ;
  wire \ex_link_addr_reg[25]_i_1_n_7 ;
  wire \ex_link_addr_reg[29]_i_1_n_4 ;
  wire \ex_link_addr_reg[29]_i_1_n_5 ;
  wire \ex_link_addr_reg[29]_i_1_n_6 ;
  wire \ex_link_addr_reg[29]_i_1_n_7 ;
  wire [29:0]\ex_link_addr_reg[31] ;
  wire \ex_link_addr_reg[31]_i_1_n_7 ;
  wire \ex_link_addr_reg[5]_i_1_n_4 ;
  wire \ex_link_addr_reg[5]_i_1_n_5 ;
  wire \ex_link_addr_reg[5]_i_1_n_6 ;
  wire \ex_link_addr_reg[5]_i_1_n_7 ;
  wire \ex_link_addr_reg[9]_i_1_n_4 ;
  wire \ex_link_addr_reg[9]_i_1_n_5 ;
  wire \ex_link_addr_reg[9]_i_1_n_6 ;
  wire \ex_link_addr_reg[9]_i_1_n_7 ;
  wire \ex_reg1[10]_i_2_n_4 ;
  wire \ex_reg1[10]_i_3_n_4 ;
  wire \ex_reg1[13]_i_2_n_4 ;
  wire \ex_reg1[13]_i_3_n_4 ;
  wire \ex_reg1[14]_i_2_n_4 ;
  wire \ex_reg1[14]_i_3_n_4 ;
  wire \ex_reg1[18]_i_2_n_4 ;
  wire \ex_reg1[18]_i_3_n_4 ;
  wire \ex_reg1[19]_i_2_n_4 ;
  wire \ex_reg1[19]_i_4_n_4 ;
  wire \ex_reg1[21]_i_2_n_4 ;
  wire \ex_reg1[22]_i_2_n_4 ;
  wire \ex_reg1[22]_i_4_n_4 ;
  wire \ex_reg1[22]_i_5_n_4 ;
  wire \ex_reg1[23]_i_2_n_4 ;
  wire \ex_reg1[23]_i_3_n_4 ;
  wire \ex_reg1[25]_i_2_n_4 ;
  wire \ex_reg1[25]_i_3_n_4 ;
  wire \ex_reg1[26]_i_2_n_4 ;
  wire \ex_reg1[26]_i_4_n_4 ;
  wire \ex_reg1[26]_i_5_n_4 ;
  wire \ex_reg1[26]_i_6_n_4 ;
  wire \ex_reg1[28]_i_2_n_4 ;
  wire \ex_reg1[28]_i_4_n_4 ;
  wire \ex_reg1[2]_i_2_n_4 ;
  wire \ex_reg1[2]_i_4_n_4 ;
  wire \ex_reg1[4]_i_5_n_4 ;
  wire \ex_reg1[7]_i_2_n_4 ;
  wire \ex_reg1[7]_i_3_n_4 ;
  wire \ex_reg1[9]_i_2_n_4 ;
  wire \ex_reg1[9]_i_3_n_4 ;
  wire \ex_reg1_reg[15] ;
  wire \ex_reg1_reg[16] ;
  wire \ex_reg1_reg[17] ;
  wire \ex_reg1_reg[20] ;
  wire \ex_reg1_reg[26] ;
  wire \ex_reg1_reg[27] ;
  wire [14:0]\ex_reg1_reg[28] ;
  wire \ex_reg1_reg[31] ;
  wire \ex_reg1_reg[31]_0 ;
  wire \ex_reg1_reg[4] ;
  wire \ex_reg1_reg[5] ;
  wire \ex_reg1_reg[5]_0 ;
  wire \ex_reg1_reg[6] ;
  wire [4:0]\ex_reg2_reg[12] ;
  wire \ex_reg2_reg[13] ;
  wire \ex_reg2_reg[19] ;
  wire \ex_reg2_reg[21] ;
  wire \ex_reg2_reg[24] ;
  wire \ex_reg2_reg[28] ;
  wire \ex_reg2_reg[29] ;
  wire \ex_reg2_reg[2] ;
  wire \ex_reg2_reg[3] ;
  wire \ex_reg2_reg[5] ;
  wire \ex_wd[0]_i_2_n_4 ;
  wire \ex_wd[1]_i_2_n_4 ;
  wire \ex_wd[1]_i_3_n_4 ;
  wire [1:0]\ex_wd_reg[2] ;
  wire [3:0]\ex_wd_reg[4] ;
  wire ex_wreg_reg;
  wire [11:0]ex_wreg_reg_0;
  wire ex_wreg_reg_1;
  wire [17:1]\id0/next_pc_i ;
  wire id_branch_flag_o;
  wire [27:0]id_branch_target_address_o;
  wire [28:3]id_inst_i;
  wire \id_inst_reg[23]_0 ;
  wire [3:0]\id_pc_reg[24]_0 ;
  wire [3:0]\id_pc_reg[28]_0 ;
  wire [2:0]\id_pc_reg[31]_0 ;
  wire \mem_excepttype_reg[11] ;
  wire \mem_excepttype_reg[11]_0 ;
  wire [0:0]\mem_excepttype_reg[11]_1 ;
  wire [1:0]\mem_excepttype_reg[11]_2 ;
  wire \mem_wd_reg[2] ;
  wire \mem_wdata_reg[0] ;
  wire \mem_wdata_reg[10] ;
  wire \mem_wdata_reg[11] ;
  wire \mem_wdata_reg[12] ;
  wire \mem_wdata_reg[13] ;
  wire \mem_wdata_reg[14] ;
  wire \mem_wdata_reg[18] ;
  wire \mem_wdata_reg[19] ;
  wire \mem_wdata_reg[1] ;
  wire \mem_wdata_reg[21] ;
  wire \mem_wdata_reg[22] ;
  wire \mem_wdata_reg[23] ;
  wire \mem_wdata_reg[24] ;
  wire \mem_wdata_reg[25] ;
  wire \mem_wdata_reg[26] ;
  wire \mem_wdata_reg[28] ;
  wire \mem_wdata_reg[29] ;
  wire \mem_wdata_reg[2] ;
  wire \mem_wdata_reg[30] ;
  wire \mem_wdata_reg[31] ;
  wire \mem_wdata_reg[31]_0 ;
  wire \mem_wdata_reg[3] ;
  wire \mem_wdata_reg[5] ;
  wire \mem_wdata_reg[7] ;
  wire \mem_wdata_reg[8] ;
  wire \mem_wdata_reg[9] ;
  wire [30:0]pc0;
  wire \pc[10]_i_2_n_4 ;
  wire \pc[11]_i_2_n_4 ;
  wire \pc[12]_i_4_n_4 ;
  wire \pc[12]_i_6_n_4 ;
  wire \pc[12]_i_7_n_4 ;
  wire \pc[12]_i_8_n_4 ;
  wire \pc[12]_i_9_n_4 ;
  wire \pc[13]_i_2_n_4 ;
  wire \pc[14]_i_2_n_4 ;
  wire \pc[15]_i_2_n_4 ;
  wire \pc[16]_i_4_n_4 ;
  wire \pc[16]_i_6_n_4 ;
  wire \pc[16]_i_7_n_4 ;
  wire \pc[16]_i_8_n_4 ;
  wire \pc[16]_i_9_n_4 ;
  wire \pc[17]_i_2_n_4 ;
  wire \pc[18]_i_2_n_4 ;
  wire \pc[19]_i_2_n_4 ;
  wire \pc[20]_i_4_n_4 ;
  wire \pc[20]_i_5_n_4 ;
  wire \pc[20]_i_8_n_4 ;
  wire \pc[20]_i_9_n_4 ;
  wire \pc[23]_i_2_n_4 ;
  wire \pc[24]_i_4_n_4 ;
  wire \pc[25]_i_2_n_4 ;
  wire \pc[28]_i_4_n_4 ;
  wire \pc[29]_i_2_n_4 ;
  wire \pc[2]_i_2_n_4 ;
  wire \pc[30]_i_2_n_4 ;
  wire \pc[31]_i_10_n_4 ;
  wire \pc[31]_i_17_n_4 ;
  wire \pc[31]_i_18_n_4 ;
  wire \pc[31]_i_6_n_4 ;
  wire \pc[31]_i_7_n_4 ;
  wire \pc[31]_i_8_n_4 ;
  wire \pc[31]_i_9_n_4 ;
  wire \pc[3]_i_2_n_4 ;
  wire \pc[4]_i_10_n_4 ;
  wire \pc[4]_i_4_n_4 ;
  wire \pc[4]_i_7_n_4 ;
  wire \pc[4]_i_8_n_4 ;
  wire \pc[4]_i_9_n_4 ;
  wire \pc[5]_i_2_n_4 ;
  wire \pc[5]_i_3_n_4 ;
  wire \pc[6]_i_3_n_4 ;
  wire \pc[7]_i_2_n_4 ;
  wire \pc[8]_i_4_n_4 ;
  wire \pc[8]_i_6_n_4 ;
  wire \pc[8]_i_7_n_4 ;
  wire \pc[8]_i_8_n_4 ;
  wire \pc[8]_i_9_n_4 ;
  wire \pc[9]_i_2_n_4 ;
  wire \pc_reg[12]_i_3_n_10 ;
  wire \pc_reg[12]_i_3_n_11 ;
  wire \pc_reg[12]_i_3_n_4 ;
  wire \pc_reg[12]_i_3_n_5 ;
  wire \pc_reg[12]_i_3_n_6 ;
  wire \pc_reg[12]_i_3_n_7 ;
  wire \pc_reg[12]_i_3_n_8 ;
  wire \pc_reg[12]_i_3_n_9 ;
  wire \pc_reg[12]_i_5_n_4 ;
  wire \pc_reg[12]_i_5_n_5 ;
  wire \pc_reg[12]_i_5_n_6 ;
  wire \pc_reg[12]_i_5_n_7 ;
  wire \pc_reg[16]_i_3_n_10 ;
  wire \pc_reg[16]_i_3_n_11 ;
  wire \pc_reg[16]_i_3_n_4 ;
  wire \pc_reg[16]_i_3_n_5 ;
  wire \pc_reg[16]_i_3_n_6 ;
  wire \pc_reg[16]_i_3_n_7 ;
  wire \pc_reg[16]_i_3_n_8 ;
  wire \pc_reg[16]_i_3_n_9 ;
  wire \pc_reg[16]_i_5_n_4 ;
  wire \pc_reg[16]_i_5_n_5 ;
  wire \pc_reg[16]_i_5_n_6 ;
  wire \pc_reg[16]_i_5_n_7 ;
  wire \pc_reg[20]_i_3_n_10 ;
  wire \pc_reg[20]_i_3_n_11 ;
  wire \pc_reg[20]_i_3_n_4 ;
  wire \pc_reg[20]_i_3_n_5 ;
  wire \pc_reg[20]_i_3_n_6 ;
  wire \pc_reg[20]_i_3_n_7 ;
  wire \pc_reg[20]_i_3_n_8 ;
  wire \pc_reg[20]_i_3_n_9 ;
  wire \pc_reg[24]_i_3_n_10 ;
  wire \pc_reg[24]_i_3_n_11 ;
  wire \pc_reg[24]_i_3_n_4 ;
  wire \pc_reg[24]_i_3_n_5 ;
  wire \pc_reg[24]_i_3_n_6 ;
  wire \pc_reg[24]_i_3_n_7 ;
  wire \pc_reg[24]_i_3_n_8 ;
  wire \pc_reg[24]_i_3_n_9 ;
  wire \pc_reg[24]_i_5_n_4 ;
  wire \pc_reg[24]_i_5_n_5 ;
  wire \pc_reg[24]_i_5_n_6 ;
  wire \pc_reg[24]_i_5_n_7 ;
  wire [10:0]\pc_reg[25] ;
  wire \pc_reg[28]_i_3_n_10 ;
  wire \pc_reg[28]_i_3_n_11 ;
  wire \pc_reg[28]_i_3_n_4 ;
  wire \pc_reg[28]_i_3_n_5 ;
  wire \pc_reg[28]_i_3_n_6 ;
  wire \pc_reg[28]_i_3_n_7 ;
  wire \pc_reg[28]_i_3_n_8 ;
  wire \pc_reg[28]_i_3_n_9 ;
  wire \pc_reg[28]_i_5_n_4 ;
  wire \pc_reg[28]_i_5_n_5 ;
  wire \pc_reg[28]_i_5_n_6 ;
  wire \pc_reg[28]_i_5_n_7 ;
  wire [13:0]\pc_reg[31] ;
  wire \pc_reg[31]_i_11_n_6 ;
  wire \pc_reg[31]_i_11_n_7 ;
  wire \pc_reg[31]_i_12_n_4 ;
  wire \pc_reg[31]_i_12_n_5 ;
  wire \pc_reg[31]_i_12_n_6 ;
  wire \pc_reg[31]_i_12_n_7 ;
  wire \pc_reg[31]_i_5_n_10 ;
  wire \pc_reg[31]_i_5_n_11 ;
  wire \pc_reg[31]_i_5_n_6 ;
  wire \pc_reg[31]_i_5_n_7 ;
  wire \pc_reg[31]_i_5_n_9 ;
  wire \pc_reg[4]_i_3_n_10 ;
  wire \pc_reg[4]_i_3_n_11 ;
  wire \pc_reg[4]_i_3_n_4 ;
  wire \pc_reg[4]_i_3_n_5 ;
  wire \pc_reg[4]_i_3_n_6 ;
  wire \pc_reg[4]_i_3_n_7 ;
  wire \pc_reg[4]_i_3_n_8 ;
  wire \pc_reg[4]_i_3_n_9 ;
  wire \pc_reg[4]_i_6_n_4 ;
  wire \pc_reg[4]_i_6_n_5 ;
  wire \pc_reg[4]_i_6_n_6 ;
  wire \pc_reg[4]_i_6_n_7 ;
  wire [16:0]\pc_reg[5] ;
  wire \pc_reg[8]_i_3_n_10 ;
  wire \pc_reg[8]_i_3_n_11 ;
  wire \pc_reg[8]_i_3_n_4 ;
  wire \pc_reg[8]_i_3_n_5 ;
  wire \pc_reg[8]_i_3_n_6 ;
  wire \pc_reg[8]_i_3_n_7 ;
  wire \pc_reg[8]_i_3_n_8 ;
  wire \pc_reg[8]_i_3_n_9 ;
  wire \pc_reg[8]_i_5_n_4 ;
  wire \pc_reg[8]_i_5_n_5 ;
  wire \pc_reg[8]_i_5_n_6 ;
  wire \pc_reg[8]_i_5_n_7 ;
  wire [31:0]rdata10;
  wire [17:0]reg1_data;
  wire reg1_read;
  wire reg2_read;
  wire rst_IBUF;
  wire [1:0]wb_wd_i;
  wire [31:0]wb_wdata_i;
  wire \wb_wdata_reg[13] ;
  wire \wb_wdata_reg[19] ;
  wire wreg_o_reg_i_3_n_4;
  wire wreg_o_reg_i_4_n_4;
  wire wreg_o_reg_i_5_n_4;
  wire [3:1]\NLW_ex_link_addr_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_ex_link_addr_reg[31]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_pc_reg[31]_i_11_CO_UNCONNECTED ;
  wire [3:3]\NLW_pc_reg[31]_i_11_O_UNCONNECTED ;
  wire [3:2]\NLW_pc_reg[31]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_pc_reg[31]_i_5_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF0000FFF2)) 
    \aluop_o_reg[0]_i_1 
       (.I0(\pc_reg[25] [0]),
        .I1(\aluop_o_reg[1]_i_2_n_4 ),
        .I2(\aluop_o_reg[6]_i_3_n_4 ),
        .I3(id_inst_i[27]),
        .I4(id_inst_i[28]),
        .I5(id_inst_i[26]),
        .O(\ex_aluop_reg[6] [0]));
  LUT6 #(
    .INIT(64'h55FF555555FF5504)) 
    \aluop_o_reg[1]_i_1 
       (.I0(id_inst_i[28]),
        .I1(\pc_reg[25] [1]),
        .I2(\aluop_o_reg[1]_i_2_n_4 ),
        .I3(id_inst_i[26]),
        .I4(id_inst_i[27]),
        .I5(\aluop_o_reg[6]_i_3_n_4 ),
        .O(\ex_aluop_reg[6] [1]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \aluop_o_reg[1]_i_2 
       (.I0(id_inst_i[5]),
        .I1(id_inst_i[3]),
        .O(\aluop_o_reg[1]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'hEFEFEFFFEFEFEFEF)) 
    \aluop_o_reg[2]_i_1 
       (.I0(id_inst_i[28]),
        .I1(id_inst_i[5]),
        .I2(\aluop_o_reg[2]_i_2_n_4 ),
        .I3(id_inst_i[4]),
        .I4(\pc_reg[25] [1]),
        .I5(id_inst_i[3]),
        .O(\ex_aluop_reg[6] [2]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \aluop_o_reg[2]_i_2 
       (.I0(id_inst_i[27]),
        .I1(id_inst_i[26]),
        .O(\aluop_o_reg[2]_i_2_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h0F0E)) 
    \aluop_o_reg[3]_i_1 
       (.I0(id_inst_i[27]),
        .I1(id_inst_i[26]),
        .I2(id_inst_i[28]),
        .I3(id_inst_i[3]),
        .O(\ex_aluop_reg[6] [3]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \aluop_o_reg[4]_i_1 
       (.I0(id_inst_i[4]),
        .I1(id_inst_i[28]),
        .I2(id_inst_i[27]),
        .I3(id_inst_i[26]),
        .O(\ex_aluop_reg[6] [4]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'hFF10)) 
    \aluop_o_reg[5]_i_1 
       (.I0(id_inst_i[27]),
        .I1(id_inst_i[26]),
        .I2(id_inst_i[5]),
        .I3(id_inst_i[28]),
        .O(\ex_aluop_reg[6] [5]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h5554)) 
    \aluop_o_reg[6]_i_1 
       (.I0(id_inst_i[28]),
        .I1(\aluop_o_reg[6]_i_3_n_4 ),
        .I2(id_inst_i[27]),
        .I3(id_inst_i[26]),
        .O(\ex_aluop_reg[6] [6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0355)) 
    \aluop_o_reg[6]_i_2 
       (.I0(\aluop_o_reg[6]_i_4_n_4 ),
        .I1(\pc_reg[25] [6]),
        .I2(\pc_reg[25] [7]),
        .I3(id_inst_i[26]),
        .I4(id_inst_i[28]),
        .I5(id_inst_i[27]),
        .O(\ex_aluop_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \aluop_o_reg[6]_i_3 
       (.I0(id_inst_i[5]),
        .I1(id_inst_i[3]),
        .I2(\pc_reg[25] [1]),
        .I3(id_inst_i[4]),
        .O(\aluop_o_reg[6]_i_3_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'hCCC1C0C0)) 
    \aluop_o_reg[6]_i_4 
       (.I0(\pc_reg[25] [1]),
        .I1(id_inst_i[5]),
        .I2(id_inst_i[3]),
        .I3(id_inst_i[4]),
        .I4(\pc_reg[25] [0]),
        .O(\aluop_o_reg[6]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAABFEABFA)) 
    \alusel_o_reg[0]_i_1 
       (.I0(id_inst_i[28]),
        .I1(id_inst_i[3]),
        .I2(id_inst_i[5]),
        .I3(id_inst_i[4]),
        .I4(\pc_reg[25] [1]),
        .I5(\alusel_o_reg[2]_i_5_n_4 ),
        .O(\ex_alusel_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABF)) 
    \alusel_o_reg[1]_i_1 
       (.I0(\alusel_o_reg[2]_i_3_n_4 ),
        .I1(id_inst_i[4]),
        .I2(id_inst_i[3]),
        .I3(id_inst_i[5]),
        .I4(id_inst_i[28]),
        .I5(id_inst_i[26]),
        .O(\ex_alusel_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'hABAAAAAAABAAABAA)) 
    \alusel_o_reg[2]_i_1 
       (.I0(\alusel_o_reg[2]_i_3_n_4 ),
        .I1(id_inst_i[26]),
        .I2(id_inst_i[28]),
        .I3(\alusel_o_reg[2]_i_4_n_4 ),
        .I4(id_inst_i[4]),
        .I5(\pc_reg[25] [1]),
        .O(\ex_alusel_reg[2]_0 [2]));
  LUT6 #(
    .INIT(64'hAABFFFFFAABFFFFB)) 
    \alusel_o_reg[2]_i_2 
       (.I0(\alusel_o_reg[2]_i_5_n_4 ),
        .I1(\pc_reg[25] [0]),
        .I2(id_inst_i[4]),
        .I3(id_inst_i[3]),
        .I4(id_inst_i[5]),
        .I5(\pc_reg[25] [1]),
        .O(\ex_alusel_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h00FF0010)) 
    \alusel_o_reg[2]_i_3 
       (.I0(\pc_reg[25] [6]),
        .I1(\pc_reg[25] [7]),
        .I2(id_inst_i[26]),
        .I3(id_inst_i[28]),
        .I4(id_inst_i[27]),
        .O(\alusel_o_reg[2]_i_3_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \alusel_o_reg[2]_i_4 
       (.I0(id_inst_i[3]),
        .I1(id_inst_i[5]),
        .O(\alusel_o_reg[2]_i_4_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \alusel_o_reg[2]_i_5 
       (.I0(id_inst_i[26]),
        .I1(id_inst_i[27]),
        .I2(id_inst_i[28]),
        .O(\alusel_o_reg[2]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ex_link_addr[5]_i_2 
       (.I0(\ex_current_inst_addr_reg[31] [3]),
        .O(\ex_link_addr[5]_i_2_n_4 ));
  CARRY4 \ex_link_addr_reg[13]_i_1 
       (.CI(\ex_link_addr_reg[9]_i_1_n_4 ),
        .CO({\ex_link_addr_reg[13]_i_1_n_4 ,\ex_link_addr_reg[13]_i_1_n_5 ,\ex_link_addr_reg[13]_i_1_n_6 ,\ex_link_addr_reg[13]_i_1_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ex_link_addr_reg[31] [11:8]),
        .S(\ex_current_inst_addr_reg[31] [13:10]));
  CARRY4 \ex_link_addr_reg[17]_i_1 
       (.CI(\ex_link_addr_reg[13]_i_1_n_4 ),
        .CO({\ex_link_addr_reg[17]_i_1_n_4 ,\ex_link_addr_reg[17]_i_1_n_5 ,\ex_link_addr_reg[17]_i_1_n_6 ,\ex_link_addr_reg[17]_i_1_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ex_link_addr_reg[31] [15:12]),
        .S(\ex_current_inst_addr_reg[31] [17:14]));
  CARRY4 \ex_link_addr_reg[21]_i_1 
       (.CI(\ex_link_addr_reg[17]_i_1_n_4 ),
        .CO({\ex_link_addr_reg[21]_i_1_n_4 ,\ex_link_addr_reg[21]_i_1_n_5 ,\ex_link_addr_reg[21]_i_1_n_6 ,\ex_link_addr_reg[21]_i_1_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ex_link_addr_reg[31] [19:16]),
        .S(\ex_current_inst_addr_reg[31] [21:18]));
  CARRY4 \ex_link_addr_reg[25]_i_1 
       (.CI(\ex_link_addr_reg[21]_i_1_n_4 ),
        .CO({\ex_link_addr_reg[25]_i_1_n_4 ,\ex_link_addr_reg[25]_i_1_n_5 ,\ex_link_addr_reg[25]_i_1_n_6 ,\ex_link_addr_reg[25]_i_1_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ex_link_addr_reg[31] [23:20]),
        .S(\ex_current_inst_addr_reg[31] [25:22]));
  CARRY4 \ex_link_addr_reg[29]_i_1 
       (.CI(\ex_link_addr_reg[25]_i_1_n_4 ),
        .CO({\ex_link_addr_reg[29]_i_1_n_4 ,\ex_link_addr_reg[29]_i_1_n_5 ,\ex_link_addr_reg[29]_i_1_n_6 ,\ex_link_addr_reg[29]_i_1_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ex_link_addr_reg[31] [27:24]),
        .S(\ex_current_inst_addr_reg[31] [29:26]));
  CARRY4 \ex_link_addr_reg[31]_i_1 
       (.CI(\ex_link_addr_reg[29]_i_1_n_4 ),
        .CO({\NLW_ex_link_addr_reg[31]_i_1_CO_UNCONNECTED [3:1],\ex_link_addr_reg[31]_i_1_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_ex_link_addr_reg[31]_i_1_O_UNCONNECTED [3:2],\ex_link_addr_reg[31] [29:28]}),
        .S({1'b0,1'b0,\ex_current_inst_addr_reg[31] [31:30]}));
  CARRY4 \ex_link_addr_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\ex_link_addr_reg[5]_i_1_n_4 ,\ex_link_addr_reg[5]_i_1_n_5 ,\ex_link_addr_reg[5]_i_1_n_6 ,\ex_link_addr_reg[5]_i_1_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\ex_current_inst_addr_reg[31] [3],1'b0}),
        .O(\ex_link_addr_reg[31] [3:0]),
        .S({\ex_current_inst_addr_reg[31] [5:4],\ex_link_addr[5]_i_2_n_4 ,\ex_current_inst_addr_reg[31] [2]}));
  CARRY4 \ex_link_addr_reg[9]_i_1 
       (.CI(\ex_link_addr_reg[5]_i_1_n_4 ),
        .CO({\ex_link_addr_reg[9]_i_1_n_4 ,\ex_link_addr_reg[9]_i_1_n_5 ,\ex_link_addr_reg[9]_i_1_n_6 ,\ex_link_addr_reg[9]_i_1_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ex_link_addr_reg[31] [7:4]),
        .S(\ex_current_inst_addr_reg[31] [9:6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg1[0]_i_3 
       (.I0(wb_wdata_i[0]),
        .I1(\ex_reg1[26]_i_6_n_4 ),
        .I2(rdata10[0]),
        .I3(\ex_reg1[26]_i_5_n_4 ),
        .O(reg1_data[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \ex_reg1[10]_i_1 
       (.I0(\ex_reg1[10]_i_2_n_4 ),
        .O(\ex_reg1_reg[28] [4]));
  LUT5 #(
    .INIT(32'h2F202F2F)) 
    \ex_reg1[10]_i_2 
       (.I0(\ex_reg1[10]_i_3_n_4 ),
        .I1(\mem_wdata_reg[10] ),
        .I2(reg1_read),
        .I3(\ex_reg1_reg[5] ),
        .I4(\pc_reg[25] [7]),
        .O(\ex_reg1[10]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'hAABFBFBF)) 
    \ex_reg1[10]_i_3 
       (.I0(\mem_wd_reg[2] ),
        .I1(\ex_reg1[26]_i_5_n_4 ),
        .I2(rdata10[10]),
        .I3(\ex_reg1[26]_i_6_n_4 ),
        .I4(wb_wdata_i[10]),
        .O(\ex_reg1[10]_i_3_n_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg1[11]_i_3 
       (.I0(wb_wdata_i[11]),
        .I1(\ex_reg1[26]_i_6_n_4 ),
        .I2(rdata10[11]),
        .I3(\ex_reg1[26]_i_5_n_4 ),
        .O(reg1_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h81)) 
    \ex_reg1[12]_i_3 
       (.I0(id_inst_i[28]),
        .I1(id_inst_i[27]),
        .I2(id_inst_i[26]),
        .O(\ex_reg1_reg[5] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg1[12]_i_4 
       (.I0(wb_wdata_i[12]),
        .I1(\ex_reg1[26]_i_6_n_4 ),
        .I2(rdata10[12]),
        .I3(\ex_reg1[26]_i_5_n_4 ),
        .O(reg1_data[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \ex_reg1[13]_i_1 
       (.I0(\ex_reg1[13]_i_2_n_4 ),
        .O(\ex_reg1_reg[28] [5]));
  LUT5 #(
    .INIT(32'h2F202F2F)) 
    \ex_reg1[13]_i_2 
       (.I0(\ex_reg1[13]_i_3_n_4 ),
        .I1(\mem_wdata_reg[13] ),
        .I2(reg1_read),
        .I3(\ex_reg1_reg[5] ),
        .I4(\pc_reg[25] [7]),
        .O(\ex_reg1[13]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'hAABFBFBF)) 
    \ex_reg1[13]_i_3 
       (.I0(\mem_wd_reg[2] ),
        .I1(\ex_reg1[26]_i_5_n_4 ),
        .I2(rdata10[13]),
        .I3(\ex_reg1[26]_i_6_n_4 ),
        .I4(wb_wdata_i[13]),
        .O(\ex_reg1[13]_i_3_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ex_reg1[14]_i_1 
       (.I0(\ex_reg1[14]_i_2_n_4 ),
        .O(\ex_reg1_reg[28] [6]));
  LUT5 #(
    .INIT(32'h2F202F2F)) 
    \ex_reg1[14]_i_2 
       (.I0(\ex_reg1[14]_i_3_n_4 ),
        .I1(\mem_wdata_reg[14] ),
        .I2(reg1_read),
        .I3(\ex_reg1_reg[5] ),
        .I4(\pc_reg[25] [7]),
        .O(\ex_reg1[14]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'hAABFBFBF)) 
    \ex_reg1[14]_i_3 
       (.I0(\mem_wd_reg[2] ),
        .I1(\ex_reg1[26]_i_5_n_4 ),
        .I2(rdata10[14]),
        .I3(\ex_reg1[26]_i_6_n_4 ),
        .I4(wb_wdata_i[14]),
        .O(\ex_reg1[14]_i_3_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h2AA8)) 
    \ex_reg1[15]_i_3 
       (.I0(\pc_reg[25] [7]),
        .I1(id_inst_i[26]),
        .I2(id_inst_i[27]),
        .I3(id_inst_i[28]),
        .O(\ex_reg1_reg[15] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg1[15]_i_4 
       (.I0(wb_wdata_i[15]),
        .I1(\ex_reg1[26]_i_6_n_4 ),
        .I2(rdata10[15]),
        .I3(\ex_reg1[26]_i_5_n_4 ),
        .O(reg1_data[9]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'hC2000200)) 
    \ex_reg1[16]_i_3 
       (.I0(\pc_reg[25] [7]),
        .I1(id_inst_i[27]),
        .I2(id_inst_i[28]),
        .I3(id_inst_i[26]),
        .I4(\pc_reg[25] [0]),
        .O(\ex_reg1_reg[16] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg1[16]_i_4 
       (.I0(wb_wdata_i[16]),
        .I1(\ex_reg1[26]_i_6_n_4 ),
        .I2(rdata10[16]),
        .I3(\ex_reg1[26]_i_5_n_4 ),
        .O(reg1_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'hC2000200)) 
    \ex_reg1[17]_i_3 
       (.I0(\pc_reg[25] [7]),
        .I1(id_inst_i[27]),
        .I2(id_inst_i[28]),
        .I3(id_inst_i[26]),
        .I4(\pc_reg[25] [1]),
        .O(\ex_reg1_reg[17] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg1[17]_i_4 
       (.I0(wb_wdata_i[17]),
        .I1(\ex_reg1[26]_i_6_n_4 ),
        .I2(rdata10[17]),
        .I3(\ex_reg1[26]_i_5_n_4 ),
        .O(reg1_data[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \ex_reg1[18]_i_1 
       (.I0(\ex_reg1[18]_i_2_n_4 ),
        .O(\ex_reg1_reg[28] [7]));
  LUT6 #(
    .INIT(64'h202F2020202F202F)) 
    \ex_reg1[18]_i_2 
       (.I0(\ex_reg1[18]_i_3_n_4 ),
        .I1(\mem_wdata_reg[18] ),
        .I2(reg1_read),
        .I3(\ex_reg1[22]_i_5_n_4 ),
        .I4(\ex_reg1[22]_i_4_n_4 ),
        .I5(id_inst_i[5]),
        .O(\ex_reg1[18]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'hAABFBFBF)) 
    \ex_reg1[18]_i_3 
       (.I0(\mem_wd_reg[2] ),
        .I1(\ex_reg1[26]_i_5_n_4 ),
        .I2(rdata10[18]),
        .I3(\ex_reg1[26]_i_6_n_4 ),
        .I4(wb_wdata_i[18]),
        .O(\ex_reg1[18]_i_3_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ex_reg1[19]_i_1 
       (.I0(\ex_reg1[19]_i_2_n_4 ),
        .O(\ex_reg1_reg[28] [8]));
  LUT6 #(
    .INIT(64'h444444444F444F4F)) 
    \ex_reg1[19]_i_2 
       (.I0(\mem_wdata_reg[19] ),
        .I1(\ex_reg1[19]_i_4_n_4 ),
        .I2(\ex_reg1[22]_i_5_n_4 ),
        .I3(\ex_reg1[22]_i_4_n_4 ),
        .I4(id_inst_i[3]),
        .I5(reg1_read),
        .O(\ex_reg1[19]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'hAABFBFBF)) 
    \ex_reg1[19]_i_4 
       (.I0(\mem_wd_reg[2] ),
        .I1(\ex_reg1[26]_i_5_n_4 ),
        .I2(rdata10[19]),
        .I3(\ex_reg1[26]_i_6_n_4 ),
        .I4(wb_wdata_i[19]),
        .O(\ex_reg1[19]_i_4_n_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg1[1]_i_3 
       (.I0(wb_wdata_i[1]),
        .I1(\ex_reg1[26]_i_6_n_4 ),
        .I2(rdata10[1]),
        .I3(\ex_reg1[26]_i_5_n_4 ),
        .O(reg1_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h3DFFFDFF)) 
    \ex_reg1[20]_i_3 
       (.I0(\pc_reg[25] [7]),
        .I1(id_inst_i[27]),
        .I2(id_inst_i[28]),
        .I3(id_inst_i[26]),
        .I4(id_inst_i[4]),
        .O(\ex_reg1_reg[20] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg1[20]_i_4 
       (.I0(wb_wdata_i[20]),
        .I1(\ex_reg1[26]_i_6_n_4 ),
        .I2(rdata10[20]),
        .I3(\ex_reg1[26]_i_5_n_4 ),
        .O(reg1_data[12]));
  LUT6 #(
    .INIT(64'hFFBAFFBAFFBA00BA)) 
    \ex_reg1[21]_i_1 
       (.I0(\ex_reg1[22]_i_5_n_4 ),
        .I1(\ex_reg1[22]_i_4_n_4 ),
        .I2(id_inst_i[5]),
        .I3(reg1_read),
        .I4(\ex_reg1[21]_i_2_n_4 ),
        .I5(\mem_wdata_reg[21] ),
        .O(\ex_reg1_reg[28] [9]));
  LUT5 #(
    .INIT(32'h0000F888)) 
    \ex_reg1[21]_i_2 
       (.I0(\ex_reg1[26]_i_5_n_4 ),
        .I1(rdata10[21]),
        .I2(\ex_reg1[26]_i_6_n_4 ),
        .I3(wb_wdata_i[21]),
        .I4(\mem_wd_reg[2] ),
        .O(\ex_reg1[21]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFE0E0EFE0)) 
    \ex_reg1[22]_i_1 
       (.I0(\ex_reg1[22]_i_2_n_4 ),
        .I1(\mem_wdata_reg[22] ),
        .I2(reg1_read),
        .I3(id_inst_i[4]),
        .I4(\ex_reg1[22]_i_4_n_4 ),
        .I5(\ex_reg1[22]_i_5_n_4 ),
        .O(\ex_reg1_reg[28] [10]));
  LUT5 #(
    .INIT(32'h0000F888)) 
    \ex_reg1[22]_i_2 
       (.I0(\ex_reg1[26]_i_5_n_4 ),
        .I1(rdata10[22]),
        .I2(\ex_reg1[26]_i_6_n_4 ),
        .I3(wb_wdata_i[22]),
        .I4(\mem_wd_reg[2] ),
        .O(\ex_reg1[22]_i_2_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ex_reg1[22]_i_4 
       (.I0(id_inst_i[27]),
        .I1(id_inst_i[28]),
        .I2(id_inst_i[26]),
        .O(\ex_reg1[22]_i_4_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \ex_reg1[22]_i_5 
       (.I0(\pc_reg[25] [7]),
        .I1(id_inst_i[26]),
        .I2(id_inst_i[27]),
        .I3(id_inst_i[28]),
        .O(\ex_reg1[22]_i_5_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ex_reg1[23]_i_1 
       (.I0(\ex_reg1[23]_i_2_n_4 ),
        .O(\ex_reg1_reg[28] [11]));
  LUT6 #(
    .INIT(64'h202F2020202F202F)) 
    \ex_reg1[23]_i_2 
       (.I0(\ex_reg1[23]_i_3_n_4 ),
        .I1(\mem_wdata_reg[23] ),
        .I2(reg1_read),
        .I3(\ex_reg1[22]_i_5_n_4 ),
        .I4(\ex_reg1[22]_i_4_n_4 ),
        .I5(id_inst_i[4]),
        .O(\ex_reg1[23]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'hAABFBFBF)) 
    \ex_reg1[23]_i_3 
       (.I0(\mem_wd_reg[2] ),
        .I1(\ex_reg1[26]_i_5_n_4 ),
        .I2(rdata10[23]),
        .I3(\ex_reg1[26]_i_6_n_4 ),
        .I4(wb_wdata_i[23]),
        .O(\ex_reg1[23]_i_3_n_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg1[24]_i_4 
       (.I0(wb_wdata_i[24]),
        .I1(\ex_reg1[26]_i_6_n_4 ),
        .I2(rdata10[24]),
        .I3(\ex_reg1[26]_i_5_n_4 ),
        .O(reg1_data[13]));
  LUT1 #(
    .INIT(2'h1)) 
    \ex_reg1[25]_i_1 
       (.I0(\ex_reg1[25]_i_2_n_4 ),
        .O(\ex_reg1_reg[28] [12]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \ex_reg1[25]_i_2 
       (.I0(\ex_reg1[25]_i_3_n_4 ),
        .I1(\mem_wdata_reg[25] ),
        .I2(reg1_read),
        .I3(\ex_reg1_reg[31] ),
        .O(\ex_reg1[25]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'hAABFBFBF)) 
    \ex_reg1[25]_i_3 
       (.I0(\mem_wd_reg[2] ),
        .I1(\ex_reg1[26]_i_5_n_4 ),
        .I2(rdata10[25]),
        .I3(\ex_reg1[26]_i_6_n_4 ),
        .I4(wb_wdata_i[25]),
        .O(\ex_reg1[25]_i_3_n_4 ));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \ex_reg1[26]_i_1 
       (.I0(\ex_reg1[26]_i_2_n_4 ),
        .I1(\mem_wdata_reg[26] ),
        .I2(reg1_read),
        .I3(\ex_reg1[26]_i_4_n_4 ),
        .O(\ex_reg1_reg[28] [13]));
  LUT5 #(
    .INIT(32'h0000F888)) 
    \ex_reg1[26]_i_2 
       (.I0(\ex_reg1[26]_i_5_n_4 ),
        .I1(rdata10[26]),
        .I2(\ex_reg1[26]_i_6_n_4 ),
        .I3(wb_wdata_i[26]),
        .I4(\mem_wd_reg[2] ),
        .O(\ex_reg1[26]_i_2_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \ex_reg1[26]_i_4 
       (.I0(\pc_reg[25] [7]),
        .I1(id_inst_i[26]),
        .I2(id_inst_i[27]),
        .I3(id_inst_i[28]),
        .O(\ex_reg1[26]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'h000000000000AAA8)) 
    \ex_reg1[26]_i_5 
       (.I0(reg1_read),
        .I1(\pc_reg[25] [10]),
        .I2(\pc_reg[25] [9]),
        .I3(\pc_reg[25] [8]),
        .I4(rst_IBUF),
        .I5(\id_inst_reg[23]_0 ),
        .O(\ex_reg1[26]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'h0000000088888880)) 
    \ex_reg1[26]_i_6 
       (.I0(\id_inst_reg[23]_0 ),
        .I1(reg1_read),
        .I2(\pc_reg[25] [10]),
        .I3(\pc_reg[25] [9]),
        .I4(\pc_reg[25] [8]),
        .I5(rst_IBUF),
        .O(\ex_reg1[26]_i_6_n_4 ));
  LUT5 #(
    .INIT(32'h00903309)) 
    \ex_reg1[26]_i_8 
       (.I0(\pc_reg[25] [8]),
        .I1(wb_wd_i[0]),
        .I2(\pc_reg[25] [9]),
        .I3(rst_IBUF),
        .I4(wb_wd_i[1]),
        .O(\ex_reg1_reg[26] ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'hC2000200)) 
    \ex_reg1[27]_i_4 
       (.I0(\pc_reg[25] [7]),
        .I1(id_inst_i[27]),
        .I2(id_inst_i[28]),
        .I3(id_inst_i[26]),
        .I4(\pc_reg[25] [3]),
        .O(\ex_reg1_reg[27] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg1[27]_i_5 
       (.I0(wb_wdata_i[27]),
        .I1(\ex_reg1[26]_i_6_n_4 ),
        .I2(rdata10[27]),
        .I3(\ex_reg1[26]_i_5_n_4 ),
        .O(reg1_data[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \ex_reg1[28]_i_1 
       (.I0(\ex_reg1[28]_i_2_n_4 ),
        .O(\ex_reg1_reg[28] [14]));
  LUT6 #(
    .INIT(64'h444444444F444F4F)) 
    \ex_reg1[28]_i_2 
       (.I0(\mem_wdata_reg[28] ),
        .I1(\ex_reg1[28]_i_4_n_4 ),
        .I2(\ex_reg1[22]_i_5_n_4 ),
        .I3(\ex_reg1[22]_i_4_n_4 ),
        .I4(\pc_reg[25] [4]),
        .I5(reg1_read),
        .O(\ex_reg1[28]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'hAABFBFBF)) 
    \ex_reg1[28]_i_4 
       (.I0(\mem_wd_reg[2] ),
        .I1(\ex_reg1[26]_i_5_n_4 ),
        .I2(rdata10[28]),
        .I3(\ex_reg1[26]_i_6_n_4 ),
        .I4(wb_wdata_i[28]),
        .O(\ex_reg1[28]_i_4_n_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg1[29]_i_4 
       (.I0(wb_wdata_i[29]),
        .I1(\ex_reg1[26]_i_6_n_4 ),
        .I2(rdata10[29]),
        .I3(\ex_reg1[26]_i_5_n_4 ),
        .O(reg1_data[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \ex_reg1[2]_i_1 
       (.I0(\ex_reg1[2]_i_2_n_4 ),
        .O(\ex_reg1_reg[28] [0]));
  LUT4 #(
    .INIT(16'h444F)) 
    \ex_reg1[2]_i_2 
       (.I0(\mem_wdata_reg[2] ),
        .I1(\ex_reg1[2]_i_4_n_4 ),
        .I2(\ex_reg2_reg[2] ),
        .I3(reg1_read),
        .O(\ex_reg1[2]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'hAABFBFBF)) 
    \ex_reg1[2]_i_4 
       (.I0(\mem_wd_reg[2] ),
        .I1(\ex_reg1[26]_i_5_n_4 ),
        .I2(rdata10[2]),
        .I3(\ex_reg1[26]_i_6_n_4 ),
        .I4(wb_wdata_i[2]),
        .O(\ex_reg1[2]_i_4_n_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg1[30]_i_4 
       (.I0(wb_wdata_i[30]),
        .I1(\ex_reg1[26]_i_6_n_4 ),
        .I2(rdata10[30]),
        .I3(\ex_reg1[26]_i_5_n_4 ),
        .O(reg1_data[16]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h6FFF)) 
    \ex_reg1[31]_i_2 
       (.I0(id_inst_i[28]),
        .I1(id_inst_i[27]),
        .I2(id_inst_i[26]),
        .I3(\pc_reg[25] [7]),
        .O(\ex_reg1_reg[31] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg1[31]_i_6 
       (.I0(wb_wdata_i[31]),
        .I1(\ex_reg1[26]_i_6_n_4 ),
        .I2(rdata10[31]),
        .I3(\ex_reg1[26]_i_5_n_4 ),
        .O(reg1_data[17]));
  LUT5 #(
    .INIT(32'hFF90FF09)) 
    \ex_reg1[31]_i_7 
       (.I0(\pc_reg[25] [8]),
        .I1(\ex_wd_reg[2] [0]),
        .I2(\pc_reg[25] [10]),
        .I3(rst_IBUF),
        .I4(\ex_wd_reg[2] [1]),
        .O(\ex_reg1_reg[31]_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg1[3]_i_4 
       (.I0(wb_wdata_i[3]),
        .I1(\ex_reg1[26]_i_6_n_4 ),
        .I2(rdata10[3]),
        .I3(\ex_reg1[26]_i_5_n_4 ),
        .O(reg1_data[2]));
  LUT6 #(
    .INIT(64'h00AAAAAAAAAAAAC0)) 
    \ex_reg1[4]_i_3 
       (.I0(id_inst_i[4]),
        .I1(\ex_reg1[4]_i_5_n_4 ),
        .I2(\pc_reg[25] [7]),
        .I3(id_inst_i[28]),
        .I4(id_inst_i[27]),
        .I5(id_inst_i[26]),
        .O(\ex_reg1_reg[4] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg1[4]_i_4 
       (.I0(wb_wdata_i[4]),
        .I1(\ex_reg1[26]_i_6_n_4 ),
        .I2(rdata10[4]),
        .I3(\ex_reg1[26]_i_5_n_4 ),
        .O(reg1_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h01000101)) 
    \ex_reg1[4]_i_5 
       (.I0(id_inst_i[5]),
        .I1(id_inst_i[3]),
        .I2(id_inst_i[4]),
        .I3(\pc_reg[25] [1]),
        .I4(\pc_reg[25] [0]),
        .O(\ex_reg1[4]_i_5_n_4 ));
  LUT6 #(
    .INIT(64'hF022FF22F022F022)) 
    \ex_reg1[5]_i_1 
       (.I0(id_inst_i[5]),
        .I1(\ex_reg1_reg[5] ),
        .I2(\mem_wdata_reg[5] ),
        .I3(reg1_read),
        .I4(ex_wreg_reg_1),
        .I5(\ex_alusel_reg[2]_1 ),
        .O(\ex_reg1_reg[28] [1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg1[5]_i_3 
       (.I0(wb_wdata_i[5]),
        .I1(\ex_reg1[26]_i_6_n_4 ),
        .I2(rdata10[5]),
        .I3(\ex_reg1[26]_i_5_n_4 ),
        .O(reg1_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h2AA8)) 
    \ex_reg1[6]_i_3 
       (.I0(id_inst_i[4]),
        .I1(id_inst_i[26]),
        .I2(id_inst_i[27]),
        .I3(id_inst_i[28]),
        .O(\ex_reg1_reg[6] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg1[6]_i_4 
       (.I0(wb_wdata_i[6]),
        .I1(\ex_reg1[26]_i_6_n_4 ),
        .I2(rdata10[6]),
        .I3(\ex_reg1[26]_i_5_n_4 ),
        .O(reg1_data[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \ex_reg1[7]_i_1 
       (.I0(\ex_reg1[7]_i_2_n_4 ),
        .O(\ex_reg1_reg[28] [2]));
  LUT5 #(
    .INIT(32'h00F0DDDD)) 
    \ex_reg1[7]_i_2 
       (.I0(id_inst_i[4]),
        .I1(\ex_reg1_reg[5] ),
        .I2(\ex_reg1[7]_i_3_n_4 ),
        .I3(\mem_wdata_reg[7] ),
        .I4(reg1_read),
        .O(\ex_reg1[7]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'hAABFBFBF)) 
    \ex_reg1[7]_i_3 
       (.I0(\mem_wd_reg[2] ),
        .I1(\ex_reg1[26]_i_5_n_4 ),
        .I2(rdata10[7]),
        .I3(\ex_reg1[26]_i_6_n_4 ),
        .I4(wb_wdata_i[7]),
        .O(\ex_reg1[7]_i_3_n_4 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ex_reg1[8]_i_3 
       (.I0(wb_wdata_i[8]),
        .I1(\ex_reg1[26]_i_6_n_4 ),
        .I2(rdata10[8]),
        .I3(\ex_reg1[26]_i_5_n_4 ),
        .O(reg1_data[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \ex_reg1[9]_i_1 
       (.I0(\ex_reg1[9]_i_2_n_4 ),
        .O(\ex_reg1_reg[28] [3]));
  LUT5 #(
    .INIT(32'h2F202F2F)) 
    \ex_reg1[9]_i_2 
       (.I0(\ex_reg1[9]_i_3_n_4 ),
        .I1(\mem_wdata_reg[9] ),
        .I2(reg1_read),
        .I3(\ex_reg1_reg[5] ),
        .I4(\pc_reg[25] [7]),
        .O(\ex_reg1[9]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'hAABFBFBF)) 
    \ex_reg1[9]_i_3 
       (.I0(\mem_wd_reg[2] ),
        .I1(\ex_reg1[26]_i_5_n_4 ),
        .I2(rdata10[9]),
        .I3(\ex_reg1[26]_i_6_n_4 ),
        .I4(wb_wdata_i[9]),
        .O(\ex_reg1[9]_i_3_n_4 ));
  LUT4 #(
    .INIT(16'h0F22)) 
    \ex_reg2[0]_i_1 
       (.I0(\pc_reg[25] [0]),
        .I1(\ex_reg1_reg[5] ),
        .I2(\mem_wdata_reg[0] ),
        .I3(reg2_read),
        .O(\ex_reg2_reg[12] [0]));
  LUT4 #(
    .INIT(16'h0F22)) 
    \ex_reg2[11]_i_1 
       (.I0(\pc_reg[25] [3]),
        .I1(\ex_reg1_reg[5] ),
        .I2(\mem_wdata_reg[11] ),
        .I3(reg2_read),
        .O(\ex_reg2_reg[12] [3]));
  LUT4 #(
    .INIT(16'h0F22)) 
    \ex_reg2[12]_i_1 
       (.I0(\pc_reg[25] [4]),
        .I1(\ex_reg1_reg[5] ),
        .I2(\mem_wdata_reg[12] ),
        .I3(reg2_read),
        .O(\ex_reg2_reg[12] [4]));
  LUT6 #(
    .INIT(64'h0000000000007E00)) 
    \ex_reg2[15]_i_2 
       (.I0(id_inst_i[28]),
        .I1(id_inst_i[27]),
        .I2(id_inst_i[26]),
        .I3(\pc_reg[25] [7]),
        .I4(reg2_read),
        .I5(rst_IBUF),
        .O(\ex_reg2_reg[13] ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'hC2000200)) 
    \ex_reg2[19]_i_2 
       (.I0(\pc_reg[25] [7]),
        .I1(id_inst_i[27]),
        .I2(id_inst_i[28]),
        .I3(id_inst_i[26]),
        .I4(id_inst_i[3]),
        .O(\ex_reg2_reg[19] ));
  LUT4 #(
    .INIT(16'h0F22)) 
    \ex_reg2[1]_i_1 
       (.I0(\pc_reg[25] [1]),
        .I1(\ex_reg1_reg[5] ),
        .I2(\mem_wdata_reg[1] ),
        .I3(reg2_read),
        .O(\ex_reg2_reg[12] [1]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h3DFFFDFF)) 
    \ex_reg2[21]_i_2 
       (.I0(\pc_reg[25] [7]),
        .I1(id_inst_i[27]),
        .I2(id_inst_i[28]),
        .I3(id_inst_i[26]),
        .I4(id_inst_i[5]),
        .O(\ex_reg2_reg[21] ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'hC2000200)) 
    \ex_reg2[24]_i_2 
       (.I0(\pc_reg[25] [7]),
        .I1(id_inst_i[27]),
        .I2(id_inst_i[28]),
        .I3(id_inst_i[26]),
        .I4(\pc_reg[25] [2]),
        .O(\ex_reg2_reg[24] ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'hC2000200)) 
    \ex_reg2[28]_i_2 
       (.I0(\pc_reg[25] [7]),
        .I1(id_inst_i[27]),
        .I2(id_inst_i[28]),
        .I3(id_inst_i[26]),
        .I4(\pc_reg[25] [4]),
        .O(\ex_reg2_reg[28] ));
  LUT6 #(
    .INIT(64'h4CC94CC84CC84CC8)) 
    \ex_reg2[2]_i_2 
       (.I0(id_inst_i[28]),
        .I1(id_inst_i[5]),
        .I2(id_inst_i[27]),
        .I3(id_inst_i[26]),
        .I4(\pc_reg[25] [2]),
        .I5(\ex_reg1[4]_i_5_n_4 ),
        .O(\ex_reg2_reg[2] ));
  LUT6 #(
    .INIT(64'h0000000000009000)) 
    \ex_reg2[31]_i_4 
       (.I0(id_inst_i[28]),
        .I1(id_inst_i[27]),
        .I2(id_inst_i[26]),
        .I3(\pc_reg[25] [7]),
        .I4(reg2_read),
        .I5(rst_IBUF),
        .O(\ex_reg2_reg[29] ));
  LUT6 #(
    .INIT(64'h0FFFFFF800000008)) 
    \ex_reg2[3]_i_2 
       (.I0(\ex_reg1[4]_i_5_n_4 ),
        .I1(\pc_reg[25] [7]),
        .I2(id_inst_i[28]),
        .I3(id_inst_i[27]),
        .I4(id_inst_i[26]),
        .I5(id_inst_i[3]),
        .O(\ex_reg2_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h2AA8)) 
    \ex_reg2[5]_i_2 
       (.I0(id_inst_i[5]),
        .I1(id_inst_i[26]),
        .I2(id_inst_i[27]),
        .I3(id_inst_i[28]),
        .O(\ex_reg2_reg[5] ));
  LUT4 #(
    .INIT(16'h0F22)) 
    \ex_reg2[8]_i_1 
       (.I0(\pc_reg[25] [2]),
        .I1(\ex_reg1_reg[5] ),
        .I2(\mem_wdata_reg[8] ),
        .I3(reg2_read),
        .O(\ex_reg2_reg[12] [2]));
  LUT4 #(
    .INIT(16'hFFB8)) 
    \ex_wd[0]_i_1 
       (.I0(\pc_reg[25] [5]),
        .I1(\alusel_o_reg[2]_i_5_n_4 ),
        .I2(\pc_reg[25] [3]),
        .I3(\ex_wd[0]_i_2_n_4 ),
        .O(\ex_wd_reg[4] [0]));
  LUT6 #(
    .INIT(64'h0000555500000100)) 
    \ex_wd[0]_i_2 
       (.I0(rst_IBUF),
        .I1(\pc_reg[25] [6]),
        .I2(\pc_reg[25] [7]),
        .I3(id_inst_i[26]),
        .I4(id_inst_i[28]),
        .I5(id_inst_i[27]),
        .O(\ex_wd[0]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'hB8FFB8B8)) 
    \ex_wd[1]_i_1 
       (.I0(\pc_reg[25] [6]),
        .I1(\alusel_o_reg[2]_i_5_n_4 ),
        .I2(\pc_reg[25] [4]),
        .I3(\ex_wd[1]_i_2_n_4 ),
        .I4(\ex_wd[1]_i_3_n_4 ),
        .O(\ex_wd_reg[4] [1]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'hDC00)) 
    \ex_wd[1]_i_2 
       (.I0(id_inst_i[27]),
        .I1(id_inst_i[28]),
        .I2(id_inst_i[26]),
        .I3(\pc_reg[25] [7]),
        .O(\ex_wd[1]_i_2_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \ex_wd[1]_i_3 
       (.I0(id_inst_i[28]),
        .I1(id_inst_i[26]),
        .I2(id_inst_i[27]),
        .O(\ex_wd[1]_i_3_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'hAAEEAAFE)) 
    \ex_wd[2]_i_1 
       (.I0(\pc_reg[25] [7]),
        .I1(id_inst_i[27]),
        .I2(id_inst_i[26]),
        .I3(id_inst_i[28]),
        .I4(\pc_reg[25] [6]),
        .O(\ex_wd_reg[4] [2]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h00FF001C)) 
    \ex_wd[4]_i_1 
       (.I0(\pc_reg[25] [6]),
        .I1(\pc_reg[25] [7]),
        .I2(id_inst_i[26]),
        .I3(id_inst_i[28]),
        .I4(id_inst_i[27]),
        .O(\ex_wd_reg[4] [3]));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[0] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(\pc_reg[5] [0]),
        .Q(\pc_reg[25] [0]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[11] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(\pc_reg[5] [6]),
        .Q(\pc_reg[25] [3]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[12] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(\pc_reg[5] [7]),
        .Q(\pc_reg[25] [4]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[16] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(\pc_reg[5] [8]),
        .Q(\pc_reg[25] [5]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[17] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(\pc_reg[5] [9]),
        .Q(\pc_reg[25] [6]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[18] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(\pc_reg[5] [10]),
        .Q(\pc_reg[25] [7]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[1] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(\pc_reg[5] [1]),
        .Q(\pc_reg[25] [1]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[21] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(\pc_reg[5] [11]),
        .Q(\pc_reg[25] [8]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[22] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(\pc_reg[5] [12]),
        .Q(\pc_reg[25] [9]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[23] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(\pc_reg[5] [13]),
        .Q(\pc_reg[25] [10]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[26] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(\pc_reg[5] [14]),
        .Q(id_inst_i[26]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[27] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(\pc_reg[5] [15]),
        .Q(id_inst_i[27]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[28] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(\pc_reg[5] [16]),
        .Q(id_inst_i[28]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[3] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(\pc_reg[5] [2]),
        .Q(id_inst_i[3]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[4] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(\pc_reg[5] [3]),
        .Q(id_inst_i[4]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[5] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(\pc_reg[5] [4]),
        .Q(id_inst_i[5]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[8] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(\pc_reg[5] [5]),
        .Q(\pc_reg[25] [2]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[0] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[0]),
        .Q(\ex_current_inst_addr_reg[31] [0]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[10] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[10]),
        .Q(\ex_current_inst_addr_reg[31] [10]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[11] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[11]),
        .Q(\ex_current_inst_addr_reg[31] [11]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[12] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[12]),
        .Q(\ex_current_inst_addr_reg[31] [12]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[13] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[13]),
        .Q(\ex_current_inst_addr_reg[31] [13]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[14] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[14]),
        .Q(\ex_current_inst_addr_reg[31] [14]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[15] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[15]),
        .Q(\ex_current_inst_addr_reg[31] [15]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[16] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[16]),
        .Q(\ex_current_inst_addr_reg[31] [16]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[17] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[17]),
        .Q(\ex_current_inst_addr_reg[31] [17]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[18] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[18]),
        .Q(\ex_current_inst_addr_reg[31] [18]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[19] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[19]),
        .Q(\ex_current_inst_addr_reg[31] [19]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[1] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[1]),
        .Q(\ex_current_inst_addr_reg[31] [1]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[20] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[20]),
        .Q(\ex_current_inst_addr_reg[31] [20]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[21] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[21]),
        .Q(\ex_current_inst_addr_reg[31] [21]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[22] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[22]),
        .Q(\ex_current_inst_addr_reg[31] [22]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[23] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[23]),
        .Q(\ex_current_inst_addr_reg[31] [23]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[24] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[24]),
        .Q(\ex_current_inst_addr_reg[31] [24]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[25] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[25]),
        .Q(\ex_current_inst_addr_reg[31] [25]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[26] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[26]),
        .Q(\ex_current_inst_addr_reg[31] [26]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[27] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[27]),
        .Q(\ex_current_inst_addr_reg[31] [27]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[28] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[28]),
        .Q(\ex_current_inst_addr_reg[31] [28]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[29] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[29]),
        .Q(\ex_current_inst_addr_reg[31] [29]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[2] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[2]),
        .Q(\ex_current_inst_addr_reg[31] [2]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[30] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[30]),
        .Q(\ex_current_inst_addr_reg[31] [30]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[31] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[31]),
        .Q(\ex_current_inst_addr_reg[31] [31]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[3] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[3]),
        .Q(\ex_current_inst_addr_reg[31] [3]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[4] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[4]),
        .Q(\ex_current_inst_addr_reg[31] [4]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[5] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[5]),
        .Q(\ex_current_inst_addr_reg[31] [5]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[6] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[6]),
        .Q(\ex_current_inst_addr_reg[31] [6]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[7] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[7]),
        .Q(\ex_current_inst_addr_reg[31] [7]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[8] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[8]),
        .Q(\ex_current_inst_addr_reg[31] [8]),
        .R(\mem_excepttype_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[9] 
       (.C(CLK),
        .CE(\mem_excepttype_reg[11]_1 ),
        .D(Q[9]),
        .Q(\ex_current_inst_addr_reg[31] [9]),
        .R(\mem_excepttype_reg[11]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \pc[0]_i_1 
       (.I0(Q[0]),
        .I1(id_branch_flag_o),
        .I2(id_branch_target_address_o[0]),
        .I3(\mem_excepttype_reg[11] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \pc[0]_i_2 
       (.I0(\pc[31]_i_18_n_4 ),
        .I1(ex_wreg_reg_0[0]),
        .I2(\pc[31]_i_6_n_4 ),
        .I3(\ex_current_inst_addr_reg[31] [0]),
        .O(id_branch_target_address_o[0]));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[10]_i_1 
       (.I0(pc0[9]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[12]_i_3_n_10 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[10]_i_2_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h100010001000FFFF)) 
    \pc[10]_i_2 
       (.I0(rst_IBUF),
        .I1(id_inst_i[28]),
        .I2(id_inst_i[27]),
        .I3(\pc_reg[25] [2]),
        .I4(\pc[31]_i_18_n_4 ),
        .I5(\ex_reg1[10]_i_2_n_4 ),
        .O(\pc[10]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[11]_i_1 
       (.I0(pc0[10]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[12]_i_3_n_9 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[11]_i_2_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0020FFFF00200020)) 
    \pc[11]_i_2 
       (.I0(\pc_reg[25] [7]),
        .I1(rst_IBUF),
        .I2(id_inst_i[27]),
        .I3(id_inst_i[28]),
        .I4(\pc[31]_i_18_n_4 ),
        .I5(ex_wreg_reg_0[5]),
        .O(\pc[11]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[12]_i_1 
       (.I0(pc0[11]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[12]_i_3_n_8 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[12]_i_4_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h0020FFFF00200020)) 
    \pc[12]_i_4 
       (.I0(\pc_reg[25] [7]),
        .I1(rst_IBUF),
        .I2(id_inst_i[27]),
        .I3(id_inst_i[28]),
        .I4(\pc[31]_i_18_n_4 ),
        .I5(ex_wreg_reg_0[6]),
        .O(\pc[12]_i_4_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pc[12]_i_6 
       (.I0(\id0/next_pc_i [12]),
        .I1(\pc_reg[25] [7]),
        .O(\pc[12]_i_6_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pc[12]_i_7 
       (.I0(\id0/next_pc_i [11]),
        .I1(\pc_reg[25] [7]),
        .O(\pc[12]_i_7_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pc[12]_i_8 
       (.I0(\id0/next_pc_i [10]),
        .I1(\pc_reg[25] [2]),
        .O(\pc[12]_i_8_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pc[12]_i_9 
       (.I0(\id0/next_pc_i [9]),
        .I1(id_inst_i[4]),
        .O(\pc[12]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[13]_i_1 
       (.I0(pc0[12]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[16]_i_3_n_11 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[13]_i_2_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h111F111111111111)) 
    \pc[13]_i_2 
       (.I0(\pc[31]_i_18_n_4 ),
        .I1(\ex_reg1[13]_i_2_n_4 ),
        .I2(rst_IBUF),
        .I3(id_inst_i[28]),
        .I4(id_inst_i[27]),
        .I5(\pc_reg[25] [3]),
        .O(\pc[13]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[14]_i_1 
       (.I0(pc0[13]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[16]_i_3_n_10 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[14]_i_2_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h111F111111111111)) 
    \pc[14]_i_2 
       (.I0(\pc[31]_i_18_n_4 ),
        .I1(\ex_reg1[14]_i_2_n_4 ),
        .I2(rst_IBUF),
        .I3(id_inst_i[28]),
        .I4(id_inst_i[27]),
        .I5(\pc_reg[25] [4]),
        .O(\pc[14]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[15]_i_1 
       (.I0(pc0[14]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[16]_i_3_n_9 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[15]_i_2_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h0020FFFF00200020)) 
    \pc[15]_i_2 
       (.I0(\pc_reg[25] [7]),
        .I1(rst_IBUF),
        .I2(id_inst_i[27]),
        .I3(id_inst_i[28]),
        .I4(\pc[31]_i_18_n_4 ),
        .I5(ex_wreg_reg_0[7]),
        .O(\pc[15]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[16]_i_1 
       (.I0(pc0[15]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[16]_i_3_n_8 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[16]_i_4_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h0020FFFF00200020)) 
    \pc[16]_i_4 
       (.I0(\pc_reg[25] [7]),
        .I1(rst_IBUF),
        .I2(id_inst_i[27]),
        .I3(id_inst_i[28]),
        .I4(\pc[31]_i_18_n_4 ),
        .I5(ex_wreg_reg_0[8]),
        .O(\pc[16]_i_4_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pc[16]_i_6 
       (.I0(\id0/next_pc_i [16]),
        .I1(\pc_reg[25] [7]),
        .O(\pc[16]_i_6_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pc[16]_i_7 
       (.I0(\id0/next_pc_i [15]),
        .I1(\pc_reg[25] [7]),
        .O(\pc[16]_i_7_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pc[16]_i_8 
       (.I0(\id0/next_pc_i [14]),
        .I1(\pc_reg[25] [4]),
        .O(\pc[16]_i_8_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pc[16]_i_9 
       (.I0(\id0/next_pc_i [13]),
        .I1(\pc_reg[25] [3]),
        .O(\pc[16]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[17]_i_1 
       (.I0(pc0[16]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[20]_i_3_n_11 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[17]_i_2_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'h0020FFFF00200020)) 
    \pc[17]_i_2 
       (.I0(\pc_reg[25] [7]),
        .I1(rst_IBUF),
        .I2(id_inst_i[27]),
        .I3(id_inst_i[28]),
        .I4(\pc[31]_i_18_n_4 ),
        .I5(ex_wreg_reg_0[9]),
        .O(\pc[17]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[18]_i_1 
       (.I0(pc0[17]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[20]_i_3_n_10 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[18]_i_2_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'h100010001000FFFF)) 
    \pc[18]_i_2 
       (.I0(rst_IBUF),
        .I1(id_inst_i[28]),
        .I2(id_inst_i[27]),
        .I3(\pc_reg[25] [5]),
        .I4(\pc[31]_i_18_n_4 ),
        .I5(\ex_reg1[18]_i_2_n_4 ),
        .O(\pc[18]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[19]_i_1 
       (.I0(pc0[18]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[20]_i_3_n_9 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[19]_i_2_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'h100010001000FFFF)) 
    \pc[19]_i_2 
       (.I0(rst_IBUF),
        .I1(id_inst_i[28]),
        .I2(id_inst_i[27]),
        .I3(\pc_reg[25] [6]),
        .I4(\pc[31]_i_18_n_4 ),
        .I5(\ex_reg1[19]_i_2_n_4 ),
        .O(\pc[19]_i_2_n_4 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \pc[1]_i_1 
       (.I0(pc0[0]),
        .I1(id_branch_flag_o),
        .I2(id_branch_target_address_o[1]),
        .I3(\mem_excepttype_reg[11] ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \pc[1]_i_2 
       (.I0(\pc[31]_i_18_n_4 ),
        .I1(ex_wreg_reg_0[1]),
        .I2(\pc[31]_i_6_n_4 ),
        .I3(\pc_reg[4]_i_3_n_11 ),
        .O(id_branch_target_address_o[1]));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[20]_i_1 
       (.I0(pc0[19]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[20]_i_3_n_8 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[20]_i_4_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'h0020FFFF00200020)) 
    \pc[20]_i_4 
       (.I0(\pc_reg[25] [7]),
        .I1(rst_IBUF),
        .I2(id_inst_i[27]),
        .I3(id_inst_i[28]),
        .I4(\pc[31]_i_18_n_4 ),
        .I5(ex_wreg_reg_0[10]),
        .O(\pc[20]_i_4_n_4 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pc[20]_i_5 
       (.I0(\pc_reg[25] [7]),
        .O(\pc[20]_i_5_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pc[20]_i_8 
       (.I0(\pc_reg[25] [7]),
        .I1(\pc_reg[31] [0]),
        .O(\pc[20]_i_8_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pc[20]_i_9 
       (.I0(\pc_reg[25] [7]),
        .I1(\id0/next_pc_i [17]),
        .O(\pc[20]_i_9_n_4 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \pc[21]_i_1 
       (.I0(pc0[20]),
        .I1(id_branch_flag_o),
        .I2(id_branch_target_address_o[21]),
        .I3(\mem_excepttype_reg[11] ),
        .O(D[21]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \pc[21]_i_2 
       (.I0(\pc[31]_i_18_n_4 ),
        .I1(\ex_reg1_reg[28] [9]),
        .I2(\pc[31]_i_6_n_4 ),
        .I3(\pc_reg[24]_i_3_n_11 ),
        .O(id_branch_target_address_o[21]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \pc[22]_i_1 
       (.I0(pc0[21]),
        .I1(id_branch_flag_o),
        .I2(id_branch_target_address_o[22]),
        .I3(\mem_excepttype_reg[11] ),
        .O(D[22]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \pc[22]_i_2 
       (.I0(\pc[31]_i_18_n_4 ),
        .I1(\ex_reg1_reg[28] [10]),
        .I2(\pc[31]_i_6_n_4 ),
        .I3(\pc_reg[24]_i_3_n_10 ),
        .O(id_branch_target_address_o[22]));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[23]_i_1 
       (.I0(pc0[22]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[24]_i_3_n_9 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[23]_i_2_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h111F111111111111)) 
    \pc[23]_i_2 
       (.I0(\pc[31]_i_18_n_4 ),
        .I1(\ex_reg1[23]_i_2_n_4 ),
        .I2(rst_IBUF),
        .I3(id_inst_i[28]),
        .I4(id_inst_i[27]),
        .I5(\pc_reg[25] [8]),
        .O(\pc[23]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[24]_i_1 
       (.I0(pc0[23]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[24]_i_3_n_8 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[24]_i_4_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h111F111111111111)) 
    \pc[24]_i_4 
       (.I0(\pc[31]_i_18_n_4 ),
        .I1(\mem_wdata_reg[24] ),
        .I2(rst_IBUF),
        .I3(id_inst_i[28]),
        .I4(id_inst_i[27]),
        .I5(\pc_reg[25] [9]),
        .O(\pc[24]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[25]_i_1 
       (.I0(pc0[24]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[28]_i_3_n_11 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[25]_i_2_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h111F111111111111)) 
    \pc[25]_i_2 
       (.I0(\pc[31]_i_18_n_4 ),
        .I1(\ex_reg1[25]_i_2_n_4 ),
        .I2(rst_IBUF),
        .I3(id_inst_i[28]),
        .I4(id_inst_i[27]),
        .I5(\pc_reg[25] [10]),
        .O(\pc[25]_i_2_n_4 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \pc[26]_i_1 
       (.I0(pc0[25]),
        .I1(id_branch_flag_o),
        .I2(id_branch_target_address_o[26]),
        .I3(\mem_excepttype_reg[11] ),
        .O(D[26]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \pc[26]_i_2 
       (.I0(\pc[31]_i_18_n_4 ),
        .I1(\ex_reg1_reg[28] [13]),
        .I2(\pc[31]_i_6_n_4 ),
        .I3(\pc_reg[28]_i_3_n_10 ),
        .O(id_branch_target_address_o[26]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \pc[27]_i_1 
       (.I0(pc0[26]),
        .I1(id_branch_flag_o),
        .I2(id_branch_target_address_o[27]),
        .I3(\mem_excepttype_reg[11] ),
        .O(D[27]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \pc[27]_i_2 
       (.I0(\pc[31]_i_18_n_4 ),
        .I1(ex_wreg_reg_0[11]),
        .I2(\pc[31]_i_6_n_4 ),
        .I3(\pc_reg[28]_i_3_n_9 ),
        .O(id_branch_target_address_o[27]));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[28]_i_1 
       (.I0(pc0[27]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[28]_i_3_n_8 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[28]_i_4_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h100010001000FFFF)) 
    \pc[28]_i_4 
       (.I0(rst_IBUF),
        .I1(id_inst_i[28]),
        .I2(id_inst_i[27]),
        .I3(\pc_reg[31] [10]),
        .I4(\pc[31]_i_18_n_4 ),
        .I5(\ex_reg1[28]_i_2_n_4 ),
        .O(\pc[28]_i_4_n_4 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[29]_i_1 
       (.I0(pc0[28]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[31]_i_5_n_11 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[29]_i_2_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'h100010001000FFFF)) 
    \pc[29]_i_2 
       (.I0(rst_IBUF),
        .I1(id_inst_i[28]),
        .I2(id_inst_i[27]),
        .I3(\pc_reg[31] [11]),
        .I4(\pc[31]_i_18_n_4 ),
        .I5(\mem_wdata_reg[29] ),
        .O(\pc[29]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[2]_i_1 
       (.I0(pc0[1]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[4]_i_3_n_10 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[2]_i_2_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h100010001000FFFF)) 
    \pc[2]_i_2 
       (.I0(rst_IBUF),
        .I1(id_inst_i[28]),
        .I2(id_inst_i[27]),
        .I3(\pc_reg[25] [0]),
        .I4(\pc[31]_i_18_n_4 ),
        .I5(\ex_reg1[2]_i_2_n_4 ),
        .O(\pc[2]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[30]_i_1 
       (.I0(pc0[29]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[31]_i_5_n_10 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[30]_i_2_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[30]));
  LUT6 #(
    .INIT(64'h100010001000FFFF)) 
    \pc[30]_i_2 
       (.I0(rst_IBUF),
        .I1(id_inst_i[28]),
        .I2(id_inst_i[27]),
        .I3(\pc_reg[31] [12]),
        .I4(\pc[31]_i_18_n_4 ),
        .I5(\mem_wdata_reg[30] ),
        .O(\pc[30]_i_2_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \pc[31]_i_10 
       (.I0(\pc_reg[25] [6]),
        .I1(\pc_reg[25] [7]),
        .I2(id_inst_i[26]),
        .O(\pc[31]_i_10_n_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \pc[31]_i_17 
       (.I0(id_inst_i[26]),
        .I1(\pc_reg[25] [7]),
        .I2(\pc_reg[25] [6]),
        .I3(id_inst_i[27]),
        .I4(id_inst_i[28]),
        .I5(rst_IBUF),
        .O(\pc[31]_i_17_n_4 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \pc[31]_i_18 
       (.I0(\aluop_o_reg[6]_i_3_n_4 ),
        .I1(id_inst_i[28]),
        .I2(rst_IBUF),
        .I3(id_inst_i[27]),
        .I4(id_inst_i[26]),
        .O(\pc[31]_i_18_n_4 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[31]_i_2 
       (.I0(pc0[30]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[31]_i_5_n_9 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[31]_i_7_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[31]));
  LUT6 #(
    .INIT(64'h1110111111101110)) 
    \pc[31]_i_4 
       (.I0(rst_IBUF),
        .I1(id_inst_i[28]),
        .I2(id_inst_i[27]),
        .I3(\pc[31]_i_8_n_4 ),
        .I4(\pc[31]_i_9_n_4 ),
        .I5(\pc[31]_i_10_n_4 ),
        .O(id_branch_flag_o));
  LUT6 #(
    .INIT(64'hFFFFFFFF0151FEAE)) 
    \pc[31]_i_6 
       (.I0(rst_IBUF),
        .I1(\ex_reg1_reg[31] ),
        .I2(reg1_read),
        .I3(\mem_wdata_reg[31]_0 ),
        .I4(\pc_reg[25] [5]),
        .I5(\pc[31]_i_17_n_4 ),
        .O(\pc[31]_i_6_n_4 ));
  LUT6 #(
    .INIT(64'h100010001000FFFF)) 
    \pc[31]_i_7 
       (.I0(rst_IBUF),
        .I1(id_inst_i[28]),
        .I2(id_inst_i[27]),
        .I3(\pc_reg[31] [13]),
        .I4(\pc[31]_i_18_n_4 ),
        .I5(\mem_wdata_reg[31] ),
        .O(\pc[31]_i_7_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \pc[31]_i_8 
       (.I0(id_inst_i[4]),
        .I1(\pc_reg[25] [1]),
        .I2(id_inst_i[3]),
        .I3(id_inst_i[5]),
        .I4(id_inst_i[26]),
        .O(\pc[31]_i_8_n_4 ));
  LUT5 #(
    .INIT(32'h5555656A)) 
    \pc[31]_i_9 
       (.I0(\pc_reg[25] [5]),
        .I1(\mem_wdata_reg[31]_0 ),
        .I2(reg1_read),
        .I3(\ex_reg1_reg[31] ),
        .I4(rst_IBUF),
        .O(\pc[31]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[3]_i_1 
       (.I0(pc0[2]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[4]_i_3_n_9 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[3]_i_2_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h100010001000FFFF)) 
    \pc[3]_i_2 
       (.I0(rst_IBUF),
        .I1(id_inst_i[28]),
        .I2(id_inst_i[27]),
        .I3(\pc_reg[25] [1]),
        .I4(\pc[31]_i_18_n_4 ),
        .I5(\mem_wdata_reg[3] ),
        .O(\pc[3]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[4]_i_1 
       (.I0(pc0[3]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[4]_i_3_n_8 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[4]_i_4_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \pc[4]_i_10 
       (.I0(\ex_current_inst_addr_reg[31] [2]),
        .O(\pc[4]_i_10_n_4 ));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \pc[4]_i_4 
       (.I0(rst_IBUF),
        .I1(id_inst_i[28]),
        .I2(id_inst_i[27]),
        .I3(id_inst_i[5]),
        .I4(\pc[31]_i_18_n_4 ),
        .I5(ex_wreg_reg_0[2]),
        .O(\pc[4]_i_4_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pc[4]_i_7 
       (.I0(\id0/next_pc_i [4]),
        .I1(id_inst_i[5]),
        .O(\pc[4]_i_7_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pc[4]_i_8 
       (.I0(\id0/next_pc_i [3]),
        .I1(\pc_reg[25] [1]),
        .O(\pc[4]_i_8_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pc[4]_i_9 
       (.I0(\id0/next_pc_i [2]),
        .I1(\pc_reg[25] [0]),
        .O(\pc[4]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'hBBB8BBBBBBB88888)) 
    \pc[5]_i_1 
       (.I0(\mem_excepttype_reg[11]_2 [0]),
        .I1(\mem_excepttype_reg[11] ),
        .I2(\pc[5]_i_2_n_4 ),
        .I3(\pc[5]_i_3_n_4 ),
        .I4(id_branch_flag_o),
        .I5(pc0[4]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h1111100010001000)) 
    \pc[5]_i_2 
       (.I0(rst_IBUF),
        .I1(id_inst_i[28]),
        .I2(\ex_reg1_reg[28] [1]),
        .I3(\pc[31]_i_8_n_4 ),
        .I4(id_inst_i[27]),
        .I5(id_inst_i[3]),
        .O(\pc[5]_i_2_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc[5]_i_3 
       (.I0(\pc_reg[8]_i_3_n_11 ),
        .I1(\pc[31]_i_6_n_4 ),
        .O(\pc[5]_i_3_n_4 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pc[6]_i_1 
       (.I0(\mem_excepttype_reg[11]_2 [1]),
        .I1(\mem_excepttype_reg[11] ),
        .I2(id_branch_target_address_o[6]),
        .I3(id_branch_flag_o),
        .I4(pc0[5]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \pc[6]_i_2 
       (.I0(ex_wreg_reg_0[3]),
        .I1(\pc[31]_i_18_n_4 ),
        .I2(id_inst_i[4]),
        .I3(\pc[6]_i_3_n_4 ),
        .I4(\pc[31]_i_6_n_4 ),
        .I5(\pc_reg[8]_i_3_n_10 ),
        .O(id_branch_target_address_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \pc[6]_i_3 
       (.I0(rst_IBUF),
        .I1(id_inst_i[28]),
        .I2(id_inst_i[27]),
        .O(\pc[6]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[7]_i_1 
       (.I0(pc0[6]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[8]_i_3_n_9 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[7]_i_2_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h100010001000FFFF)) 
    \pc[7]_i_2 
       (.I0(rst_IBUF),
        .I1(id_inst_i[28]),
        .I2(id_inst_i[27]),
        .I3(id_inst_i[5]),
        .I4(\pc[31]_i_18_n_4 ),
        .I5(\ex_reg1[7]_i_2_n_4 ),
        .O(\pc[7]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[8]_i_1 
       (.I0(pc0[7]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[8]_i_3_n_8 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[8]_i_4_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \pc[8]_i_4 
       (.I0(rst_IBUF),
        .I1(id_inst_i[28]),
        .I2(id_inst_i[27]),
        .I3(id_inst_i[4]),
        .I4(\pc[31]_i_18_n_4 ),
        .I5(ex_wreg_reg_0[4]),
        .O(\pc[8]_i_4_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pc[8]_i_6 
       (.I0(\id0/next_pc_i [8]),
        .I1(id_inst_i[4]),
        .O(\pc[8]_i_6_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pc[8]_i_7 
       (.I0(\id0/next_pc_i [7]),
        .I1(id_inst_i[5]),
        .O(\pc[8]_i_7_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pc[8]_i_8 
       (.I0(\id0/next_pc_i [6]),
        .I1(id_inst_i[4]),
        .O(\pc[8]_i_8_n_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pc[8]_i_9 
       (.I0(\id0/next_pc_i [5]),
        .I1(id_inst_i[3]),
        .O(\pc[8]_i_9_n_4 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \pc[9]_i_1 
       (.I0(pc0[8]),
        .I1(id_branch_flag_o),
        .I2(\pc_reg[12]_i_3_n_11 ),
        .I3(\pc[31]_i_6_n_4 ),
        .I4(\pc[9]_i_2_n_4 ),
        .I5(\mem_excepttype_reg[11] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h100010001000FFFF)) 
    \pc[9]_i_2 
       (.I0(rst_IBUF),
        .I1(id_inst_i[28]),
        .I2(id_inst_i[27]),
        .I3(id_inst_i[4]),
        .I4(\pc[31]_i_18_n_4 ),
        .I5(\ex_reg1[9]_i_2_n_4 ),
        .O(\pc[9]_i_2_n_4 ));
  CARRY4 \pc_reg[12]_i_3 
       (.CI(\pc_reg[8]_i_3_n_4 ),
        .CO({\pc_reg[12]_i_3_n_4 ,\pc_reg[12]_i_3_n_5 ,\pc_reg[12]_i_3_n_6 ,\pc_reg[12]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(\id0/next_pc_i [12:9]),
        .O({\pc_reg[12]_i_3_n_8 ,\pc_reg[12]_i_3_n_9 ,\pc_reg[12]_i_3_n_10 ,\pc_reg[12]_i_3_n_11 }),
        .S({\pc[12]_i_6_n_4 ,\pc[12]_i_7_n_4 ,\pc[12]_i_8_n_4 ,\pc[12]_i_9_n_4 }));
  CARRY4 \pc_reg[12]_i_5 
       (.CI(\pc_reg[8]_i_5_n_4 ),
        .CO({\pc_reg[12]_i_5_n_4 ,\pc_reg[12]_i_5_n_5 ,\pc_reg[12]_i_5_n_6 ,\pc_reg[12]_i_5_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\id0/next_pc_i [12:9]),
        .S(\ex_current_inst_addr_reg[31] [12:9]));
  CARRY4 \pc_reg[16]_i_3 
       (.CI(\pc_reg[12]_i_3_n_4 ),
        .CO({\pc_reg[16]_i_3_n_4 ,\pc_reg[16]_i_3_n_5 ,\pc_reg[16]_i_3_n_6 ,\pc_reg[16]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(\id0/next_pc_i [16:13]),
        .O({\pc_reg[16]_i_3_n_8 ,\pc_reg[16]_i_3_n_9 ,\pc_reg[16]_i_3_n_10 ,\pc_reg[16]_i_3_n_11 }),
        .S({\pc[16]_i_6_n_4 ,\pc[16]_i_7_n_4 ,\pc[16]_i_8_n_4 ,\pc[16]_i_9_n_4 }));
  CARRY4 \pc_reg[16]_i_5 
       (.CI(\pc_reg[12]_i_5_n_4 ),
        .CO({\pc_reg[16]_i_5_n_4 ,\pc_reg[16]_i_5_n_5 ,\pc_reg[16]_i_5_n_6 ,\pc_reg[16]_i_5_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\id0/next_pc_i [16:13]),
        .S(\ex_current_inst_addr_reg[31] [16:13]));
  CARRY4 \pc_reg[20]_i_3 
       (.CI(\pc_reg[16]_i_3_n_4 ),
        .CO({\pc_reg[20]_i_3_n_4 ,\pc_reg[20]_i_3_n_5 ,\pc_reg[20]_i_3_n_6 ,\pc_reg[20]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({\pc_reg[31] [1:0],\pc[20]_i_5_n_4 ,\pc_reg[25] [7]}),
        .O({\pc_reg[20]_i_3_n_8 ,\pc_reg[20]_i_3_n_9 ,\pc_reg[20]_i_3_n_10 ,\pc_reg[20]_i_3_n_11 }),
        .S({S,\pc[20]_i_8_n_4 ,\pc[20]_i_9_n_4 }));
  CARRY4 \pc_reg[24]_i_3 
       (.CI(\pc_reg[20]_i_3_n_4 ),
        .CO({\pc_reg[24]_i_3_n_4 ,\pc_reg[24]_i_3_n_5 ,\pc_reg[24]_i_3_n_6 ,\pc_reg[24]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(\pc_reg[31] [5:2]),
        .O({\pc_reg[24]_i_3_n_8 ,\pc_reg[24]_i_3_n_9 ,\pc_reg[24]_i_3_n_10 ,\pc_reg[24]_i_3_n_11 }),
        .S(\id_pc_reg[24]_0 ));
  CARRY4 \pc_reg[24]_i_5 
       (.CI(\pc_reg[16]_i_5_n_4 ),
        .CO({\pc_reg[24]_i_5_n_4 ,\pc_reg[24]_i_5_n_5 ,\pc_reg[24]_i_5_n_6 ,\pc_reg[24]_i_5_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[31] [2:0],\id0/next_pc_i [17]}),
        .S(\ex_current_inst_addr_reg[31] [20:17]));
  CARRY4 \pc_reg[28]_i_3 
       (.CI(\pc_reg[24]_i_3_n_4 ),
        .CO({\pc_reg[28]_i_3_n_4 ,\pc_reg[28]_i_3_n_5 ,\pc_reg[28]_i_3_n_6 ,\pc_reg[28]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(\pc_reg[31] [9:6]),
        .O({\pc_reg[28]_i_3_n_8 ,\pc_reg[28]_i_3_n_9 ,\pc_reg[28]_i_3_n_10 ,\pc_reg[28]_i_3_n_11 }),
        .S(\id_pc_reg[28]_0 ));
  CARRY4 \pc_reg[28]_i_5 
       (.CI(\pc_reg[24]_i_5_n_4 ),
        .CO({\pc_reg[28]_i_5_n_4 ,\pc_reg[28]_i_5_n_5 ,\pc_reg[28]_i_5_n_6 ,\pc_reg[28]_i_5_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\pc_reg[31] [6:3]),
        .S(\ex_current_inst_addr_reg[31] [24:21]));
  CARRY4 \pc_reg[31]_i_11 
       (.CI(\pc_reg[31]_i_12_n_4 ),
        .CO({\NLW_pc_reg[31]_i_11_CO_UNCONNECTED [3:2],\pc_reg[31]_i_11_n_6 ,\pc_reg[31]_i_11_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pc_reg[31]_i_11_O_UNCONNECTED [3],\pc_reg[31] [13:11]}),
        .S({1'b0,\ex_current_inst_addr_reg[31] [31:29]}));
  CARRY4 \pc_reg[31]_i_12 
       (.CI(\pc_reg[28]_i_5_n_4 ),
        .CO({\pc_reg[31]_i_12_n_4 ,\pc_reg[31]_i_12_n_5 ,\pc_reg[31]_i_12_n_6 ,\pc_reg[31]_i_12_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\pc_reg[31] [10:7]),
        .S(\ex_current_inst_addr_reg[31] [28:25]));
  CARRY4 \pc_reg[31]_i_5 
       (.CI(\pc_reg[28]_i_3_n_4 ),
        .CO({\NLW_pc_reg[31]_i_5_CO_UNCONNECTED [3:2],\pc_reg[31]_i_5_n_6 ,\pc_reg[31]_i_5_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\pc_reg[31] [11:10]}),
        .O({\NLW_pc_reg[31]_i_5_O_UNCONNECTED [3],\pc_reg[31]_i_5_n_9 ,\pc_reg[31]_i_5_n_10 ,\pc_reg[31]_i_5_n_11 }),
        .S({1'b0,\id_pc_reg[31]_0 }));
  CARRY4 \pc_reg[4]_i_3 
       (.CI(1'b0),
        .CO({\pc_reg[4]_i_3_n_4 ,\pc_reg[4]_i_3_n_5 ,\pc_reg[4]_i_3_n_6 ,\pc_reg[4]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({\id0/next_pc_i [4:2],1'b0}),
        .O({\pc_reg[4]_i_3_n_8 ,\pc_reg[4]_i_3_n_9 ,\pc_reg[4]_i_3_n_10 ,\pc_reg[4]_i_3_n_11 }),
        .S({\pc[4]_i_7_n_4 ,\pc[4]_i_8_n_4 ,\pc[4]_i_9_n_4 ,\id0/next_pc_i [1]}));
  CARRY4 \pc_reg[4]_i_6 
       (.CI(1'b0),
        .CO({\pc_reg[4]_i_6_n_4 ,\pc_reg[4]_i_6_n_5 ,\pc_reg[4]_i_6_n_6 ,\pc_reg[4]_i_6_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\ex_current_inst_addr_reg[31] [2],1'b0}),
        .O(\id0/next_pc_i [4:1]),
        .S({\ex_current_inst_addr_reg[31] [4:3],\pc[4]_i_10_n_4 ,\ex_current_inst_addr_reg[31] [1]}));
  CARRY4 \pc_reg[8]_i_3 
       (.CI(\pc_reg[4]_i_3_n_4 ),
        .CO({\pc_reg[8]_i_3_n_4 ,\pc_reg[8]_i_3_n_5 ,\pc_reg[8]_i_3_n_6 ,\pc_reg[8]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI(\id0/next_pc_i [8:5]),
        .O({\pc_reg[8]_i_3_n_8 ,\pc_reg[8]_i_3_n_9 ,\pc_reg[8]_i_3_n_10 ,\pc_reg[8]_i_3_n_11 }),
        .S({\pc[8]_i_6_n_4 ,\pc[8]_i_7_n_4 ,\pc[8]_i_8_n_4 ,\pc[8]_i_9_n_4 }));
  CARRY4 \pc_reg[8]_i_5 
       (.CI(\pc_reg[4]_i_6_n_4 ),
        .CO({\pc_reg[8]_i_5_n_4 ,\pc_reg[8]_i_5_n_5 ,\pc_reg[8]_i_5_n_6 ,\pc_reg[8]_i_5_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\id0/next_pc_i [8:5]),
        .S(\ex_current_inst_addr_reg[31] [8:5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF2)) 
    reg1_read_o_reg_i_1
       (.I0(\pc_reg[25] [0]),
        .I1(\pc_reg[25] [1]),
        .I2(id_inst_i[4]),
        .I3(id_inst_i[3]),
        .I4(id_inst_i[5]),
        .I5(\alusel_o_reg[2]_i_5_n_4 ),
        .O(\ex_reg1_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \reg2_addr_o_reg[2]_i_1 
       (.I0(id_inst_i[28]),
        .I1(id_inst_i[27]),
        .I2(id_inst_i[26]),
        .O(E));
  LUT2 #(
    .INIT(4'h2)) 
    register_reg_r2_0_31_0_5_i_1
       (.I0(\pc_reg[25] [10]),
        .I1(rst_IBUF),
        .O(ADDRA[2]));
  LUT2 #(
    .INIT(4'h2)) 
    register_reg_r2_0_31_0_5_i_2
       (.I0(\pc_reg[25] [9]),
        .I1(rst_IBUF),
        .O(ADDRA[1]));
  LUT2 #(
    .INIT(4'h2)) 
    register_reg_r2_0_31_0_5_i_3
       (.I0(\pc_reg[25] [8]),
        .I1(rst_IBUF),
        .O(ADDRA[0]));
  LUT6 #(
    .INIT(64'hFFFFFF00FF00FF75)) 
    wreg_o_reg_i_1
       (.I0(wreg_o_reg_i_3_n_4),
        .I1(wreg_o_reg_i_4_n_4),
        .I2(wreg_o_reg_i_5_n_4),
        .I3(id_inst_i[28]),
        .I4(id_inst_i[26]),
        .I5(id_inst_i[27]),
        .O(ex_wreg_reg));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h373C)) 
    wreg_o_reg_i_3
       (.I0(id_inst_i[4]),
        .I1(id_inst_i[5]),
        .I2(id_inst_i[3]),
        .I3(\pc_reg[25] [0]),
        .O(wreg_o_reg_i_3_n_4));
  LUT6 #(
    .INIT(64'hA200A2000800A200)) 
    wreg_o_reg_i_4
       (.I0(\alusel_o_reg[2]_i_4_n_4 ),
        .I1(\pc_reg[25] [0]),
        .I2(id_inst_i[4]),
        .I3(\pc_reg[25] [1]),
        .I4(\wb_wdata_reg[19] ),
        .I5(\wb_wdata_reg[13] ),
        .O(wreg_o_reg_i_4_n_4));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h00007FF3)) 
    wreg_o_reg_i_5
       (.I0(id_inst_i[5]),
        .I1(id_inst_i[3]),
        .I2(\pc_reg[25] [0]),
        .I3(\pc_reg[25] [1]),
        .I4(id_inst_i[4]),
        .O(wreg_o_reg_i_5_n_4));
endmodule

module mem
   (E,
    Q,
    \wb_lo_reg[31] ,
    rst,
    D,
    \mem_lo_reg[31] );
  output [0:0]E;
  output [31:0]Q;
  output [31:0]\wb_lo_reg[31] ;
  input rst;
  input [31:0]D;
  input [31:0]\mem_lo_reg[31] ;

  wire [31:0]D;
  wire [31:0]Q;
  wire [31:0]\mem_lo_reg[31] ;
  wire rst;
  wire [31:0]\wb_lo_reg[31] ;

  assign E[0] = rst;
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[10] 
       (.CLR(1'b0),
        .D(D[10]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[11] 
       (.CLR(1'b0),
        .D(D[11]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[12] 
       (.CLR(1'b0),
        .D(D[12]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[13] 
       (.CLR(1'b0),
        .D(D[13]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[14] 
       (.CLR(1'b0),
        .D(D[14]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[15] 
       (.CLR(1'b0),
        .D(D[15]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[16] 
       (.CLR(1'b0),
        .D(D[16]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[17] 
       (.CLR(1'b0),
        .D(D[17]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[18] 
       (.CLR(1'b0),
        .D(D[18]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[19] 
       (.CLR(1'b0),
        .D(D[19]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[20] 
       (.CLR(1'b0),
        .D(D[20]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[21] 
       (.CLR(1'b0),
        .D(D[21]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[22] 
       (.CLR(1'b0),
        .D(D[22]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[23] 
       (.CLR(1'b0),
        .D(D[23]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[24] 
       (.CLR(1'b0),
        .D(D[24]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[25] 
       (.CLR(1'b0),
        .D(D[25]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[26] 
       (.CLR(1'b0),
        .D(D[26]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[27] 
       (.CLR(1'b0),
        .D(D[27]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[28] 
       (.CLR(1'b0),
        .D(D[28]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[29] 
       (.CLR(1'b0),
        .D(D[29]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[30] 
       (.CLR(1'b0),
        .D(D[30]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[31] 
       (.CLR(1'b0),
        .D(D[31]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[3] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[4] 
       (.CLR(1'b0),
        .D(D[4]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[5] 
       (.CLR(1'b0),
        .D(D[5]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[6] 
       (.CLR(1'b0),
        .D(D[6]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[7] 
       (.CLR(1'b0),
        .D(D[7]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[8] 
       (.CLR(1'b0),
        .D(D[8]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \hi_o_reg[9] 
       (.CLR(1'b0),
        .D(D[9]),
        .G(rst),
        .GE(1'b1),
        .Q(Q[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[0] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [0]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[10] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [10]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[11] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [11]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[12] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [12]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[13] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [13]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[14] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [14]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[15] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [15]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[16] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [16]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[17] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [17]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[18] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [18]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[19] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [19]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[1] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [1]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[20] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [20]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[21] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [21]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[22] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [22]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[23] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [23]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[24] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [24]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[25] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [25]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[26] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [26]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[27] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [27]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[28] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [28]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[29] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [29]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[2] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [2]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[30] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [30]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[31] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [31]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[3] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [3]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[4] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [4]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[5] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [5]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[6] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [6]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[7] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [7]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[8] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [8]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \lo_o_reg[9] 
       (.CLR(1'b0),
        .D(\mem_lo_reg[31] [9]),
        .G(rst),
        .GE(1'b1),
        .Q(\wb_lo_reg[31] [9]));
endmodule

module mem_wb
   (wb_whilo_i,
    \ex_reg2_reg[5] ,
    wb_wd_i,
    \ex_reg1_reg[26] ,
    \ex_reg2_reg[4] ,
    \mem_wdata_reg[23] ,
    \mem_wdata_reg[10] ,
    \mem_wdata_reg[31] ,
    \mem_wdata_reg[10]_0 ,
    \mem_wdata_reg[18] ,
    \mem_wdata_reg[21] ,
    \mem_wdata_reg[27] ,
    \mem_wdata_reg[27]_0 ,
    Q,
    \mem_wdata_reg[28] ,
    \mem_wdata_reg[28]_0 ,
    \mem_wdata_reg[29] ,
    \mem_wdata_reg[29]_0 ,
    \mem_wdata_reg[30] ,
    \mem_wdata_reg[30]_0 ,
    \mem_wdata_reg[31]_0 ,
    \mem_wdata_reg[31]_1 ,
    \hi_o_reg[31] ,
    \mem_wdata_reg[30]_1 ,
    \mem_wdata_reg[29]_1 ,
    \mem_wdata_reg[28]_1 ,
    \mem_wdata_reg[27]_1 ,
    \mem_wdata_reg[26] ,
    \mem_wdata_reg[26]_0 ,
    \mem_wdata_reg[25] ,
    \mem_wdata_reg[25]_0 ,
    \mem_wdata_reg[24] ,
    \mem_wdata_reg[24]_0 ,
    \mem_wdata_reg[22] ,
    \mem_wdata_reg[22]_0 ,
    \mem_wdata_reg[21]_0 ,
    \mem_wdata_reg[21]_1 ,
    \mem_wdata_reg[20] ,
    \mem_wdata_reg[20]_0 ,
    \mem_wdata_reg[19] ,
    \mem_wdata_reg[19]_0 ,
    \mem_wdata_reg[18]_0 ,
    \mem_wdata_reg[18]_1 ,
    \mem_wdata_reg[17] ,
    \mem_wdata_reg[17]_0 ,
    \mem_wdata_reg[16] ,
    \mem_wdata_reg[16]_0 ,
    \mem_wdata_reg[15] ,
    \mem_wdata_reg[15]_0 ,
    \mem_wdata_reg[14] ,
    \mem_wdata_reg[14]_0 ,
    \mem_wdata_reg[13] ,
    \mem_wdata_reg[13]_0 ,
    \mem_wdata_reg[12] ,
    \mem_wdata_reg[12]_0 ,
    \mem_wdata_reg[11] ,
    \mem_wdata_reg[11]_0 ,
    \mem_wdata_reg[10]_1 ,
    \mem_wdata_reg[9] ,
    \mem_wdata_reg[9]_0 ,
    \mem_wdata_reg[8] ,
    \mem_wdata_reg[8]_0 ,
    \mem_wdata_reg[7] ,
    \mem_wdata_reg[7]_0 ,
    \mem_wdata_reg[6] ,
    \mem_wdata_reg[6]_0 ,
    \mem_wdata_reg[5] ,
    \mem_wdata_reg[5]_0 ,
    \mem_wdata_reg[4] ,
    \mem_wdata_reg[4]_0 ,
    \mem_wdata_reg[3] ,
    \mem_wdata_reg[3]_0 ,
    \mem_wdata_reg[2] ,
    \mem_wdata_reg[2]_0 ,
    \mem_wdata_reg[1] ,
    \mem_wdata_reg[1]_0 ,
    \mem_wdata_reg[0] ,
    \mem_wdata_reg[0]_0 ,
    wb_wdata_i,
    wb_cp0_reg_write_addr_i,
    \mem_excepttype_reg[11] ,
    mem_wreg_i,
    CLK,
    mem_whilo_i,
    mem_cp0_reg_we_i,
    rst_IBUF,
    \id_inst_reg[23] ,
    \id_inst_reg[21] ,
    \id_inst_reg[18] ,
    \ex_aluop_reg[6] ,
    \ex_reg1_reg[23] ,
    \ex_aluop_reg[4] ,
    mem_cp0_reg_data_o,
    mem_cp0_reg_we_reg,
    mem_cp0_reg_data_i,
    mem_whilo_o,
    D,
    \lo_o_reg[31] ,
    \wb_cp0_reg_write_addr_reg[0]_0 ,
    \mem_hi_reg[31] ,
    \hi_o_reg[31]_0 ,
    mem_wd_i,
    mem_wdata_i,
    E,
    mem_cp0_reg_write_addr_i);
  output wb_whilo_i;
  output \ex_reg2_reg[5] ;
  output [3:0]wb_wd_i;
  output \ex_reg1_reg[26] ;
  output \ex_reg2_reg[4] ;
  output \mem_wdata_reg[23] ;
  output \mem_wdata_reg[10] ;
  output [23:0]\mem_wdata_reg[31] ;
  output \mem_wdata_reg[10]_0 ;
  output \mem_wdata_reg[18] ;
  output \mem_wdata_reg[21] ;
  output \mem_wdata_reg[27] ;
  output \mem_wdata_reg[27]_0 ;
  output [31:0]Q;
  output \mem_wdata_reg[28] ;
  output \mem_wdata_reg[28]_0 ;
  output \mem_wdata_reg[29] ;
  output \mem_wdata_reg[29]_0 ;
  output \mem_wdata_reg[30] ;
  output \mem_wdata_reg[30]_0 ;
  output \mem_wdata_reg[31]_0 ;
  output \mem_wdata_reg[31]_1 ;
  output [31:0]\hi_o_reg[31] ;
  output \mem_wdata_reg[30]_1 ;
  output \mem_wdata_reg[29]_1 ;
  output \mem_wdata_reg[28]_1 ;
  output \mem_wdata_reg[27]_1 ;
  output \mem_wdata_reg[26] ;
  output \mem_wdata_reg[26]_0 ;
  output \mem_wdata_reg[25] ;
  output \mem_wdata_reg[25]_0 ;
  output \mem_wdata_reg[24] ;
  output \mem_wdata_reg[24]_0 ;
  output \mem_wdata_reg[22] ;
  output \mem_wdata_reg[22]_0 ;
  output \mem_wdata_reg[21]_0 ;
  output \mem_wdata_reg[21]_1 ;
  output \mem_wdata_reg[20] ;
  output \mem_wdata_reg[20]_0 ;
  output \mem_wdata_reg[19] ;
  output \mem_wdata_reg[19]_0 ;
  output \mem_wdata_reg[18]_0 ;
  output \mem_wdata_reg[18]_1 ;
  output \mem_wdata_reg[17] ;
  output \mem_wdata_reg[17]_0 ;
  output \mem_wdata_reg[16] ;
  output \mem_wdata_reg[16]_0 ;
  output \mem_wdata_reg[15] ;
  output \mem_wdata_reg[15]_0 ;
  output \mem_wdata_reg[14] ;
  output \mem_wdata_reg[14]_0 ;
  output \mem_wdata_reg[13] ;
  output \mem_wdata_reg[13]_0 ;
  output \mem_wdata_reg[12] ;
  output \mem_wdata_reg[12]_0 ;
  output \mem_wdata_reg[11] ;
  output \mem_wdata_reg[11]_0 ;
  output \mem_wdata_reg[10]_1 ;
  output \mem_wdata_reg[9] ;
  output \mem_wdata_reg[9]_0 ;
  output \mem_wdata_reg[8] ;
  output \mem_wdata_reg[8]_0 ;
  output \mem_wdata_reg[7] ;
  output \mem_wdata_reg[7]_0 ;
  output \mem_wdata_reg[6] ;
  output \mem_wdata_reg[6]_0 ;
  output \mem_wdata_reg[5] ;
  output \mem_wdata_reg[5]_0 ;
  output \mem_wdata_reg[4] ;
  output \mem_wdata_reg[4]_0 ;
  output \mem_wdata_reg[3] ;
  output \mem_wdata_reg[3]_0 ;
  output \mem_wdata_reg[2] ;
  output \mem_wdata_reg[2]_0 ;
  output \mem_wdata_reg[1] ;
  output \mem_wdata_reg[1]_0 ;
  output \mem_wdata_reg[0] ;
  output \mem_wdata_reg[0]_0 ;
  output [31:0]wb_wdata_i;
  output [2:0]wb_cp0_reg_write_addr_i;
  input \mem_excepttype_reg[11] ;
  input mem_wreg_i;
  input CLK;
  input mem_whilo_i;
  input mem_cp0_reg_we_i;
  input rst_IBUF;
  input [0:0]\id_inst_reg[23] ;
  input \id_inst_reg[21] ;
  input [2:0]\id_inst_reg[18] ;
  input \ex_aluop_reg[6] ;
  input [0:0]\ex_reg1_reg[23] ;
  input \ex_aluop_reg[4] ;
  input [0:0]mem_cp0_reg_data_o;
  input mem_cp0_reg_we_reg;
  input [31:0]mem_cp0_reg_data_i;
  input mem_whilo_o;
  input [31:0]D;
  input [31:0]\lo_o_reg[31] ;
  input \wb_cp0_reg_write_addr_reg[0]_0 ;
  input [31:0]\mem_hi_reg[31] ;
  input [31:0]\hi_o_reg[31]_0 ;
  input [3:0]mem_wd_i;
  input [31:0]mem_wdata_i;
  input [0:0]E;
  input [2:0]mem_cp0_reg_write_addr_i;

  wire CLK;
  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire \ex_aluop_reg[4] ;
  wire \ex_aluop_reg[6] ;
  wire [0:0]\ex_reg1_reg[23] ;
  wire \ex_reg1_reg[26] ;
  wire \ex_reg2[30]_i_7_n_4 ;
  wire \ex_reg2_reg[4] ;
  wire \ex_reg2_reg[5] ;
  wire [31:0]\hi_o_reg[31] ;
  wire [31:0]\hi_o_reg[31]_0 ;
  wire [2:0]\id_inst_reg[18] ;
  wire \id_inst_reg[21] ;
  wire [0:0]\id_inst_reg[23] ;
  wire [31:0]\lo_o_reg[31] ;
  wire [31:0]mem_cp0_reg_data_i;
  wire [0:0]mem_cp0_reg_data_o;
  wire mem_cp0_reg_we_i;
  wire mem_cp0_reg_we_reg;
  wire [2:0]mem_cp0_reg_write_addr_i;
  wire \mem_excepttype_reg[11] ;
  wire [31:0]\mem_hi_reg[31] ;
  wire [3:0]mem_wd_i;
  wire [31:0]mem_wdata_i;
  wire \mem_wdata_reg[0] ;
  wire \mem_wdata_reg[0]_0 ;
  wire \mem_wdata_reg[10] ;
  wire \mem_wdata_reg[10]_0 ;
  wire \mem_wdata_reg[10]_1 ;
  wire \mem_wdata_reg[11] ;
  wire \mem_wdata_reg[11]_0 ;
  wire \mem_wdata_reg[12] ;
  wire \mem_wdata_reg[12]_0 ;
  wire \mem_wdata_reg[13] ;
  wire \mem_wdata_reg[13]_0 ;
  wire \mem_wdata_reg[14] ;
  wire \mem_wdata_reg[14]_0 ;
  wire \mem_wdata_reg[15] ;
  wire \mem_wdata_reg[15]_0 ;
  wire \mem_wdata_reg[16] ;
  wire \mem_wdata_reg[16]_0 ;
  wire \mem_wdata_reg[17] ;
  wire \mem_wdata_reg[17]_0 ;
  wire \mem_wdata_reg[18] ;
  wire \mem_wdata_reg[18]_0 ;
  wire \mem_wdata_reg[18]_1 ;
  wire \mem_wdata_reg[19] ;
  wire \mem_wdata_reg[19]_0 ;
  wire \mem_wdata_reg[1] ;
  wire \mem_wdata_reg[1]_0 ;
  wire \mem_wdata_reg[20] ;
  wire \mem_wdata_reg[20]_0 ;
  wire \mem_wdata_reg[21] ;
  wire \mem_wdata_reg[21]_0 ;
  wire \mem_wdata_reg[21]_1 ;
  wire \mem_wdata_reg[22] ;
  wire \mem_wdata_reg[22]_0 ;
  wire \mem_wdata_reg[23] ;
  wire \mem_wdata_reg[24] ;
  wire \mem_wdata_reg[24]_0 ;
  wire \mem_wdata_reg[25] ;
  wire \mem_wdata_reg[25]_0 ;
  wire \mem_wdata_reg[26] ;
  wire \mem_wdata_reg[26]_0 ;
  wire \mem_wdata_reg[27] ;
  wire \mem_wdata_reg[27]_0 ;
  wire \mem_wdata_reg[27]_1 ;
  wire \mem_wdata_reg[28] ;
  wire \mem_wdata_reg[28]_0 ;
  wire \mem_wdata_reg[28]_1 ;
  wire \mem_wdata_reg[29] ;
  wire \mem_wdata_reg[29]_0 ;
  wire \mem_wdata_reg[29]_1 ;
  wire \mem_wdata_reg[2] ;
  wire \mem_wdata_reg[2]_0 ;
  wire \mem_wdata_reg[30] ;
  wire \mem_wdata_reg[30]_0 ;
  wire \mem_wdata_reg[30]_1 ;
  wire [23:0]\mem_wdata_reg[31] ;
  wire \mem_wdata_reg[31]_0 ;
  wire \mem_wdata_reg[31]_1 ;
  wire \mem_wdata_reg[3] ;
  wire \mem_wdata_reg[3]_0 ;
  wire \mem_wdata_reg[4] ;
  wire \mem_wdata_reg[4]_0 ;
  wire \mem_wdata_reg[5] ;
  wire \mem_wdata_reg[5]_0 ;
  wire \mem_wdata_reg[6] ;
  wire \mem_wdata_reg[6]_0 ;
  wire \mem_wdata_reg[7] ;
  wire \mem_wdata_reg[7]_0 ;
  wire \mem_wdata_reg[8] ;
  wire \mem_wdata_reg[8]_0 ;
  wire \mem_wdata_reg[9] ;
  wire \mem_wdata_reg[9]_0 ;
  wire mem_whilo_i;
  wire mem_whilo_o;
  wire mem_wreg_i;
  wire rst_IBUF;
  wire [30:10]wb_cp0_reg_data_i;
  wire wb_cp0_reg_we_i;
  wire [2:0]wb_cp0_reg_write_addr_i;
  wire \wb_cp0_reg_write_addr_reg[0]_0 ;
  wire [3:0]wb_wd_i;
  wire [31:0]wb_wdata_i;
  wire wb_whilo_i;
  wire wb_wreg_i;
  wire \wdata_o_reg[10]_i_12_n_4 ;
  wire \wdata_o_reg[23]_i_15_n_4 ;
  wire \wdata_o_reg[23]_i_16_n_4 ;
  wire \wdata_o_reg[23]_i_17_n_4 ;

  LUT6 #(
    .INIT(64'h00004B0000000000)) 
    \ex_reg1[26]_i_7 
       (.I0(rst_IBUF),
        .I1(\id_inst_reg[23] ),
        .I2(wb_wd_i[2]),
        .I3(\id_inst_reg[21] ),
        .I4(wb_wd_i[3]),
        .I5(wb_wreg_i),
        .O(\ex_reg1_reg[26] ));
  LUT3 #(
    .INIT(8'h20)) 
    \ex_reg2[30]_i_6 
       (.I0(\ex_reg2[30]_i_7_n_4 ),
        .I1(wb_wd_i[3]),
        .I2(wb_wreg_i),
        .O(\ex_reg2_reg[4] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \ex_reg2[30]_i_7 
       (.I0(wb_wd_i[1]),
        .I1(\id_inst_reg[18] [1]),
        .I2(wb_wd_i[0]),
        .I3(\id_inst_reg[18] [0]),
        .I4(wb_wd_i[2]),
        .I5(\id_inst_reg[18] [2]),
        .O(\ex_reg2[30]_i_7_n_4 ));
  LUT6 #(
    .INIT(64'h00000000F0F0F0E0)) 
    register_reg_r1_0_31_0_5_i_1
       (.I0(wb_wd_i[0]),
        .I1(wb_wd_i[2]),
        .I2(wb_wreg_i),
        .I3(wb_wd_i[1]),
        .I4(wb_wd_i[3]),
        .I5(rst_IBUF),
        .O(\ex_reg2_reg[5] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[0]),
        .Q(\mem_wdata_reg[31] [0]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[10]),
        .Q(wb_cp0_reg_data_i[10]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[11]),
        .Q(\mem_wdata_reg[31] [10]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[12]),
        .Q(\mem_wdata_reg[31] [11]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[13]),
        .Q(\mem_wdata_reg[31] [12]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[14]),
        .Q(\mem_wdata_reg[31] [13]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[15]),
        .Q(\mem_wdata_reg[31] [14]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[16]),
        .Q(\mem_wdata_reg[31] [15]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[17]),
        .Q(\mem_wdata_reg[31] [16]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[18]),
        .Q(wb_cp0_reg_data_i[18]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[19]),
        .Q(\mem_wdata_reg[31] [17]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[1]),
        .Q(\mem_wdata_reg[31] [1]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[20]),
        .Q(\mem_wdata_reg[31] [18]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[21]),
        .Q(wb_cp0_reg_data_i[21]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[22]),
        .Q(\mem_wdata_reg[31] [19]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[23]),
        .Q(wb_cp0_reg_data_i[23]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[24]),
        .Q(\mem_wdata_reg[31] [20]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[25]),
        .Q(\mem_wdata_reg[31] [21]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[26]),
        .Q(\mem_wdata_reg[31] [22]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[27]),
        .Q(wb_cp0_reg_data_i[27]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[28]),
        .Q(wb_cp0_reg_data_i[28]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[29]),
        .Q(wb_cp0_reg_data_i[29]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[2]),
        .Q(\mem_wdata_reg[31] [2]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[30]),
        .Q(wb_cp0_reg_data_i[30]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[31]),
        .Q(\mem_wdata_reg[31] [23]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[3]),
        .Q(\mem_wdata_reg[31] [3]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[4]),
        .Q(\mem_wdata_reg[31] [4]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[5]),
        .Q(\mem_wdata_reg[31] [5]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[6]),
        .Q(\mem_wdata_reg[31] [6]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[7]),
        .Q(\mem_wdata_reg[31] [7]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[8]),
        .Q(\mem_wdata_reg[31] [8]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_data_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_data_i[9]),
        .Q(\mem_wdata_reg[31] [9]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    wb_cp0_reg_we_reg
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_we_i),
        .Q(wb_cp0_reg_we_i),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_write_addr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_write_addr_i[0]),
        .Q(wb_cp0_reg_write_addr_i[0]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_write_addr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_write_addr_i[1]),
        .Q(wb_cp0_reg_write_addr_i[1]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_cp0_reg_write_addr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_cp0_reg_write_addr_i[2]),
        .Q(wb_cp0_reg_write_addr_i[2]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [0]),
        .Q(\hi_o_reg[31] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [10]),
        .Q(\hi_o_reg[31] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [11]),
        .Q(\hi_o_reg[31] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [12]),
        .Q(\hi_o_reg[31] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [13]),
        .Q(\hi_o_reg[31] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [14]),
        .Q(\hi_o_reg[31] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [15]),
        .Q(\hi_o_reg[31] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [16]),
        .Q(\hi_o_reg[31] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [17]),
        .Q(\hi_o_reg[31] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [18]),
        .Q(\hi_o_reg[31] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [19]),
        .Q(\hi_o_reg[31] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [1]),
        .Q(\hi_o_reg[31] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [20]),
        .Q(\hi_o_reg[31] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [21]),
        .Q(\hi_o_reg[31] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [22]),
        .Q(\hi_o_reg[31] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [23]),
        .Q(\hi_o_reg[31] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [24]),
        .Q(\hi_o_reg[31] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [25]),
        .Q(\hi_o_reg[31] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [26]),
        .Q(\hi_o_reg[31] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [27]),
        .Q(\hi_o_reg[31] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[28] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [28]),
        .Q(\hi_o_reg[31] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[29] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [29]),
        .Q(\hi_o_reg[31] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [2]),
        .Q(\hi_o_reg[31] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[30] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [30]),
        .Q(\hi_o_reg[31] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[31] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [31]),
        .Q(\hi_o_reg[31] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [3]),
        .Q(\hi_o_reg[31] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [4]),
        .Q(\hi_o_reg[31] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [5]),
        .Q(\hi_o_reg[31] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [6]),
        .Q(\hi_o_reg[31] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [7]),
        .Q(\hi_o_reg[31] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [8]),
        .Q(\hi_o_reg[31] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_hi_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(\mem_hi_reg[31] [9]),
        .Q(\hi_o_reg[31] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[28] 
       (.C(CLK),
        .CE(E),
        .D(D[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[29] 
       (.C(CLK),
        .CE(E),
        .D(D[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[30] 
       (.C(CLK),
        .CE(E),
        .D(D[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[31] 
       (.C(CLK),
        .CE(E),
        .D(D[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_lo_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wd_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wd_i[0]),
        .Q(wb_wd_i[0]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wd_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wd_i[1]),
        .Q(wb_wd_i[1]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wd_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wd_i[2]),
        .Q(wb_wd_i[2]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wd_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wd_i[3]),
        .Q(wb_wd_i[3]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[0]),
        .Q(wb_wdata_i[0]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[10]),
        .Q(wb_wdata_i[10]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[11]),
        .Q(wb_wdata_i[11]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[12]),
        .Q(wb_wdata_i[12]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[13]),
        .Q(wb_wdata_i[13]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[14]),
        .Q(wb_wdata_i[14]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[15]),
        .Q(wb_wdata_i[15]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[16]),
        .Q(wb_wdata_i[16]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[17]),
        .Q(wb_wdata_i[17]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[18]),
        .Q(wb_wdata_i[18]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[19]),
        .Q(wb_wdata_i[19]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[1]),
        .Q(wb_wdata_i[1]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[20]),
        .Q(wb_wdata_i[20]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[21]),
        .Q(wb_wdata_i[21]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[22]),
        .Q(wb_wdata_i[22]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[23]),
        .Q(wb_wdata_i[23]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[24]),
        .Q(wb_wdata_i[24]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[25]),
        .Q(wb_wdata_i[25]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[26]),
        .Q(wb_wdata_i[26]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[27]),
        .Q(wb_wdata_i[27]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[28]),
        .Q(wb_wdata_i[28]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[29]),
        .Q(wb_wdata_i[29]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[2]),
        .Q(wb_wdata_i[2]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[30]),
        .Q(wb_wdata_i[30]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[31]),
        .Q(wb_wdata_i[31]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[3]),
        .Q(wb_wdata_i[3]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[4]),
        .Q(wb_wdata_i[4]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[5]),
        .Q(wb_wdata_i[5]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[6]),
        .Q(wb_wdata_i[6]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[7]),
        .Q(wb_wdata_i[7]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[8]),
        .Q(wb_wdata_i[8]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wdata_i[9]),
        .Q(wb_wdata_i[9]),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    wb_whilo_reg
       (.C(CLK),
        .CE(1'b1),
        .D(mem_whilo_i),
        .Q(wb_whilo_i),
        .R(\mem_excepttype_reg[11] ));
  FDRE #(
    .INIT(1'b0)) 
    wb_wreg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(mem_wreg_i),
        .Q(wb_wreg_i),
        .R(\mem_excepttype_reg[11] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[0]_i_10 
       (.I0(\mem_hi_reg[31] [0]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [0]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [0]),
        .O(\mem_wdata_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[0]_i_8 
       (.I0(Q[0]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [0]),
        .I3(D[0]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[0] ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[10]_i_12 
       (.I0(Q[10]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [10]),
        .I3(D[10]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\wdata_o_reg[10]_i_12_n_4 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[10]_i_7 
       (.I0(\mem_hi_reg[31] [10]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [10]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [10]),
        .O(\mem_wdata_reg[10]_1 ));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \wdata_o_reg[10]_i_8 
       (.I0(\wdata_o_reg[10]_i_12_n_4 ),
        .I1(\ex_aluop_reg[4] ),
        .I2(mem_cp0_reg_data_o),
        .I3(mem_cp0_reg_we_reg),
        .I4(wb_cp0_reg_data_i[10]),
        .I5(\mem_wdata_reg[10]_0 ),
        .O(\mem_wdata_reg[10] ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[11]_i_19 
       (.I0(Q[11]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [11]),
        .I3(D[11]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[11] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[11]_i_21 
       (.I0(\mem_hi_reg[31] [11]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [11]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [11]),
        .O(\mem_wdata_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[12]_i_10 
       (.I0(Q[12]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [12]),
        .I3(D[12]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[12] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[12]_i_12 
       (.I0(\mem_hi_reg[31] [12]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [12]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [12]),
        .O(\mem_wdata_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[13]_i_14 
       (.I0(Q[13]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [13]),
        .I3(D[13]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[13] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[13]_i_16 
       (.I0(\mem_hi_reg[31] [13]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [13]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [13]),
        .O(\mem_wdata_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[14]_i_10 
       (.I0(Q[14]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [14]),
        .I3(D[14]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[14] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[14]_i_12 
       (.I0(\mem_hi_reg[31] [14]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [14]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [14]),
        .O(\mem_wdata_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[15]_i_15 
       (.I0(Q[15]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [15]),
        .I3(D[15]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[15] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[15]_i_17 
       (.I0(\mem_hi_reg[31] [15]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [15]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [15]),
        .O(\mem_wdata_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[16]_i_11 
       (.I0(\mem_hi_reg[31] [16]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [16]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [16]),
        .O(\mem_wdata_reg[16]_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[16]_i_9 
       (.I0(Q[16]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [16]),
        .I3(D[16]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[16] ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[17]_i_14 
       (.I0(Q[17]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [17]),
        .I3(D[17]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[17] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[17]_i_16 
       (.I0(\mem_hi_reg[31] [17]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [17]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [17]),
        .O(\mem_wdata_reg[17]_0 ));
  LUT6 #(
    .INIT(64'h4747474700FF4747)) 
    \wdata_o_reg[18]_i_10 
       (.I0(Q[18]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [18]),
        .I3(D[18]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[18]_1 ));
  LUT6 #(
    .INIT(64'h0000000002F20202)) 
    \wdata_o_reg[18]_i_11 
       (.I0(wb_cp0_reg_data_i[18]),
        .I1(\mem_wdata_reg[10]_0 ),
        .I2(mem_cp0_reg_we_reg),
        .I3(rst_IBUF),
        .I4(mem_cp0_reg_data_i[18]),
        .I5(\ex_aluop_reg[4] ),
        .O(\mem_wdata_reg[18] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[18]_i_13 
       (.I0(\mem_hi_reg[31] [18]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [18]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [18]),
        .O(\mem_wdata_reg[18]_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[19]_i_21 
       (.I0(Q[19]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [19]),
        .I3(D[19]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[19] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[19]_i_23 
       (.I0(\mem_hi_reg[31] [19]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [19]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [19]),
        .O(\mem_wdata_reg[19]_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[1]_i_15 
       (.I0(Q[1]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [1]),
        .I3(D[1]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[1]_i_17 
       (.I0(\mem_hi_reg[31] [1]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [1]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [1]),
        .O(\mem_wdata_reg[1] ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[20]_i_10 
       (.I0(Q[20]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [20]),
        .I3(D[20]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[20] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[20]_i_12 
       (.I0(\mem_hi_reg[31] [20]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [20]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [20]),
        .O(\mem_wdata_reg[20]_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[21]_i_13 
       (.I0(\mem_hi_reg[31] [21]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [21]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [21]),
        .O(\mem_wdata_reg[21]_0 ));
  LUT6 #(
    .INIT(64'h4747474700FF4747)) 
    \wdata_o_reg[21]_i_7 
       (.I0(Q[21]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [21]),
        .I3(D[21]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[21]_1 ));
  LUT6 #(
    .INIT(64'h0000000002F20202)) 
    \wdata_o_reg[21]_i_8 
       (.I0(wb_cp0_reg_data_i[21]),
        .I1(\mem_wdata_reg[10]_0 ),
        .I2(mem_cp0_reg_we_reg),
        .I3(rst_IBUF),
        .I4(mem_cp0_reg_data_i[21]),
        .I5(\ex_aluop_reg[4] ),
        .O(\mem_wdata_reg[21] ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[22]_i_10 
       (.I0(Q[22]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [22]),
        .I3(D[22]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[22] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[22]_i_12 
       (.I0(\mem_hi_reg[31] [22]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [22]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [22]),
        .O(\mem_wdata_reg[22]_0 ));
  LUT6 #(
    .INIT(64'h0000000002F20202)) 
    \wdata_o_reg[23]_i_15 
       (.I0(wb_cp0_reg_data_i[23]),
        .I1(\mem_wdata_reg[10]_0 ),
        .I2(mem_cp0_reg_we_reg),
        .I3(rst_IBUF),
        .I4(mem_cp0_reg_data_i[23]),
        .I5(\ex_aluop_reg[4] ),
        .O(\wdata_o_reg[23]_i_15_n_4 ));
  LUT6 #(
    .INIT(64'h4747474700FF4747)) 
    \wdata_o_reg[23]_i_16 
       (.I0(Q[23]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [23]),
        .I3(D[23]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\wdata_o_reg[23]_i_16_n_4 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[23]_i_17 
       (.I0(\mem_hi_reg[31] [23]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [23]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [23]),
        .O(\wdata_o_reg[23]_i_17_n_4 ));
  LUT6 #(
    .INIT(64'hBFB0AFAFBFB0A0A0)) 
    \wdata_o_reg[23]_i_7 
       (.I0(\wdata_o_reg[23]_i_15_n_4 ),
        .I1(\wdata_o_reg[23]_i_16_n_4 ),
        .I2(\ex_aluop_reg[6] ),
        .I3(\ex_reg1_reg[23] ),
        .I4(\ex_aluop_reg[4] ),
        .I5(\wdata_o_reg[23]_i_17_n_4 ),
        .O(\mem_wdata_reg[23] ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[24]_i_10 
       (.I0(Q[24]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [24]),
        .I3(D[24]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[24] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[24]_i_12 
       (.I0(\mem_hi_reg[31] [24]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [24]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [24]),
        .O(\mem_wdata_reg[24]_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[25]_i_10 
       (.I0(Q[25]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [25]),
        .I3(D[25]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[25] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[25]_i_12 
       (.I0(\mem_hi_reg[31] [25]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [25]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [25]),
        .O(\mem_wdata_reg[25]_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[26]_i_14 
       (.I0(Q[26]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [26]),
        .I3(D[26]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[26] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[26]_i_17 
       (.I0(\mem_hi_reg[31] [26]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [26]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [26]),
        .O(\mem_wdata_reg[26]_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[27]_i_14 
       (.I0(\mem_hi_reg[31] [27]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [27]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [27]),
        .O(\mem_wdata_reg[27]_1 ));
  LUT6 #(
    .INIT(64'h22277727FFFFFFFF)) 
    \wdata_o_reg[27]_i_6 
       (.I0(mem_whilo_o),
        .I1(D[27]),
        .I2(\lo_o_reg[31] [27]),
        .I3(wb_whilo_i),
        .I4(Q[27]),
        .I5(\ex_aluop_reg[4] ),
        .O(\mem_wdata_reg[27]_0 ));
  LUT6 #(
    .INIT(64'h0000000002F20202)) 
    \wdata_o_reg[27]_i_7 
       (.I0(wb_cp0_reg_data_i[27]),
        .I1(\mem_wdata_reg[10]_0 ),
        .I2(mem_cp0_reg_we_reg),
        .I3(rst_IBUF),
        .I4(mem_cp0_reg_data_i[27]),
        .I5(\ex_aluop_reg[4] ),
        .O(\mem_wdata_reg[27] ));
  LUT6 #(
    .INIT(64'h22277727FFFFFFFF)) 
    \wdata_o_reg[28]_i_5 
       (.I0(mem_whilo_o),
        .I1(D[28]),
        .I2(\lo_o_reg[31] [28]),
        .I3(wb_whilo_i),
        .I4(Q[28]),
        .I5(\ex_aluop_reg[4] ),
        .O(\mem_wdata_reg[28]_0 ));
  LUT6 #(
    .INIT(64'h0000000002F20202)) 
    \wdata_o_reg[28]_i_6 
       (.I0(wb_cp0_reg_data_i[28]),
        .I1(\mem_wdata_reg[10]_0 ),
        .I2(mem_cp0_reg_we_reg),
        .I3(rst_IBUF),
        .I4(mem_cp0_reg_data_i[28]),
        .I5(\ex_aluop_reg[4] ),
        .O(\mem_wdata_reg[28] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[28]_i_9 
       (.I0(\mem_hi_reg[31] [28]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [28]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [28]),
        .O(\mem_wdata_reg[28]_1 ));
  LUT6 #(
    .INIT(64'h22277727FFFFFFFF)) 
    \wdata_o_reg[29]_i_5 
       (.I0(mem_whilo_o),
        .I1(D[29]),
        .I2(\lo_o_reg[31] [29]),
        .I3(wb_whilo_i),
        .I4(Q[29]),
        .I5(\ex_aluop_reg[4] ),
        .O(\mem_wdata_reg[29]_0 ));
  LUT6 #(
    .INIT(64'h0000000002F20202)) 
    \wdata_o_reg[29]_i_6 
       (.I0(wb_cp0_reg_data_i[29]),
        .I1(\mem_wdata_reg[10]_0 ),
        .I2(mem_cp0_reg_we_reg),
        .I3(rst_IBUF),
        .I4(mem_cp0_reg_data_i[29]),
        .I5(\ex_aluop_reg[4] ),
        .O(\mem_wdata_reg[29] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[29]_i_9 
       (.I0(\mem_hi_reg[31] [29]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [29]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [29]),
        .O(\mem_wdata_reg[29]_1 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[2]_i_10 
       (.I0(Q[2]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [2]),
        .I3(D[2]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[2]_i_12 
       (.I0(\mem_hi_reg[31] [2]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [2]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [2]),
        .O(\mem_wdata_reg[2] ));
  LUT2 #(
    .INIT(4'h7)) 
    \wdata_o_reg[30]_i_16 
       (.I0(wb_cp0_reg_we_i),
        .I1(\wb_cp0_reg_write_addr_reg[0]_0 ),
        .O(\mem_wdata_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[30]_i_18 
       (.I0(\mem_hi_reg[31] [30]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [30]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [30]),
        .O(\mem_wdata_reg[30]_1 ));
  LUT6 #(
    .INIT(64'h22277727FFFFFFFF)) 
    \wdata_o_reg[30]_i_8 
       (.I0(mem_whilo_o),
        .I1(D[30]),
        .I2(\lo_o_reg[31] [30]),
        .I3(wb_whilo_i),
        .I4(Q[30]),
        .I5(\ex_aluop_reg[4] ),
        .O(\mem_wdata_reg[30]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFB0BFBFB)) 
    \wdata_o_reg[30]_i_9 
       (.I0(\mem_wdata_reg[10]_0 ),
        .I1(wb_cp0_reg_data_i[30]),
        .I2(mem_cp0_reg_we_reg),
        .I3(rst_IBUF),
        .I4(mem_cp0_reg_data_i[30]),
        .I5(\ex_aluop_reg[4] ),
        .O(\mem_wdata_reg[30] ));
  LUT6 #(
    .INIT(64'h4747474700FF4747)) 
    \wdata_o_reg[31]_i_24 
       (.I0(Q[31]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [31]),
        .I3(D[31]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[31]_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[31]_i_25 
       (.I0(\mem_hi_reg[31] [31]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [31]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [31]),
        .O(\mem_wdata_reg[31]_1 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[3]_i_16 
       (.I0(Q[3]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [3]),
        .I3(D[3]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[3]_i_18 
       (.I0(\mem_hi_reg[31] [3]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [3]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [3]),
        .O(\mem_wdata_reg[3] ));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \wdata_o_reg[4]_i_10 
       (.I0(D[4]),
        .I1(Q[4]),
        .I2(wb_whilo_i),
        .I3(\lo_o_reg[31] [4]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[4]_i_12 
       (.I0(\mem_hi_reg[31] [4]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [4]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [4]),
        .O(\mem_wdata_reg[4] ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[5]_i_10 
       (.I0(Q[5]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [5]),
        .I3(D[5]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[5] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[5]_i_12 
       (.I0(\mem_hi_reg[31] [5]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [5]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [5]),
        .O(\mem_wdata_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[6]_i_15 
       (.I0(Q[6]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [6]),
        .I3(D[6]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[6] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[6]_i_17 
       (.I0(\mem_hi_reg[31] [6]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [6]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [6]),
        .O(\mem_wdata_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[7]_i_11 
       (.I0(Q[7]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [7]),
        .I3(D[7]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[7] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[7]_i_13 
       (.I0(\mem_hi_reg[31] [7]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [7]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [7]),
        .O(\mem_wdata_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[8]_i_10 
       (.I0(Q[8]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [8]),
        .I3(D[8]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[8] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[8]_i_12 
       (.I0(\mem_hi_reg[31] [8]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [8]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [8]),
        .O(\mem_wdata_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF00B8B8)) 
    \wdata_o_reg[9]_i_14 
       (.I0(Q[9]),
        .I1(wb_whilo_i),
        .I2(\lo_o_reg[31] [9]),
        .I3(D[9]),
        .I4(mem_whilo_i),
        .I5(rst_IBUF),
        .O(\mem_wdata_reg[9] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \wdata_o_reg[9]_i_16 
       (.I0(\mem_hi_reg[31] [9]),
        .I1(mem_whilo_i),
        .I2(rst_IBUF),
        .I3(\hi_o_reg[31] [9]),
        .I4(wb_whilo_i),
        .I5(\hi_o_reg[31]_0 [9]),
        .O(\mem_wdata_reg[9]_0 ));
endmodule

(* NotValidForBitStream *)
module openmips_min_sopc
   (clk,
    rst,
    debug,
    led);
  input clk;
  input rst;
  input [4:0]debug;
  output [31:0]led;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [4:0]debug;
  wire [31:0]led;
  wire [31:0]led_OBUF;
  wire n_0_468_BUFG;
  wire n_0_468_BUFG_inst_n_1;
  wire n_1_934_BUFG;
  wire n_1_934_BUFG_inst_n_2;
  wire n_2_498_BUFG;
  wire n_2_498_BUFG_inst_n_3;
  wire n_3_499_BUFG;
  wire n_3_499_BUFG_inst_n_4;
  wire rst;
  wire rst_IBUF;
  wire rst_IBUF_BUFG;

initial begin
 $sdf_annotate("openmips_min_sopc_tb_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  cpu cpu0
       (.CLK(clk_IBUF_BUFG),
        .E(n_1_934_BUFG),
        .debug(led_OBUF[31:27]),
        .debugdata0(led_OBUF[26:0]),
        .\ex_aluop_reg[1] (n_3_499_BUFG),
        .\ex_aluop_reg[1]_0 (n_0_468_BUFG),
        .\ex_aluop_reg[5] (n_2_498_BUFG),
        .n_0_468_BUFG_inst_n_1(n_0_468_BUFG_inst_n_1),
        .n_1_934_BUFG_inst_n_2(n_1_934_BUFG_inst_n_2),
        .n_2_498_BUFG_inst_n_3(n_2_498_BUFG_inst_n_3),
        .n_3_499_BUFG_inst_n_4(n_3_499_BUFG_inst_n_4),
        .rst(rst_IBUF_BUFG),
        .rst_IBUF(rst_IBUF));
  IBUF \debug_IBUF[0]_inst 
       (.I(debug[0]),
        .O(led_OBUF[27]));
  IBUF \debug_IBUF[1]_inst 
       (.I(debug[1]),
        .O(led_OBUF[28]));
  IBUF \debug_IBUF[2]_inst 
       (.I(debug[2]),
        .O(led_OBUF[29]));
  IBUF \debug_IBUF[3]_inst 
       (.I(debug[3]),
        .O(led_OBUF[30]));
  IBUF \debug_IBUF[4]_inst 
       (.I(debug[4]),
        .O(led_OBUF[31]));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  OBUF \led_OBUF[16]_inst 
       (.I(led_OBUF[16]),
        .O(led[16]));
  OBUF \led_OBUF[17]_inst 
       (.I(led_OBUF[17]),
        .O(led[17]));
  OBUF \led_OBUF[18]_inst 
       (.I(led_OBUF[18]),
        .O(led[18]));
  OBUF \led_OBUF[19]_inst 
       (.I(led_OBUF[19]),
        .O(led[19]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[20]_inst 
       (.I(led_OBUF[20]),
        .O(led[20]));
  OBUF \led_OBUF[21]_inst 
       (.I(led_OBUF[21]),
        .O(led[21]));
  OBUF \led_OBUF[22]_inst 
       (.I(led_OBUF[22]),
        .O(led[22]));
  OBUF \led_OBUF[23]_inst 
       (.I(led_OBUF[23]),
        .O(led[23]));
  OBUF \led_OBUF[24]_inst 
       (.I(led_OBUF[24]),
        .O(led[24]));
  OBUF \led_OBUF[25]_inst 
       (.I(led_OBUF[25]),
        .O(led[25]));
  OBUF \led_OBUF[26]_inst 
       (.I(led_OBUF[26]),
        .O(led[26]));
  OBUF \led_OBUF[27]_inst 
       (.I(led_OBUF[27]),
        .O(led[27]));
  OBUF \led_OBUF[28]_inst 
       (.I(led_OBUF[28]),
        .O(led[28]));
  OBUF \led_OBUF[29]_inst 
       (.I(led_OBUF[29]),
        .O(led[29]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[30]_inst 
       (.I(led_OBUF[30]),
        .O(led[30]));
  OBUF \led_OBUF[31]_inst 
       (.I(led_OBUF[31]),
        .O(led[31]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  BUFG n_0_468_BUFG_inst
       (.I(n_0_468_BUFG_inst_n_1),
        .O(n_0_468_BUFG));
  BUFG n_1_934_BUFG_inst
       (.I(n_1_934_BUFG_inst_n_2),
        .O(n_1_934_BUFG));
  BUFG n_2_498_BUFG_inst
       (.I(n_2_498_BUFG_inst_n_3),
        .O(n_2_498_BUFG));
  BUFG n_3_499_BUFG_inst
       (.I(n_3_499_BUFG_inst_n_4),
        .O(n_3_499_BUFG));
  BUFG rst_IBUF_BUFG_inst
       (.I(rst_IBUF),
        .O(rst_IBUF_BUFG));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule

module pc_rom
   (S,
    \pc_reg[24]_0 ,
    \pc_reg[28]_0 ,
    \pc_reg[31]_0 ,
    \id_inst_reg[28] ,
    Q,
    pc0,
    \id_pc_reg[31] ,
    rst,
    E,
    D,
    CLK);
  output [1:0]S;
  output [3:0]\pc_reg[24]_0 ;
  output [3:0]\pc_reg[28]_0 ;
  output [2:0]\pc_reg[31]_0 ;
  output [16:0]\id_inst_reg[28] ;
  output [31:0]Q;
  output [30:0]pc0;
  input [13:0]\id_pc_reg[31] ;
  input rst;
  input [0:0]E;
  input [31:0]D;
  input CLK;

  wire CLK;
  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [1:0]S;
  wire [16:0]\id_inst_reg[28] ;
  wire [13:0]\id_pc_reg[31] ;
  wire [30:0]pc0;
  wire \pc[4]_i_5_n_4 ;
  wire \pc_reg[12]_i_2_n_4 ;
  wire \pc_reg[12]_i_2_n_5 ;
  wire \pc_reg[12]_i_2_n_6 ;
  wire \pc_reg[12]_i_2_n_7 ;
  wire \pc_reg[16]_i_2_n_4 ;
  wire \pc_reg[16]_i_2_n_5 ;
  wire \pc_reg[16]_i_2_n_6 ;
  wire \pc_reg[16]_i_2_n_7 ;
  wire \pc_reg[20]_i_2_n_4 ;
  wire \pc_reg[20]_i_2_n_5 ;
  wire \pc_reg[20]_i_2_n_6 ;
  wire \pc_reg[20]_i_2_n_7 ;
  wire [3:0]\pc_reg[24]_0 ;
  wire \pc_reg[24]_i_2_n_4 ;
  wire \pc_reg[24]_i_2_n_5 ;
  wire \pc_reg[24]_i_2_n_6 ;
  wire \pc_reg[24]_i_2_n_7 ;
  wire [3:0]\pc_reg[28]_0 ;
  wire \pc_reg[28]_i_2_n_4 ;
  wire \pc_reg[28]_i_2_n_5 ;
  wire \pc_reg[28]_i_2_n_6 ;
  wire \pc_reg[28]_i_2_n_7 ;
  wire [2:0]\pc_reg[31]_0 ;
  wire \pc_reg[31]_i_3_n_6 ;
  wire \pc_reg[31]_i_3_n_7 ;
  wire \pc_reg[4]_i_2_n_4 ;
  wire \pc_reg[4]_i_2_n_5 ;
  wire \pc_reg[4]_i_2_n_6 ;
  wire \pc_reg[4]_i_2_n_7 ;
  wire \pc_reg[8]_i_2_n_4 ;
  wire \pc_reg[8]_i_2_n_5 ;
  wire \pc_reg[8]_i_2_n_6 ;
  wire \pc_reg[8]_i_2_n_7 ;
  wire rst;
  wire [3:2]\NLW_pc_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_pc_reg[31]_i_3_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'h1107)) 
    \id_inst[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[2]),
        .O(\id_inst_reg[28] [0]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h2434)) 
    \id_inst[11]_i_1 
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[2]),
        .O(\id_inst_reg[28] [6]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \id_inst[12]_i_1 
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(\id_inst_reg[28] [7]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'h114F)) 
    \id_inst[16]_i_1 
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[3]),
        .O(\id_inst_reg[28] [8]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'h1404)) 
    \id_inst[17]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\id_inst_reg[28] [9]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \id_inst[18]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(\id_inst_reg[28] [10]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'h0464)) 
    \id_inst[1]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\id_inst_reg[28] [1]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \id_inst[21]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(\id_inst_reg[28] [11]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \id_inst[22]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[2]),
        .O(\id_inst_reg[28] [12]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \id_inst[23]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[5]),
        .O(\id_inst_reg[28] [13]));
  LUT2 #(
    .INIT(4'h1)) 
    \id_inst[26]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\id_inst_reg[28] [14]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'h4121)) 
    \id_inst[27]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\id_inst_reg[28] [15]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \id_inst[28]_i_1 
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[4]),
        .O(\id_inst_reg[28] [16]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h0420)) 
    \id_inst[3]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\id_inst_reg[28] [2]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \id_inst[4]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\id_inst_reg[28] [3]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h0626)) 
    \id_inst[5]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\id_inst_reg[28] [4]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'h5111)) 
    \id_inst[8]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\id_inst_reg[28] [5]));
  LUT2 #(
    .INIT(4'h9)) 
    \pc[20]_i_6 
       (.I0(\id_pc_reg[31] [1]),
        .I1(\id_pc_reg[31] [2]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    \pc[20]_i_7 
       (.I0(\id_pc_reg[31] [0]),
        .I1(\id_pc_reg[31] [1]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \pc[24]_i_6 
       (.I0(\id_pc_reg[31] [5]),
        .I1(\id_pc_reg[31] [6]),
        .O(\pc_reg[24]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    \pc[24]_i_7 
       (.I0(\id_pc_reg[31] [4]),
        .I1(\id_pc_reg[31] [5]),
        .O(\pc_reg[24]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \pc[24]_i_8 
       (.I0(\id_pc_reg[31] [3]),
        .I1(\id_pc_reg[31] [4]),
        .O(\pc_reg[24]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \pc[24]_i_9 
       (.I0(\id_pc_reg[31] [2]),
        .I1(\id_pc_reg[31] [3]),
        .O(\pc_reg[24]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    \pc[28]_i_6 
       (.I0(\id_pc_reg[31] [9]),
        .I1(\id_pc_reg[31] [10]),
        .O(\pc_reg[28]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    \pc[28]_i_7 
       (.I0(\id_pc_reg[31] [8]),
        .I1(\id_pc_reg[31] [9]),
        .O(\pc_reg[28]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \pc[28]_i_8 
       (.I0(\id_pc_reg[31] [7]),
        .I1(\id_pc_reg[31] [8]),
        .O(\pc_reg[28]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \pc[28]_i_9 
       (.I0(\id_pc_reg[31] [6]),
        .I1(\id_pc_reg[31] [7]),
        .O(\pc_reg[28]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    \pc[31]_i_13 
       (.I0(\id_pc_reg[31] [12]),
        .I1(\id_pc_reg[31] [13]),
        .O(\pc_reg[31]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \pc[31]_i_14 
       (.I0(\id_pc_reg[31] [11]),
        .I1(\id_pc_reg[31] [12]),
        .O(\pc_reg[31]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \pc[31]_i_15 
       (.I0(\id_pc_reg[31] [10]),
        .I1(\id_pc_reg[31] [11]),
        .O(\pc_reg[31]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    \pc[4]_i_5 
       (.I0(Q[2]),
        .O(\pc[4]_i_5_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(rst));
  CARRY4 \pc_reg[12]_i_2 
       (.CI(\pc_reg[8]_i_2_n_4 ),
        .CO({\pc_reg[12]_i_2_n_4 ,\pc_reg[12]_i_2_n_5 ,\pc_reg[12]_i_2_n_6 ,\pc_reg[12]_i_2_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc0[11:8]),
        .S(Q[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .R(rst));
  CARRY4 \pc_reg[16]_i_2 
       (.CI(\pc_reg[12]_i_2_n_4 ),
        .CO({\pc_reg[16]_i_2_n_4 ,\pc_reg[16]_i_2_n_5 ,\pc_reg[16]_i_2_n_6 ,\pc_reg[16]_i_2_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc0[15:12]),
        .S(Q[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(D[17]),
        .Q(Q[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(D[18]),
        .Q(Q[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(D[19]),
        .Q(Q[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(D[20]),
        .Q(Q[20]),
        .R(rst));
  CARRY4 \pc_reg[20]_i_2 
       (.CI(\pc_reg[16]_i_2_n_4 ),
        .CO({\pc_reg[20]_i_2_n_4 ,\pc_reg[20]_i_2_n_5 ,\pc_reg[20]_i_2_n_6 ,\pc_reg[20]_i_2_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc0[19:16]),
        .S(Q[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(D[21]),
        .Q(Q[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(D[22]),
        .Q(Q[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(D[23]),
        .Q(Q[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(D[24]),
        .Q(Q[24]),
        .R(rst));
  CARRY4 \pc_reg[24]_i_2 
       (.CI(\pc_reg[20]_i_2_n_4 ),
        .CO({\pc_reg[24]_i_2_n_4 ,\pc_reg[24]_i_2_n_5 ,\pc_reg[24]_i_2_n_6 ,\pc_reg[24]_i_2_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc0[23:20]),
        .S(Q[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(D[25]),
        .Q(Q[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(D[26]),
        .Q(Q[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(D[27]),
        .Q(Q[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[28] 
       (.C(CLK),
        .CE(E),
        .D(D[28]),
        .Q(Q[28]),
        .R(rst));
  CARRY4 \pc_reg[28]_i_2 
       (.CI(\pc_reg[24]_i_2_n_4 ),
        .CO({\pc_reg[28]_i_2_n_4 ,\pc_reg[28]_i_2_n_5 ,\pc_reg[28]_i_2_n_6 ,\pc_reg[28]_i_2_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc0[27:24]),
        .S(Q[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[29] 
       (.C(CLK),
        .CE(E),
        .D(D[29]),
        .Q(Q[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[30] 
       (.C(CLK),
        .CE(E),
        .D(D[30]),
        .Q(Q[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[31] 
       (.C(CLK),
        .CE(E),
        .D(D[31]),
        .Q(Q[31]),
        .R(rst));
  CARRY4 \pc_reg[31]_i_3 
       (.CI(\pc_reg[28]_i_2_n_4 ),
        .CO({\NLW_pc_reg[31]_i_3_CO_UNCONNECTED [3:2],\pc_reg[31]_i_3_n_6 ,\pc_reg[31]_i_3_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pc_reg[31]_i_3_O_UNCONNECTED [3],pc0[30:28]}),
        .S({1'b0,Q[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(rst));
  CARRY4 \pc_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\pc_reg[4]_i_2_n_4 ,\pc_reg[4]_i_2_n_5 ,\pc_reg[4]_i_2_n_6 ,\pc_reg[4]_i_2_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[2],1'b0}),
        .O(pc0[3:0]),
        .S({Q[4:3],\pc[4]_i_5_n_4 ,Q[1]}));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(rst));
  CARRY4 \pc_reg[8]_i_2 
       (.CI(\pc_reg[4]_i_2_n_4 ),
        .CO({\pc_reg[8]_i_2_n_4 ,\pc_reg[8]_i_2_n_5 ,\pc_reg[8]_i_2_n_6 ,\pc_reg[8]_i_2_n_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc0[7:4]),
        .S(Q[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(rst));
endmodule

module regfile
   (ex_wreg_reg,
    rdata20,
    ex_wreg_reg_0,
    rdata10,
    debugdata0,
    wb_wdata_i,
    \id_inst_reg[18] ,
    \wb_wd_reg[4] ,
    CLK,
    \wb_wd_reg[0] ,
    \id_inst_reg[18]_0 ,
    wb_wd_i,
    ADDRA,
    debug);
  output ex_wreg_reg;
  output [31:0]rdata20;
  output ex_wreg_reg_0;
  output [31:0]rdata10;
  output [26:0]debugdata0;
  input [31:0]wb_wdata_i;
  input \id_inst_reg[18] ;
  input \wb_wd_reg[4] ;
  input CLK;
  input \wb_wd_reg[0] ;
  input [2:0]\id_inst_reg[18]_0 ;
  input [3:0]wb_wd_i;
  input [2:0]ADDRA;
  input [4:0]debug;

  wire [2:0]ADDRA;
  wire CLK;
  wire [4:0]debug;
  wire [26:0]debugdata0;
  wire ex_wreg_reg;
  wire ex_wreg_reg_0;
  wire \id_inst_reg[18] ;
  wire [2:0]\id_inst_reg[18]_0 ;
  wire [31:0]rdata10;
  wire [31:0]rdata20;
  wire register_reg_r3_0_31_24_29_n_6;
  wire register_reg_r3_0_31_24_29_n_8;
  wire register_reg_r3_0_31_24_29_n_9;
  wire [3:0]wb_wd_i;
  wire \wb_wd_reg[0] ;
  wire \wb_wd_reg[4] ;
  wire [31:0]wb_wdata_i;
  wire wreg_o_reg_i_10_n_4;
  wire wreg_o_reg_i_11_n_4;
  wire wreg_o_reg_i_12_n_4;
  wire wreg_o_reg_i_13_n_4;
  wire wreg_o_reg_i_14_n_4;
  wire wreg_o_reg_i_15_n_4;
  wire wreg_o_reg_i_16_n_4;
  wire wreg_o_reg_i_17_n_4;
  wire wreg_o_reg_i_18_n_4;
  wire wreg_o_reg_i_19_n_4;
  wire wreg_o_reg_i_20_n_4;
  wire wreg_o_reg_i_21_n_4;
  wire wreg_o_reg_i_22_n_4;
  wire wreg_o_reg_i_23_n_4;
  wire wreg_o_reg_i_24_n_4;
  wire wreg_o_reg_i_25_n_4;
  wire wreg_o_reg_i_8_n_4;
  wire wreg_o_reg_i_9_n_4;
  wire [1:0]NLW_register_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r1_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_register_reg_r1_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_register_reg_r1_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r2_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_register_reg_r2_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_register_reg_r2_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r2_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r3_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r3_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r3_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r3_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r3_0_31_6_11_DOD_UNCONNECTED;

  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_UNIQ_BASE_ register_reg_r1_0_31_0_5
       (.ADDRA({1'b0,1'b0,\id_inst_reg[18]_0 }),
        .ADDRB({1'b0,1'b0,\id_inst_reg[18]_0 }),
        .ADDRC({1'b0,1'b0,\id_inst_reg[18]_0 }),
        .ADDRD({wb_wd_i[3],wb_wd_i}),
        .DIA(wb_wdata_i[1:0]),
        .DIB(wb_wdata_i[3:2]),
        .DIC(wb_wdata_i[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rdata20[1:0]),
        .DOB(rdata20[3:2]),
        .DOC(rdata20[5:4]),
        .DOD(NLW_register_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\wb_wd_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD17 register_reg_r1_0_31_12_17
       (.ADDRA({1'b0,1'b0,\id_inst_reg[18]_0 }),
        .ADDRB({1'b0,1'b0,\id_inst_reg[18]_0 }),
        .ADDRC({1'b0,1'b0,\id_inst_reg[18]_0 }),
        .ADDRD({wb_wd_i[3],wb_wd_i}),
        .DIA(wb_wdata_i[13:12]),
        .DIB(wb_wdata_i[15:14]),
        .DIC(wb_wdata_i[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rdata20[13:12]),
        .DOB(rdata20[15:14]),
        .DOC(rdata20[17:16]),
        .DOD(NLW_register_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\wb_wd_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD18 register_reg_r1_0_31_18_23
       (.ADDRA({1'b0,1'b0,\id_inst_reg[18]_0 }),
        .ADDRB({1'b0,1'b0,\id_inst_reg[18]_0 }),
        .ADDRC({1'b0,1'b0,\id_inst_reg[18]_0 }),
        .ADDRD({wb_wd_i[3],wb_wd_i}),
        .DIA(wb_wdata_i[19:18]),
        .DIB(wb_wdata_i[21:20]),
        .DIC(wb_wdata_i[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rdata20[19:18]),
        .DOB(rdata20[21:20]),
        .DOC(rdata20[23:22]),
        .DOD(NLW_register_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\wb_wd_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD19 register_reg_r1_0_31_24_29
       (.ADDRA({1'b0,1'b0,\id_inst_reg[18]_0 }),
        .ADDRB({1'b0,1'b0,\id_inst_reg[18]_0 }),
        .ADDRC({1'b0,1'b0,\id_inst_reg[18]_0 }),
        .ADDRD({wb_wd_i[3],wb_wd_i}),
        .DIA(wb_wdata_i[25:24]),
        .DIB(wb_wdata_i[27:26]),
        .DIC(wb_wdata_i[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rdata20[25:24]),
        .DOB(rdata20[27:26]),
        .DOC(rdata20[29:28]),
        .DOD(NLW_register_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\wb_wd_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD20 register_reg_r1_0_31_30_31
       (.ADDRA({1'b0,1'b0,\id_inst_reg[18]_0 }),
        .ADDRB({1'b0,1'b0,\id_inst_reg[18]_0 }),
        .ADDRC({1'b0,1'b0,\id_inst_reg[18]_0 }),
        .ADDRD({wb_wd_i[3],wb_wd_i}),
        .DIA(wb_wdata_i[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(rdata20[31:30]),
        .DOB(NLW_register_reg_r1_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_register_reg_r1_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_register_reg_r1_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\wb_wd_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD21 register_reg_r1_0_31_6_11
       (.ADDRA({1'b0,1'b0,\id_inst_reg[18]_0 }),
        .ADDRB({1'b0,1'b0,\id_inst_reg[18]_0 }),
        .ADDRC({1'b0,1'b0,\id_inst_reg[18]_0 }),
        .ADDRD({wb_wd_i[3],wb_wd_i}),
        .DIA(wb_wdata_i[7:6]),
        .DIB(wb_wdata_i[9:8]),
        .DIC(wb_wdata_i[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rdata20[7:6]),
        .DOB(rdata20[9:8]),
        .DOC(rdata20[11:10]),
        .DOD(NLW_register_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\wb_wd_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD22 register_reg_r2_0_31_0_5
       (.ADDRA({1'b0,1'b0,ADDRA}),
        .ADDRB({1'b0,1'b0,ADDRA}),
        .ADDRC({1'b0,1'b0,ADDRA}),
        .ADDRD({wb_wd_i[3],wb_wd_i}),
        .DIA(wb_wdata_i[1:0]),
        .DIB(wb_wdata_i[3:2]),
        .DIC(wb_wdata_i[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rdata10[1:0]),
        .DOB(rdata10[3:2]),
        .DOC(rdata10[5:4]),
        .DOD(NLW_register_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\wb_wd_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD23 register_reg_r2_0_31_12_17
       (.ADDRA({1'b0,1'b0,ADDRA}),
        .ADDRB({1'b0,1'b0,ADDRA}),
        .ADDRC({1'b0,1'b0,ADDRA}),
        .ADDRD({wb_wd_i[3],wb_wd_i}),
        .DIA(wb_wdata_i[13:12]),
        .DIB(wb_wdata_i[15:14]),
        .DIC(wb_wdata_i[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rdata10[13:12]),
        .DOB(rdata10[15:14]),
        .DOC(rdata10[17:16]),
        .DOD(NLW_register_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\wb_wd_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD24 register_reg_r2_0_31_18_23
       (.ADDRA({1'b0,1'b0,ADDRA}),
        .ADDRB({1'b0,1'b0,ADDRA}),
        .ADDRC({1'b0,1'b0,ADDRA}),
        .ADDRD({wb_wd_i[3],wb_wd_i}),
        .DIA(wb_wdata_i[19:18]),
        .DIB(wb_wdata_i[21:20]),
        .DIC(wb_wdata_i[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rdata10[19:18]),
        .DOB(rdata10[21:20]),
        .DOC(rdata10[23:22]),
        .DOD(NLW_register_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\wb_wd_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD25 register_reg_r2_0_31_24_29
       (.ADDRA({1'b0,1'b0,ADDRA}),
        .ADDRB({1'b0,1'b0,ADDRA}),
        .ADDRC({1'b0,1'b0,ADDRA}),
        .ADDRD({wb_wd_i[3],wb_wd_i}),
        .DIA(wb_wdata_i[25:24]),
        .DIB(wb_wdata_i[27:26]),
        .DIC(wb_wdata_i[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rdata10[25:24]),
        .DOB(rdata10[27:26]),
        .DOC(rdata10[29:28]),
        .DOD(NLW_register_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\wb_wd_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD26 register_reg_r2_0_31_30_31
       (.ADDRA({1'b0,1'b0,ADDRA}),
        .ADDRB({1'b0,1'b0,ADDRA}),
        .ADDRC({1'b0,1'b0,ADDRA}),
        .ADDRD({wb_wd_i[3],wb_wd_i}),
        .DIA(wb_wdata_i[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(rdata10[31:30]),
        .DOB(NLW_register_reg_r2_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_register_reg_r2_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_register_reg_r2_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\wb_wd_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD27 register_reg_r2_0_31_6_11
       (.ADDRA({1'b0,1'b0,ADDRA}),
        .ADDRB({1'b0,1'b0,ADDRA}),
        .ADDRC({1'b0,1'b0,ADDRA}),
        .ADDRD({wb_wd_i[3],wb_wd_i}),
        .DIA(wb_wdata_i[7:6]),
        .DIB(wb_wdata_i[9:8]),
        .DIC(wb_wdata_i[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rdata10[7:6]),
        .DOB(rdata10[9:8]),
        .DOC(rdata10[11:10]),
        .DOD(NLW_register_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\wb_wd_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD28 register_reg_r3_0_31_0_5
       (.ADDRA(debug),
        .ADDRB(debug),
        .ADDRC(debug),
        .ADDRD({wb_wd_i[3],wb_wd_i}),
        .DIA(wb_wdata_i[1:0]),
        .DIB(wb_wdata_i[3:2]),
        .DIC(wb_wdata_i[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(debugdata0[1:0]),
        .DOB(debugdata0[3:2]),
        .DOC(debugdata0[5:4]),
        .DOD(NLW_register_reg_r3_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\wb_wd_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD29 register_reg_r3_0_31_12_17
       (.ADDRA(debug),
        .ADDRB(debug),
        .ADDRC(debug),
        .ADDRD({wb_wd_i[3],wb_wd_i}),
        .DIA(wb_wdata_i[13:12]),
        .DIB(wb_wdata_i[15:14]),
        .DIC(wb_wdata_i[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(debugdata0[13:12]),
        .DOB(debugdata0[15:14]),
        .DOC(debugdata0[17:16]),
        .DOD(NLW_register_reg_r3_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\wb_wd_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD30 register_reg_r3_0_31_18_23
       (.ADDRA(debug),
        .ADDRB(debug),
        .ADDRC(debug),
        .ADDRD({wb_wd_i[3],wb_wd_i}),
        .DIA(wb_wdata_i[19:18]),
        .DIB(wb_wdata_i[21:20]),
        .DIC(wb_wdata_i[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(debugdata0[19:18]),
        .DOB(debugdata0[21:20]),
        .DOC(debugdata0[23:22]),
        .DOD(NLW_register_reg_r3_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\wb_wd_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD31 register_reg_r3_0_31_24_29
       (.ADDRA(debug),
        .ADDRB(debug),
        .ADDRC(debug),
        .ADDRD({wb_wd_i[3],wb_wd_i}),
        .DIA(wb_wdata_i[25:24]),
        .DIB(wb_wdata_i[27:26]),
        .DIC(wb_wdata_i[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(debugdata0[25:24]),
        .DOB({register_reg_r3_0_31_24_29_n_6,debugdata0[26]}),
        .DOC({register_reg_r3_0_31_24_29_n_8,register_reg_r3_0_31_24_29_n_9}),
        .DOD(NLW_register_reg_r3_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\wb_wd_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD32 register_reg_r3_0_31_6_11
       (.ADDRA(debug),
        .ADDRB(debug),
        .ADDRC(debug),
        .ADDRD({wb_wd_i[3],wb_wd_i}),
        .DIA(wb_wdata_i[7:6]),
        .DIB(wb_wdata_i[9:8]),
        .DIC(wb_wdata_i[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(debugdata0[7:6]),
        .DOB(debugdata0[9:8]),
        .DOC(debugdata0[11:10]),
        .DOD(NLW_register_reg_r3_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\wb_wd_reg[0] ));
  LUT6 #(
    .INIT(64'h00000F5F03130F5F)) 
    wreg_o_reg_i_10
       (.I0(rdata20[22]),
        .I1(wb_wdata_i[22]),
        .I2(\id_inst_reg[18] ),
        .I3(rdata20[21]),
        .I4(\wb_wd_reg[4] ),
        .I5(wb_wdata_i[21]),
        .O(wreg_o_reg_i_10_n_4));
  LUT6 #(
    .INIT(64'hFFFFF0A0FCECF0A0)) 
    wreg_o_reg_i_11
       (.I0(rdata20[23]),
        .I1(wb_wdata_i[23]),
        .I2(\id_inst_reg[18] ),
        .I3(rdata20[20]),
        .I4(\wb_wd_reg[4] ),
        .I5(wb_wdata_i[20]),
        .O(wreg_o_reg_i_11_n_4));
  LUT4 #(
    .INIT(16'hFFFE)) 
    wreg_o_reg_i_12
       (.I0(wreg_o_reg_i_18_n_4),
        .I1(wreg_o_reg_i_19_n_4),
        .I2(wreg_o_reg_i_20_n_4),
        .I3(wreg_o_reg_i_21_n_4),
        .O(wreg_o_reg_i_12_n_4));
  LUT6 #(
    .INIT(64'hFFFFF0A0FCECF0A0)) 
    wreg_o_reg_i_13
       (.I0(rdata20[13]),
        .I1(wb_wdata_i[13]),
        .I2(\id_inst_reg[18] ),
        .I3(rdata20[12]),
        .I4(\wb_wd_reg[4] ),
        .I5(wb_wdata_i[12]),
        .O(wreg_o_reg_i_13_n_4));
  LUT6 #(
    .INIT(64'hFFFFF0A0FCECF0A0)) 
    wreg_o_reg_i_14
       (.I0(rdata20[15]),
        .I1(wb_wdata_i[15]),
        .I2(\id_inst_reg[18] ),
        .I3(rdata20[14]),
        .I4(\wb_wd_reg[4] ),
        .I5(wb_wdata_i[14]),
        .O(wreg_o_reg_i_14_n_4));
  LUT6 #(
    .INIT(64'hFFFFF0A0FCECF0A0)) 
    wreg_o_reg_i_15
       (.I0(rdata20[10]),
        .I1(wb_wdata_i[10]),
        .I2(\id_inst_reg[18] ),
        .I3(rdata20[9]),
        .I4(\wb_wd_reg[4] ),
        .I5(wb_wdata_i[9]),
        .O(wreg_o_reg_i_15_n_4));
  LUT6 #(
    .INIT(64'hFFFFF0A0FCECF0A0)) 
    wreg_o_reg_i_16
       (.I0(rdata20[11]),
        .I1(wb_wdata_i[11]),
        .I2(\id_inst_reg[18] ),
        .I3(rdata20[8]),
        .I4(\wb_wd_reg[4] ),
        .I5(wb_wdata_i[8]),
        .O(wreg_o_reg_i_16_n_4));
  LUT4 #(
    .INIT(16'hFFFE)) 
    wreg_o_reg_i_17
       (.I0(wreg_o_reg_i_22_n_4),
        .I1(wreg_o_reg_i_23_n_4),
        .I2(wreg_o_reg_i_24_n_4),
        .I3(wreg_o_reg_i_25_n_4),
        .O(wreg_o_reg_i_17_n_4));
  LUT6 #(
    .INIT(64'hFFFFF0A0FCECF0A0)) 
    wreg_o_reg_i_18
       (.I0(rdata20[25]),
        .I1(wb_wdata_i[25]),
        .I2(\id_inst_reg[18] ),
        .I3(rdata20[24]),
        .I4(\wb_wd_reg[4] ),
        .I5(wb_wdata_i[24]),
        .O(wreg_o_reg_i_18_n_4));
  LUT6 #(
    .INIT(64'hFFFFF0A0FCECF0A0)) 
    wreg_o_reg_i_19
       (.I0(rdata20[27]),
        .I1(wb_wdata_i[27]),
        .I2(\id_inst_reg[18] ),
        .I3(rdata20[26]),
        .I4(\wb_wd_reg[4] ),
        .I5(wb_wdata_i[26]),
        .O(wreg_o_reg_i_19_n_4));
  LUT6 #(
    .INIT(64'hFFFFF0A0FCECF0A0)) 
    wreg_o_reg_i_20
       (.I0(rdata20[31]),
        .I1(wb_wdata_i[31]),
        .I2(\id_inst_reg[18] ),
        .I3(rdata20[30]),
        .I4(\wb_wd_reg[4] ),
        .I5(wb_wdata_i[30]),
        .O(wreg_o_reg_i_20_n_4));
  LUT6 #(
    .INIT(64'hFFFFF0A0FCECF0A0)) 
    wreg_o_reg_i_21
       (.I0(rdata20[29]),
        .I1(wb_wdata_i[29]),
        .I2(\id_inst_reg[18] ),
        .I3(rdata20[28]),
        .I4(\wb_wd_reg[4] ),
        .I5(wb_wdata_i[28]),
        .O(wreg_o_reg_i_21_n_4));
  LUT6 #(
    .INIT(64'hFFFFF0A0FCECF0A0)) 
    wreg_o_reg_i_22
       (.I0(rdata20[5]),
        .I1(wb_wdata_i[5]),
        .I2(\id_inst_reg[18] ),
        .I3(rdata20[4]),
        .I4(\wb_wd_reg[4] ),
        .I5(wb_wdata_i[4]),
        .O(wreg_o_reg_i_22_n_4));
  LUT6 #(
    .INIT(64'hFFFFF0A0FCECF0A0)) 
    wreg_o_reg_i_23
       (.I0(rdata20[7]),
        .I1(wb_wdata_i[7]),
        .I2(\id_inst_reg[18] ),
        .I3(rdata20[6]),
        .I4(\wb_wd_reg[4] ),
        .I5(wb_wdata_i[6]),
        .O(wreg_o_reg_i_23_n_4));
  LUT6 #(
    .INIT(64'hFFFFF0A0FCECF0A0)) 
    wreg_o_reg_i_24
       (.I0(rdata20[1]),
        .I1(wb_wdata_i[1]),
        .I2(\id_inst_reg[18] ),
        .I3(rdata20[0]),
        .I4(\wb_wd_reg[4] ),
        .I5(wb_wdata_i[0]),
        .O(wreg_o_reg_i_24_n_4));
  LUT6 #(
    .INIT(64'hFFFFF0A0FCECF0A0)) 
    wreg_o_reg_i_25
       (.I0(rdata20[3]),
        .I1(wb_wdata_i[3]),
        .I2(\id_inst_reg[18] ),
        .I3(rdata20[2]),
        .I4(\wb_wd_reg[4] ),
        .I5(wb_wdata_i[2]),
        .O(wreg_o_reg_i_25_n_4));
  LUT5 #(
    .INIT(32'h00000010)) 
    wreg_o_reg_i_6
       (.I0(wreg_o_reg_i_8_n_4),
        .I1(wreg_o_reg_i_9_n_4),
        .I2(wreg_o_reg_i_10_n_4),
        .I3(wreg_o_reg_i_11_n_4),
        .I4(wreg_o_reg_i_12_n_4),
        .O(ex_wreg_reg_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    wreg_o_reg_i_7
       (.I0(wreg_o_reg_i_13_n_4),
        .I1(wreg_o_reg_i_14_n_4),
        .I2(wreg_o_reg_i_15_n_4),
        .I3(wreg_o_reg_i_16_n_4),
        .I4(wreg_o_reg_i_17_n_4),
        .O(ex_wreg_reg));
  LUT6 #(
    .INIT(64'hFFFFF0A0FCECF0A0)) 
    wreg_o_reg_i_8
       (.I0(rdata20[19]),
        .I1(wb_wdata_i[19]),
        .I2(\id_inst_reg[18] ),
        .I3(rdata20[18]),
        .I4(\wb_wd_reg[4] ),
        .I5(wb_wdata_i[18]),
        .O(wreg_o_reg_i_8_n_4));
  LUT6 #(
    .INIT(64'hFFFFF0A0FCECF0A0)) 
    wreg_o_reg_i_9
       (.I0(rdata20[17]),
        .I1(wb_wdata_i[17]),
        .I2(\id_inst_reg[18] ),
        .I3(rdata20[16]),
        .I4(\wb_wd_reg[4] ),
        .I5(wb_wdata_i[16]),
        .O(wreg_o_reg_i_9_n_4));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
