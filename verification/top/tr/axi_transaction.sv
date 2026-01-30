class axi_transaction extends uvm_sequence_item;

    bit [`AWID_WIDTH-1:0] AxID;
    bit [`AWADDR_WIDTH-1:0] AxADDR;
    bit [8:0] AxLEN; //bit8 for sign
    bit [2:0] AxSIZE;
    bit [1:0] AxBURST;
    bit [3:0] AxREGION;

    int send_timer;

    function new(string name = "axi_transaction");
       super.new(name);
    endfunction //new()

    extern function void init_axi_tr(
        bit [`AWID_WIDTH-1:0] AxID,
        bit [`AWADDR_WIDTH-1:0] AxADDR,
        bit [7:0] AxLEN,
        bit [2:0] AxSIZE,
        bit [1:0] AxBURST,
        bit [3:0] AxREGION
    );

    `uvm_object_utils(axi_transaction)

endclass //top_tr extends superClass
    
function void axi_transaction::init_axi_tr(
    bit [`AWID_WIDTH-1:0] AxID,
    bit [`AWADDR_WIDTH-1:0] AxADDR,
    bit [7:0] AxLEN,
    bit [2:0] AxSIZE,
    bit [1:0] AxBURST,
    bit [3:0] AxREGION
);

    this.AxID       = AxID;
    this.AxADDR     = AxADDR;
    this.AxLEN      = {1'b0, AxLEN};
    this.AxSIZE     = AxSIZE;
    this.AxBURST    = AxBURST;
    this.AxREGION   = AxREGION;
    send_timer = $urandom_range(100);

endfunction
