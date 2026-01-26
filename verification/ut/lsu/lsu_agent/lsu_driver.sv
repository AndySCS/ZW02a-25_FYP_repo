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
    tpu_if.wfi = 0;
    tpu_if.start_addr = 0;
    tpu_if.AWID = 0;
    tpu_if.AWADDR = 0;
    tpu_if.AWLEN = 0;
    tpu_if.AWSIZE = 0;
    tpu_if.AWBURST = 0;
    tpu_if.AWREGION = 0;
    tpu_if.AWVALID = 0;
    tpu_if.AWREADY = 1;
    tpu_if.ARID = 0;
    tpu_if.ARADDR = 0;
    tpu_if.ARLEN = 0;
    tpu_if.ARSIZE = 0;
    tpu_if.ARBURST = 0;
    tpu_if.ARREGION = 0;
    tpu_if.ARVALID = 0;
    tpu_if.ARREADY = 1;
    tpu_if.WDATA = 0;
    tpu_if.WSTRB = 0;
    tpu_if.WLAST = 0;
    tpu_if.WVALID = 0;
    tpu_if.WREADY = 1;
    tpu_if.RID = 0;
    tpu_if.RDATA = 0;
    tpu_if.RRESP = 0;
    tpu_if.RLAST = 0;
    tpu_if.RVALID = 0;
    tpu_if.RREADY = 1;
    tpu_if.BID = 0;
    tpu_if.BRESP = 0;
    tpu_if.BVALID = 0;
    tpu_if.BREADY = 1;
    tpu_if.wfi = 0;

    // mm 2*2 matrix
    //harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][31:0] = 32'b0001_00000_00000_0001_0001_0000011;
    
    // wfi
    //harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][31:0] = 32'h7f;
    
    // tr = new("tr");

    for (int i=0;i<256;i++) begin
     	  harness.u_tpu.u_lsu.oram.mem[i] = 128'hf0e0d0c0b0a09080;
     	  harness.u_tpu.u_lsu.oram_hi.mem[i] = 128'hf0e0d0c0b0a09080;
     	  harness.u_tpu.u_lsu.iram.mem[i] = 128'h1234 ;
      	  harness.u_tpu.u_lsu.wram.mem[i] = 128'h1234 ;
	  harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i] = 128'h00004037000030370000203700001037;
	  harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][31:0] = 32'h00000037 + (32'h1<<(i+12));
	  harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][63:32] = 32'h00000037 + (32'h2<<(i+12));
	  harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][95:64] = 32'h00000037 + (32'h3<<(i+12));
	  harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][127:96] = 32'h00000037 + (32'h4<<(i+12));
	  if(i == 20)begin
	  	harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][31:0] = 32'h7f;
	  end
	  if(i == 1)begin
	  	harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][31:0] = 32'b0001_00000_00000_0001_0001_0000110;
	  end
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
 


