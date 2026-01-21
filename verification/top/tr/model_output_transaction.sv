class model_output_transaction extends uvm_sequence_item;

    bit [9:0][7:0] model_output;

    function new(string name = "model_output_transaction");
       super.new(name);
    endfunction //new()

    `uvm_object_utils(model_output_transaction)

endclass //top_tr extends superClass

