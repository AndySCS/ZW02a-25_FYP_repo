class lsu_driver extends uvm_driver #(lsu_tr);
    /*
    this class is responsible for generating lsu stimulus to the dut
    */

    virtual lsu_intf lsu_if;

    `uvm_component_utils(lsu_driver)
    
    function new(string name = "lsu_driver", uvm_component parent = null);
        super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    extern virtual task send_matrix(lsu_tr tr);

endclass //className extends superClass

function void lsu_driver::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual lsu_intf)::get(this, "", "lsu_if", lsu_if))begin
        `uvm_fatal("lsu_driver", "lsu driver fail to get lsu if")
    end
endfunction

task lsu_driver::main_phase(uvm_phase phase);
    
    lsu_tr tr;
    //tr = new("tr");
    lsu_if.idu_lsu_vld = 0;
    lsu_if.idu_lsu_ld_iram = 0;
    lsu_if.idu_lsu_ld_wram = 0;
    lsu_if.idu_lsu_st_iram = 0;
    lsu_if.idu_lsu_st_wram = 0;
    lsu_if.idu_lsu_st_oram = 0;
    lsu_if.idu_lsu_st_dram = 0;
    lsu_if.idu_lsu_conv = 0;
    lsu_if.idu_lsu_act = 0;
    lsu_if.idu_lsu_pool = 0;
    lsu_if.idu_lsu_wfi = 0;
    lsu_if.idu_lsu_dram_addr = 0;
    lsu_if.idu_lsu_num = 0;
    lsu_if.idu_lsu_len = 0;
    lsu_if.idu_lsu_size = 0;
    lsu_if.idu_lsu_str = 0;
    lsu_if.idu_lsu_start_x = 0;
    lsu_if.idu_lsu_start_y = 0;
    lsu_if.idu_lsu_ld_st_addr = 0;
    lsu_if.idu_lsu_st_low = 0;
    lsu_if.idu_lsu_iram_start_addr = 0;
    lsu_if.idu_lsu_iram_col_dir = 0;
    lsu_if.idu_lsu_iram_row_dir = 0;
    lsu_if.idu_lsu_iram_col_len = 0;
    lsu_if.idu_lsu_iram_row_len = 0;
    lsu_if.idu_lsu_wram_start_addr = 0;
    lsu_if.idu_lsu_wram_col_dir = 0;
    lsu_if.idu_lsu_wram_row_dir = 0;
    lsu_if.idu_lsu_wram_col_len = 0;
    lsu_if.idu_lsu_wram_row_len = 0;
    lsu_if.idu_lsu_act_type = 0;
    lsu_if.idu_lsu_pool_size = 0;
    @(posedge lsu_if.rst_n); // wait till rstn is high

    while(1) begin
        //seq_item_port.get_next_item(tr);
        send_matrix(tr);
        //seq_item_port.item_done();
    end
        
endtask

