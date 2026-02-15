typedef bit[255:0][127:0] rf_rlt_q [$];
class top_rm extends uvm_component;

    uvm_blocking_get_port #(model_output_transaction) port;
    uvm_analysis_port #(model_output_transaction) ap;
    model_read_transaction model_rd_tr;

    //riscv_new
    uvm_analysis_port #(rf_output_transaction) rf_ap;
    uvm_blocking_get_port #(start_preload_transaction) start_port;
    uvm_analysis_port #(rf_output_q_transaction) rf_q_ap; 
    start_preload_transaction start_tr;
    rf_output_q_transaction rf_q_tr;

    function new(string name = "top_rm", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()

    `uvm_component_utils(top_rm)

    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);

    extern function bit[9:0][7:0] cal_data();
    extern function rf_rlt_q riscv_rf_cal();

endclass //className extends superClass

function void top_rm::build_phase(uvm_phase phase);
    super.build_phase(phase);
    port = new("port", this);
    ap = new("ap", this);
    model_rd_tr = new();

    //riscv new
    rf_ap = new("rf_ap", this);
    rf_q_ap = new("rf_q_ap", this);
    start_port = new("start_port", this);
    start_tr = new();
    rf_q_tr = new();
endfunction

task top_rm::main_phase(uvm_phase phase);
    
    model_output_transaction tr;

    //riscv new
    rf_output_transaction rf_tr;
    bit [9:0][7:0] model_output;
    rf_rlt_q rf_exp_rlt;
    int rf_exp_rlt_size;
    bit[31:0] rf_pc;

    rf_output_q_transaction rf_q_tr;
    rf_tr = rf_output_transaction::type_id::create();
    rf_q_tr = rf_output_q_transaction::type_id::create();
    super.main_phase(phase);

    while(1)begin
        port.get(tr);
        tr.model_output = cal_data();
        ap.write(tr);

	    //riscv_new
	    rf_tr.rf_output = 'b0;
	    rf_ap.write(rf_tr);
    	start_port.get(start_tr);
	    //`uvm_info("top_rm", $sformatf("start_vld_pass: %0h,%0h", start_tr.start_addr,start_tr.start_vld), UVM_NONE);
	    rf_exp_rlt =  riscv_rf_cal();
	    rf_exp_rlt_size = rf_exp_rlt.size();
	    //`uvm_info("top_rm", $sformatf("rf_port test: %0h", rf_exp_rlt_size/2), UVM_NONE);
	    for (int i=0; i<(rf_exp_rlt_size/6); i++)begin
		    rf_q_tr.rf_output.push_back(rf_exp_rlt.pop_front());
            rf_pc = rf_exp_rlt.pop_front();
		    rf_q_tr.iram.push_back(rf_exp_rlt.pop_front());
		    rf_q_tr.wram.push_back(rf_exp_rlt.pop_front());
		    rf_q_tr.oram_lo.push_back(rf_exp_rlt.pop_front());
		    rf_q_tr.oram_hi.push_back(rf_exp_rlt.pop_front());
	        //`uvm_info("top_rm", $sformatf("rf pc: %0h", rf_pc), UVM_NONE);
	    end	
	    rf_q_ap.write(rf_q_tr);	
    end

endtask

function bit[9:0][7:0] top_rm::cal_data();

    int first_layer_ouput[55:0];
    int second_layer_output[9:0];
    bit [784:0] [7:0] first_layer_input;
    bit [56:0]  [7:0] second_layer_input;
    
    bit [9:0]  [7:0] final_output;

    first_layer_input = {model_rd_tr.img_array, 8'b1};

    for(int i = 0; i < 56; i++)begin
        for(int j = 0; j < 785; j++)begin
            first_layer_ouput[i] += int'($signed(first_layer_input[j]) * $signed(model_rd_tr.first_layer_weight[j+i]));
            if(first_layer_ouput[i] > 32767)  first_layer_ouput[i] = 32767;
            if(first_layer_ouput[i] < -32768) first_layer_ouput[i] = -32768;
        end
        if(first_layer_ouput[i] < 0) first_layer_ouput[i] = 0;

        second_layer_input[i+1] = first_layer_ouput[i][7:0];
        if(first_layer_ouput[i] > 127)  second_layer_input[i] = 127;
        if(first_layer_ouput[i] < -128) second_layer_input[i] = -128;

    end

    second_layer_input[0] = 8'b1;

    for(int i = 0; i < 10; i++)begin
        for(int j = 0; j < 56; j++)begin
            second_layer_output[i] += int'($signed(second_layer_input[j]) * $signed(model_rd_tr.second_layer_weight[j+i]));
            if(second_layer_output[i] > 32767)  second_layer_output[i] = 32767;
            if(second_layer_output[i] < -32768) second_layer_output[i] = -32768;
        end
        
        final_output[i+1] = second_layer_output[i][7:0];
        if(second_layer_output[i] > 127)  final_output[i] = 127;
        if(second_layer_output[i] < -128) final_output[i] = -128;
    end

    return final_output;

endfunction

function rf_rlt_q top_rm::riscv_rf_cal();
	
    bit [31:0][31:0] rf_output;
    bit [31:0] pc;
    bit [31:0] new_pc;
    bit [31:0] new_pc_raw;
    bit [31:0] instruction;
    bit [4:0] rs1;
    bit [4:0] rs2;
    bit [4:0] rd;
    bit [11:0] imm;
    bit [20:1] imm_20;
    bit [31:0] rs1_data;
    bit [31:0] rs2_data;
    bit [31:0] rd_data;
    bit [31:0] imm_data;
    bit [4:0]  shamt;
    bit [31:0] shift_data;
    bit [31:0] offset;
    bit [31:0] ram_addr;
    bit ld_invld;
    bit [127:0] ram_data;
    bit [127:0] ram_data_raw;
    bit pc_count;
    bit [31:0] pc_count_num;
    int limit_count;
    bit [31:0] [31:0] rm_rf ;
    //bit [31:0] [31:0] rm_rf_q [$];
    bit [255:0][127:0] rm_rf_q [$];
    bit [255:0][127:0] iram;
    bit [255:0][127:0] wram;
    bit [255:0][127:0] oram_lo;
    bit [255:0][127:0] oram_hi;

    while(1)begin 
        //pc 
        if(start_tr.start_vld & ~pc_count)begin
	        pc_count_num = 0;
            pc = start_tr.start_addr;
	        for (int i=0; i <32; i++)begin
		        rm_rf[i] = 'b0;
    	        //`uvm_info("top_rm", $sformatf("rf:%0h ,%0h", i,rm_rf[i]), UVM_NONE);
	        end
            for (int i=0; i<256; i++)begin
	            iram[i] = start_tr.start_iram[i];
	            wram[i] = start_tr.start_wram[i];
	            oram_lo[i] = start_tr.start_oram_lo[i];
	            oram_hi[i] = start_tr.start_oram_hi[i];
            end
    	    //`uvm_info("top_rm", $sformatf("iram0:%0h", iram[0]), UVM_NONE);
    	    //`uvm_info("top_rm", $sformatf("wram0:%0h", wram[0]), UVM_NONE);
    	    //`uvm_info("top_rm", $sformatf("oram_lo0:%0h", oram_lo[0]), UVM_NONE);
    	    //`uvm_info("top_rm", $sformatf("oram_hi0:%0h", oram_hi[0]), UVM_NONE);
        end
        else begin
            pc = new_pc;
        end

        if(pc[3:2] == 2'b00)begin
   	        instruction = start_tr.start_imem[pc[31:4]][31:0];
        end
        else if(pc[3:2] == 2'b01)begin
   	        instruction = start_tr.start_imem[pc[31:4]][63:32];
        end
        else if(pc[3:2] == 2'b10)begin
   	        instruction = start_tr.start_imem[pc[31:4]][95:64];
        end
        else begin
   	        instruction = start_tr.start_imem[pc[31:4]][127:96];
        end
        //`uvm_info("pc", $sformatf("pc: %0h", pc), UVM_NONE);
        //`uvm_info("instr", $sformatf("instr: %0h", instruction), UVM_NONE);

        //Decode part
        //rtype
        if (instruction[6:0] == 'b0110011)begin
            rs1 = instruction[19:15];
            rs2 = instruction[24:20];
            rd = instruction[11:7];
            rs1_data = rf_output[rs1];
            rs2_data = rf_output[rs2];
            //add & sub
            if (instruction[14:12] == 'b000)begin
                if(instruction[31:25] == 'b0000000)begin
                    rd_data = rs1_data + rs2_data;
                end
                else begin
                    rd_data = rs1_data - rs2_data;

                end
            end
            //sll
            else if (instruction[14:12] == 'b001)begin
                rd_data = rs1_data << rs2_data[4:0];
            end
            //slt 
            else if (instruction[14:12] == 'b010)begin
                if(rs1_data[31] < rs2_data[31])begin
                    rd_data = 0;
                end
                else if (rs1_data[31] > rs2_data[31])begin
                    rd_data = 1;
                end
                else begin
                    rd_data = rs1_data < rs2_data;
                end
            end
            //sltu
            else if (instruction[14:12] == 'b011)begin
                rd_data = rs1_data < rs2_data;
            end
            //xor
            else if (instruction[14:12] == 'b100)begin
                rd_data = rs1_data ^ rs2_data;
            end
            //srl & sra
            else if (instruction[14:12] == 'b101)begin
                if (instruction[31:15] == 'b0000000)begin
                    rd_data = rs1_data >> rs2_data[4:0];
                end
                else begin
                    shift_data = {32{rs1_data[31]}} << (32-rs2_data[4:0]);	
		    rd_data = shift_data | (rs1_data >> rs2_data[4:0]);
                end
            end
            //or
            else if (instruction[14:12] == 'b110)begin
                rd_data = rs1_data | rs2_data;
            end
            //and
            else if (instruction[14:12] == 'b111)begin
                rd_data = rs1_data & rs2_data;
            end
	        else begin
    		    `uvm_info("top_rm", "decode error found in Rtype", UVM_NONE);
	        end
	        new_pc = pc+4;
        end

        //itype normal operation
        else if (instruction[6:0] == 'b0010011)begin
            rs1 = instruction[19:15];
            imm = instruction[31:20];
            rd = instruction[11:7];
            shamt = instruction[24:20];
            rs1_data = rf_output[rs1];
            imm_data = {{20{imm[11]}}, imm};
            //addi
            if (instruction[14:12] == 'b000)begin
                    rd_data = rs1_data + imm_data;
            end
            //slli
            else if (instruction[14:12] == 'b001)begin
                rd_data = rs1_data << shamt;
            end
            //slti 
            else if (instruction[14:12] == 'b010)begin
                if(rs1_data[31] < imm_data[31])begin
                    rd_data = 0;
                end
                else if (rs1_data[31] > imm_data[31])begin
                    rd_data = 1;
                end
                else begin
                    rd_data = rs1_data < imm_data;
                end
            end
            //sltu
            else if (instruction[14:12] == 'b011)begin
                rd_data = rs1_data < imm_data;
            end
            //xor
            else if (instruction[14:12] == 'b100)begin
                rd_data = rs1_data ^ imm_data;
            end
            //srl & sra
            else if (instruction[14:12] == 'b101)begin
                if (instruction[31:25] == 'b0000000)begin
                    rd_data = rs1_data >> shamt;
                end
                else begin
                    shift_data = {32{rs1_data[31]}} << (32-shamt);	
		            rd_data = shift_data | (rs1_data >> shamt);
                end
            end
            //or
            else if (instruction[14:12] == 'b110)begin
                rd_data = rs1_data | imm_data;
            end
            //and
            else if (instruction[14:12] == 'b111)begin
                rd_data = rs1_data & imm_data;
            end
            else begin
    		    `uvm_info("top_rm", "decode error found in Itype", UVM_NONE);
            end
            new_pc = pc+4;
        end
	//itype jalr
	else if (instruction[6:0] == 'b1100111)begin	
            rd = instruction[11:7];
            rs1 = instruction[19:15];
            rs1_data = rf_output[rs1];
            imm = instruction[31:20];
            imm_data = {{20{imm[11]}}, imm};
            rd_data = pc+4;
            new_pc_raw = rs1_data+imm_data;
            new_pc = new_pc_raw[11:0];
        end

        //itype ld 
        else if (instruction[6:0] == 'b0000011)begin
            rs1 = instruction[19:15];
            rd = instruction[11:7];
            rs1_data = rf_output[rs1];
            offset = {{20{instruction[31]}},{instruction[31:20]}};
            ram_addr = rs1_data + offset;
            ld_invld = 0;
    	    //`uvm_info("top_rm", $sformatf("ram_addr1:%0d", ram_addr), UVM_NONE);
    	    //`uvm_info("top_rm", $sformatf("rs1:%0d", rs1), UVM_NONE);
    	    //`uvm_info("top_rm", $sformatf("rs1_data:%0d", rs1_data), UVM_NONE);
    	    //`uvm_info("top_rm", $sformatf("rs1_data[2]:%0d", rf_output[8]), UVM_NONE);
    	    //`uvm_info("top_rm", $sformatf("rs1_data[3]:%0d", rm_rf[8]), UVM_NONE);
    	    //`uvm_info("top_rm", $sformatf("offset:%0d", offset), UVM_NONE);
            //LB
            if(instruction[14:12] == 3'b000)begin
                if(ram_addr[14:13]=='b00) begin
                    ram_data = iram[ram_addr[11:4]];
                end
                else if (ram_addr[14:13]=='b10)begin
                    ram_data = wram[ram_addr[11:4]];
                end
                else if (ram_addr[14:13]=='b01)begin
                    if(ram_addr[12]=='b0)begin
                        ram_data = oram_lo[ram_addr[11:4]];
                    end
                    else begin
                        ram_data = oram_hi[ram_addr[11:4]];
                    end
                end
                else begin         
    			    `uvm_info("top_rm", "decode error found in LB", UVM_NONE);
                    ram_data = 0;
                    ld_invld = 1;
                end
		        ram_data_raw = ram_data >> (ram_addr[3:0]*8);
                rd_data = {{24{ram_data_raw[7]}},{ram_data_raw[7:0]}};
    	    	//`uvm_info("top_rm", $sformatf("ram_data_raw:%0h", ram_data_raw), UVM_NONE);
    	    	//`uvm_info("top_rm", $sformatf("ram_data:%0h", ram_data), UVM_NONE);
    	    	//`uvm_info("top_rm", $sformatf("rd_data_sign:%0h", ram_data_raw[7]), UVM_NONE);
    	    	//`uvm_info("top_rm", $sformatf("rd_data:%0h", rd_data), UVM_NONE);

            end
            //LH
            else if(instruction[14:12] == 3'b001)begin
                if(ram_addr[14:13]=='b00) begin
                    ram_data = iram[ram_addr[11:4]];
                end
                else if (ram_addr[14:13]=='b10)begin
                    ram_data = wram[ram_addr[11:4]];
                end
                else if (ram_addr[14:13]=='b01)begin
                    if(ram_addr[12]=='b0)begin
                        ram_data = oram_lo[ram_addr[11:4]];
                    end
                    else begin
                        ram_data = oram_hi[ram_addr[11:4]];
                    end
                end
                else begin         
    			    `uvm_info("top_rm", "decode error found in LH", UVM_NONE);
                    ram_data = 0;
                    ld_invld = 1;
                end
		        ram_data = ram_data >> (ram_addr[3:1]*16);
                rd_data = {{16{ram_data[15]}},{ram_data[15:0]}};
            end
            //LW
            else if(instruction[14:12] == 3'b010)begin
                if(ram_addr[14:13]=='b00) begin
                    ram_data = iram[ram_addr[11:4]];
                end
                else if (ram_addr[14:13]=='b10)begin
                    ram_data = wram[ram_addr[11:4]];
                end
                else if (ram_addr[14:13]=='b01)begin
                    if(ram_addr[12]=='b0)begin
                        ram_data = oram_lo[ram_addr[11:4]];
                    end
                    else begin
                        ram_data = oram_hi[ram_addr[11:4]];
                    end
                end
                else begin         
    			    `uvm_info("top_rm", "decode error found in LW", UVM_NONE);
                    ram_data = 0;
                    ld_invld = 1;
                end
		        ram_data = ram_data >> (ram_addr[3:2]*32);
                rd_data = ram_data[31:0];
            end
            //LBU
            else if(instruction[14:12] == 3'b100)begin
                if(ram_addr[14:13]=='b00) begin
                    ram_data = iram[ram_addr[11:4]];
    			//`uvm_info("top_rm", "IRAM", UVM_NONE);
                end
                else if (ram_addr[14:13]=='b10)begin
                    ram_data = wram[ram_addr[11:4]];
    			//`uvm_info("top_rm", "WRAM", UVM_NONE);
                end
                else if (ram_addr[14:13]=='b01)begin
                    if(ram_addr[12]=='b0)begin
                        ram_data = oram_lo[ram_addr[11:4]];
    			//`uvm_info("top_rm", "ORAM LO", UVM_NONE);
                    end
                    else begin
                        ram_data = oram_hi[ram_addr[11:4]];
    			//`uvm_info("top_rm", "ORAM HI", UVM_NONE);
                    end
                end
                else begin         
    			    `uvm_info("top_rm", "decode error found in LBU", UVM_NONE);
                    ram_data = 0;
                    ld_invld = 1;
                end
		        ram_data_raw = ram_data >> (ram_addr[3:0]*8);
                rd_data = {{24{1'b0}},ram_data_raw[7:0]};
    	    	//`uvm_info("top_rm", $sformatf("ram_addr1:%0d", ram_addr[3:0]), UVM_NONE);
    	    	//`uvm_info("top_rm", $sformatf("ram_addr2:%0d", ram_addr[11:4]), UVM_NONE);
    	    	//`uvm_info("top_rm", $sformatf("ram_addr3:%0d", ram_addr[12]), UVM_NONE);
            end
            //LBH
            else if(instruction[14:12] == 3'b101)begin
                if(ram_addr[14:13]=='b00) begin
                    ram_data = iram[ram_addr[11:4]];
                end
                else if (ram_addr[14:13]=='b10)begin
                    ram_data = wram[ram_addr[11:4]];
                end
                else if (ram_addr[14:13]=='b01)begin
                    if(ram_addr[12]=='b0)begin
                        ram_data = oram_lo[ram_addr[11:4]];
                    end
                    else begin
                        ram_data = oram_hi[ram_addr[11:4]];
                    end
                end
                else begin         
    			    `uvm_info("top_rm", "decode error found in LHU", UVM_NONE);
                    ram_data = 0;
                    ld_invld = 1;
                end
		        ram_data = ram_data >> (ram_addr[3:1]*16);
                rd_data = {{16{1'b0}},ram_data[15:0]};
            end
            else begin
    			`uvm_info("top_rm", "decode error found in Load", UVM_NONE);
            end
            new_pc = pc+4;
        end

        //stype
        else if (instruction[6:0] == 'b0100011)begin
            rs1 = instruction[19:15];
            rs2 = instruction[24:20];
            rs2_data = rf_output[rs2];
            rs1_data = rf_output[rs1];
            offset = {{20{instruction[31]}},{instruction[31:20]}};
            ram_addr = rs1_data + offset;
            //SB
            if(instruction[14:12] == 3'b000)begin
                if(ram_addr[14:13]=='b00) begin
                    ram_data = iram[ram_addr[11:4]];
                    for (int i=ram_addr[3:0]*8; i>(ram_addr[3:0]*8)+8; i++)begin
                        ram_data[i] = rs2_data[i-(ram_addr[3:0]*8)];
                    end
                    iram[ram_addr[11:4]] = ram_data;
                end
                else if (ram_addr[14:13]=='b10)begin
                    ram_data = wram[ram_addr[11:4]];
                    for (int i=ram_addr[3:0]*8; i>(ram_addr[3:0]*8)+8; i++)begin
                        ram_data[i] = rs2_data[i-(ram_addr[3:0]*8)];
                    end
                    wram[ram_addr[11:4]] = ram_data;
                end
                else if (ram_addr[14:13]=='b01)begin
                    if(ram_addr[12]=='b0)begin
                        ram_data = oram_lo[ram_addr[11:4]];
                        for (int i=ram_addr[3:0]*8; i>(ram_addr[3:0]*8)+8; i++)begin
                            ram_data[i] = rs2_data[i-(ram_addr[3:0]*8)];
                        end
                        oram_lo[ram_addr[11:4]] = ram_data;
                    end
                    else begin
                        ram_data = oram_hi[ram_addr[11:4]];
                        for (int i=ram_addr[3:0]*8; i>(ram_addr[3:0]*8)+8; i++)begin
                            ram_data[i] = rs2_data[i-(ram_addr[3:0]*8)];
                        end
                        oram_hi[ram_addr[11:4]] = ram_data;
                    end
                end
                else begin         
    			    `uvm_info("top_rm", "decode error found in SB", UVM_NONE);
                    ram_data = 0;
                end
            end

            //SH
            else if(instruction[14:12] == 3'b001)begin 
                if(ram_addr[14:13]=='b00) begin
                    ram_data = iram[ram_addr[11:4]];
                    for (int i=ram_addr[3:1]*16; i>(ram_addr[3:1]*16)+16; i++)begin
                        ram_data[i] = rs2_data[i-(ram_addr[3:1]*16)];
                    end
                    iram[ram_addr[11:4]] = ram_data;
                end
                else if (ram_addr[14:13]=='b10)begin
                    ram_data = wram[ram_addr[11:4]];
                    for (int i=ram_addr[3:1]*16; i>(ram_addr[3:1]*16)+16; i++)begin
                        ram_data[i] = rs2_data[i-(ram_addr[3:1]*16)];
                    end
                    wram[ram_addr[11:4]] = ram_data;
                end
                else if (ram_addr[14:13]=='b01)begin
                    if(ram_addr[12]=='b0)begin
                        ram_data = oram_lo[ram_addr[11:4]];
                        for (int i=ram_addr[3:1]*16; i>(ram_addr[3:1]*16)+16; i++)begin
                            ram_data[i] = rs2_data[i-(ram_addr[3:1]*16)];
                        end
                        oram_lo[ram_addr[11:4]] = ram_data;
                    end
                    else begin
                        ram_data = oram_hi[ram_addr[11:4]];
                        for (int i=ram_addr[3:1]*16; i>(ram_addr[3:1]*16)+16; i++)begin
                            ram_data[i] = rs2_data[i-(ram_addr[3:1]*16)];
                        end
                        oram_hi[ram_addr[11:4]] = ram_data;
                    end
                end
                else begin         
    			    `uvm_info("top_rm", "decode error found in SH", UVM_NONE);
                    ram_data = 0;
                end
            end

            else if(instruction[14:12] == 3'b010)begin
                if(ram_addr[14:13]=='b00) begin
                    ram_data = iram[ram_addr[11:4]];
                    for (int i=ram_addr[3:2]*32; i>(ram_addr[3:2]*32)+32; i++)begin
                        ram_data[i] = rs2_data[i-(ram_addr[3:2]*32)];
                    end
                    iram[ram_addr[11:4]] = ram_data;
                end
                else if (ram_addr[14:13]=='b10)begin
                    ram_data = wram[ram_addr[11:4]];
                    for (int i=ram_addr[3:2]*32; i>(ram_addr[3:2]*32)+32; i++)begin
                        ram_data[i] = rs2_data[i-(ram_addr[3:2]*32)];
                    end
                    wram[ram_addr[11:4]] = ram_data;
                end
                else if (ram_addr[14:13]=='b01)begin
                    if(ram_addr[12]=='b0)begin
                        ram_data = oram_lo[ram_addr[11:4]];
                        for (int i=ram_addr[3:2]*32; i>(ram_addr[3:2]*32)+32; i++)begin
                            ram_data[i] = rs2_data[i-(ram_addr[3:2]*32)];
                        end
                        oram_lo[ram_addr[11:4]] = ram_data;
                    end
                    else begin
                        ram_data = oram_hi[ram_addr[11:4]];
                        for (int i=ram_addr[3:2]*32; i>(ram_addr[3:2]*32)+32; i++)begin
                            ram_data[i] = rs2_data[i-(ram_addr[3:2]*32)];
                        end
                        oram_hi[ram_addr[11:4]] = ram_data;
                    end
                end
                else begin         
    			    `uvm_info("top_rm", "decode error found in SW", UVM_NONE);
                    ram_data = 0;
                end
            end
            else begin         
    			`uvm_info("top_rm", "decode error found in Store", UVM_NONE);
            end
            
            new_pc = pc+4;
        end

        //utype
        else if (instruction[6:0] == 'b0110111)begin
            rd = instruction[11:7];
            rd_data = {instruction[31:12],{12{1'b0}}};
	        new_pc = pc+4;	
    	    //`uvm_info("utype rd", $sformatf("rd: %0h", rd), UVM_NONE);
    	    //`uvm_info("utype result", $sformatf("rd_data: %0h", rd_data), UVM_NONE);
        end

        //auipc
        else if (instruction[6:0] == 'b0010111)begin
            rd = instruction[11:7];
            rd_data = {instruction[31:12],{12{1'b0}}}+pc;
            new_pc = pc + 4; 
        end

        //btype
        else if (instruction[6:0] == 'b1100011)begin
            rs1 = instruction[19:15];
            rs2 = instruction[24:20];
            imm = {{instruction[31]}, {instruction[7]}, {instruction[30:25]}, {instruction[11:8]}};
            imm_data = {{20{imm[11]}}, {imm}, {1'b0}};
            rs1_data = rf_output[rs1];
            rs2_data = rf_output[rs2];
            //BEQ
            if(instruction[14:12] == 'b000)begin
                if(rs1_data == rs2_data)begin
		    new_pc_raw = imm_data+pc;
                    new_pc = new_pc_raw[11:0];
                end  
                else begin
                    new_pc = pc+4;
                end
            end
            //BNE
            else if(instruction[14:12] == 'b001)begin
                if(rs1_data != rs2_data)begin
		    new_pc_raw = imm_data+pc;
                    new_pc = new_pc_raw[11:0];
                end  
                else begin
                    new_pc = pc+4;
                end
            end
            //BLT
            else if(instruction[14:12] == 'b100)begin
                if(rs1_data[31] > rs2_data[31])begin
		    new_pc_raw = imm_data+pc;
                    new_pc = new_pc_raw[11:0];
                end 
                else if(rs1_data[31] < rs2_data[31])begin
                    new_pc = pc+4;
                end 
                else begin
                    if(rs1_data < rs2_data)begin
		    new_pc_raw = imm_data+pc;
                    new_pc = new_pc_raw[11:0];
                    end
                    else begin
                        new_pc = pc+4;
                    end
                end
            end
            //BGE
            else if(instruction[14:12] == 'b101)begin
                if(rs1_data[31] < rs2_data[31])begin
		    new_pc_raw = imm_data+pc;
                    new_pc = new_pc_raw[11:0];
                end 
                else if(rs1_data[31] > rs2_data[31])begin
                    new_pc = pc+4;
                end 
                else begin
                    if(rs1_data >= rs2_data)begin
		    new_pc_raw = imm_data+pc;
                    new_pc = new_pc_raw[11:0];
                    end
                    else begin
                        new_pc = pc+4;
                    end
                end
            end
            //BLTU
            else if(instruction[14:12] == 'b110)begin 
                if(rs1_data < rs2_data)begin
		    new_pc_raw = imm_data+pc;
                    new_pc = new_pc_raw[11:0];
                end
                else begin
                    new_pc = pc+4;
                end
            end
            //BGEU
            else if(instruction[14:12] == 'b111)begin
                if(rs1_data >= rs2_data)begin
		    new_pc_raw = imm_data+pc;
                    new_pc = new_pc_raw[11:0];
                end
                else begin
                    new_pc = pc+4;
                end
            end
            else begin         
    			`uvm_info("top_rm", "decode error found Branch", UVM_NONE);
            end
        end

        //jtype
	    //jal 
        else if (instruction[6:0] == 'b1101111)begin
            rd = instruction[11:7];
            imm_20 = {instruction[31],instruction[19:12],{instruction[20]},{instruction[30:21]}};
            imm_data = {{12{imm_20[19]}}, {imm_20}, {1'b0}};
            rd_data = pc+4;
            new_pc_raw = pc+imm_data;
	        new_pc = new_pc_raw[11:0];
        end

        //wfi
        else if (instruction[6:0] == 'b1111111)begin       
	        `uvm_info("wfi reach", $sformatf("q_size: %0h", rm_rf_q.size()), UVM_NONE);
            break;
        end
        else begin
    	    `uvm_info("top_rm", $sformatf("self define instruction: %0h", instruction[6:0]), UVM_NONE);
	        //`uvm_info("queue final size", $sformatf("q_size: %0h", rm_rf_q.size()), UVM_NONE);
            new_pc = pc + 4; 
    	    //`uvm_info("rf_output", $sformatf("rf_output: %0h", rf_output), UVM_NONE);

        end
	    if(pc_count_num > 2000)begin

    	    `uvm_info("top_rm", "instrutcion count reach 2000 limit", UVM_NONE);
            break;
	    end

        //debug use
    	`uvm_info("top_rm", $sformatf("pc_count: %0h", pc_count), UVM_NONE);
    	`uvm_info("top_rm", $sformatf("start_vld: %0h", start_tr.start_vld), UVM_NONE);
    	`uvm_info("top_rm", "instrutcion finish", UVM_NONE);
    	`uvm_info("top_rm", $sformatf("instruction: %0h", instruction), UVM_NONE);
    	`uvm_info("top_rm", $sformatf("instruction_type: %0h", instruction[14:12]), UVM_NONE);
    	`uvm_info("top_rm", $sformatf("pc_count_num: %0h", pc_count_num), UVM_NONE);
    	`uvm_info("top_rm", $sformatf("pc: %0h", pc), UVM_NONE);
    	`uvm_info("top_rm", $sformatf("rd: %0h", rd), UVM_NONE);
    	`uvm_info("top_rm", $sformatf("rd_data: %0h", rd_data), UVM_NONE);
    	`uvm_info("top_rm", $sformatf("rs1: %0h", rs1), UVM_NONE);
    	`uvm_info("top_rm", $sformatf("rs1_data: %0h", rs1_data), UVM_NONE);
    	`uvm_info("top_rm", $sformatf("rs2: %0h", rs2), UVM_NONE);
    	`uvm_info("top_rm", $sformatf("rs2_data: %0h", rs2_data), UVM_NONE);
    	`uvm_info("top_rm", $sformatf("imm_data: %0h", imm_data), UVM_NONE);
    	`uvm_info("top_rm", "\n===================================================================================\n", UVM_NONE);
	//for(int i=0; i<32; i++)begin	
    	//	`uvm_info("top_rm", $sformatf("rf_output %0h : %0h",i ,rf_output[i]), UVM_NONE);
    	//	`uvm_info("top_rm", $sformatf("rm_rf %0h : %0h",i ,rm_rf[i]), UVM_NONE);
	//end	
	    
        //update rf
        if(((instruction[6:0] == 'b0110011) //rtype
            |instruction[6:0] == 'b0010011 //itype_op
            |instruction[6:0] == 'b1100111 //jalr
            |instruction[6:0] == 'b0000011 //load
            |instruction[6:0] == 'b0110111 //lui
            |instruction[6:0] == 'b0010111 //auipc
            |instruction[6:0] == 'b1101111 //jal
        ) & ~ld_invld
        )begin
    	    //`uvm_info("top_rm", "data need push", UVM_NONE);
	        if(|rd)begin
		        rm_rf[rd] = rd_data;
                rf_output[rd] = rd_data;
	        end
	        else begin
		        rm_rf[rd] = 'b0;
            	rf_output[rd] = 'b0;
	        end
	        rm_rf_q.push_back(rm_rf);
            rm_rf_q.push_back(pc);
            rm_rf_q.push_back(iram);
            rm_rf_q.push_back(wram);
            rm_rf_q.push_back(oram_lo);
            rm_rf_q.push_back(oram_hi);
    	    //`uvm_info("top_rm", $sformatf("pc_count_num: %0h", pc_count_num), UVM_NONE);
	        pc_count_num = pc_count_num+1;
	    end
        else if(instruction[6:0] == 'b0100011)begin   
	    rm_rf_q.push_back(rm_rf);
            rm_rf_q.push_back(pc);
            rm_rf_q.push_back(iram);
            rm_rf_q.push_back(wram);
            rm_rf_q.push_back(oram_lo);
            rm_rf_q.push_back(oram_hi);
        end
	    if(limit_count == 10000)begin	
    	    `uvm_info("top_rm", "reach 10000 limit count", UVM_NONE);
            break;
	    end
	    limit_count = limit_count+1;
	    pc_count = 1;
    end

    return rm_rf_q;
endfunction

