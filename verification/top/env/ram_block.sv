class ram_block extends uvm_reg_block;
    uvm_mem ram;

    function new(string name = "ram_block");
        super.new(name, UVM_NO_COVERAGE);
    endfunction

    extern virtual function void build();
    extern function void write_data(int input_data, int addr);
    extern function void write_2d_array(int input_data[][], int addr);
    extern function int read_data(int addr);

endclass

virtual function void ram_block::build();
    ram = uvm_mem::type_id::create("ram", , get_full_name());
    ram.configure(this, 65536, 8, "RW"); 
    add_mem(ram);
endfunction

function void ram_block::write_data(int input_data, int addr);
    uvm_status_e status;
    ram.write(status, addr, input_data);
    if(status != UVM_IS_OK) begin
        `uvm_error(get_name(), $sformatf("Failed to write data to ram, addr = %0d, data = %0d", addr, input_data))
    end
endfunction

function void ram_block::write_2d_array(int input_data[][], int addr);
    uvm_status_e status;

    int row = input_data.size();
    int col = input_data[0].size();
    for(int i = 0; i < row; i++) begin
        for(int j = 0; j < col; j++) begin
            write_data(input_data[i][j], addr + i * col + j);
        end
    end

endfunction

function int ram_block::read_data(int addr);
    uvm_status_e status;
    int data;
    ram.read(status, addr, data);
    if(status != UVM_IS_OK) begin
        `uvm_error(get_name(), $sformatf("Failed to read data from ram, addr = %0d", addr))
    end
    return data;
endfunction