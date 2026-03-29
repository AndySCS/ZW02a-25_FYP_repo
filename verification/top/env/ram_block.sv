class ram_block extends uvm_component;//_reg_block;

    int ram [65535:0];

    function new(string name = "ram_block", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    //extern virtual function void build();
    extern task write_data(int input_data, int addr);
    extern task write_2d_array(int input_data[][], int addr);
    extern task read_data(output int data,input int addr);

    `uvm_component_utils(ram_block)
    //`uvm_object_utils(ram_block)

endclass

//function void ram_block::build();
//    `uvm_info(get_name(), $sformatf("creates ram block"), UVM_NONE)
//    ram = new("ram",65536, 8, "RW");
//    ram.configure(this);
//    this.default_map = create_map("default_map", 'h0, 1, UVM_LITTLE_ENDIAN);
//    this.default_map.add_mem(ram, 'h0, "RW");
//    //add_mem(ram);
//    lock_model();
//endfunction

task ram_block::write_data(int input_data, int addr);
    //uvm_status_e status;
    //ram.write(status, addr, input_data, UVM_BACKDOOR);
    ram[addr] = input_data;
    //if(status != UVM_IS_OK) begin
    //    `uvm_error(get_name(), $sformatf("Failed to write data to ram, addr = %0d, data = %0d", addr, input_data))
    //end
endtask

task ram_block::write_2d_array(int input_data[][], int addr);
    uvm_status_e status;

    int row = input_data.size();
    int col = input_data[0].size();
    for(int i = 0; i < row; i++) begin
        for(int j = 0; j < col; j++) begin
            write_data(input_data[i][j], addr + i * col + j);
        end
    end

endtask

task ram_block::read_data(output int data,input int addr);
    data = int'($signed(ram[addr]));
    //uvm_status_e status;
    //ram.read(status, addr, data, UVM_BACKDOOR);
    //if(status != UVM_IS_OK) begin
    //    `uvm_error(get_name(), $sformatf("Failed to read data from ram, addr = %0d", addr))
    //end
endtask
