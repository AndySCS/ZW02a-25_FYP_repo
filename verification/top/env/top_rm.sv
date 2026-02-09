class top_rm extends uvm_component;

    uvm_blocking_get_port #(model_output_transaction) port;
    uvm_analysis_port #(model_output_transaction) ap;

    uvm_blocking_get_port #(rf_output_transaction) rf_port;
    uvm_analysis_port #(rf_output_transaction) rf_ap;

    uvm_blocking_get_port #(start_output_transaction) start_port;

    model_read_transaction model_rd_tr;

    function new(string name = "top_rm", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()

    `uvm_component_utils(top_rm)

    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);

    extern function bit[9:0][7:0] cal_data();
    extern function bit[31:0][31:0] riscv_rf_cal();

endclass //className extends superClass

function void top_rm::build_phase(uvm_phase phase);
    super.build_phase(phase);
    port = new("port", this);
    ap = new("ap", this);
    model_rd_tr = new();

    rf_port = new("rf_port", this);
    rf_ap = new("rf_ap", this);

    start_port = new("start_port", this);    
endfunction

task top_rm::main_phase(uvm_phase phase);
    
    model_output_transaction tr;
    rf_output_transaction rf_tr;
    start_preload_transaction start_tr;
    bit [9:0][7:0] model_output;
    bit [31:0][31:0] rf_output;

    super.main_phase(phase);

    while(1)begin
        port.get(tr);
        tr.model_output = cal_data();
        ap.write(tr);

        rf_port.get(rf_tr);
	    `uvm_info("rf_port", $sformatf("rf_port: %0h", rf_tr.rf_output), UVM_NONE);
        //rf_tr.rf_output = riscv_rf_cal();
        rf_ap.write(rf_tr);
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

function bit[31:0][31:0] top_rm::riscv_rf_cal();
	
    bit [31:0][31:0] rf_output;
	bit [31:0] pc;
    bit [31:0] instruction;
    bit [4:0] rs1;
    bit [4:0] rs2;
    bit [4:0] rd;
    bit [31:0] rs1_data;
    bit [31:0] rs2_data;
    bit [31:0] rd_data;
    bit [31:0] imm_data;

    start_port.get(start_tr);
    //pc 
    if(start_tr.start_vld)begin
        pc = start_tr.start_addr;
    end
    else begin
        pc = pc+4;
    end 
    instruction = start_tr.imem[pc[31:4]][pc[3:2]];

    //decode
    //rtype
    if (instruction[6:0] == 'b0110011)begin

        rs1 = instruction[19:15];
        rs2 = instruction[24:20];
        rd = instruction[11:7];
        rs1_data = rf_tr.rf_output[rs1];
        rs2_data = rf_tr.rf_output[rs2];
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
            if(rs1[31] > rs2[31])begin
                rd_data = 0;
            end
            else if (rs1[31] < rs2[31])begin
                rd_data = 1;
            end
            else begin
                rd_data = rs1 < rs2;
            end
        end
        //sltu
        if (instruction[14:12] == 'b011)begin
            rd_data = rs1 < rs2;
        end
        //xor
        if (instruction[14:12] == 'b100)begin
            rd_data = rs1 ^ rs2;
        end
        //srl & sra
        if (instruction[14:12] == 'b101)begin
            if (instruction[31:15] == 'b0000000)begin
                rd_data = rs1 >> rs2;
            end
            else begin
                shift_data = rs1 >> rs2;
                rd_data = {{rs2{rs1[31]}},{shift_data[(31-rs2):0]}}
            end
        end
        //or
        if (instruction[14:12] == 'b110)begin
            rd_data = rs1 | rs2
        end
        //and
        if (instruction[14:12] == 'b111)begin
            rd_data = rs1 & rs2
        end
    end
    //itype normal operation
    else if (instruction[6:0] == 'b0100011)begin
        rs1 = instruction[19:15];
        rs2 = instruction[24:20];
        rd = instruction[11:7];
        rs1_data = rf_tr.rf_output[rs1];
        rs2_data = {{24{1'b0}},{rs2}};
        //add & sub
        if (instruction[14:12] == 'b000)begin
            rd_data = rs1_data + rs2_data;
        end
        //sll
        if (instruction[14:12] == 'b001)begin
            rd_data = rs1 << rs2;
        end
        //slt 
        if (instruction[14:12] == 'b010)begin
            if(rs1[31] > rs2[31])begin
                rd_data = 0;
            end
            else if (rs1[31] < rs2[31])begin
                rd_data = 1;
            end
            else begin
                rd_data = rs1 < rs2;
            end
        end
        //sltu
        if (instruction[14:12] == 'b011)begin
            rd_data = rs1 < rs2;
        end
        //xor
        if (instruction[14:12] == 'b100)begin
            rd_data = rs1 ^ rs2;
        end
        //srl & sra
        if (instruction[14:12] == 'b101)begin
            if (instruction[31:15] == 'b0000000)begin
                rd_data = rs1 >> rs2;
            end
            else begin
                shift_data = rs1 >> rs2;
                rd_data = {{rs2{rs1[31]}},{shift_data[(31-rs2):0]}}
            end
        end
        //or
        if (instruction[14:12] == 'b110)begin
            rd_data = rs1 | rs2
        end
        //and
        if (instruction[14:12] == 'b111)begin
            rd_data = rs1 & rs2
        end
    end
    //itype ld 
    else if (instruction[6:0] == 'b0000011)begin
    end
    //stype
    else if (instruction[6:0] == 'b0100011)begin
        rs1 = instruction[19:15];
        rs2 = instruction[24:20];
        rd = instruction[11:7];
        rs1_data = rf_tr.rf_output[rs1];
        rs2_data = {{24{1'b0}},{rs2}};
        rd_data = 'b0;
    end
    //utype
    else if (instruction[6:0] == 'b0110111)begin
        rd = instruction[11:7];
        rd_data = {instruction[31:12],{12{1'b0}}};
    end
    //auipc
    else if (instruction[6:0] == 'b0010111)begin
        
    end
    //btype
    else if (instruction[6:0] == 'b1100011)begin
        
    end
    //jtype 

	//`uvm_info("rf_output", $sformatf("rf_output: %0h", rf_output), UVM_NONE);
	return rf_output;

endfunction
