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
    bit[31:0][31:0] rf_data;
    bit[31:0][31:0] rf_data_q[$];
    int cycle_count;
    int dut_size;
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
	    	    for(int i; i<256; i++)begin
            		start_tr.start_imem[i] = harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i];
            		start_tr.start_iram[i] = harness.u_tpu.u_lsu.iram.mem[i];
            		start_tr.start_wram[i] = harness.u_tpu.u_lsu.wram.mem[i];
            		start_tr.start_oram_lo[i] = harness.u_tpu.u_lsu.oram_lo.mem[i];
            		start_tr.start_oram_hi[i] = harness.u_tpu.u_lsu.oram_hi.mem[i];
	    	    end
           	    start_ap.write(start_tr);
        	    ap.write(tr);
    	       `uvm_info(get_name(), "reach wfi", UVM_NONE);
            end
        
		    //while(1)begin

            @(posedge top_if.clk)
			if(wb_vld_ff)begin
				if(wb_addr_ff != 'b0)begin
				    rf_data[wb_addr_ff] = wb_data_ff;
				end
				rf_q_tr.rf_output.push_back(rf_data);
				rf_tr.rf_output = rf_data;
				rf_ap.write(rf_tr);
    	    			//`uvm_info(get_name(), "pushing data back", UVM_NONE);
				count = count+1;
			end
	    	if(harness.u_tpu.u_rf.lsu_rf_wb_vld & count <= 2000)begin
	    		wb_vld_ff = harness.u_tpu.u_rf.lsu_rf_wb_vld;
		    	wb_addr_ff = harness.u_tpu.u_rf.lsu_rf_wb_addr;
		    	wb_data_ff = harness.u_tpu.u_rf.lsu_rf_wb_data;	
				
    	    	//`uvm_info("addr", $sformatf("addr:%0h", wb_addr_ff), UVM_NONE);
    	    	//`uvm_info("data", $sformatf("data:%0h", wb_data_ff), UVM_NONE);
 	        	//rf_tr.rf_output[harness.u_tpu.u_rf.lsu_rf_wb_addr] = harness.u_tpu.u_rf.lsu_rf_wb_data;
	    	end

			else if(harness.u_tpu.u_lsu.alu_lsu_wfi)begin	
				//rf_tr.rf_output = 'b0;
    	    	`uvm_info(get_name(), "reach wfi2", UVM_NONE);
				rf_q_ap.write(rf_q_tr);
                break;
			end
			else if (limit_count >= 10000)begin	
    	    	`uvm_info(get_name(), "reach 10000 limit count", UVM_NONE);
				rf_q_ap.write(rf_q_tr);
                break;
			end
			else begin
				wb_vld_ff = 1'b0;
			end
			limit_count = limit_count+1;
		    //end
        end
   // end


endtask
