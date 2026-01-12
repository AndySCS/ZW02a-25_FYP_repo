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
    extern virtual task alu_signal_config_type1_store(lsu_tr tr);
    extern virtual task alu_signal_config_type1_store_mxualwaysrdy(lsu_tr tr);
    extern virtual task alu_signal_config_type1_store_mxuwaitrdy(lsu_tr tr);
    extern virtual task alu_signal_config_type2_store(lsu_tr tr);
    extern virtual task alu_signal_config_load(lsu_tr tr);
    extern virtual task alu_siganl_config_riscv(lsu_tr tr);
    extern virtual task alu_siganl_config_riscv_st_alwaysrdy(lsu_tr tr);
    extern virtual task alu_siganl_config_riscv_ld_alwaysrdy(lsu_tr tr);
endclass //className extends superClass

function void lsu_driver::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual lsu_intf)::get(this, "", "lsu_if", lsu_if))begin
        `uvm_fatal("lsu_driver", "lsu driver fail to get lsu if")
    end
endfunction

task lsu_driver::main_phase(uvm_phase phase);
    int count;
    lsu_tr tr;
    //tr = new("tr");
    lsu_if.alu_lsu_vld = 0;
    lsu_if.alu_lsu_wb_vld = 0;
    lsu_if.alu_lsu_lb_op = 0;
    lsu_if.alu_lsu_lh_op = 0;
    lsu_if.alu_lsu_lw_op = 0;
    lsu_if.alu_lsu_lbu_op = 0;
    lsu_if.alu_lsu_lhu_op = 0;
    lsu_if.alu_lsu_sb_op = 0;
    lsu_if.alu_lsu_sh_op = 0;
    lsu_if.alu_lsu_sw_op = 0;
    lsu_if.alu_lsu_wb_addr = 0;
    lsu_if.alu_lsu_wb_data = 0;
    lsu_if.alu_lsu_src2 = 0;
    lsu_if.alu_lsu_ld_iram = 0;
    lsu_if.alu_lsu_ld_wram = 0;
    lsu_if.alu_lsu_ld_oram = 0;
    lsu_if.alu_lsu_st_iram = 0;
    lsu_if.alu_lsu_st_wram = 0;
    lsu_if.alu_lsu_st_oram = 0;
    lsu_if.alu_lsu_st_dram = 0;
    lsu_if.alu_lsu_conv = 0;
    lsu_if.alu_lsu_act = 0;
    lsu_if.alu_lsu_pool = 0;
    lsu_if.alu_lsu_wfi = 0;
    lsu_if.alu_lsu_dram_addr = 0;
    lsu_if.alu_lsu_num = 0;
    lsu_if.alu_lsu_len = 0;
    lsu_if.alu_lsu_str = 0;
    lsu_if.alu_lsu_start_x = 0;
    lsu_if.alu_lsu_start_y = 0;
    lsu_if.alu_lsu_ld_st_addr = 0;
    lsu_if.alu_lsu_st_low = 0;
    lsu_if.alu_lsu_iram_start_addr = 0;
    lsu_if.alu_lsu_iram_col_dir = 0;
    lsu_if.alu_lsu_iram_row_dir = 0;
    lsu_if.alu_lsu_iram_col_len = 0;
    lsu_if.alu_lsu_iram_row_len = 0;
    lsu_if.alu_lsu_wram_start_addr = 0;
    lsu_if.alu_lsu_wram_col_dir = 0;
    lsu_if.alu_lsu_wram_row_dir = 0;
    lsu_if.alu_lsu_wram_col_len = 0;
    lsu_if.alu_lsu_wram_row_len = 0;
    lsu_if.alu_lsu_act_type = 0;
    lsu_if.alu_lsu_pool_size = 0 ;
    lsu_if.axi_lsu_awrdy = 0;
    lsu_if.axi_lsu_wrdy = 0;
    lsu_if.axi_lsu_bid = 0;
    lsu_if.axi_lsu_bresp = 0;
    lsu_if.axi_lsu_bvld = 0;
    lsu_if.axi_lsu_resp_oram_addr = 0;
    lsu_if.axi_lsu_arrdy = 0;
    lsu_if.axi_lsu_rid = 0;
    lsu_if.axi_lsu_rdata = 0;
    lsu_if.axi_lsu_rresp = 0;
    lsu_if.axi_lsu_rlast = 0;
    lsu_if.axi_lsu_rvld = 0;
    lsu_if.mxu_lsu_int8_row0_data = 0;
    lsu_if.mxu_lsu_int16_row0_data = 0;
    lsu_if.mxu_lsu_int8_row1_data = 0;
    lsu_if.mxu_lsu_int16_row1_data = 0;
    lsu_if.mxu_lsu_int8_row2_data = 0;
    lsu_if.mxu_lsu_int16_row2_data = 0;
    lsu_if.mxu_lsu_int8_row3_data = 0;
    lsu_if.mxu_lsu_int16_row3_data = 0;
    lsu_if.mxu_lsu_int8_row4_data = 0;
    lsu_if.mxu_lsu_int16_row4_data = 0;
    lsu_if.mxu_lsu_int8_row5_data = 0;
    lsu_if.mxu_lsu_int16_row5_data = 0;
    lsu_if.mxu_lsu_int8_row6_data = 0;
    lsu_if.mxu_lsu_int16_row6_data = 0;
    lsu_if.mxu_lsu_int8_row7_data = 0;
    lsu_if.mxu_lsu_int16_row7_data = 0;
    lsu_if.mxu_lsu_int8_row8_data = 0;
    lsu_if.mxu_lsu_int16_row8_data = 0;
    lsu_if.mxu_lsu_int8_row9_data = 0;
    lsu_if.mxu_lsu_int16_row9_data = 0;
    lsu_if.mxu_lsu_int8_row10_data = 0;
    lsu_if.mxu_lsu_int16_row10_data = 0;
    lsu_if.mxu_lsu_int8_row11_data = 0;
    lsu_if.mxu_lsu_int16_row11_data = 0;
    lsu_if.mxu_lsu_int8_row12_data = 0;
    lsu_if.mxu_lsu_int16_row12_data = 0;
    lsu_if.mxu_lsu_int8_row13_data = 0;
    lsu_if.mxu_lsu_int16_row13_data = 0;
    lsu_if.mxu_lsu_int8_row14_data = 0;
    lsu_if.mxu_lsu_int16_row14_data = 0;
    lsu_if.mxu_lsu_int8_row15_data = 0;
    lsu_if.mxu_lsu_int16_row15_data = 0;
    lsu_if.mxu_lsu_data_rdy = 0;
    lsu_if.mxu_lsu_rdy = 0;

    for (int i=0;i<256;i++) begin
	  if(i==10)begin
     	  	harness.u_lsu.oram.mem[0] = 128'h1123456789abcdeff0e0d0c0b0a19080;
     	  	harness.u_lsu.oram.mem[1] = 128'h2123456789abcdeff0e0d0c0b0a19181;
     	  	harness.u_lsu.oram.mem[2] = 128'h3123456789abcdeff0e0d0c0b0a29282;
     	  	harness.u_lsu.oram.mem[3] = 128'h4123456789abcdeff0e0d0c0b0a39383;
     	  	harness.u_lsu.oram.mem[4] = 128'h5123456789abcdeff0e0d0c0b0a49484;
     	  	harness.u_lsu.oram.mem[5] = 128'h6123456789abcdeff0e0d0c0b0a59585;
     	  	harness.u_lsu.oram.mem[6] = 128'h7123456789abcdeff0e0d0c0b0a69686;
     	  	harness.u_lsu.oram.mem[7] = 128'h8123456789abcdeff0e0d0c0b0a79787;
     	  	harness.u_lsu.oram.mem[8] = 128'h9123456789abcdeff0e0d0c0b0a89888;
     	  	harness.u_lsu.oram.mem[9] = 128'ha123456789abcdeff0e0d0c0b0a99989;

     	  	harness.u_lsu.iram.mem[0] = 128'h1123456789abcdeff0e0d0c0b0a19080;
     	  	harness.u_lsu.iram.mem[1] = 128'h2123456789abcdeff0e0d0c0b0a19181;
     	  	harness.u_lsu.iram.mem[2] = 128'h3123456789abcdeff0e0d0c0b0a29282;
     	  	harness.u_lsu.iram.mem[3] = 128'h4123456789abcdeff0e0d0c0b0a39383;
     	  	harness.u_lsu.iram.mem[4] = 128'h5123456789abcdeff0e0d0c0b0a49484;
     	  	harness.u_lsu.iram.mem[5] = 128'h6123456789abcdeff0e0d0c0b0a59585;
     	  	harness.u_lsu.iram.mem[6] = 128'h7123456789abcdeff0e0d0c0b0a69686;
     	  	harness.u_lsu.iram.mem[7] = 128'h8123456789abcdeff0e0d0c0b0a79787;
     	  	harness.u_lsu.iram.mem[8] = 128'h9123456789abcdeff0e0d0c0b0a89888;
     	  	harness.u_lsu.iram.mem[9] = 128'ha123456789abcdeff0e0d0c0b0a99989;

     	  	harness.u_lsu.oram_hi.mem[0] = {16{8'd1}};
     	  	harness.u_lsu.oram_hi.mem[1] = {16{8'd2}};
     	  	harness.u_lsu.oram_hi.mem[2] = {16{8'd3}};
     	  	harness.u_lsu.oram_hi.mem[3] = {16{8'd4}};
     	  	harness.u_lsu.oram_hi.mem[4] = {16{8'd5}};
     	  	harness.u_lsu.oram_hi.mem[5] = {16{8'd6}};
     	  	harness.u_lsu.oram_hi.mem[6] = {16{8'd7}};
     	  	harness.u_lsu.oram_hi.mem[7] = {16{8'd8}};
     	  	harness.u_lsu.oram_hi.mem[8] = {16{8'd9}};
     	  	harness.u_lsu.oram_hi.mem[9] = {16{8'd10}};
	  end 
     	  harness.u_lsu.oram.mem[i] = 128'hf0e0d0c0b0a09080;
     	  harness.u_lsu.oram_hi.mem[i] = 128'hf0e0d0c0b0a09080;
     	  harness.u_lsu.iram.mem[i] = 128'h0 ;
      	  harness.u_lsu.wram.mem[i] = 128'h0 ;
   end	

    lsu_if.mxu_lsu_int8_row0_data = 'hf0e0d0c0b0a09080;
    lsu_if.mxu_lsu_int8_row1_data = 'hf0e0d0c0b0a09081;
    lsu_if.mxu_lsu_int8_row2_data = 'hf0e0d0c0b0a09082;
    lsu_if.mxu_lsu_int8_row3_data = 'hf0e0d0c0b0a09083;
    lsu_if.mxu_lsu_int8_row4_data = 'hf0e0d0c0b0a09084;
    lsu_if.mxu_lsu_int8_row5_data = 'hf0e0d0c0b0a09085;
    lsu_if.mxu_lsu_int8_row6_data = 'hf0e0d0c0b0a09086;
    lsu_if.mxu_lsu_int8_row7_data = 'hf0e0d0c0b0a09087;
    lsu_if.mxu_lsu_int8_row8_data = 'hf0e0d0c0b0a09088;
    lsu_if.mxu_lsu_int8_row9_data = 'hf0e0d0c0b0a09089;
    lsu_if.mxu_lsu_int8_row10_data = 'hf0e0d0c0b0a0908a;
    lsu_if.mxu_lsu_int8_row11_data = 'hf0e0d0c0b0a0908b;
    lsu_if.mxu_lsu_int8_row12_data = 'hf0e0d0c0b0a0908c;
    lsu_if.mxu_lsu_int8_row13_data = 'hf0e0d0c0b0a0908d;
    lsu_if.mxu_lsu_int8_row14_data = 'hf0e0d0c0b0a0908e;
    lsu_if.mxu_lsu_int8_row15_data = 'hf0e0d0c0b0a0908f;

    @(posedge lsu_if.rst_n); // wait till rstn is high
    count = 0;
    while(1) begin
        //seq_item_port.get_next_item(tr);
        //alu_signal_config_type1_store(tr);
        //alu_signal_config_type1_store_mxualwaysrdy(tr);
        //alu_signal_config_type1_store_mxuwaitrdy(tr);
        //alu_signal_config_type2_store(tr);
        //alu_signal_config_load(tr);
        //alu_siganl_config_riscv(tr);
	//alu_siganl_config_riscv_st_alwaysrdy(tr);
	alu_siganl_config_riscv_ld_alwaysrdy(tr);
        //seq_item_port.item_done();
    end
    	   
endtask
task lsu_driver::alu_siganl_config_riscv(lsu_tr tr);
    int count;	
    while(1)begin
        @(negedge lsu_if.clk);
        if(lsu_if.lsu_alu_rdy) begin
            lsu_if.alu_lsu_vld = 1;
            lsu_if.alu_lsu_st_iram = 1;
            lsu_if.alu_lsu_sb_op = 1;
	    lsu_if.alu_lsu_ld_st_addr = 'b00000;
	    count = count+1;
            @(negedge lsu_if.clk);
            lsu_if.alu_lsu_vld = 0;
	    count = count+1;
            break;
	end
    end
	
endtask
 
task lsu_driver::alu_siganl_config_riscv_ld_alwaysrdy(lsu_tr tr);
    int count;	
    while(1)begin
            @(negedge lsu_if.clk);
            lsu_if.alu_lsu_vld = 1;
            lsu_if.alu_lsu_ld_iram = 1;
            lsu_if.alu_lsu_lb_op = 1;
            //lsu_if.alu_lsu_lh_op = 1;
            //lsu_if.alu_lsu_lw_op = 1;
            //lsu_if.alu_lsu_lbu_op = 1;
            //lsu_if.alu_lsu_lhu_op = 1;
            //lsu_if.alu_lsu_lwu_op = 1;
	    lsu_if.alu_lsu_ld_st_addr = 0;
	    //lsu_if.alu_lsu_ld_st_addr[11:4] = count; // check row change
	    //lsu_if.alu_lsu_ld_st_addr[3:0] = count; // check col change
    	    lsu_if.alu_lsu_src2 = 32'h12345678;
	    count = count+1;
            //break;
    end	
endtask

task lsu_driver::alu_siganl_config_riscv_st_alwaysrdy(lsu_tr tr);
    int count;	
    while(1)begin
            @(negedge lsu_if.clk);
            lsu_if.alu_lsu_vld = 1;
            lsu_if.alu_lsu_st_iram = 1;
            //lsu_if.alu_lsu_sb_op = 1;
            //lsu_if.alu_lsu_sh_op = 1;
            lsu_if.alu_lsu_sw_op = 1;
	    //lsu_if.alu_lsu_ld_st_addr = 0;
	    lsu_if.alu_lsu_ld_st_addr[11:4] = count; // check row change
	    //lsu_if.alu_lsu_ld_st_addr[3:0] = count; // check col change
    	    lsu_if.alu_lsu_src2 = 32'h12345678;
	    count = count+1;
            //break;
    end
	
endtask 
 
task lsu_driver::alu_signal_config_type1_store_mxualwaysrdy(lsu_tr tr);

        @(negedge lsu_if.clk);
        if(lsu_if.lsu_alu_rdy) begin 
    	//while(1)begin
        //@(negedge lsu_if.clk);
        //if(lsu_if.lsu_alu_rdy) begin 
            //@(negedge lsu_if.clk);
            @(negedge lsu_if.clk);
            lsu_if.alu_lsu_vld = 1;
            lsu_if.alu_lsu_st_iram = 1;
            lsu_if.alu_lsu_st_wram = 0;
            lsu_if.alu_lsu_st_oram = 0;
            lsu_if.alu_lsu_st_dram = 0;	
	        lsu_if.mxu_lsu_data_rdy = 1; //always ready
	        //case1
            lsu_if.alu_lsu_num = 15; //number of chunk
            lsu_if.alu_lsu_len = 0; //element size

	    //if(count == 3)begin
	    //	lsu_if.alu_lsu_len = 4;
	    //end
            lsu_if.alu_lsu_start_x = 0;
            lsu_if.alu_lsu_start_y = 3;
            lsu_if.alu_lsu_ld_st_addr = 0;
            //when num more than 1
	    if(lsu_if.alu_lsu_num != 0)begin
	    	@(negedge lsu_if.clk);
	    	lsu_if.alu_lsu_vld = 0;
	    end
	    
    end

    `uvm_info("lsu_driver", "begin sending alu data config", UVM_NONE)
