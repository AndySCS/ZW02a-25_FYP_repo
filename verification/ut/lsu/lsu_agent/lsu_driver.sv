class lsu_driver extends uvm_driver #(lsu_tr);
    /*
    this class is responsible for generating lsu stimulus to the dut
    */

    virtual lsu_intf lsu_if;
    virtual mxu_intf mxu_if;
    virtual tpu_intf tpu_if;

    `uvm_component_utils(lsu_driver)
    
    function new(string name = "lsu_driver", uvm_component parent = null);
        super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    extern virtual task tpu_input(lsu_tr tr);

endclass //className extends superClass

function void lsu_driver::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual tpu_intf)::get(this, "", "tpu_if", tpu_if))begin
        `uvm_fatal("lsu_driver", "lsu driver fail to get tpu if")
    end
endfunction

task lsu_driver::main_phase(uvm_phase phase);
    int count;
    lsu_tr tr;
    int mode;
    int test_mode;

    // input init
    tpu_if.start_vld = 0;
    tpu_if.start_addr = 0;
    tpu_if.wfi = 0;
    //tr = new("tr");

    for (int i=0;i<256;i++) begin
     	  harness.u_tpu.u_lsu.oram.mem[i] = 128'hf0e0d0c0b0a09080;
     	  harness.u_tpu.u_lsu.oram_hi.mem[i] = 128'hf0e0d0c0b0a09080;
     	  harness.u_tpu.u_lsu.iram.mem[i] = 128'h0 ;
      	  harness.u_tpu.u_lsu.wram.mem[i] = 128'h0 ;
	  harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i] = 128'h1 ;
    end
    
    @(posedge tpu_if.rst_n); // wait till rstn is high
    while(1) begin
        //seq_item_port.get_next_item(tr);
        tpu_input(tr);
        seq_item_port.item_done();
    end
    	   
endtask

task lsu_driver::tpu_input(lsu_tr tr);
    int count;	
    while(1)begin
        @(posedge tpu_if.clk);
        if(count == 0) begin
            tpu_if.start_vld = 1;
            tpu_if.start_addr = 0;
	    count = count+1;
            @(posedge tpu_if.clk);
            tpu_if.start_vld = 0;
	    count = count+1;
    	`uvm_info("testing",count, UVM_NONE);
	end
	if (count == 500)begin
		break;
	end
    end
	
endtask
 

