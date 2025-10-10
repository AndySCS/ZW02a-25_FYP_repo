module load_buffer(
    clk,
    rst_n,

    //dram ctrl input from LSU
    load_buffer_vld,
    load_buffer_id,
    load_buffer_dram_addr,
    load_buffer_len,
    load_buffer_size,
    load_buffer_str,
    load_buffer_ld_addr,
    
    //to lsu ram_wrapper
    load_buffer_sram_store_vld,
    load_buffer_sram_store_byte_vld,
    load_buffer_sram_store_addr,
    load_buffer_sram_store_data,

);
    input clk;
    input rst_n;

    //ctrl_input
    input load_buffer_vld;
    input load_buffer_id;
    input [30:0] load_buffer_addr;
    input [7:0]  load_buffer_len;
    input [2:0]  load_buffer_size;
    input [2:0]  load_buffer_str;
    input [3:0]  load_buffer_ld_addr;

    //to lsu the internal ram (sram store variables)
    output load_buffer_sram_store_vld;              // as the cen
    output[16:0] load_buffer_sram_store_byte_vld;   // as the wen
    output[7:0] load_buffer_sram_store_addr;        // as the addr
    output[127:0] load_buffer_sram_store_data;      // as the din

    axi_read_intf


    //dram_data_load_done
    assign dram_data_load_done = axi_read_rlast;

    //sram_data_store_done
    assign sran_data_store_done = lsu_store_cur = lsu_store_len;

    assign load_buffer_fsm_nxt = load-buffer_vld? 2'b00
                                : dram_data_load_done ? 2'b10
                                : sram_data_store_done ? 2'b00 : 2'b11;


endmodule