endtask

task lsu_driver::alu_signal_config_type1_store_mxuwaitrdy(lsu_tr tr);
    int count = 0;
	@(negedge lsu_if.clk);
    if(lsu_if.lsu_alu_rdy) begin 
        @(negedge lsu_if.clk);
        lsu_if.alu_lsu_vld = 1;
        lsu_if.alu_lsu_st_iram = 1;
        lsu_if.alu_lsu_st_wram = 0;
        lsu_if.alu_lsu_st_oram = 0;
        lsu_if.alu_lsu_st_dram = 0;
	    lsu_if.mxu_lsu_data_rdy = 0;//not always ready	
	    //case1
	    //lsu_if.alu_lsu_low = 0; //8/16int 
        lsu_if.alu_lsu_num = 3; //number of chunk
        lsu_if.alu_lsu_len = 0; //element size
        lsu_if.alu_lsu_start_x = 0;
        lsu_if.alu_lsu_start_y = 0;
        lsu_if.alu_lsu_ld_st_addr = 0;
	    @(negedge lsu_if.clk);
        lsu_if.alu_lsu_vld = 0;
        @(negedge lsu_if.clk);
        @(negedge lsu_if.clk);
	lsu_if.mxu_lsu_data_rdy = 1; //wait two cycle then pull high ready
    end
    `uvm_info("lsu_driver", "begin sending alu data config", UVM_NONE)
endtask

task lsu_driver::alu_signal_config_type1_store(lsu_tr tr);

    /*int matrix_sent_row = 0;
    int cur_row = 0;
    int iter_cnt = 0;
    bit[7:0] pop_data;
    int cycle_cnt = 0;
    bit send_matrix_needed = 0;
*/
    int count = 0;
        @(negedge lsu_if.clk);
        if(lsu_if.lsu_alu_rdy) begin 
    	//while(1)begin
        //@(negedge lsu_if.clk);
        //if(lsu_if.lsu_alu_rdy) begin 
            //@(negedge lsu_if.clk);
            @(negedge lsu_if.clk);
            lsu_if.alu_lsu_vld = 1;
            lsu_if.alu_lsu_st_iram = 1;
            lsu_if.alu_lsu_st_wram = 0;
            lsu_if.alu_lsu_st_oram = 0;
            lsu_if.alu_lsu_st_dram = 0;
	    lsu_if.mxu_lsu_data_rdy = 0;
	
	        //lsu_if.mxu_lsu_data_rdy = 1;
	        //case1
	        //lsu_if.alu_lsu_low = 0; //8/16int 
            lsu_if.alu_lsu_num = 0; //number of chunk
            lsu_if.alu_lsu_len = 1; //element size
            lsu_if.alu_lsu_start_x = 0;
            lsu_if.alu_lsu_start_y = 0;
            lsu_if.alu_lsu_ld_st_addr = 0;
	    @(negedge lsu_if.clk);
            lsu_if.alu_lsu_vld = 0;
            //lsu_if.alu_lsu_st_iram = 0;
            //@(negedge lsu_if.clk); 
           /// @(negedge lsu_if.clk);
            @(negedge lsu_if.clk);
	    lsu_if.mxu_lsu_data_rdy = 1;
            //break;
        //end
    end

    `uvm_info("lsu_driver", "begin sending alu data config", UVM_NONE)
