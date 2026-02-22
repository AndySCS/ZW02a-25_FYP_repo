class top_monitor extends uvm_monitor;

    virtual top_intf top_if;
    uvm_analysis_port #(model_output_transaction) ap;

    //riscv new
    uvm_analysis_port #(rf_output_transaction) rf_ap; 
    uvm_analysis_port #(rf_output_q_transaction) rf_q_ap;
    uvm_analysis_port #(start_preload_transaction) start_ap;
    rf_output_q_transaction rf_q_tr;

    `uvm_component_utils(top_monitor)
    function new(string name = "top_monitor", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    
endclass //top_input_monitor extends superClass

function void top_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual top_intf)::get(this, "", "top_if", top_if))begin
        `uvm_fatal(get_name(), "top input_monitor fail to get top if")
    end
    ap = new("ap", this);
    rf_ap = new("rf_ap", this);
    rf_q_ap = new("rf_q_ap", this);
    start_ap = new("start_ap", this);
    rf_q_tr = new();
endfunction

task top_monitor::main_phase(uvm_phase phase);
    
    model_output_transaction tr;
    int count;
    int limit_count;
    //riscv_new
    rf_output_transaction rf_tr;
    rf_output_q_transaction rf_q_tr;
    start_preload_transaction start_tr;

    bit wb_vld_ff;
    bit[4:0] wb_addr_ff;
    bit[31:0] wb_data_ff;
    bit[31:0] rf_data_raw [31:0];
    bit[31:0][31:0]rf_data;
    bit[31:0][31:0]rf_data_q[$];
    int cycle_count;
    int dut_size;
    bit[255:0][127:0] iram_data;
    bit[255:0][127:0] wram_data;
    bit[255:0][127:0] oram_lo_data;
    bit[255:0][127:0] oram_hi_data;
    bit[255:0][127:0] iram_ff;
    bit[255:0][127:0] wram_ff;
    bit[255:0][127:0] oram_lo_ff;
    bit[255:0][127:0] oram_hi_ff;
    bit[127:0] iram [255:0];
    bit[127:0] wram [255:0];
    bit[127:0] oram_lo [255:0];
    bit[127:0] oram_hi [255:0];

    bit ld_invld;
    bit st_vld;

    bit lsu_ram_check;
    bit rf_ram_check;

   // top_tr tr_send;

    tr = model_output_transaction::type_id::create();
    rf_tr = rf_output_transaction::type_id::create();	
    rf_q_tr = rf_output_q_transaction::type_id::create();
    start_tr = start_preload_transaction::type_id::create();
