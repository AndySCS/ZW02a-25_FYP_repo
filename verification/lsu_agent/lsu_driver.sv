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
    extern virtual task idu_signal_config_type1_store(lsu_tr tr);
    extern virtual task idu_signal_config_type2_store(lsu_tr tr);
    extern virtual task idu_signal_config_load(lsu_tr tr);
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
    lsu_if.mxu_lsu_data_rdy = 0;
    //from axi write 
    lsu_if.axi_lsu_awrdy = 0;
    lsu_if.axi_lsu_wrdy = 0;
    lsu_if.axi_lsu_bid = 0;
    lsu_if.axi_lsu_bresp = 0;
    lsu_if.axi_lsu_bvld = 0;
    lsu_if.axi_lsu_resp_oram_addr = 0;

    //from axi read
    lsu_if.axi_lsu_arrdy = 0;
    lsu_if.axi_lsu_rid = 0;
    lsu_if.axi_lsu_rdata = 0;
    lsu_if.axi_lsu_rresp = 0;
    lsu_if.axi_lsu_rlast = 0;
    lsu_if.axi_lsu_rvld = 0;

    for (int i=0;i<256;i++) begin 
     	  harness.u_lsu.oram.mem[i] = 128'h0 ;
     	  harness.u_lsu.iram.mem[i] = 128'h0 ;
      	  harness.u_lsu.wram.mem[i] = 128'h0 ;
   end	

    lsu_if.mxu_lsu_int8_row0_data = 'hf0e0d0c0b0a09080;
    lsu_if.mxu_lsu_int8_row1_data = 'hf0e0d0c0b0a09080;
    lsu_if.mxu_lsu_int8_row2_data = 'hf0e0d0c0b0a09080;
    lsu_if.mxu_lsu_int8_row3_data = 'hf0e0d0c0b0a09080;
    lsu_if.mxu_lsu_int8_row4_data = 'hf0e0d0c0b0a09080;
    lsu_if.mxu_lsu_int8_row5_data = 'hf0e0d0c0b0a09080;
    lsu_if.mxu_lsu_int8_row6_data = 'hf0e0d0c0b0a09080;
    lsu_if.mxu_lsu_int8_row7_data = 'hf0e0d0c0b0a09080;
    lsu_if.mxu_lsu_int8_row8_data = 'hf0e0d0c0b0a09080;
    lsu_if.mxu_lsu_int8_row9_data = 'hf0e0d0c0b0a09080;
    lsu_if.mxu_lsu_int8_row10_data = 'hf0e0d0c0b0a09080;
    lsu_if.mxu_lsu_int8_row11_data = 'hf0e0d0c0b0a09080;
    lsu_if.mxu_lsu_int8_row12_data = 'hf0e0d0c0b0a09080;
    lsu_if.mxu_lsu_int8_row13_data = 'hf0e0d0c0b0a09080;
    lsu_if.mxu_lsu_int8_row14_data = 'hf0e0d0c0b0a09080;
    lsu_if.mxu_lsu_int8_row15_data = 'hf0e0d0c0b0a09080;

    @(posedge lsu_if.rst_n); // wait till rstn is high
    
    while(1) begin
        //seq_item_port.get_next_item(tr);
        idu_signal_config_type1_store(tr);
        //idu_signal_config_type2_store(tr);
        //idu_signal_config_load(tr);
        //seq_item_port.item_done();
    end
    	   
endtask

task lsu_driver::idu_signal_config_type1_store(lsu_tr tr);

    /*int matrix_sent_row = 0;
    int cur_row = 0;
    int iter_cnt = 0;
    bit[7:0] pop_data;
    int cycle_cnt = 0;
    bit send_matrix_needed = 0;
*/
    int count = 0;
        @(negedge lsu_if.clk);
        if(lsu_if.lsu_idu_rdy) begin 
    	//while(1)begin
        //@(negedge lsu_if.clk);
        //if(lsu_if.lsu_idu_rdy) begin 
            //@(negedge lsu_if.clk);
            //@(negedge lsu_if.clk);
            lsu_if.idu_lsu_vld = 1;
            lsu_if.idu_lsu_st_iram = 1;
            lsu_if.idu_lsu_st_wram = 0;
            lsu_if.idu_lsu_st_oram = 0;
            lsu_if.idu_lsu_st_dram = 0;
	        lsu_if.mxu_lsu_data_rdy = 0;
	        //case1
	        //lsu_if.idu_lsu_low = 0; //8/16int 
            lsu_if.idu_lsu_num = 0; //number of chunk
            lsu_if.idu_lsu_len = 4; //element size
            lsu_if.idu_lsu_start_x = 0;
            lsu_if.idu_lsu_start_y = 0;
            lsu_if.idu_lsu_ld_st_addr = 0;
	        @(negedge lsu_if.clk);
            lsu_if.idu_lsu_vld = 0;
            //lsu_if.idu_lsu_st_iram = 0;
            @(negedge lsu_if.clk); 
            @(negedge lsu_if.clk);
            @(negedge lsu_if.clk);
	        lsu_if.mxu_lsu_data_rdy = 1;
            //break;
        //end
    end

    `uvm_info("lsu_driver", "begin sending idu data config", UVM_NONE)
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

task lsu_driver::idu_signal_config_type2_store(lsu_tr tr);

    /*int matrix_sent_row = 0;
    int cur_row = 0;
    int iter_cnt = 0;
    bit[7:0] pop_data;
    int cycle_cnt = 0;
    bit send_matrix_needed = 0;
    */
    bit lsu_axi_wlast_ff;
    bit lsu_axi_wlast_2ff;
    while(1)begin
        @(negedge lsu_if.clk);
        if(lsu_if.lsu_idu_rdy) begin
            lsu_if.idu_lsu_vld = 1;
            lsu_if.idu_lsu_st_dram = 1;
	        lsu_if.axi_lsu_awrdy = 1;
            lsu_if.idu_lsu_num = 16;
            lsu_if.idu_lsu_len = 4;
	        lsu_if.idu_lsu_ld_st_addr = 'b00000;
            @(negedge lsu_if.clk);
            lsu_if.idu_lsu_vld = 0;
	    //lsu_if.axi_lsu_awrdy = 0;
            @(negedge lsu_if.clk);
            break;
	    end
 	//if(lsu_if.lsu_axi_wlast & (lsu_if.lsu_axi_oram_addr == 4'b1111))begin
    //		lsu_if.axi_lsu_bvld = 1;
	//end
    end
endtask

task lsu_driver::idu_signal_config_load(lsu_tr tr);

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
            lsu_if.idu_lsu_ld_iram = 1;
            //lsu_if.idu_lsu_ld_wram = 1;
	        lsu_if.axi_lsu_arrdy = 1;
            lsu_if.idu_lsu_num = 16;
            lsu_if.idu_lsu_len = 4;
	    lsu_if.idu_lsu_ld_st_addr = 'b00000;
            @(negedge lsu_if.clk);
            lsu_if.idu_lsu_vld = 0;
	    //lsu_if.axi_lsu_awrdy = 0;
            @(negedge lsu_if.clk);
            break;
	    end
 	if(lsu_if.lsu_axi_arvld & lsu_if.axi_lsu_arrdy)begin
    		lsu_if.axi_lsu_rvld = 1;
		lsu_if.axi_lsu_rdata = 64'h123456789;
	end
    end
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







