class model_reader extends uvm_component;

    file_read_transaction img_data;
    file_read_transaction weights_data[];
    cmd_handler cmd_hdlr;
    string img_dir;
    string weights_dir;
    ram_block ram_blk;

    function new(string name = "model_reader", uvm_component parent = null);

        super.new(name, parent);

    endfunction //new()

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);

        if(!uvm_config_db#(cmd_handler)::get(this, "", "cmd_hdlr", cmd_hdlr))begin
            `uvm_fatal(get_name(), "model_reader fail to get cmd_hdlr")
        end
        if(!uvm_config_db#(ram_block)::get(this, "", "ram_blk", ram_blk))begin
            `uvm_fatal(get_name(), "model_reader fail to get ram_blk")
        end

        img_data = file_read_transaction::type_id::create("img_data");
        img_dir = $sformatf("%s%0d.csv", cmd_hdlr.img_dir, cmd_hdlr.seed);
        img_data.read_file(img_dir, cmd_hdlr.img_row, cmd_hdlr.img_col);
        `uvm_info(get_name(), $sformatf("finish reading img data"), UVM_NONE)

        weights_data = new[cmd_hdlr.layer_num];
        for(int i = 0; i < cmd_hdlr.layer_num; i++) begin
            weights_dir = $sformatf("%s%0d_int%0d.csv", cmd_hdlr.weights_dir,i,  cmd_hdlr.quant_rng);
            `uvm_info(get_name(), $sformatf("create layer weight data %0d ", i), UVM_NONE)
            weights_data[i] = file_read_transaction::type_id::create($sformatf("weights_data_%0d", i));
            `uvm_info(get_name(), $sformatf("begin reading file %s ", weights_dir), UVM_NONE)
            weights_data[i].read_file(weights_dir, cmd_hdlr.weights_row[i], cmd_hdlr.weights_col[i]);
            `uvm_info(get_name(), $sformatf("finish reading layer %0d weight", i), UVM_NONE)
        end
    endfunction

    virtual task reset_phase(uvm_phase phase);
        `uvm_info(get_name(), $sformatf("enter reset phase"), UVM_NONE)
        ram_blk.write_2d_array(img_data.read_data, cmd_hdlr.img_data_addr);
        `uvm_info(get_name(), $sformatf("done img data"), UVM_NONE)
        for(int i = 0; i < cmd_hdlr.layer_num; i++) begin
            ram_blk.write_2d_array(weights_data[i].read_data, cmd_hdlr.weight_data_addr[i]);
        end
        `uvm_info(get_name(), $sformatf("done reset phase"), UVM_NONE)
    endtask

    `uvm_component_utils(model_reader)

endclass //top_tr extends superClass

