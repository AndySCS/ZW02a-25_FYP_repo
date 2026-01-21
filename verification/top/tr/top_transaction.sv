class top_tr extends uvm_sequence_item;

    bit [11:0] start_addr;

    function new(string name = "top_tr");
       super.new(name);
    endfunction //new()

    `uvm_object_utils(top_tr)

endclass //top_tr extends superClass

