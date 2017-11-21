// Constants // 
`define Enable 1'b1
`define Disable 1'b0
`define True 1'b1
`define False 1'b0
`define InstValid 1'b0
`define InstInvalid 1'b1
`define Zero 32'h00000000
`define DZero 64'h0000000000000000

`define RegNum 20

// Length of different data type// 
`define RegLen 32
`define DoubleRegLen 64
`define RegLenLog 5
`define MemNumLog 18 

// Buses // 
`define StallBus 5:0
`define AluOpBus 7:0
`define AluSelBus 2:0
`define AddrBus 31:0
`define InstBus 31:0
`define MemNum 262144 // The actual memory size is 256KB 
`define RegAddrBus 4:0
`define RegBus 31:0
`define RegIdBus 0:31
`define DoubleRegBus 63:0


// Instruction Number //
`define EXE_ORI 6'b001101
`define EXE_ANDI 6'b001100
`define EXE_XORI 6'b001110
`define EXE_LUI 6'b001111
`define EXE_SPECIAL 6'b000000
`define EXE_SPECIAL2 6'b011100
`define EXE_PREF 6'b110011
`define EXE_NOP 6'b000000
`define EXE_ADDI 6'b001000
`define EXE_ADDIU 6'b001001
`define EXE_SLTI 6'b001010
`define EXE_SLTIU 6'b001011


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

// Alu Suboperation Number // 
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