task lsu_driver::send_matrix(lsu_tr tr);

    /*int matrix_sent_row = 0;
    int cur_row = 0;
    int iter_cnt = 0;
    bit[7:0] pop_data;
    int cycle_cnt = 0;
    bit send_matrix_needed = 0;
*/
    while(1)begin
        @(negedge lsu_if.clk);
        if(lsu_if.lsu_idu_rdy) begin
            lsu_if.idu_lsu_vld = 1;
            lsu_if.idu_lsu_st_iram = 1;
	        lsu_if.mxu_lsu_data_rdy = 1;
            lsu_if.mxu_lsu_int8_row0_data = 10;
            lsu_if.mxu_lsu_int8_row1_data = 20;
            lsu_if.mxu_lsu_int8_row2_data = 30;
            lsu_if.mxu_lsu_int8_row3_data = 40;
            lsu_if.mxu_lsu_int8_row4_data = 50;
            lsu_if.mxu_lsu_int8_row5_data = 60;
            lsu_if.mxu_lsu_int8_row6_data = 70;
            lsu_if.mxu_lsu_int8_row7_data = 80;
            lsu_if.mxu_lsu_int8_row8_data = 90;
            lsu_if.mxu_lsu_int8_row9_data = 100;
            lsu_if.mxu_lsu_int8_row10_data = 110;
            lsu_if.mxu_lsu_int8_row11_data = 120;
            lsu_if.mxu_lsu_int8_row12_data = 130;
            lsu_if.mxu_lsu_int8_row13_data = 140;
            lsu_if.mxu_lsu_int8_row14_data = 150;
            lsu_if.mxu_lsu_int8_row15_data = 160;
            lsu_if.idu_lsu_num = 16; //max for mxu
            lsu_if.idu_lsu_len = 4;
            lsu_if.idu_lsu_start_x = 0;
            lsu_if.idu_lsu_start_y = 0;
            lsu_if.idu_lsu_ld_st_addr = 0;
            @(negedge lsu_if.clk);
            lsu_if.idu_lsu_vld = 0;
            lsu_if.idu_lsu_st_iram = 0;
            @(negedge lsu_if.clk);
            break;
        end
    end

    `uvm_info("lsu_driver", "begin sending matrix", UVM_NONE)
/*
    while(1)begin
        send_matrix_needed = 0;
        lsu_if.lsu_lsu_iram_vld = 0;
        lsu_if.lsu_lsu_wram_vld = 0;
        lsu_if.lsu_lsu_iram_pld = 0;
        lsu_if.lsu_lsu_wram_pld = 0;
        for(int row = 0; row < tr.matrix_Lx; row++)begin
            if(cycle_cnt >= row && cycle_cnt < tr.matrix_Ly + row)begin
                lsu_if.lsu_lsu_wram_vld[row] = 1;
                pop_data = tr.matrix_L[row][cycle_cnt-row];
                lsu_if.lsu_lsu_wram_pld |= {120'b0, pop_data} << row*8;
                send_matrix_needed = 1;
            end
        end
        for(int col = 0; col < tr.matrix_Rx; col++)begin
            if(cycle_cnt >= col && cycle_cnt < tr.matrix_Ry + col)begin
                lsu_if.lsu_lsu_iram_vld[col] = 1;
                pop_data = tr.matrix_R[col][cycle_cnt-col];
                lsu_if.lsu_lsu_iram_pld |= {120'b0, pop_data} << col*8;
                send_matrix_needed = 1;
            end
        end
        cycle_cnt++;
        iter_cnt++;
        if(iter_cnt >= 500) `uvm_error("lsu_driver", "maxtrix send function have run over 500 times");
        if(!send_matrix_needed) break;
        @(negedge lsu_if.clk);
    end
    
    `uvm_info("lsu_driver", "end sending matrix", UVM_NONE)
*/
endtask

    /*
    while(matrix_sent_row != 16)begin
        matrix_sent_row = 0;
        @(negedge lsu_if.clk)
        for(int i = 0; i<16; i++)begin
            if((tr.matrix_L[i].q.size() == 0) & (tr.matrix_R[i].q.size() == 0))begin
                matrix_sent_row++;
            end
            if(i >= cur_row)begin
                lsu_if.lsu_lsu_iram_vld[i] = (tr.matrix_L[i].q.size() > 0);
                pop_data = tr.matrix_L[i].q.pop_front();
                lsu_if.lsu_lsu_iram_pld |= {{120{pop_data[7]}}, pop_data} << i*8;
                lsu_if.lsu_lsu_wram_vld[i] = (tr.matrix_R[i].q.size() > 0);
                pop_data = tr.matrix_L[i].q.pop_front();
                lsu_if.lsu_lsu_wram_pld |= {{120{pop_data[7]}}, pop_data} <<  i*8;
            end
        end
        cur_row++;
        iter_cnt++;
        if(iter_cnt >= 500)begin
            `uvm_error("lsu_driver", "maxtrix send function have run over 500 times")
        end
    end
    */

