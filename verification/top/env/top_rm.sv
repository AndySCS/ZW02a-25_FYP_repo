typedef bit[31:0][31:0] rf_rlt_q [$];
class top_rm extends uvm_component;

    uvm_blocking_get_port #(model_output_transaction) port;
    uvm_analysis_port #(model_output_transaction) ap;

    uvm_blocking_get_port #(rf_output_transaction) rf_port;
    uvm_analysis_port #(rf_output_transaction) rf_ap;

    uvm_blocking_get_port #(start_preload_transaction) start_port;
    uvm_analysis_port #(rf_output_q_transaction) rf_q_ap;

    model_read_transaction model_rd_tr;
    start_preload_transaction start_cal_tr;
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
    start_cal_tr = new();
    rf_q_tr = new();
    rf_port = new("rf_port", this);
    rf_ap = new("rf_ap", this);
    rf_q_ap = new("rf_q_ap", this);

    start_port = new("start_port", this);    
endfunction

task top_rm::main_phase(uvm_phase phase);
    
    model_output_transaction tr;
    rf_output_transaction rf_tr;
    start_preload_transaction start_tr;
    rf_output_q_transaction rf_q_tr;

    bit [9:0][7:0] model_output;
    bit [31:0][31:0] rf_output;
    rf_rlt_q rf_cal_rlt;
    bit [31:0]rf_cal_rlt_size;
    super.main_phase(phase);

    rf_q_tr = rf_output_q_transaction::type_id::create();

    while(1)begin
        port.get(tr);
        tr.model_output = cal_data();
        ap.write(tr);
    	start_port.get(start_tr);
	start_cal_tr = start_tr;
        rf_port.get(rf_tr);
	
	//`uvm_info("rf_port", $sformatf("rf_port: %0h", rf_tr.rf_output), UVM_NONE);
        rf_ap.write(rf_tr);

	rf_cal_rlt =  riscv_rf_cal();
	rf_cal_rlt_size = rf_cal_rlt.size();
	`uvm_info("size", $sformatf("rf_port test: %0h", rf_cal_rlt_size), UVM_NONE);
	for (int i=0; i<rf_cal_rlt_size; i++)begin
		rf_q_tr.rf_output.push_back(rf_cal_rlt[i]);
	end
	`uvm_info("rf test", $sformatf("rf_port test: %0h", rf_q_tr.rf_output[0]), UVM_NONE);
	`uvm_info("rf test", $sformatf("rf_port test: %0h", rf_q_tr.rf_output[$]), UVM_NONE);
	//rf_q_tr.rf_output = riscv_rf_cal();
//	rf_q_ap.rf_output = rf_cal_rlt;
//	rf_q_ap.write(rf_q_ap);
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
    bit [31:0] instruction;
    bit [4:0] rs1;
    bit [4:0] rs2;
    bit [4:0] rd;
    bit [11:0] imm;
    bit [31:0] rs1_data;
    bit [31:0] rs2_data;
    bit [31:0] rd_data;
    bit [31:0] imm_data;
    bit [4:0] shamt;
    bit [31:0] shift_data;
    bit pc_count;
    bit [31:0] pc_count_num;
    bit [31:0] [31:0] rm_rf ;
    bit [31:0] [31:0] rm_rf_q [$];

    while(1)begin 
        //pc 
        if(start_cal_tr.start_vld & ~pc_count)begin
	    pc_count_num = 0;
            pc = start_cal_tr.start_addr;
	    for (int i; i <32; i++)begin
		rm_rf[i] = 'b0;
    	    `uvm_info("rm_rf_init", $sformatf("rf:%0h ,%0h", i,rm_rf[i]), UVM_NONE);
	    end 
        end
        else begin
            pc = new_pc;
        end
        if(pc[3:2] == 2'b00)begin
   	    instruction = start_cal_tr.start_imem[pc[31:4]][31:0];
        end
        else if(pc[3:2] == 2'b01)begin
   	    instruction = start_cal_tr.start_imem[pc[31:4]][63:32];
        end
        else if(pc[3:2] == 2'b10)begin
   	    instruction = start_cal_tr.start_imem[pc[31:4]][95:64];
        end
        else begin
   	    instruction = start_cal_tr.start_imem[pc[31:4]][127:96];
        end
        `uvm_info("pc", $sformatf("pc: %0h", pc), UVM_NONE);
        `uvm_info("instr", $sformatf("instr: %0h", instruction), UVM_NONE);
        //decode
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
            if (instruction[14:12] == 'b001)begin
                rd_data = rs1 << rs2;
            end
            //slt 
            if (instruction[14:12] == 'b010)begin
                if(rs1_data[31] > rs2_data[31])begin
                    rd_data = 0;
                end
                else if (rs1_data[31] < rs2_data[31])begin
                    rd_data = 1;
                end
                else begin
                    rd_data = rs1_data < rs2_data;
                end
            end
            //sltu
            if (instruction[14:12] == 'b011)begin
                rd_data = rs1_data < rs2_data;
            end
            //xor
            if (instruction[14:12] == 'b100)begin
                rd_data = rs1_data ^ rs2_data;
            end
            //srl & sra
            if (instruction[14:12] == 'b101)begin
                if (instruction[31:15] == 'b0000000)begin
                    rd_data = rs1_data >> rs2_data;
                end
                else begin
                    shift_data = rs1_data >> rs2_data;
		    rd_data = 'b0;
                end
            end
            //or
            if (instruction[14:12] == 'b110)begin
                rd_data = rs1_data | rs2_data;
            end
            //and
            if (instruction[14:12] == 'b111)begin
                rd_data = rs1_data & rs2_data;
            end
        end
        //itype normal operation
        if (instruction[6:0] == 'b0010011)begin
            rs1 = instruction[19:15];
            imm = instruction[31:20];
            rd = instruction[11:7];
            shamt = instruction[24:20];
            rs1_data = rf_output[rs1];
            imm_data = {{12{imm[11]}}, imm};
            //addi
            if (instruction[14:12] == 'b000)begin
                    rd_data = rs1_data + imm_data;
            end
            //slli
            if (instruction[14:12] == 'b001)begin
                rd_data = rs1 << sharm;
            end
            //slit 
            if (instruction[14:12] == 'b010)begin
                if(rs1_data[31] > imm_data[31])begin
                    rd_data = 0;
                end
                else if (rs1_data[31] < imm_data[31])begin
                    rd_data = 1;
                end
                else begin
                    rd_data = rs1_data < imm_data;
                end
            end
            //sltu
            if (instruction[14:12] == 'b011)begin
                rd_data = rs1_data < imm_data;
            end
            //xor
            if (instruction[14:12] == 'b100)begin
                rd_data = rs1_data ^ imm_data;
            end
            //srl & sra
            if (instruction[14:12] == 'b101)begin
                if (instruction[31:15] == 'b0000000)begin
                    rd_data = rs1_data >> shamt;
                end
                else begin
                    shift_data = rs1_data >> shamt;
		            rd_data = 'b0;
                end
            end
            //or
            if (instruction[14:12] == 'b110)begin
                rd_data = rs1_data | imm_data;
            end
            //and
            if (instruction[14:12] == 'b111)begin
                rd_data = rs1_data & imm_data;
            end
            new_pc = pc+4;
        end

        //itype ld 
        else if (instruction[6:0] == 'b0000011)begin
            rs1 = instruction[19:15];
            rs2 = instruction[24:20];
            rd = instruction[11:7];
            rs1_data = rf_output[rs1];
            rs2_data = {{24{1'b0}},{rs2}};
            rd_data = 'b0;
            new_pc = pc+4;
        end
        //stype
        else if (instruction[6:0] == 'b0100011)begin
            rs1 = instruction[19:15];
            rs2 = instruction[24:20];
            rd = instruction[11:7];
            rs1_data = rf_output[rs1];
            rs2_data = {{24{1'b0}},{rs2}};
            rd_data = 'b0;
            new_pc = pc+4;
        end
        //utype
        else if (instruction[6:0] == 'b0110111)begin
            rd = instruction[11:7];
            rd_data = {instruction[31:12],{12{1'b0}}};
	        new_pc = pc+4;	
    	    `uvm_info("utype rd", $sformatf("rd: %0h", rd), UVM_NONE);
    	    `uvm_info("utype result", $sformatf("rd_data: %0h", rd_data), UVM_NONE);
        end
        //auipc
        else if (instruction[6:0] == 'b0010111)begin
            rd = instruction[11:7];
            rd_data = {instruction[31:12],{12{1'b0}}}+pc;
            new_pc = pc + 4; 
        end
        //btype
        else if (instruction[6:0] == 'b1100011)begin
        
        end
        //jtype 
        else if (instruction[6:0] == 'b1101111)begin
            
        end
        else begin
    	    `uvm_info("wfi", $sformatf("wfi: %0h", instruction), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [0]: %0h", rm_rf_q[0][0]), UVM_NONE);	
	        //`uvm_info("queue 0 test", $sformatf("rf [1]: %0h", rm_rf_q[0][1]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [2]: %0h", rm_rf_q[0][2]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [3]: %0h", rm_rf_q[0][3]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [4]: %0h", rm_rf_q[0][4]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [5]: %0h", rm_rf_q[0][5]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [6]: %0h", rm_rf_q[0][6]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [7]: %0h", rm_rf_q[0][7]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [8]: %0h", rm_rf_q[0][8]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [9]: %0h", rm_rf_q[0][9]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [10]: %0h", rm_rf_q[0][10]), UVM_NONE);	
	        //`uvm_info("queue 0 test", $sformatf("rf [11]: %0h", rm_rf_q[0][11]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [12]: %0h", rm_rf_q[0][12]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [13]: %0h", rm_rf_q[0][13]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [14]: %0h", rm_rf_q[0][14]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [15]: %0h", rm_rf_q[0][15]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [16]: %0h", rm_rf_q[0][16]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [17]: %0h", rm_rf_q[0][17]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [18]: %0h", rm_rf_q[0][18]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [19]: %0h", rm_rf_q[0][19]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [20]: %0h", rm_rf_q[0][20]), UVM_NONE);	
	        //`uvm_info("queue 0 test", $sformatf("rf [21]: %0h", rm_rf_q[0][21]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [22]: %0h", rm_rf_q[0][22]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [23]: %0h", rm_rf_q[0][23]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [24]: %0h", rm_rf_q[0][24]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [25]: %0h", rm_rf_q[0][25]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [26]: %0h", rm_rf_q[0][26]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [27]: %0h", rm_rf_q[0][27]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [28]: %0h", rm_rf_q[0][28]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [29]: %0h", rm_rf_q[0][29]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [30]: %0h", rm_rf_q[0][30]), UVM_NONE);	
	        //`uvm_info("queue 0 test", $sformatf("rf [31]: %0h", rm_rf_q[0][31]), UVM_NONE);
	        //`uvm_info("queue 0 test", $sformatf("rf [32]: %0h", rm_rf_q[0][32]), UVM_NONE);

	        //`uvm_info("queue 0 last", $sformatf("rf [0]: %0h", rm_rf_q[$][0]), UVM_NONE);	
	        //`uvm_info("queue 0 last", $sformatf("rf [1]: %0h", rm_rf_q[$][1]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [2]: %0h", rm_rf_q[$][2]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [3]: %0h", rm_rf_q[$][3]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [4]: %0h", rm_rf_q[$][4]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [5]: %0h", rm_rf_q[$][5]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [6]: %0h", rm_rf_q[$][6]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [7]: %0h", rm_rf_q[$][7]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [8]: %0h", rm_rf_q[$][8]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [9]: %0h", rm_rf_q[$][9]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [10]: %0h", rm_rf_q[$][10]), UVM_NONE);	
	        //`uvm_info("queue 0 last", $sformatf("rf [11]: %0h", rm_rf_q[$][11]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [12]: %0h", rm_rf_q[$][12]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [13]: %0h", rm_rf_q[$][13]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [14]: %0h", rm_rf_q[$][14]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [15]: %0h", rm_rf_q[$][15]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [16]: %0h", rm_rf_q[$][16]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [17]: %0h", rm_rf_q[$][17]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [18]: %0h", rm_rf_q[$][18]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [19]: %0h", rm_rf_q[$][19]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [20]: %0h", rm_rf_q[$][20]), UVM_NONE);	
	        //`uvm_info("queue 0 last", $sformatf("rf [21]: %0h", rm_rf_q[$][21]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [22]: %0h", rm_rf_q[$][22]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [23]: %0h", rm_rf_q[$][23]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [24]: %0h", rm_rf_q[$][24]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [25]: %0h", rm_rf_q[$][25]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [26]: %0h", rm_rf_q[$][26]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [27]: %0h", rm_rf_q[$][27]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [28]: %0h", rm_rf_q[$][28]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [29]: %0h", rm_rf_q[$][29]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [30]: %0h", rm_rf_q[$][30]), UVM_NONE);	
	        //`uvm_info("queue 0 last", $sformatf("rf [31]: %0h", rm_rf_q[$][31]), UVM_NONE);
	        //`uvm_info("queue 0 last", $sformatf("rf [32]: %0h", rm_rf_q[$][32]), UVM_NONE);

	        //`uvm_info("queue final size", $sformatf("q_size: %0h", rm_rf_q.size()), UVM_NONE);

	        break;
    	    //`uvm_info("rf_output", $sformatf("rf_output: %0h", rf_output), UVM_NONE);

        end
	    if(|rd)begin
		    rm_rf[rd] = rd_data;
            rf_output[rd] = rd_data;
	    end
	    else begin
		    rm_rf[rd] = 'b0;
            rf_output[rd] = 'b0;
	    end
	        rm_rf_q.push_back(rm_rf);
	        pc_count_num = pc_count_num+1;
	        pc_count = 1;
        end

    return rm_rf_q;
    //return rm_rf_q;
endfunction




