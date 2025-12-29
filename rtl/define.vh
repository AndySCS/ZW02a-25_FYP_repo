//axi write related
`define AXI_OKAY                    2'b00
`define AXI_EXOKAY                  2'b01
`define AXI_SLVERR                  2'b10
`define AXI_DECERR                  2'b11
// burst type
`define AXI_WR_BURST_FIXED          2'b00
`define AXI_WR_BURST_INCR           2'b01
`define AXI_WR_BURST_WRAP           2'b10
// region define
`define AXI_CMD_FIFO_REGION         4'b0
`define AXI_WRAM_REGION             4'b1
`define AXI_IRAM_REGION             4'b10
// max values
`define AWBURST_MAX                 3'b010

//inst range
`define INST_MSB                    63
//opcode
`define OP_SIZE                     7
`define OP_MSB                      (`OP_SIZE-1)
`define OP_RNG                      `OP_MSB : 0
//load store
`define SRAM_TYPE_SIZE              2
`define SRAM_TYPE_LSB               (`OP_MSB + 1)
`define SRAM_TYPE_MSB               (`SRAM_TYPE_LSB + `SRAM_TYPE_SIZE -1)
`define SRAM_TYPE_RNG               `SRAM_TYPE_MSB : `SRAM_TYPE_LSB

`define SRAM_ADDR_SIZE              12
`define SRAM_ADDR_LSB               (`SRAM_TYPE_MSB + 1)
`define SRAM_ADDR_MSB               (`SRAM_ADDR_LSB + `SRAM_ADDR_LSB -1)
`define SRAM_ADDR_RNG               `SRAM_ADDR_MSB : `SRAM_ADDR_LSB

`define STR_SIZE                    3
`define STR_LSB                     (`SRAM_ADDR_MSB + 1)
`define STR_MSB                     (`STR_LSB + `STR_SIZE -1)
`define STR_RNG                     `STR_MSB : `STR_LSB

`define LEN_SIZE                    3
`define LEN_LSB                     (`STR_MSB + 1)
`define LEN_MSB                     (`LEN_LSB + `LEN_SIZE -1)
`define LEN_RNG                     `LEN_MSB : `LEN_LSB

`define NUM_SIZE                    8
`define NUM_LSB                     (`LEN_MSB + 1)
`define NUM_MSB                     (`NUM_LSB + `NUM_SIZE -1)
`define NUM_RNG                     `NUM_MSB : `NUM_LSB

`define DRAM_ADDR_LSB               (`LEN_MSB + 1)
`define DRAM_ADDR_RNG               `INST_MSB : `DRAM_ADDR_LSB

`define ST_LOW_RNG                  `OP_MSB + 2

`define START_X_SIZE                8
`define START_X_LSB                 (`NUM_MSB + 1)
`define START_X_MSB                 (`START_X_LSB + `START_X_SIZE -1)
`define START_X_RNG                 `START_X_MSB : `START_X_LSB

`define START_Y_SIZE                8
`define START_Y_LSB                 (`START_X_MSB + 1)
`define START_Y_MSB                 (`START_Y_LSB + `START_Y_SIZE -1)
`define START_Y_RNG                 `START_Y_MSB : `START_Y_LSB

`define WRAM_RLEN_SIZE              4
`define WRAM_RLEN_LSB               (`OP_MSB + 1)
`define WRAM_RLEN_MSB               (`WRAM_RLEN_LSB + `WRAM_RLEN_SIZE -1)
`define WRAM_RLEN_RNG               `WRAM_RLEN_MSB : `WRAM_RLEN_LSB

`define WRAM_CLEN_SIZE              8
`define WRAM_CLEN_LSB               (`WRAM_RLEN_MSB + 1)
`define WRAM_CLEN_MSB               (`WRAM_CLEN_LSB + `WRAM_CLEN_SIZE -1)
`define WRAM_CLEN_RNG               `WRAM_CLEN_MSB : `WRAM_CLEN_LSB

`define WRAM_DIR_SIZE               2
`define WRAM_DIR_LSB                (`WRAM_CLEN_MSB + 1)
`define WRAM_DIR_MSB                (`WRAM_DIR_LSB + `WRAM_DIR_SIZE -1)
`define WRAM_DIR_RNG                `WRAM_DIR_MSB : `WRAM_DIR_LSB

