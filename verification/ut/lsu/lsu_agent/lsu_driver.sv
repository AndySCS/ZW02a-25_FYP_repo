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
    tpu_if.AWREADY = 1;
    tpu_if.ARREADY = 1;
    tpu_if.wfi = 0;

    //assign for the axi read data
    tpu_if.RID = 0;
    tpu_if.RDATA = 0;
    tpu_if.RRESP = 0;
    tpu_if.RVALID = 0;
    tpu_if.RLAST = 0;

    // mm 2*2 matrix
    //harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][31:0] = 32'b0001_00000_00000_0001_0001_0000011;
    
    // wfi
    //harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][31:0] = 32'h7f;

    // ldt load 2 chunk 
    //harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][31:0] = 32'b0_000000_00000_00000_01_000_000_0000000;
    
    // tr = new("tr");
    for (int i=0;i<256;i++) begin
     	  harness.u_tpu.u_lsu.oram.mem[i] = 128'hf0e0d0c0b0a09080;
     	  //harness.u_tpu.u_lsu.oram_hi.mem[i] = 128'hf0e0d0c0b0a09080;
     	  harness.u_tpu.u_lsu.iram.mem[i] = 128'h4321 ;
      	  harness.u_tpu.u_lsu.wram.mem[i] = 128'h4321 ;
	  //harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i] = 128'h00004037000030370000203700001137;
	  harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][31:0] = 32'h00000137 + (32'h1<<(i+12));
	  harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][63:32] = 32'h00000137 + (32'h2<<(i+12));
	  harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][95:64] = 32'h00000137 + (32'h3<<(i+12));
	  harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][127:96] = 32'h00000137 + (32'h4<<(i+12));
	  if(i == 20)begin
	  	harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][31:0] = 32'h7f;
	  end
	  if(i == 0)begin	
		harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][31:0] = 32'b000000011000_00000_000_00001_0010011;
    		harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][63:32] = 32'b0_100000_00000_00001_01_100_000_0000000;
    		//harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][63:32] = 32'b0_000000_00100_00000_01_000_000_0000000;
	  	//harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][31:0] = 32'b0001_00000_00000_0001_0001_0001100;
	  	//harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][63:32] = 32'b0001_00000_00000_0001_0001_0001100;
	  end
	  if(i == 5)begin
	  	harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[i][31:0] = 32'b0001_00000_00000_0001_0001_0001100;
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
    int count_vld;
    int count_ld;	
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
	if (tpu_if.ARVALID & count_vld == 0)begin
        	@(posedge tpu_if.clk);
       	 	@(posedge tpu_if.clk);
        	@(posedge tpu_if.clk);
        	@(posedge tpu_if.clk);
        	@(posedge tpu_if.clk);
        	@(posedge tpu_if.clk);
       	 	@(posedge tpu_if.clk);
        	@(posedge tpu_if.clk);
        	@(posedge tpu_if.clk);
		while (1)begin
        		@(negedge tpu_if.clk);
			tpu_if.RID = count_ld;
			tpu_if.RDATA = count_ld+64'hfedcba9876543210;
			tpu_if.RRESP = 0;
			tpu_if.RVALID = 1;
			if(count_ld >= 14)begin
				break;
			end
			
			//test for invlaid
			//if(count_ld == 2)begin	
			//	tpu_if.RVALID = 0;
			//	tpu_if.RID = count_ld;
			//	tpu_if.RDATA = count_ld+99;
			//	tpu_if.RRESP = 0;
			//end
			count_ld = count_ld + 1;
		end
        	@(negedge tpu_if.clk);
		tpu_if.RID = 15;
		tpu_if.RDATA = 99;
		tpu_if.RRESP = 0;
		tpu_if.RVALID = 1;
		tpu_if.RLAST = 1;
        	@(negedge tpu_if.clk);
		tpu_if.RVALID = 0;
		tpu_if.RLAST = 0;
		count_vld = count_vld+1;
		
	end																																							
      end
	
endtask
 


