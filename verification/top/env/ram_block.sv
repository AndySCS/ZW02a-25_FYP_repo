class ram_block extends uvm_reg_block;
    uvm_mem ram;

    function new(string name = "ram_block");
        super.new(name, UVM_NO_COVERAGE);
    endfunction

    extern virtual function void build();
    extern task write_data(int input_data, int addr);
    extern task write_2d_array(int input_data[][], int addr);
    extern task read_data(output int data, int addr);

    `uvm_object_utils(ram_block)

endclass

function void ram_block::build();
    ram = new("ram",65536, 8, "RW");
    ram.configure(this);
    add_mem(ram);
endfunction

task ram_block::write_data(int input_data, int addr);
    uvm_status_e status;
    ram.write(status, addr, input_data);
    if(status != UVM_IS_OK) begin
        `uvm_error(get_name(), $sformatf("Failed to write data to ram, addr = %0d, data = %0d", addr, input_data))
    end
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

task ram_block::read_data(output int data, int addr);
    uvm_status_e status;
    ram.read(status, addr, data);
    if(status != UVM_IS_OK) begin
        `uvm_error(get_name(), $sformatf("Failed to read data from ram, addr = %0d", addr))
    end
endtask
