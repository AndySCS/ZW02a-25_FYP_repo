class cmd_handler extends uvm_component;

    bit clip;
    bit relu[];
    int quant_rng = 8;
    int layer_num = 0;
    int img_row = 0;
    int img_col = 0;
    int weights_row[];
    int weights_col[];
    int seed;
    string img_dir;
    string weights_dir;
    
    int img_data_addr;
    int weight_data_addr[];

    int output_data_addr[];
    int output_len[];
    int output_layer_num;

    function new(string name = "cmd_handler", uvm_component parent);
        super.new(name, parent);
    endfunction

    extern virtual function void build_phase(uvm_phase phase);
    `uvm_component_utils(cmd_handler)

endclass //cmd_handler extends superClass

function void cmd_handler::build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    clip = $test$plusargs("ffn_clip");

    $value$plusargs("quant_rng=%0d", quant_rng);
    $value$plusargs("layer_num=%0d", layer_num);
    $value$plusargs("img_row=%0d", img_row);
    $value$plusargs("img_col=%0d", img_col);
    $value$plusargs("img_dir=%s", img_dir);
    $value$plusargs("weights_dir=%s", weights_dir);

    weights_row = new[layer_num];
    weights_col = new[layer_num];
    for(int i = 0; i < layer_num; i++) begin
        $value$plusargs($sformatf("weight%0d_row=%s", i, "%0d"), weights_row[i]);
        $value$plusargs($sformatf("weight%0d_col=%s", i, "%0d"), weights_col[i]);
        `uvm_info(get_name(), $sformatf("weights_row[%0d] is %0d", i, weights_row[i]), UVM_NONE)
    end

    relu = new[layer_num];
    for(int i = 0; i < layer_num; i++) begin
        $value$plusargs($sformatf("relu_layer%0d=%s", i, "%b"), relu[i]);
    end

    $value$plusargs("img_data_addr=%0d", img_data_addr);
    weight_data_addr = new[layer_num];
    for(int i = 0; i < layer_num; i++) begin
        $value$plusargs($sformatf("weight%0d_data_addr=%s", i, "%0d"), weight_data_addr[i]);
    end

    output_layer_num = clip ? layer_num : 1;

    output_data_addr = new[output_layer_num];
    for(int i = 0; i < output_layer_num; i++) begin
        $value$plusargs($sformatf("output_addr%0d=%s", i, "%0d"), output_data_addr[i]);
    end

    output_len = new[output_layer_num];
    for(int i = 0; i < output_layer_num; i++) begin
        $value$plusargs($sformatf("output_len%0d=%s", i, "%0d"), output_len[i]);
    end

    seed = $get_initial_random_seed();

endfunction