`define WRAM_ADDR_SIZE              12
`define WRAM_ADDR_LSB               (`WRAM_DIR_MSB + 1)
`define WRAM_ADDR_MSB               (`WRAM_ADDR_LSB + `WRAM_ADDR_SIZE -1)
`define WRAM_ADDR_RNG               `WRAM_ADDR_MSB : `WRAM_ADDR_LSB

`define IRAM_RLEN_SIZE              4
`define IRAM_RLEN_LSB               (`WRAM_ADDR_MSB + 1)
`define IRAM_RLEN_MSB               (`IRAM_RLEN_LSB + `IRAM_RLEN_SIZE -1)
`define IRAM_RLEN_RNG               `IRAM_RLEN_MSB : `IRAM_RLEN_LSB

`define IRAM_CLEN_SIZE              8
`define IRAM_CLEN_LSB               (`IRAM_RLEN_MSB + 1)
`define IRAM_CLEN_MSB               (`IRAM_CLEN_LSB + `IRAM_CLEN_SIZE -1)
`define IRAM_CLEN_RNG               `IRAM_CLEN_MSB : `IRAM_CLEN_LSB

`define IRAM_DIR_SIZE               2
`define IRAM_DIR_LSB                (`IRAM_CLEN_MSB + 1)
`define IRAM_DIR_MSB                (`IRAM_DIR_LSB + `IRAM_DIR_SIZE -1)
`define IRAM_DIR_RNG                `IRAM_DIR_MSB : `IRAM_DIR_LSB

`define IRAM_ADDR_SIZE              12
`define IRAM_ADDR_LSB               (`IRAM_DIR_MSB + 1)
`define IRAM_ADDR_MSB               (`IRAM_ADDR_LSB + `IRAM_ADDR_SIZE -1)
`define IRAM_ADDR_RNG               `IRAM_ADDR_MSB : `IRAM_ADDR_LSB

`define ACT_TYPE_SIZE               2
`define ACT_TYPE_LSB                (`OP_MSB + 1)
`define ACT_TYPE_MSB                (`ACT_TYPE_LSB + `ACT_TYPE_SIZE -1)
`define ACT_TYPE_RNG                `ACT_TYPE_MSB : `ACT_TYPE_LSB

`define POOL_TYPE_SIZE              2
`define POOL_TYPE_LSB               (`OP_MSB + 1)
`define POOL_TYPE_MSB               (`POOL_TYPE_LSB + `POOL_TYPE_SIZE -1)
`define POOL_TYPE_RNG               `POOL_TYPE_MSB : `POOL_TYPE_LSB

`define RD_SIZE                     5
`define RD_LSB                      (`OP_MSB + 1)
`define RD_MSB                      (`RD_LSB + `RD_SIZE -1)
`define RD_RNG                      `RD_MSB : `RD_LSB

`define FUNCT3_SIZE                 3
`define FUNCT3_LSB                  (`RD_MSB + 1)
`define FUNCT3_MSB                  (`FUNCT3_LSB + `FUNCT3_SIZE -1)
`define FUNCT3_RNG                  `FUNCT3_MSB : `FUNCT3_LSB

`define RS1_SIZE                    5
`define RS1_LSB                     (`FUNCT3_MSB + 1)
`define RS1_MSB                     (`RS1_LSB + `RS1_SIZE -1)
`define RS1_RNG                     `RS1_MSB : `RS1_LSB

