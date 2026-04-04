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
    axi_transaction aw_q[$];

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
    axi_transaction aw_tmp;

    if(axi_wr_if.AWVALID & axi_wr_if.AWREADY)begin
        aw_tmp = new();
        aw_tmp.init_axi_tr(
            .AxID        (axi_wr_if.AWID),
            .AxADDR      (axi_wr_if.AWADDR),
            .AxLEN       (axi_wr_if.AWLEN),
            .AxSIZE      (axi_wr_if.AWSIZE),
            .AxBURST     (axi_wr_if.AWBURST),
            .AxREGION    (axi_wr_if.AWREGION)
        );
        aw_q.push_back(aw_tmp);
	`uvm_info(get_name(), $sformatf("receive AW request, AWADDR = %0d, len = %0d, size = %0d", aw_tmp.AxADDR, aw_tmp.AxLEN, aw_q.size()), UVM_DEBUG)
    end
    if(axi_wr_if.WVALID & axi_wr_if.WREADY)begin
        wsize = 1 << aw_q[0].AxSIZE;
        for(int i = 0; i < wsize; i++)begin
            if(axi_wr_if.WSTRB[i])begin
                waddr = aw_q[0].AxADDR;
                wdata_len = wdata_len - 1;
                ram_blk.write_data(int'($signed(axi_wr_if.WDATA[i*8 +: 8])), waddr);
                `uvm_info(get_name(), $sformatf("write data %0d to addr %0d", int'($signed(axi_wr_if.WDATA[i*8 +: 8])), waddr), UVM_DEBUG)
                aw_q[0].AxADDR = waddr + 1;
            end
        end
        if(aw_q[0].AxLEN == 0)begin
            aw_q.pop_front();
        end
        else begin
            aw_q[0].AxLEN--;// -= 1;
	    `uvm_info(get_name(), $sformatf("receive W request, update len = %0d", aw_q[0].AxLEN), UVM_DEBUG)
        end
    end
endtask

task axi_wr_monitor::mon_output(ffn_operator tr);
    int tmp_data;
    int bit_data_hi;
    int bit_data_lo;
    int alloc_ptr_nxt;

    tr = new();

    tr.layer_output = new[cmd_hdlr.output_row[output_layer]];
    foreach(tr.layer_output[i])begin
        tr.layer_output[i] = new[cmd_hdlr.output_len[output_layer]];
    end
    alloc_ptr = cmd_hdlr.output_data_addr[output_layer];
    for(int i = 0; i < cmd_hdlr.output_row[output_layer]; i++)begin
         for(int j = 0; j < cmd_hdlr.output_len[output_layer]; j++)begin
             alloc_ptr_nxt = alloc_ptr+1;
             ram_blk.read_data(bit_data_hi, alloc_ptr_nxt);
             ram_blk.read_data(bit_data_lo, alloc_ptr);
             tr.layer_output[i][j] = int'($signed({bit_data_hi[7:0], bit_data_lo[7:0]}));
             `uvm_info(get_name(), $sformatf("read data[%0d][%0d] %0d at %0d and %0d",i, j, tr.layer_output[i][j], alloc_ptr, alloc_ptr_nxt), UVM_NONE)
             alloc_ptr = alloc_ptr + 2;
        end
    end
    ap.write(tr);

    tr.rescale_layer();
    foreach (tr.quant_data[i,j]) begin
        ram_blk.write_data(tr.quant_data[i][j], cmd_hdlr.output_data_addr[output_layer] + i*tr.quant_data[0].size() + j);
        `uvm_info(get_name(), $sformatf("write qaunt data %0d at %0d", tr.quant_data[i][j],cmd_hdlr.output_data_addr[output_layer] + i*tr.quant_data[0].size() + j), UVM_DEBUG)
    end
    output_layer++;

endtask
