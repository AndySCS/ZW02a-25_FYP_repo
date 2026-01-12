class lsu_tr extends uvm_sequence_item;

    // shape of the input matrix
    //matrix_L = w
    //matrix_R = i
    int matrix_Lx;
    int matrix_Ly;
    int matrix_Rx;
    int matrix_Ry;

    int matrix_L[15:0][15:0];
    int matrix_R[15:0][15:0];
    int matrix_result[15:0][15:0];
    bit oram_mem[255:0][127:0];
    bit iram_mem[255:0][127:0];
    bit wram_mem[255:0][127:0];
    bit oram_hi_mem[255:0][255:0];
    
    function new(string name = "lsu_tr");
       super.new(name);
       this.init_matrix();
       this.init_sram();
    endfunction //new()

    `uvm_object_utils(lsu_tr)
    
    extern function void init_matrix();
    extern function void init_sram();
    extern function bit compare(lsu_tr tr);
    //extern function void clear_result();

endclass //lsu_tr extends superClass

function void lsu_tr::init_matrix();
    
    //for (int i=0;i<256;i++) begin
	  //if(i==10)begin
     	  	//harness.u_lsu.oram.mem[0] = 128'h1123456789abcdeff0e0d0c0b0a19080;
     	  	//harness.u_lsu.oram.mem[1] = 128'h2123456789abcdeff0e0d0c0b0a19181;
     	  	//harness.u_lsu.oram.mem[2] = 128'h3123456789abcdeff0e0d0c0b0a29282;
     	  	//harness.u_lsu.oram.mem[3] = 128'h4123456789abcdeff0e0d0c0b0a39383;
     	  	//harness.u_lsu.oram.mem[4] = 128'h5123456789abcdeff0e0d0c0b0a49484;
     	  	//harness.u_lsu.oram.mem[5] = 128'h6123456789abcdeff0e0d0c0b0a59585;
     	  	//harness.u_lsu.oram.mem[6] = 128'h7123456789abcdeff0e0d0c0b0a69686;
     	  	//harness.u_lsu.oram.mem[7] = 128'h8123456789abcdeff0e0d0c0b0a79787;
     	  	//harness.u_lsu.oram.mem[8] = 128'h9123456789abcdeff0e0d0c0b0a89888;
     	  	//harness.u_lsu.oram.mem[9] = 128'ha123456789abcdeff0e0d0c0b0a99989;

     	  	//harness.u_lsu.iram.mem[0] = 128'h1123456789abcdeff0e0d0c0b0a19080;
     	  	//harness.u_lsu.iram.mem[1] = 128'h2123456789abcdeff0e0d0c0b0a19181;
     	  	//harness.u_lsu.iram.mem[2] = 128'h3123456789abcdeff0e0d0c0b0a29282;
     	  	//harness.u_lsu.iram.mem[3] = 128'h4123456789abcdeff0e0d0c0b0a39383;
     	  	//harness.u_lsu.iram.mem[4] = 128'h5123456789abcdeff0e0d0c0b0a49474;
     	  	//harness.u_lsu.iram.mem[5] = 128'h6123456789abcdeff0e0d0c0b0a59585;
     	  	//harness.u_lsu.iram.mem[6] = 128'h7123456789abcdeff0e0d0c0b0a69686;
     	  	//harness.u_lsu.iram.mem[7] = 128'h8123456789abcdeff0e0d0c0b0a79787;
     	  	//harness.u_lsu.iram.mem[8] = 128'h9123456789abcdeff0e0d0c0b0a89878;
     	  	//harness.u_lsu.iram.mem[9] = 128'ha123456789abcdeff0e0d0c0b0a99979;

     	  	//harness.u_lsu.oram_hi.mem[0] = {16{8'd1}};
     	  	//harness.u_lsu.oram_hi.mem[1] = {16{8'd2}};
     	  	//harness.u_lsu.oram_hi.mem[2] = {16{8'd3}};
     	  	//harness.u_lsu.oram_hi.mem[3] = {16{8'd4}};
     	  	//harness.u_lsu.oram_hi.mem[4] = {16{8'd5}};
     	  	//harness.u_lsu.oram_hi.mem[5] = {16{8'd6}};
     	  	//harness.u_lsu.oram_hi.mem[6] = {16{8'd7}};
     	  	//harness.u_lsu.oram_hi.mem[7] = {16{8'd8}};
     	  	//harness.u_lsu.oram_hi.mem[8] = {16{8'd9}};
     	  	//harness.u_lsu.oram_hi.mem[9] = {16{8'd10}};
	  //end 
     	  //harness.u_lsu.oram.mem[i] = 128'hf0e0d0c0b0a09080;
     	  //harness.u_lsu.oram_hi.mem[i] = 128'hf0e0d0c0b0a09080;
     	  //harness.u_lsu.iram.mem[i] = 128'h0 ;
      	  //harness.u_lsu.wram.mem[i] = 128'h0 ;
   //end	
    for(int i = 0; i < 16; i++)begin
        for(int j = 0; j < 16; j++)begin
            //FIXME: change to randome
            this.matrix_Lx = 16;
            this.matrix_Ly = 16;
            this.matrix_Rx = 16;
            this.matrix_Ry = 16;
            //FIXME: chamge to random
            this.matrix_R[i][j] = i;
            this.matrix_L[i][j] = i;
            this.matrix_result[i][j] = 0;
        end
    end

endfunction
function void lsu_tr::init_sram();
    for (int i=0;i<256;i++) begin
	for(int j=0;j<128;j++)begin
     	    this.oram_mem[i][j] = i;
     	    this.oram_hi_mem[i][j] = i;
     	    this.iram_mem[i][j] = i;
      	    this.wram_mem[i][j] = i;
	end
    end	

endfunction

function bit lsu_tr::compare(lsu_tr tr);
    
    bit match = 1;
    for(int i = 0; i < 16; i++)begin
        for(int j = 0; j < 16; j++)begin
            if(this.matrix_result[i][j] != tr.matrix_result[i][j]) begin
                match = 0;
                break;
            end
        end
        if(!match) break;
    end

    return match;

endfunction

/*
function void lsu_tr::clear_result();
    
    for(int i = 0; i < 16; i++)begin
        this.matrix_result[i].q.delete();
        for(int j = 0; j < 16; j++)begin
            this.matrix_R[i].q.push_back(0);
        end
    end

endfunction