`define RS2_SIZE                    5
`define RS2_LSB                     (`RS1_MSB + 1)
`define RS2_MSB                     (`RS2_LSB + `RS2_SIZE -1)
`define RS2_RNG                     `RS2_MSB : `RS2_LSB

`define FUNCT7_SIZE                 7
`define FUNCT7_LSB                  (`RS2_MSB + 1)
`define FUNCT7_MSB                  (`FUNCT7_LSB + `FUNCT7_SIZE -1)
`define FUNCT7_RNG                  `FUNCT7_MSB : `FUNCT7_LSB

`define I_TYPE_IMM_SIZE             12
`define I_TYPE_IMM_LSB              (`RS1_MSB + 1)
`define I_TYPE_IMM_MSB              (`I_TYPE_IMM_LSB + `I_TYPE_IMM_SIZE -1)
`define I_TYPE_IMM_RNG              `I_TYPE_IMM_MSB : `I_TYPE_IMM_LSB

`define S_TYPE_IMM_11_5_SIZE        7
`define S_TYPE_IMM_11_5_LSB         (`RS2_MSB + 1)
`define S_TYPE_IMM_11_5_MSB         (`S_TYPE_IMM_11_5_LSB + `S_TYPE_IMM_11_5_SIZE -1)
`define S_TYPE_IMM_11_5_RNG         `S_TYPE_IMM_11_5_MSB : `S_TYPE_IMM_11_5_LSB

`define S_TYPE_IMM_4_0_SIZE         5
`define S_TYPE_IMM_4_0_LSB          (`RS1_MSB + 1)
`define S_TYPE_IMM_4_0_MSB          (`S_TYPE_IMM_4_0_LSB + `S_TYPE_IMM_4_0_SIZE -1)
`define S_TYPE_IMM_4_0_RNG          `S_TYPE_IMM_4_0_MSB : `S_TYPE_IMM_4_0_LSB

`define S_TYPE_IMM_SIZE             (`S_TYPE_IMM_11_5_LSB + `S_TYPE_IMM_4_0_SIZE)

`define B_TYPE_IMM_11_SIZE          1
`define B_TYPE_IMM_11_LSB           (`OP_MSB + 1)
`define B_TYPE_IMM_11_MSB           (`B_TYPE_IMM_11_LSB + `B_TYPE_IMM_11_SIZE -1)
`define B_TYPE_IMM_11_RNG           `B_TYPE_IMM_11_MSB : `B_TYPE_IMM_11_LSB

`define B_TYPE_IMM_4_1_SIZE         1
`define B_TYPE_IMM_4_1_LSB          (`RS2_MSB + 1)
`define B_TYPE_IMM_4_1_MSB          (`B_TYPE_IMM_4_1_LSB + `B_TYPE_IMM_4_1_SIZE -1)
`define B_TYPE_IMM_4_1_RNG          `B_TYPE_IMM_4_1_MSB : `B_TYPE_IMM_4_1_LSB

`define B_TYPE_IMM_10_5_SIZE        1
`define B_TYPE_IMM_10_5_LSB         (`B_TYPE_IMM_11_MSB + 1)
`define B_TYPE_IMM_10_5_MSB         (`B_TYPE_IMM_10_5_LSB + `B_TYPE_IMM_10_5_SIZE -1)
`define B_TYPE_IMM_10_5_RNG         `B_TYPE_IMM_10_5_MSB : `B_TYPE_IMM_10_5_LSB

`define B_TYPE_IMM_12_SIZE          1
`define B_TYPE_IMM_12_LSB           (`B_TYPE_IMM_10_5_MSB + 1)
`define B_TYPE_IMM_12_MSB           (`B_TYPE_IMM_12_LSB + `B_TYPE_IMM_12_SIZE -1)
`define B_TYPE_IMM_12_RNG           `B_TYPE_IMM_12_MSB : `B_TYPE_IMM_12_LSB

`define B_TYPE_IMM_SIZE             (`B_TYPE_IMM_12_SIZE + `B_TYPE_IMM_11_SIZE + `B_TYPE_IMM_10_5_SIZE + `B_TYPE_IMM_4_1_SIZE)

`define U_TYPE_IMM_31_12_SIZE       (31-12+1)
`define U_TYPE_IMM_31_12_LSB        (`RD_MSB + 1)
`define U_TYPE_IMM_31_12_MSB        (`U_TYPE_IMM_31_12_LSB + `U_TYPE_IMM_31_12_SIZE -1)
`define U_TYPE_IMM_31_12_RNG        `U_TYPE_IMM_31_12_MSB : `U_TYPE_IMM_31_12_LSB

