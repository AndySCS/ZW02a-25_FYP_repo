class mxu_seqeunce extends uvm_sequence #(mxu_tr);

    `uvm_object_utils(mxu_seqeunce)

    // Randomizable fields for stimulus control
    mxu_tr tr;
    int tr_num = 50;

    function new(string name = "mxu_seqeunce");
        super.new(name);
    endfunction

    virtual task body();
        repeat(tr_num) begin
            `uvm_do(tr)
        end
        #1000;
    endtask

endclass