endtask

task lsu_driver::alu_signal_config_type2_store(lsu_tr tr);
    int count = 0;
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
        if(lsu_if.lsu_alu_rdy) begin
	    //once rdy clear all siganl first
	    lsu_if.axi_lsu_bvld = 0;
	    lsu_if.axi_lsu_bresp = 0;
	    lsu_if.axi_lsu_bid = 0;
            @(negedge lsu_if.clk);
            @(negedge lsu_if.clk);
            @(negedge lsu_if.clk);
	    //lsu_if.alu_lsu_st_low = 1;
            lsu_if.alu_lsu_vld = 1;
            lsu_if.alu_lsu_st_dram = 1;//dram addr
	    lsu_if.axi_lsu_awrdy = 1;
            lsu_if.alu_lsu_num = 10;//num of chunk
            lsu_if.alu_lsu_len = 5;//element size
	    lsu_if.alu_lsu_ld_st_addr = 'b00000;//sram addr
	
            @(negedge lsu_if.clk);
            lsu_if.alu_lsu_vld = 0;
	    //lsu_if.axi_lsu_awrdy = 0;
            @(negedge lsu_if.clk);
            break;
	    end
 	if(lsu_if.lsu_axi_wlast)begin
		count = count+1;
	end
	if(lsu_if.lsu_axi_brdy)begin
	    //assume wait 10 cycle after the wriet data send	
	    if(count >= (lsu_if.alu_lsu_num+1) & (count < (lsu_if.alu_lsu_num+1)*2))begin
		if(count == (lsu_if.alu_lsu_num+1))begin
            		@(negedge lsu_if.clk);
            		@(negedge lsu_if.clk);
            		@(negedge lsu_if.clk);
            		@(negedge lsu_if.clk);
            		@(negedge lsu_if.clk);
		end
	    	lsu_if.axi_lsu_bvld = 1;
	    	lsu_if.axi_lsu_bresp = 0;
		lsu_if.axi_lsu_bid = count;
		count = count+1;
	    end
	    if(count >= (lsu_if.alu_lsu_num+1)*2)begin
            	@(negedge lsu_if.clk);
	    	lsu_if.axi_lsu_bvld = 0;
		lsu_if.axi_lsu_bid = 1;
	    end
        end
    end
