class start_preload_transaction extends uvm_sequence_item;

    bit start_vld;
    bit [31:0] start_addr;
    bit [255:0] start_imem [127:0];

    function new(string name = "start_preload_transaction");
       super.new(name);
    endfunction //new()

    `uvm_object_utils(start_preload_transaction)

endclass //top_tr extends superClass

