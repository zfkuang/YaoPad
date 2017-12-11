// Constants // 
`define Enable 1'b1
`define Disable 1'b0
`define True 1'b1
`define False 1'b0
`define InstValid 1'b0
`define InstInvalid 1'b1
`define Zero 32'h00000000
`define DZero 64'h0000000000000000

`define REnable  1'b0
`define RDisable 1'b1
`define RamAddrLog 22 
`define RamAddrBus 21:0

`define RegNum 20

`define StartInstAddr 32'h80000000

// Length of different data type// 
`define RegLen 32
`define DoubleRegLen 64
`define RegLenLog 5
`define MemNumLog 18 

// Buses // 
`define DebugBus 9:0
`define StallBus 5:0
`define AluOpBus 7:0
`define AluSelBus 2:0
`define MemNum 262144 // The actual memory size is 256KB 
`define RegAddrBus 4:0
`define RegIdBus 0:31
`define WordBus 31:0
`define DoubleWordBus 63:0


// Instruction Number //
`define EXE_ORI 	6'b001101
`define EXE_ANDI	6'b001100
`define EXE_XORI 	6'b001110
`define EXE_LUI 	6'b001111
`define EXE_SPECIAL 6'b000000
`define EXE_SPECIAL2 6'b011100


`define EXE_PREF 6'b110011
`define EXE_NOP 6'b000000
`define EXE_ADDI 6'b001000
`define EXE_ADDIU 6'b001001
`define EXE_SLTI 6'b001010
`define EXE_SLTIU 6'b001011
`define EXE_J 6'b000010
`define EXE_JAL 6'b000011

`define EXE_BEQ 6'b000100
`define EXE_BGTZ 6'b000111
`define EXE_BLEZ 6'b000110
`define EXE_BNE 6'b000101
`define EXE_REGIMM 6'b000001
`define EXE_BLTZ 5'b00000
`define EXE_BLTZAL 5'b10000
`define EXE_BGEZ 5'b00001
`define EXE_BGEZAL 5'b10001

`define EXE_LB 		6'b100000
`define EXE_LBU 	6'b100100
`define EXE_LH 		6'b100001
`define EXE_LHU 	6'b100101
`define EXE_LW 		6'b100011
`define EXE_LWL 	6'b100010
`define EXE_LWR 	6'b100110
`define EXE_SB 		6'b101000
`define EXE_SH 		6'b101001
`define EXE_SW 		6'b101011
`define EXE_SWL 	6'b101010
`define EXE_SWR 	6'b101110

`define EXE_COP0 	6'b010000
`define EXE_MT 5'b00100
`define EXE_MF 5'b00000

`define EXE_ERET 6'b011000
`define EXE_TEQI	5'b01100
`define EXE_TNEI	5'b01110
`define EXE_TGEI	5'b01000
`define EXE_TGEIU	5'b01001
`define EXE_TLTI	5'b01010
`define EXE_TLTIU	5'b01011



// Alu Operation Number // 

`define ALU_OR 8'b00100101
`define ALU_AND 8'b00100100
`define ALU_XOR 8'b00100110
`define ALU_NOR 8'b00100111
`define ALU_NOP 8'b00000000

`define ALU_SLL 8'b00000000
`define ALU_SRL 8'b00000010
`define ALU_SRA 8'b00000011
`define ALU_SLLV 8'b00000100
`define ALU_SRLV 8'b00000110
`define ALU_SRAV 8'b00000111
`define ALU_SYNC 8'b00001111

`define ALU_MOVN 8'b00001011
`define ALU_MOVZ 8'b00001010
`define ALU_MFHI 8'b00010000
`define ALU_MFLO 8'b00010010
`define ALU_MTHI 8'b00010001
`define ALU_MTLO 8'b00010011

`define ALU_ADD 8'b00100000
`define ALU_ADDU 8'b00100001
`define ALU_SUB 8'b00100010
`define ALU_SUBU 8'b00100011
`define ALU_SLT 8'b00101010
`define ALU_SLTU 8'b00101011

`define ALU_MULT 8'b00011000
`define ALU_MULTU 8'b00011001
`define ALU_DIV 8'b00011010
`define ALU_DIVU 8'b00011011


`define ALU_CLZ 8'b10100000
`define ALU_CLO 8'b10100001
`define ALU_MUL 8'b10000010
`define ALU_JUMP 8'b01001111
`define ALU_JR 8'b00001000
`define ALU_JALR 8'b00001001

`define ALU_MFC0 8'b01011101
`define ALU_MTC0 8'b01100000

`define ALU_SYSCALL 8'b00001100
`define ALU_TEQ 8'b00110100
`define ALU_TGE 8'b00110000
`define ALU_TGEU 8'b00110001
`define ALU_TLT 8'b00110010
`define ALU_TLTU 8'b00110011
`define ALU_TNE 8'b00110110
`define ALU_ERET 8'b01101011

`define MEM_LB   8'b11100000
`define MEM_LBU  8'b11100100
`define MEM_LH   8'b11100001
`define MEM_LHU  8'b11100101
`define MEM_LL   8'b11110000
`define MEM_LW   8'b11100011
`define MEM_LWL  8'b11100010
`define MEM_LWR  8'b11100110
`define MEM_PREF 8'b11110011
`define MEM_SB   8'b11101000
`define MEM_SC   8'b11111000
`define MEM_SH   8'b11101001
`define MEM_SW   8'b11101011
`define MEM_SWL  8'b11101010
`define MEM_SWR  8'b11101110

`define EXE_SYNC 8'b00001111



// Alu Suboperation Number // 
`define ALUS_LOAD_STORE 3'b111	
`define ALUS_JUMP 3'b110
`define ALUS_MUL 3'b101
`define ALUS_ARITHMETIC 3'b100
`define ALUS_MOVE 3'b011
`define ALUS_SHIFT 3'b010
`define ALUS_LOGIC 3'b001
`define ALUS_NOP 3'b000

`define NopRegAddr 5'b00000

`define DIV_FREE 2'b00
`define DIV_ON 2'b01
`define DIV_ZERO 2'b10
`define DIV_END 2'b11



// Wishbone states //
`define WB_IDLE 2'b00
`define WB_BUSY 2'b01
`define WB_WAIT_FOR_STALL 2'b11

`define CP0_COUNT 5'b01001
`define CP0_COMPARE 5'b01011
`define CP0_STATUS 5'b01100
`define CP0_CAUSE 5'b01101
`define CP0_EPC 5'b01110
`define CP0_PRId 5'b01111
`define CP0_CONFIG 5'b10000