endtask

task lsu_driver::alu_signal_config_load(lsu_tr tr);
    int load_cnt;
    int load_last_cnt;
    int read_end;

    while(1)begin
        @(negedge lsu_if.clk);
        if(lsu_if.lsu_alu_rdy) begin
	    read_end = 0;
            lsu_if.alu_lsu_vld = 1;
            lsu_if.alu_lsu_ld_iram = 1;
            //lsu_if.alu_lsu_ld_wram = 1;
	        lsu_if.axi_lsu_arrdy = 1;
            lsu_if.alu_lsu_num = 4; //num of chunk
            lsu_if.alu_lsu_len = 4; //element size
	    lsu_if.alu_lsu_ld_st_addr = 'b00000;
            @(negedge lsu_if.clk);
            lsu_if.alu_lsu_vld = 0;
            @(negedge lsu_if.clk);
            break;
	    end
 	if(lsu_if.lsu_axi_arvld & lsu_if.axi_lsu_arrdy & (load_cnt == 0))begin
    		lsu_if.axi_lsu_rvld = 1;
		lsu_if.axi_lsu_rdata = 64'h12345678;
    		lsu_if.axi_lsu_rid = load_cnt;
    		lsu_if.axi_lsu_rresp = 0;
    		lsu_if.axi_lsu_rlast = 0;
		lsu_if.axi_lsu_rvld = 1;
	end
	else if (load_cnt == lsu_if.alu_lsu_num+1) begin
		if(lsu_if.alu_lsu_len[2])begin
			if (lsu_if.axi_lsu_rlast)begin
    				lsu_if.axi_lsu_rvld = 0;
				lsu_if.axi_lsu_rlast = 0;
				read_end = 1;
			end
			else begin
    				lsu_if.axi_lsu_rvld = 1;
			end
		end
		else begin
    			lsu_if.axi_lsu_rvld = 0;
			lsu_if.axi_lsu_rlast = 0;
			read_end = 1;
		end
	end

	if (lsu_if.axi_lsu_rvld & lsu_if.lsu_axi_rrdy)begin
		load_last_cnt = load_last_cnt+1;
		if(lsu_if.alu_lsu_len[2])begin
			if (load_last_cnt==2)begin
				lsu_if.axi_lsu_rlast = 1'b1;
				load_last_cnt = 0;
				load_cnt = load_cnt + 1;
			end
			else begin
				lsu_if.axi_lsu_rlast = 1'b0;
			end
		end
		else begin
			lsu_if.axi_lsu_rlast = 1'b1;
			load_cnt = load_cnt + 1;
		end
	end
	if (read_end)begin
    		lsu_if.axi_lsu_rvld = 0;
		lsu_if.axi_lsu_rlast = 0;
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