//    tr_send = top_tr::type_id::create("imon_top_tr_send");

    //while (1) begin 
        while(1)begin
            if(top_if.start_vld) begin

            @(posedge top_if.clk)
            	//start_tr.start_vld = top_if.start_vld;

            	start_tr.start_vld = 1'b1;
            	start_tr.start_addr = top_if.start_addr;
	    	    for(int i=0; i<256; i++)begin
            		start_tr.start_imem[i] = harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i];
            		start_tr.start_iram[i] = harness.u_tpu.u_lsu.iram.mem[i];
            		start_tr.start_wram[i] = harness.u_tpu.u_lsu.wram.mem[i];
            		start_tr.start_oram_lo[i] = harness.u_tpu.u_lsu.oram_lo.mem[i];
            		start_tr.start_oram_hi[i] = harness.u_tpu.u_lsu.oram_hi.mem[i];
	    	    end
           	    start_ap.write(start_tr);
        	    ap.write(tr);
    	       `uvm_info(get_name(), "data init", UVM_NONE);
            end
        
		    //while(1)begin
            @(posedge top_if.clk)
			if(wb_vld_ff | rf_ram_check)begin
                iram_data    = iram_ff;
                wram_data    = wram_ff;
                oram_lo_data = oram_lo_ff;
                oram_hi_data = oram_hi_ff;
                rf_data_raw = harness.u_tpu.u_rf.rf_data;
                for(int i=0; i<32; i++)begin
                    rf_data[i] = rf_data_raw[i];
                end

    	    	//`uvm_info("top_mon", $sformatf("ram_check :%0h", rf_ram_check), UVM_NONE);
    	    	//`uvm_info("top_mon", $sformatf("ram_check2 :%0h", wb_vld_ff), UVM_NONE);
    	    	//`uvm_info("top_mon", $sformatf("count :%0d", limit_count), UVM_NONE);

    	    	//`uvm_info("top_mon", $sformatf("iram_data2:%0h", iram_data), UVM_NONE);
				rf_q_tr.rf_output.push_back(rf_data);
                rf_q_tr.iram.push_back(iram_data);
                rf_q_tr.wram.push_back(wram_data);
                rf_q_tr.oram_lo.push_back(oram_lo_data);
                rf_q_tr.oram_hi.push_back(oram_hi_data);
				rf_tr.rf_output = rf_data;
				rf_ap.write(rf_tr);
    	    			//`uvm_info(get_name(), "pushing data back", UVM_NONE);
				count = count+1;
			end
	    	if(harness.u_tpu.u_rf.lsu_rf_wb_vld & ~(ld_invld) & count <= 2000)begin
	    		wb_vld_ff = harness.u_tpu.u_rf.lsu_rf_wb_vld;
		    	wb_addr_ff = harness.u_tpu.u_rf.lsu_rf_wb_addr;
		    	wb_data_ff = harness.u_tpu.u_rf.lsu_rf_wb_data;	
				
    	    	//`uvm_info("addr", $sformatf("addr:%0h", wb_addr_ff), UVM_NONE);
    	    	//`uvm_info("data", $sformatf("data:%0h", wb_data_ff), UVM_NONE);
 	        	//rf_tr.rf_output[harness.u_tpu.u_rf.lsu_rf_wb_addr] = harness.u_tpu.u_rf.lsu_rf_wb_data;
	    	end

			else if(harness.u_tpu.u_lsu.alu_lsu_wfi & !lsu_ram_check)begin	
				//rf_tr.rf_output = 'b0;
    	    	`uvm_info(get_name(), "reach wfi", UVM_NONE);
				rf_q_ap.write(rf_q_tr);
                break;
			end
			else if (limit_count >= 50000)begin	
    	    	`uvm_info(get_name(), "reach 50000 limit count", UVM_NONE);
				rf_q_ap.write(rf_q_tr);
                break;
			end
			else begin
				wb_vld_ff = 1'b0;
			end
            if(lsu_ram_check & count <= 2000)begin
                rf_ram_check = 1'b1;
                iram = harness.u_tpu.u_lsu.iram.mem;
                wram = harness.u_tpu.u_lsu.wram.mem;
                oram_lo = harness.u_tpu.u_lsu.oram_lo.mem;
                oram_hi = harness.u_tpu.u_lsu.oram_hi.mem;
                //for (int i=0; i>256; i++)begin
                //    iram_ff[i] = iram[i];
                //    wram_ff[i] = wram[i];
                //    oram_lo_ff[i] = oram_lo[i];
               //     oram_hi_ff[i] = oram_hi[i];
                //end
	    	    for(int i=0; i<256; i++)begin
            		iram_ff[i] = harness.u_tpu.u_lsu.iram.mem[i];
            		wram_ff[i] = harness.u_tpu.u_lsu.wram.mem[i];
            		oram_lo_ff[i] = harness.u_tpu.u_lsu.oram_lo.mem[i];
            		oram_hi_ff[i] = harness.u_tpu.u_lsu.oram_hi.mem[i];
	    	    end
    	    	//`uvm_info("top_mon", $sformatf("iram_data:%0h", iram_ff), UVM_NONE);
            end
	    else begin
		rf_ram_check = 1'b0;
	    end

        //define invld ld
        if(harness.u_tpu.u_lsu.alu_lsu_wb_vld
            &(harness.u_tpu.u_lsu.alu_lsu_lb_op | harness.u_tpu.u_lsu.alu_lsu_lh_op | harness.u_tpu.u_lsu.alu_lsu_lw_op | harness.u_tpu.u_lsu.alu_lsu_lbu_op | harness.u_tpu.u_lsu.alu_lsu_lhu_op)
            &~(harness.u_tpu.u_lsu.alu_lsu_ld_iram | harness.u_tpu.u_lsu.alu_lsu_ld_wram | harness.u_tpu.u_lsu.alu_lsu_ld_oram))begin
            ld_invld = 1'b1;
        end
        else begin
            ld_invld = 1'b0;
        end

        //define vld store
        if((harness.u_tpu.u_lsu.alu_lsu_sb_op | harness.u_tpu.u_lsu.alu_lsu_sh_op | harness.u_tpu.u_lsu.alu_lsu_sw_op)
            &(harness.u_tpu.u_lsu.alu_lsu_st_iram | harness.u_tpu.u_lsu.alu_lsu_st_wram | harness.u_tpu.u_lsu.alu_lsu_st_oram))begin
            st_vld = 1'b1;
	    //if(harness.u_tpu.u_lsu.alu_lsu_sb_op)begin 
    	    //`uvm_info("top_mon", $sformatf("iram:%0h", harness.u_tpu.u_lsu.alu_lsu_st_iram), UVM_NONE);
    	    //`uvm_info("top_mon", $sformatf("wram:%0h", harness.u_tpu.u_lsu.alu_lsu_st_wram), UVM_NONE);
    	    //`uvm_info("top_mon", $sformatf("oram:%0h", harness.u_tpu.u_lsu.alu_lsu_st_oram), UVM_NONE);
    	    //`uvm_info("top_mon", $sformatf("din:%0h", harness.u_tpu.u_lsu.lsu_iram_din), UVM_NONE);
    	    //`uvm_info("top_mon", $sformatf("addr:%0h", harness.u_tpu.u_lsu.lsu_iram_addr), UVM_NONE);
	   //end
        end
        else begin
            st_vld = 1'b0;
        end

        if(((harness.u_tpu.u_lsu.alu_lsu_wb_vld & (~ld_invld)) | st_vld) & (count <= 2000))begin
                lsu_ram_check = 1'b1;
            end
	    else begin
                lsu_ram_check = 1'b0;
	    end
			limit_count = limit_count+1;
		    //end
        end
   // end


endtask