class model_read_transaction extends uvm_sequence_item;

    bit [783:0][7:0] img_array;
    bit [43959:0][7:0] first_layer_weight;
    bit [569:0][7:0] second_layer_weigh;

    function new(string name = "model_read_transaction");
        super.new(name);
        read_img();
        read_layer1();
        read_layer2();
    endfunction //new()

    extern function void read_img();
    extern function void read_layer1();
    extern function void read_layer2();

    `uvm_object_utils(model_read_transaction)

endclass //top_tr extends superClass

function void model_read_transaction::read_img();
    int 	 fd; 			// Variable for file descriptor handle
    int      arr_pos;
    string   line;

    fd = $fopen ("sample.csv", "r");

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

function void model_read_transaction::read_layer1();
    int 	 fd; 			// Variable for file descriptor handle
    int      arr_pos;
    string   line;

    fd = $fopen ("csv/mnist_kernel_785_128.csv", "r");

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

    if(arr_pos != 43960) `uvm_error(get_name(), $sformatf("layer 1 read weight cnt is not correct, actual weight cnt = %d", arr_pos));

endfunction

function void model_read_transaction::read_layer2();
    int 	 fd; 			// Variable for file descriptor handle
    int      arr_pos;
    string   line;

    fd = $fopen ("csv/mnist_kernel_129_10.csv", "r");

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

    if(arr_pos != 560) `uvm_error(get_name(), $sformatf("layer 2 read weight cnt is not correct, actual weight cnt = %d", arr_pos));

endfunction