`define J_TYPE_IMM_19_12_SIZE       8
`define J_TYPE_IMM_19_12_LSB        (`RD_MSB + 1)
`define J_TYPE_IMM_19_12_MSB        (`J_TYPE_IMM_19_12_LSB + `J_TYPE_IMM_19_12_SIZE -1)
`define J_TYPE_IMM_19_12_RNG        `J_TYPE_IMM_19_12_MSB : `J_TYPE_IMM_19_12_LSB

`define J_TYPE_IMM_11_SIZE          1
`define J_TYPE_IMM_11_LSB           (`J_TYPE_IMM_19_12_MSB + 1)
`define J_TYPE_IMM_11_MSB           (`J_TYPE_IMM_11_LSB + `J_TYPE_IMM_11_SIZE -1)
`define J_TYPE_IMM_11_RNG           `J_TYPE_IMM_11_MSB : `J_TYPE_IMM_11_LSB

`define J_TYPE_IMM_10_1_SIZE        10
`define J_TYPE_IMM_10_1_LSB         (`J_TYPE_IMM_11_MSB + 1)
`define J_TYPE_IMM_10_1_MSB         (`J_TYPE_IMM_10_1_LSB + `J_TYPE_IMM_10_1_SIZE -1)
`define J_TYPE_IMM_10_1_RNG         `J_TYPE_IMM_10_1_MSB : `J_TYPE_IMM_10_1_LSB

`define J_TYPE_IMM_20_SIZE          1
`define J_TYPE_IMM_20_LSB           (`J_TYPE_IMM_10_1_MSB + 1)
`define J_TYPE_IMM_20_MSB           (`J_TYPE_IMM_20_LSB + `J_TYPE_IMM_20_SIZE -1)
`define J_TYPE_IMM_20_RNG           `J_TYPE_IMM_20_MSB : `J_TYPE_IMM_20_LSB

`define J_TYPE_IMM_SIZE             (`J_TYPE_IMM_20_SIZE + `J_TYPE_IMM_19_12_SIZE + `J_TYPE_IMM_11_SIZE + `J_TYPE_IMM_10_1_SIZE)

`define LD_OP_CODE                  7'h00
`define ST_OP_CODE                  7'h01
`define STM_OP_CODE                 7'h02
`define MM_OP_CODE                  7'h03
`define ACT_OP_CODE                 7'h04
`define POOL_OP_CODE                7'h05
`define WFI_OP_CODE                 7'h1f

`define AUIPC                       7'b0010111
`define LUI                         7'b0110111
`define OP_IMM                      7'b0010011
`define OP                          7'b0110011
`define JAL                         7'b1101111
`define JALR                        7'b1100111
`define LOAD                        7'b0000011
`define STORE                       7'b0100011
`define BRANCH                      7'b1100011

`define FUNCT3_ADD                  3'b000
`define FUNCT3_SLL                  3'b001
`define FUNCT3_SLT                  3'b010
`define FUNCT3_SLTU                 3'b011
`define FUNCT3_XOR                  3'b100
`define FUNCT3_SR                   3'b101
`define FUNCT3_OR                   3'b110
`define FUNCT3_AND                  3'b111

`define FUNCT7_NORM                 7'b0000000
`define FUNCT7_ALT                  7'b0100000

//RAM buff fsm
`define RAM_BUFF_FSM_IDLE           00
`define RAM_BUFF_FSM_RECV           01
`define RAM_BUFF_FSM_SND            10
`define RAM_BUFF_FSM_REV            11