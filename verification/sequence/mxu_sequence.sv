class mxu_seqeunce extends uvm_sequence #(mxu_tr);

    `uvm_object_utils(mxu_seqeunce)

    // Randomizable fields for stimulus control
    mxu_tr tr;
    int tr_num = 50;

    function new(string name = "mxu_seqeunce");
        super.new(name);
    endfunction

    extern virtual task body();    
    extern virtual task send_random();    
    extern virtual task send_cnn();    

endclass
    
task mxu_seqeunce::body();
    if($test$plusargs("cnn")) send_cnn();
    else send_random();
    #100;
endtask

task mxu_seqeunce::send_random();
    repeat(tr_num) begin
        `uvm_do(tr)
    end
endtask

task mxu_seqeunce::send_cnn();
    int 	 fd; 			// Variable for file descriptor handle
    int 	 idx;
    int      matrix_row = 0;
    string   line;
    bit      item_doing = 0;

    fd = $fopen ("img.txt", "r");

    while (!$feof(fd)) begin
        
        $fgets(line, fd);
        if(line.len <= 0) break;

        if(!item_doing)begin
            tr = mxu_tr::type_id::create("tr");
            start_item(tr);
            item_doing = 1;
            matrix_row = 0;
            tr.matrix_L[0][8:0] = '{-1, -2, -1, 0, 0, 0, 1, 2, 1};
            tr.matrix_L[1][8:0] = '{-1, 0, 1, -2, 0, 2, -1, 0, 1};
            tr.matrix_Lx = 2;
            tr.matrix_Ly = 9;
            tr.matrix_Ry = 9;
        end

        $fscanf (line, "%d,%d,%d,%d,%d,%d,%d,%d,%d", 
                 tr.matrix_R[matrix_row][0], tr.matrix_R[matrix_row][1], tr.matrix_R[matrix_row][2],
                 tr.matrix_R[matrix_row][3], tr.matrix_R[matrix_row][4], tr.matrix_R[matrix_row][5],
                 tr.matrix_R[matrix_row][6], tr.matrix_R[matrix_row][7], tr.matrix_R[matrix_row][8]);
        matrix_row++;

        if(matrix_row == 16)begin
            tr.matrix_Rx = matrix_row;
            finish_item(tr);
            item_doing = 0;
        end

    end

    if(item_doing)begin
        tr.matrix_Rx = matrix_row;
        finish_item(tr);
        item_doing = 0;
    end

    // Close this file handle
    $fclose(fd);

endtask
