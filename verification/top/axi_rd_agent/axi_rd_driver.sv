class axi_rd_driver extends uvm_driver #(axi_rd_tr); 

    virtual axi_rd_intf axi_rd_if;

    bit [0:783][7:0] img_array;
    bit [0:43950][7:0] first_layer_weight;
    bit [0:569][7:0] second_layer_weigh;

    `uvm_component_utils(axi_rd_driver)
    
    function new(string name = "axi_rd_driver", uvm_component parent = null);
        super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);

    extern function void read_img();
    extern function void read_layer1();
    extern function void read_layer2();

endclass //className extends superClass

function void axi_rd_driver::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual axi_rd_intf)::get(this, "", "axi_rd_if", axi_rd_if))begin
        `uvm_fatal("axi_rd_driver", "axi_rd driver fail to get axi_rd if")
    end
endfunction

task axi_rd_driver::main_phase(uvm_phase phase); 
    super.main_phase(phase);
    //init data
    read_img();
    read_layer1();
    read_layer2();
    
endtask

function void axi_rd_driver::read_img();
    int 	 fd; 			// Variable for file descriptor handle
    int      arr_pos;

    fd = $fopen ("sample.csv", "r")

    while (!$feof(fd)) begin
        
        $fgets(line, fd);
        if(line.len <= 0) break;

        while ($sscanf(line, "%d,%s", value, line) >= 1) begin
            img_array[arr_pos] = value;
            arr_pos++;
        end

        // Close this file handle
        $fclose(fd);
    end

    if(arr_pos != 784) `uvm_error(get_name(), $sformatf("img read is not correct, actual read cnt = %d", arr_pos));

endfunction

function void axi_rd_driver::read_layer1();
    int 	 fd; 			// Variable for file descriptor handle
    int      arr_pos;

    fd = $fopen ("csv/mnist_kernel_785_128.csv", "r")

    while (!$feof(fd)) begin
        
        $fgets(line, fd);
        if(line.len <= 0) break;

        while ($sscanf(line, "%d,%s", value, line) >= 1) begin
            first_layer_weight[arr_pos] = value;
            arr_pos++;
        end

        // Close this file handle
        $fclose(fd);
    end

    if(arr_pos != 43960) `uvm_iierror(get_name(), $sformatf("layer 1 read weight cnt is not correct, actual weight cnt = %d", arr_pos));

endfunction

function void axi_rd_driver::read_layer2();
    int 	 fd; 			// Variable for file descriptor handle
    int      arr_pos;

    fd = $fopen ("csv/mnist_kernel_129_10.csv", "r")

    while (!$feof(fd)) begin
        
        $fgets(line, fd);
        if(line.len <= 0) break;

        while ($sscanf(line, "%d,%s", value, line) >= 1) begin
            first_layer_weight[arr_pos] = value;
            arr_pos++;
        end

        // Close this file handle
        $fclose(fd);
    end

    if(arr_pos != 560) `uvm_iierror(get_name(), $sformatf("layer 2 read weight cnt is not correct, actual weight cnt = %d", arr_pos));

endfunction