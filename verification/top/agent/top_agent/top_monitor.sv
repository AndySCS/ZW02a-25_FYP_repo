class top_monitor extends uvm_monitor;

    virtual top_intf top_if;
    uvm_analysis_port #(model_output_transaction) ap;
    uvm_analysis_port #(rf_output_transaction) rf_ap;
    uvm_analysis_port #(start_preload_transaction) start_ap;

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
    start_ap = new("rf_ap_test", this);
endfunction

task top_monitor::main_phase(uvm_phase phase);
    
    model_output_transaction tr;
    bit wb_vld_ff;
    bit[4:0] wb_addr_ff;
    bit[31:0] wb_data_ff;
    rf_output_transaction rf_tr;
    start_preload_transaction start_tr;
   // top_tr tr_send;

    tr = model_output_transaction::type_id::create();
    rf_tr = rf_output_transaction::type_id::create();
    start_tr = start_preload_transaction::type_id::create();
//    tr_send = top_tr::type_id::create("imon_top_tr_send");

    while (1) begin 

        //while(1)begin
        @(posedge top_if.clk)
        if(top_if.start_vld) begin
    	    `uvm_info(get_name(), "start_vld", UVM_NONE);
	        rf_tr = new();
            start_tr = new();
            start_tr.start_vld = top_if.start_vld;
            start_tr.start_addr = top_if.start_addr;

	    for(int i; i<256; i++)begin
            start_tr.start_imem[i] = harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i];
	    end
            start_ap.write(start_tr);
            //break;
        end
        //end
	    if(wb_vld_ff)begin
		    for(int i; i<32; i++)begin
 	            rf_tr.rf_output[i] = harness.u_tpu.u_rf.rf_data[i];
		    end
	        rf_ap.write(rf_tr);
    	    //`uvm_info(get_name(), "wb_vld_ff", UVM_NONE);
	        //`uvm_info("wb_addr", $sformatf("wb_addr: %0h", wb_addr_ff), UVM_NONE);
	        //`uvm_info("wb_data", $sformatf("wb_data: %0h", wb_data_ff), UVM_NONE);
	        //`uvm_info("rf_tr_output", $sformatf("rf_tr: %0h", rf_tr.rf_output), UVM_NONE);
	        //`uvm_info("rf_tr_output2", $sformatf("rf_tr2: %0h", rf_ap), UVM_NONE);
	    end

	    if(harness.u_tpu.u_rf.lsu_rf_wb_vld)begin
	    	wb_vld_ff = harness.u_tpu.u_rf.lsu_rf_wb_vld;
		    wb_addr_ff = harness.u_tpu.u_rf.lsu_rf_wb_addr;
		    wb_data_ff = harness.u_tpu.u_rf.lsu_rf_wb_data;	
 	        //rf_tr.rf_output[harness.u_tpu.u_rf.lsu_rf_wb_addr] = harness.u_tpu.u_rf.lsu_rf_wb_data;
	    end
	    else if(harness.u_tpu.u_lsu.alu_lsu_wfi)begin	
    	    `uvm_info(get_name(), "reach wfi", UVM_NONE);
	        `uvm_info("rf_ap", $sformatf("rf_ap: %0h", rf_ap), UVM_NONE);
	    break;
	    end
	    else begin
		    wb_vld_ff = 0;
	    end
        ap.write(tr);

    end

endtask

