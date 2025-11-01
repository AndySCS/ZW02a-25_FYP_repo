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
`define OP_SIZE                     5
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

`define LD_OP_CODE                  5'h00
`define ST_OP_CODE                  5'h01
`define STM_OP_CODE                 5'h02
`define MM_OP_CODE                  5'h03
`define ACT_OP_CODE                 5'h04
`define POOL_OP_CODE                5'h05
`define WFI_OP_CODE                 5'h1f

//RAM buff fsm
`define RAM_BUFF_FSM_IDLE           00
`define RAM_BUFF_FSM_RECV           01
`define RAM_BUFF_FSM_SND            10
`define RAM_BUFF_FSM_REV            11