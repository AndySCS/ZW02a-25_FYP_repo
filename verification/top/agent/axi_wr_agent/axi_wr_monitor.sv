class axi_wr_monitor extends uvm_monitor;

    virtual axi_wr_intf axi_wr_if;
    virtual top_intf top_if;

    uvm_analysis_port #(ffn_operator) ap;

    int waddr;
    int wsize;
    int wdata_len;
    int wnum;
    int alloc_ptr;
    cmd_handler cmd_hdlr;
    ram_block ram_blk;
    int output_layer;

    `uvm_component_utils(axi_wr_monitor)
    function new(string name = "axi_wr_monitor", uvm_component parent = null);
       super.new(name, parent);
    endfunction //new()
    
    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
    extern task mon_layer();
    extern task mon_output(ffn_operator tr);
    
endclass //axi_wr_input_monitor extends superClass

function void axi_wr_monitor::build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual axi_wr_intf)::get(this, "", "axi_wr_if", axi_wr_if))begin
        `uvm_fatal(get_name(), "axi_wr_monitor fail to get axi_wr if")
    end
    if(!uvm_config_db#(virtual top_intf)::get(this, "", "top_if", top_if))begin
        `uvm_fatal(get_name(), "axi_wr_monitor fail to get top_if")
    end
    if(!uvm_config_db#(cmd_handler)::get(this, "", "cmd_hdlr", cmd_hdlr))begin
        `uvm_fatal(get_name(), "axi_wr_monitor fail to get cmd_hdlr")
    end
    if(!uvm_config_db#(ram_block)::get(this, "", "ram_blk", ram_blk))begin
        `uvm_fatal(get_name(), "axi_wr_monitor fail to get ram_blk")
    end
    ap = new("ap", this);
endfunction

task axi_wr_monitor::main_phase(uvm_phase phase);
    ffn_operator tr;
    int wdata_len;
    int alloc_ptr;
    int output_num = 10;
    bit[1:0] mon_fsm;

    super.main_phase(phase);   
    
    while(1)begin
        @(posedge axi_wr_if.clk);
        if(top_if.start_vld) begin
            mon_fsm++;
            continue;
        end
        if(mon_fsm == 2'b01)begin
            mon_layer();
            if(top_if.wfi)begin
                mon_output(tr);
                mon_fsm = 2'b00;
            end
        end
    end

endtask

task axi_wr_monitor::mon_layer();
    int alloc_data_q[$];
    int alloc_addr_q[$];

    if(axi_wr_if.AWVALID & axi_wr_if.AWREADY)begin
        waddr = axi_wr_if.AWADDR;
        wdata_len = axi_wr_if.AWLEN + 1;
        wsize = 1 << axi_wr_if.AWSIZE;
    end
    if(axi_wr_if.WVALID & axi_wr_if.WREADY)begin
        for(int i = 0; i < wsize/8; i++)begin
            if(axi_wr_if.WSTRB[i])begin
                wdata_len = wdata_len - 1;
                ram_blk.write_data(int'($signed(axi_wr_if.WDATA[i*8 +: 8])), waddr);
                waddr = waddr + 1;
            end
        end
    end
endtask

task axi_wr_monitor::mon_output(ffn_operator tr);
    int tmp_data;
    bit[15:0] bit_data;
    int alloc_ptr_nxt;

    tr = new();

    tr.layer_output = new[1];
    tr.layer_output[0] = new[cmd_hdlr.output_len[output_layer]];
    alloc_ptr = cmd_hdlr.output_data_addr[output_layer];
    alloc_ptr_nxt = alloc_ptr+1;
    for(int i = 0; i < cmd_hdlr.output_len[output_layer]; i++)begin
        ram_blk.read_data(bit_data[15:0], alloc_ptr_nxt);
        ram_blk.read_data(bit_data[7:0], alloc_ptr);
        tr.layer_output[0][i] = int'($signed(bit_data));
        alloc_ptr = alloc_ptr + 2;
    end
    ap.write(tr);
    output_layer++;

    tr.rescale_layer();
    foreach (tr.quant_data[i,j]) begin
        ram_blk.write_data(tr.quant_data[i][j], cmd_hdlr.output_data_addr[output_layer-1] + i*cmd_hdlr.output_len[output_layer-1]*2 + j*2);
    end

endtask
