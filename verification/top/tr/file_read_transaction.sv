class file_read_transaction extends uvm_sequence_item;

    int read_data[][];
    int row;
    int col;

    function new(string name = "file_read_transaction");
        super.new(name);
    endfunction //new()

    extern function void read_file(string file_path, int row = 0, int col = 0);

    `uvm_object_utils(file_read_transaction)

endclass //file_read_transaction extends uvm_sequence_item

function void file_read_transaction::read_file(string file_path, int row, int col);
    int 	 fd; 			// Variable for file descriptor handle
    int          arr_pos;
    string       line;
    string       line_rest;
    int          value;
    int          total_data_num;

    total_data_num = row * col;
    this.row = row;
    this.col = col;
    read_data = new[row];
    for(int i = 0; i < row; i++) begin
        read_data[i] = new[col];
    end
    
    fd = $fopen (file_path, "r");

    while (!$feof(fd)) begin
        
        $fgets(line, fd);
        if(line.len() <= 0) break;

        while ($sscanf(line, "%d,%s", value, line_rest) == 2 || $sscanf(line, "%d", value, line_rest) == 1) begin
            read_data[arr_pos / col][arr_pos % col] = value;
            `uvm_info(get_name(), $sformatf("read data %0d", value), UVM_DEBUG);
            arr_pos++;
            if($sscanf(line, "%d,%s", value, line_rest) == 1) break;
            line = line_rest;
        end

        // Close this file handle
    end
    $fclose(fd);

    if(arr_pos != total_data_num) `uvm_error(get_name(), $sformatf("img read is not correct, actual read cnt = %d, exp read cnt = %0d", arr_pos, total_data_num));

endfunction
