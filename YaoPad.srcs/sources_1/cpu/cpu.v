`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/14 22:42:56
// Design Name: 
// Module Name: cpu
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
`include"cpu/pc.v"
`include"cpu/if_id.v"
`include"cpu/id.v"
`include"cpu/regfile.v"
`include"cpu/id_ex.v"
`include"cpu/ex.v"
`include"cpu/ex_mem.v"
`include"cpu/mem.v"
`include"cpu/mem_wb.v"
`include"cpu/hilo.v"
`include"cpu/ctrl.v"
`include"cpu/div.v"
`include"cpu/cp0.v"
`include"cpu/wishbone_bus_if.v"

module cpu(    input wire rst, 
    input wire clk,
    input wire clk100,
    
    // inst wishbone
	input wire[`WordBus]            iwishbone_data_i,
	input wire                     iwishbone_ack_i,
	output wire[`WordBus]           iwishbone_addr_o,
	output wire[`WordBus]           iwishbone_data_o,
	output wire                    iwishbone_we_o,
	output wire[3:0]               iwishbone_sel_o,
	output wire                    iwishbone_stb_o,
	output wire                    iwishbone_cyc_o, 
	
	// data wishbone
	input wire[`WordBus]            dwishbone_data_i,
	input wire                     dwishbone_ack_i,
	output wire[`WordBus]           dwishbone_addr_o,
	output wire[`WordBus]           dwishbone_data_o,
	output wire                    dwishbone_we_o,
	output wire[3:0]               dwishbone_sel_o,
	output wire                    dwishbone_stb_o,
	output wire                    dwishbone_cyc_o,

    input wire[5:0] int_i,
    output wire timer_int_o,
    
    input wire[`RegAddrBus] debug,
    output reg[`WordBus] debugdata
    );
    
    wire[`WordBus] ifdebugdata ;
    wire[`WordBus] iddebugdata ;
    wire[`WordBus] exdebugdata ;
    wire[`WordBus] memdebugdata ;
    wire[`WordBus] wbdebugdata ;
    wire[`WordBus] regdebugdata ;
    wire[`WordBus] ctrldebugdata ;
    always @(*) begin
        case(debug)
            5'b10000: begin
                debugdata <= ifdebugdata ;
            end
            5'b10001: begin
                debugdata <= iddebugdata ;
            end
            5'b10010: begin
                debugdata <= exdebugdata ;
            end
            5'b10011: begin
                debugdata <= memdebugdata ;
            end
            5'b10100: begin
                debugdata <= wbdebugdata ;
            end           
            5'b10101: begin
                debugdata <= ctrldebugdata ;
            end
            default: begin
                debugdata <= regdebugdata ;
            end
        endcase
    end
    wire[`WordBus] rom_data_i ;
    wire[`WordBus] rom_addr_o ;
    wire rom_ce_o ;

    wire[`WordBus] ram_data_i ;
    wire[`WordBus] ram_data_o ;
    wire[`WordBus] ram_addr_o ;
    wire[3:0] ram_sel_o ;
    wire ram_we_o ;
    wire ram_ce_o ;

    wire[`WordBus] pc ;
    wire[`WordBus] id_pc_i ;
    wire[`WordBus] id_inst_i ;
    wire id_is_in_delayslot_i ;

    wire[`AluOpBus] id_aluop_o ;
    wire[`AluSelBus] id_alusel_o ;
    wire[`WordBus] id_reg1_o ;
    wire[`WordBus] id_reg2_o ;
    wire id_wreg_o ;
    wire[`RegAddrBus] id_wd_o ;
    wire[`WordBus] id_inst_o ;
    wire id_branch_flag_o;
    wire id_is_in_delayslot_o;
    wire[`WordBus] id_link_addr_o;
    wire[`WordBus] id_branch_target_address_o;
    wire id_next_inst_in_delayslot_o;
    wire[`WordBus] id_excepttype_o;
    wire[`WordBus] id_current_inst_addr_o;
    
    wire ex_is_in_delayslot_i;
    wire[`WordBus] ex_link_addr_i;
    wire[`WordBus] ex_inst_i;
    wire[`AluOpBus] ex_aluop_i ;
    wire[`AluSelBus] ex_alusel_i ;
    wire[`WordBus] ex_reg1_i ;
    wire[`WordBus] ex_reg2_i ;
    wire ex_wreg_i ;
    wire[`RegAddrBus] ex_wd_i ;
    wire[`WordBus] ex_excepttype_i;
    wire[`WordBus] ex_current_inst_addr_i;

    wire ex_wreg_o ;
    wire[`RegAddrBus] ex_wd_o ;
    wire[`WordBus] ex_wdata_o ;
    wire ex_whilo_o ;

    wire[`AluOpBus] ex_aluop_o;
    wire[`WordBus] ex_mem_addr_o;
    wire[`WordBus] ex_reg2_o;

    wire [`WordBus] ex_hi_o ;
    wire [`WordBus] ex_lo_o ;
    wire[`WordBus] ex_inst_o ;   
    wire[`RegAddrBus] ex_cp0_reg_read_addr_o;
    wire[`RegAddrBus] ex_cp0_reg_write_addr_o;
    wire ex_cp0_reg_we_o;
    wire[`WordBus] ex_cp0_reg_data_o;

    wire ex_is_in_delayslot_o;
    wire[`WordBus] ex_excepttype_o;
    wire[`WordBus] ex_current_inst_addr_o;


    wire mem_wreg_i ;
    wire[`RegAddrBus] mem_wd_i ;
    wire[`WordBus] mem_wdata_i ;
    wire mem_whilo_i ;
    wire [`WordBus] mem_hi_i ;
    wire [`WordBus] mem_lo_i ;
    wire [`AluOpBus] mem_aluop_i;
    wire [`WordBus] mem_mem_addr_i;
    wire [`WordBus] mem_reg2_i;
    wire mem_cp0_reg_we_i;
    wire[`RegAddrBus] mem_cp0_reg_write_addr_i;
    wire[`WordBus] mem_cp0_reg_data_i;

    wire mem_is_in_delayslot_i;
    wire[`WordBus] mem_excepttype_i;
    wire[`WordBus] mem_current_inst_addr_i;

    wire mem_wreg_o ;
    wire[`RegAddrBus] mem_wd_o ;
    wire[`WordBus] mem_wdata_o ;
    wire mem_whilo_o ;
    wire [`WordBus] mem_hi_o ;
    wire [`WordBus] mem_lo_o ;
    wire mem_cp0_reg_we_o;
    wire[`RegAddrBus] mem_cp0_reg_write_addr_o;
    wire[`WordBus] mem_cp0_reg_data_o;
    
    wire[`WordBus] mem_cp0_epc_o;
    wire mem_is_in_delayslot_o;
    wire[`WordBus] mem_excepttype_o;
    wire[`WordBus] mem_current_inst_addr_o;

    wire wb_wreg_i ;
    wire[`RegAddrBus] wb_wd_i ;
    wire[`WordBus] wb_wdata_i ;
    wire wb_whilo_i ;
    wire [`WordBus] wb_hi_i ;
    wire [`WordBus] wb_lo_i ;
    wire wb_cp0_reg_we_i;
    wire[`RegAddrBus] wb_cp0_reg_write_addr_i;
    wire[`WordBus] wb_cp0_reg_data_i;
    
    wire reg1_read ;
    wire reg2_read ;
    wire[`WordBus] reg1_data ;
    wire[`WordBus] reg2_data ;
    wire[`RegAddrBus] reg1_addr ;
    wire[`RegAddrBus] reg2_addr ;

    wire[`WordBus] hi_o ;
    wire[`WordBus] lo_o ;

    wire div_start ;
    wire div_annul ;
    wire[`WordBus] div_opdata1 ;
    wire[`WordBus] div_opdata2 ;
    wire div_signed ;
    wire[`DoubleWordBus] div_result ;
    wire div_ready ;

    wire[`WordBus] cp0_data_o ;
    wire[`WordBus] cp0_status_o ;
    wire[`WordBus] cp0_epc_o ;
    wire[`WordBus] cp0_cause_o ;


    wire stallreq_from_id ;
    wire stallreq_from_ex ;
    wire stallreq_from_if ;
    wire stallreq_from_mem ;
    wire[5:0] stall ;
    wire[`WordBus] new_pc ;
    wire flush ;
    //assign debugdata[15:0] = pc[15:0];
    //assign debugdata[31:16] = rom_data_i[15:0];
    assign rom_addr_o = pc;
    pc_rom pc_rom0(
        .clk(clk), .rst(rst), 
        .pc(pc), 
        .ce(rom_ce_o),
        .branch_flag_i(id_branch_flag_o),
        .branch_target_address_i(id_branch_target_address_o),
        .stall(stall),
        .flush(flush),
        .new_pc(new_pc)
    ) ;
    
    if_id if_id0(
        .clk(clk), .rst(rst),
        .if_pc(pc), 
        .if_inst(rom_data_i), 
        .id_pc(id_pc_i), 
        .id_inst(id_inst_i),
        .stall(stall),
        .debugdata(ifdebugdata),
        .flush(flush)
    ) ;
    
    id id0(
        .rst(rst),
        .pc_i(id_pc_i),
        .inst_i(id_inst_i),
        
        .reg1_data_i(reg1_data),
        .reg2_data_i(reg2_data),
        
        .reg1_read_o(reg1_read),
        .reg2_read_o(reg2_read),
        .reg1_addr_o(reg1_addr),
        .reg2_addr_o(reg2_addr),
        
        .aluop_o(id_aluop_o),
        .alusel_o(id_alusel_o),
        .reg1_o(id_reg1_o),
        .reg2_o(id_reg2_o),
        .wd_o(id_wd_o),
        .wreg_o(id_wreg_o),
        .inst_o(id_inst_o),

        .mem_wdata_i(mem_wdata_o), 
        .mem_wd_i(mem_wd_o), 
        .mem_wreg_i(mem_wreg_o), 
        .ex_wdata_i(ex_wdata_o), 
        .ex_wd_i(ex_wd_o), 
        .ex_wreg_i(ex_wreg_o),
        .ex_aluop_i(ex_aluop_o),

        .is_in_delayslot_i(id_is_in_delayslot_i),
        .branch_flag_o(id_branch_flag_o),
        .branch_target_address_o(id_branch_target_address_o),
        .is_in_delayslot_o(id_is_in_delayslot_o),
        .link_addr_o(id_link_addr_o),
        .next_inst_in_delayslot_o(id_next_inst_in_delayslot_o),

        .excepttype_o(id_excepttype_o),
        .current_inst_addr_o(id_current_inst_addr_o),

        .debugdata(iddebugdata),
        .stallreq(stallreq_from_id)
    ) ;
    
    regfile regfile0(
        .clk(clk), .rst(rst),
        
        .we(wb_wreg_i),
        .waddr(wb_wd_i),
        .wdata(wb_wdata_i), 
        
        .re1(reg1_read),
        .raddr1(reg1_addr),
        .rdata1(reg1_data), 
        
        .re2(reg2_read),
        .raddr2(reg2_addr),
        .rdata2(reg2_data),
        .debug(debug),
        .debugdata(regdebugdata)
    ) ;
    
    id_ex id_ex0(
        .clk(clk), .rst(rst),        
        
        .id_aluop(id_aluop_o),
        .id_alusel(id_alusel_o),
        .id_inst(id_inst_o),
        .id_reg1(id_reg1_o),
        .id_reg2(id_reg2_o),
        .id_wd(id_wd_o),
        .id_wreg(id_wreg_o),
        .id_is_in_delayslot(id_is_in_delayslot_o),
        .id_link_addr(id_link_addr_o),

        .ex_aluop(ex_aluop_i),
        .ex_alusel(ex_alusel_i),
        .ex_reg1(ex_reg1_i),
        .ex_reg2(ex_reg2_i),
        .ex_wd(ex_wd_i),
        .ex_wreg(ex_wreg_i),
        .ex_inst(ex_inst_i),

        .ex_is_in_delayslot(ex_is_in_delayslot_i),
        .ex_link_addr(ex_link_addr_i),

        .next_inst_in_delayslot_i(id_next_inst_in_delayslot_o),
        .is_in_delayslot_o(id_is_in_delayslot_i),

        .id_excepttype(id_excepttype_o),
        .id_current_inst_addr(id_current_inst_addr_o),
        .ex_excepttype(ex_excepttype_i),
        .ex_current_inst_addr(ex_current_inst_addr_i),

        .flush(flush),
        .stall(stall)
    ) ;
    
    ex ex0(
        .rst(rst),

        .inst_i(ex_inst_i),
        .aluop_i(ex_aluop_i),
        .alusel_i(ex_alusel_i),
        .reg1_i(ex_reg1_i),
        .reg2_i(ex_reg2_i),
        .wd_i(ex_wd_i),
        .wreg_i(ex_wreg_i),
        
        .lo_i(lo_o),
        .hi_i(hi_o),
        .wb_whilo_i(wb_whilo_i),
        .wb_hi_i(wb_hi_i),
        .wb_lo_i(wb_lo_i),
        .mem_whilo_i(mem_whilo_o),
        .mem_hi_i(mem_hi_o),
        .mem_lo_i(mem_lo_o),
        .cp0_reg_data_i(cp0_data_o),
        .mem_cp0_reg_we(mem_cp0_reg_we_o),
        .mem_cp0_reg_write_addr(mem_cp0_reg_write_addr_o),
        .mem_cp0_reg_data(mem_cp0_reg_data_o),
        .wb_cp0_reg_we(wb_cp0_reg_we_i),
        .wb_cp0_reg_write_addr(wb_cp0_reg_write_addr_i),
        .wb_cp0_reg_data(wb_cp0_reg_data_i),
        
        .wd_o(ex_wd_o),
        .wreg_o(ex_wreg_o),
        .wdata_o(ex_wdata_o),
        .whilo_o(ex_whilo_o),
        .hi_o(ex_hi_o),
        .lo_o(ex_lo_o),

        .div_ready_i(div_ready),
        .div_result_i(div_result),
        .div_start_o(div_start),
        .signed_div_o(div_signed),
        .div_opdata1_o(div_opdata1),
        .div_opdata2_o(div_opdata2),

        .is_in_delayslot_i(ex_is_in_delayslot_i),
        .link_addr_i(ex_link_addr_i),

        .aluop_o(ex_aluop_o),
        .mem_addr_o(ex_mem_addr_o),
        .reg2_o(ex_reg2_o),
        
        .cp0_reg_read_addr_o(ex_cp0_reg_read_addr_o),
        .cp0_reg_write_addr_o(ex_cp0_reg_write_addr_o),
        .cp0_reg_we_o(ex_cp0_reg_we_o),
        .cp0_reg_data_o(ex_cp0_reg_data_o),

        .excepttype_i(ex_excepttype_i),
        .current_inst_addr_i(ex_current_inst_addr_i),
        .excepttype_o(ex_excepttype_o),
        .current_inst_addr_o(ex_current_inst_addr_o),
        .is_in_delayslot_o(ex_is_in_delayslot_o),

        .debugdata(exdebugdata),
        .stallreq(stallreq_from_ex)
    ) ;
    
    ex_mem ex_mem0(
        .clk(clk), .rst(rst),
        
        .ex_wd(ex_wd_o),
        .ex_wreg(ex_wreg_o),
        .ex_wdata(ex_wdata_o),
        .ex_whilo(ex_whilo_o),
        .ex_hi(ex_hi_o),
        .ex_lo(ex_lo_o),
        .ex_aluop(ex_aluop_o),
        .ex_mem_addr(ex_mem_addr_o),
        .ex_reg2(ex_reg2_o),
        .ex_cp0_reg_we(ex_cp0_reg_we_o),
        .ex_cp0_reg_write_addr(ex_cp0_reg_write_addr_o),
        .ex_cp0_reg_data(ex_cp0_reg_data_o),
        .ex_excepttype(ex_excepttype_o),
        .ex_current_inst_addr(ex_current_inst_addr_o),
        .ex_is_in_delayslot(ex_is_in_delayslot_o),

        .mem_wd(mem_wd_i),
        .mem_wreg(mem_wreg_i),
        .mem_wdata(mem_wdata_i),
        .mem_whilo(mem_whilo_i),
        .mem_hi(mem_hi_i),
        .mem_lo(mem_lo_i),
        .mem_aluop(mem_aluop_i),
        .mem_mem_addr(mem_mem_addr_i),
        .mem_reg2(mem_reg2_i),
        .mem_cp0_reg_we(mem_cp0_reg_we_i),
        .mem_cp0_reg_write_addr(mem_cp0_reg_write_addr_i),
        .mem_cp0_reg_data(mem_cp0_reg_data_i),
        .mem_excepttype(mem_excepttype_i),
        .mem_current_inst_addr(mem_current_inst_addr_i),
        .mem_is_in_delayslot(mem_is_in_delayslot_i),

        .flush(flush),
        .stall(stall) 
    ) ;
    
    mem mem0(
        .rst(rst),
        
        .wd_i(mem_wd_i),
        .wreg_i(mem_wreg_i),
        .wdata_i(mem_wdata_i),
        .whilo_i(mem_whilo_i),
        .hi_i(mem_hi_i),
        .lo_i(mem_lo_i),

        .aluop_i(mem_aluop_i),
        .mem_addr_i(mem_mem_addr_i),
        .reg2_i(mem_reg2_i),
        
        .cp0_reg_we_i(mem_cp0_reg_we_i),
        .cp0_reg_write_addr_i(mem_cp0_reg_write_addr_i),
        .cp0_reg_data_i(mem_cp0_reg_data_i),

        .wd_o(mem_wd_o),
        .wreg_o(mem_wreg_o),
        .wdata_o(mem_wdata_o),
        .whilo_o(mem_whilo_o),
        .hi_o(mem_hi_o),
        .lo_o(mem_lo_o),

        .mem_data_i(ram_data_i),
        .mem_data_o(ram_data_o),
        .mem_addr_o(ram_addr_o),
        .mem_sel_o(ram_sel_o),
        .mem_ce_o(ram_ce_o),
        .mem_we_o(ram_we_o),

        .cp0_reg_we_o(mem_cp0_reg_we_o),
        .cp0_reg_write_addr_o(mem_cp0_reg_write_addr_o),
        .cp0_reg_data_o(mem_cp0_reg_data_o), 

        .excepttype_i(mem_excepttype_i),
        .current_inst_addr_i(mem_current_inst_addr_i),
        .is_in_delayslot_i(mem_is_in_delayslot_i),
        .cp0_status_i(cp0_status_o),
        .cp0_cause_i(cp0_cause_o),
        .cp0_epc_i(cp0_epc_o),
        .wb_cp0_reg_we_i(wb_cp0_reg_we_i),
        .wb_cp0_reg_data_i(wb_cp0_reg_data_i),
        .wb_cp0_reg_write_addr_i(wb_cp0_reg_write_addr_i),
        .excepttype_o(mem_excepttype_o),
        .current_inst_addr_o(mem_current_inst_addr_o),
        .is_in_delayslot_o(mem_is_in_delayslot_o),
        .cp0_epc_o(mem_cp0_epc_o),
        
        .debugdata(memdebugdata),
        .stallreq(stalleq_from_mem)
    ) ;
    
    mem_wb mem_wb0(
        .clk(clk), .rst(rst), 
        
        .mem_wd(mem_wd_o),
        .mem_wreg(mem_wreg_o),
        .mem_wdata(mem_wdata_o),
        .mem_whilo(mem_whilo_o),
        .mem_hi(mem_hi_o),
        .mem_lo(mem_lo_o),
        .mem_cp0_reg_we(mem_cp0_reg_we_o),
        .mem_cp0_reg_write_addr(mem_cp0_reg_write_addr_o),
        .mem_cp0_reg_data(mem_cp0_reg_data_o),
        
        .wb_wd(wb_wd_i),
        .wb_wreg(wb_wreg_i),
        .wb_wdata(wb_wdata_i),
        .wb_whilo(wb_whilo_i),
        .wb_hi(wb_hi_i),
        .wb_lo(wb_lo_i),
        .wb_cp0_reg_we(wb_cp0_reg_we_i),
        .wb_cp0_reg_write_addr(wb_cp0_reg_write_addr_i),
        .wb_cp0_reg_data(wb_cp0_reg_data_i),

        .flush(flush),

        .debugdata(wbdebugdata),
        .stall(stall) 
    ) ;

    hilo hilo0(
        .clk(clk), .rst(rst),

        .we(wb_whilo_i),
        .hi_i(wb_hi_i),
        .lo_i(wb_lo_i),
        .hi_o(hi_o),
        .lo_o(lo_o)
    ) ;

    ctrl ctrl0(
        .rst(rst),
        .stallreq_from_id(stallreq_from_id),
        .stallreq_from_ex(stallreq_from_ex),
        .stallreq_from_if(stallreq_from_if),
        .stallreq_from_mem(stallreq_from_mem),
        .cp0_epc_i(mem_cp0_epc_o),
        .excepttype_i(mem_excepttype_o),
        .new_pc(new_pc),

        .flush(flush),
        .stall(stall),
        .debugdata(ctrldebugdata)
    ) ;

    assign div_annul = 0 ;
    div div0(
        .clk(clk), .rst(rst),

        .start_i(div_start),
        .annul_i(div_annul),
        .opdata1_i(div_opdata1),
        .opdata2_i(div_opdata2),
        .signed_div_i(div_signed),
        .result_o(div_result),
        .ready_o(div_ready)
    ) ;

    cp0 cp00(
        .clk(clk), .rst(rst),

        .we_i(wb_cp0_reg_we_i),
        .waddr_i(wb_cp0_reg_write_addr_i),
        .raddr_i(ex_cp0_reg_read_addr_o),
        .data_i(wb_cp0_reg_data_i),
        .excepttype_i(mem_excepttype_o),
        .current_inst_addr_i(mem_current_inst_addr_o),
        .is_in_delayslot_i(mem_is_in_delayslot_o),

        .status_o(cp0_status_o),
        .epc_o(cp0_epc_o),
        .cause_o(cp0_cause_o),
        
        .timer_int_o(timer_int_o),
        .int_i(int_i),

        .data_o(cp0_data_o)
    ) ;

	wishbone_bus_if dwishbone_bus_if(      
        .wishbone_clk(clk100),
        .cpu_clk(clk),
		.rst(rst),
	
		// ctrl
		.stall(stall),
        .stall_this(stall[4]),
		.flush(flush),
	
		// CPU
        // Here is different from book, seems to be safer.
		.cpu_ce_i(ram_ce_o & (~(|mem_excepttype_o))),
		.cpu_data_i(ram_data_o),
		.cpu_addr_i(ram_addr_o),
		.cpu_we_i(ram_we_o),
		.cpu_sel_i(ram_sel_o),
		.cpu_data_o(ram_data_i),


		// Wishbone 
		.wishbone_data_i(dwishbone_data_i),
		.wishbone_ack_i(dwishbone_ack_i),
		.wishbone_addr_o(dwishbone_addr_o),
		.wishbone_data_o(dwishbone_data_o),
		.wishbone_we_o(dwishbone_we_o),
		.wishbone_sel_o(dwishbone_sel_o),
		.wishbone_stb_o(dwishbone_stb_o),
		.wishbone_cyc_o(dwishbone_cyc_o),

		.stallreq(stallreq_from_mem)	       
	);

	wishbone_bus_if iwishbone_bus_if(
		.wishbone_clk(clk100),
        .cpu_clk(clk),
		.rst(rst),
	
		// ctrl
		.stall(stall),
        .stall_this(stall[1]),
		.flush(flush),
	
		// CPU
        // Here is different from book, seems to be safer. Wait to be fixed in TLB exception.
		// .cpu_ce_i(rom_ce_o & (~(|if_excepttype_i))),
        .cpu_ce_i(rom_ce_o),
		.cpu_data_i(32'h00000000),
		.cpu_addr_i(rom_addr_o),
		.cpu_we_i(`Disable),
		.cpu_sel_i(4'b1111),
		.cpu_data_o(rom_data_i),


		// Wishbone 
		.wishbone_data_i(iwishbone_data_i),
		.wishbone_ack_i(iwishbone_ack_i),
		.wishbone_addr_o(iwishbone_addr_o),
		.wishbone_data_o(iwishbone_data_o),
		.wishbone_we_o(iwishbone_we_o),
		.wishbone_sel_o(iwishbone_sel_o),
		.wishbone_stb_o(iwishbone_stb_o),
		.wishbone_cyc_o(iwishbone_cyc_o),

		.stallreq(stallreq_from_if)	       
	);
endmodule
