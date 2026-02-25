`ifndef RTYPE_SEQ_SV
`define RTYPE_SEQ_SV

class rtype_seq extends uvm_sequence;
    `uvm_object_utils(rtype_seq);	

    instr_addi  addi_instr;
	instr_rtype rtype;
    instr_add   add_instr;
    instr_sub   sub_instr;
    instr_sll   sll_instr;
    instr_slt   slt_instr;
    instr_sltu  sltu_instr;
    instr_xor   xor_instr;
    instr_srl   srl_instr;
    instr_sra   sra_instr;
    instr_or    or_instr;
    instr_and   and_instr;

    extern function bit[31:0] itype_addi_gen();
    extern function bit[31:0] rtype_rand_gen();
    extern function bit[31:0] rtype_add_gen();
    extern function bit[31:0] rtype_sub_gen();
    extern function bit[31:0] rtype_sll_gen();
    extern function bit[31:0] rtype_slt_gen();
    extern function bit[31:0] rtype_sltu_gen();
    extern function bit[31:0] rtype_xor_gen();
    extern function bit[31:0] rtype_srl_gen();
    extern function bit[31:0] rtype_sra_gen();
    extern function bit[31:0] rtype_or_gen();
    extern function bit[31:0] rtype_and_gen();
    extern function new(string name="rtype_seq");
    extern task body();
endclass

function rtype_seq::new(string name="rtype_seq");
    super.new(name);
endfunction

task rtype_seq::body();
    static bit [255:0][127:0] ram_tmp;
    static bit [127:0] ram_tmp_pre;
    static int ram_count;

    //data init
	//addi
    for(int i = 0; i < 10; i++) begin
		ram_tmp_pre[31:0]   = itype_addi_gen();
		ram_tmp_pre[63:32]  = itype_addi_gen();
		ram_tmp_pre[95:64]  = itype_addi_gen();
		ram_tmp_pre[127:96] = itype_addi_gen();
		ram_tmp[i] = ram_tmp_pre;
		//ram_count = ram_count+1;
    end

	//add
    for(int i = 10; i < 20; i++) begin
		ram_tmp_pre[31:0]   = rtype_add_gen();
		ram_tmp_pre[63:32]  = rtype_add_gen();
		ram_tmp_pre[95:64]  = rtype_add_gen();
		ram_tmp_pre[127:96] = rtype_add_gen();
		ram_tmp[i] = ram_tmp_pre;
		//ram_count = ram_count+1;
    end

	//sub
    for(int i = 20; i < 30; i++) begin
		ram_tmp_pre[31:0]   = rtype_sub_gen();
		ram_tmp_pre[63:32]  = rtype_sub_gen();
		ram_tmp_pre[95:64]  = rtype_sub_gen();
		ram_tmp_pre[127:96] = rtype_sub_gen();
		ram_tmp[i] = ram_tmp_pre;
		//ram_count = ram_count+1;
    end


	//sll
    for(int i = 30; i < 40; i++) begin
		ram_tmp_pre[31:0]   = rtype_sll_gen();
		ram_tmp_pre[63:32]  = rtype_sll_gen();
		ram_tmp_pre[95:64]  = rtype_sll_gen();
		ram_tmp_pre[127:96] = rtype_sll_gen();
		ram_tmp[i] = ram_tmp_pre;
		//ram_count = ram_count+1;
    end

	//slt
    for(int i = 40; i < 50; i++) begin
		ram_tmp_pre[31:0]   = rtype_slt_gen();
		ram_tmp_pre[63:32]  = rtype_slt_gen();
		ram_tmp_pre[95:64]  = rtype_slt_gen();
		ram_tmp_pre[127:96] = rtype_slt_gen();
		ram_tmp[i] = ram_tmp_pre;
		//ram_count = ram_count+1;
    end

	//sltu
    for(int i = 50; i < 60; i++) begin
		ram_tmp_pre[31:0]   = rtype_sltu_gen();
		ram_tmp_pre[63:32]  = rtype_sltu_gen();
		ram_tmp_pre[95:64]  = rtype_sltu_gen();
		ram_tmp_pre[127:96] = rtype_sltu_gen();
		ram_tmp[i] = ram_tmp_pre;
		//ram_count = ram_count+1;
    end

	//xor
    for(int i = 60; i < 70; i++) begin
		ram_tmp_pre[31:0]   = rtype_xor_gen();
		ram_tmp_pre[63:32]  = rtype_xor_gen();
		ram_tmp_pre[95:64]  = rtype_xor_gen();
		ram_tmp_pre[127:96] = rtype_xor_gen();
		ram_tmp[i] = ram_tmp_pre;
		//ram_count = ram_count+1;
    end

	//srl
    for(int i = 70; i < 80; i++) begin
		ram_tmp_pre[31:0]   = rtype_srl_gen();
		ram_tmp_pre[63:32]  = rtype_srl_gen();
		ram_tmp_pre[95:64]  = rtype_srl_gen();
		ram_tmp_pre[127:96] = rtype_srl_gen();
		ram_tmp[i] = ram_tmp_pre;
		//ram_count = ram_count+1;
    end

	//sra
    for(int i = 80; i < 90; i++) begin
		ram_tmp_pre[31:0]   = rtype_sra_gen();
		ram_tmp_pre[63:32]  = rtype_sra_gen();
		ram_tmp_pre[95:64]  = rtype_sra_gen();
		ram_tmp_pre[127:96] = rtype_sra_gen();
		ram_tmp[i] = ram_tmp_pre;
		//ram_count = ram_count+1;
    end

	//or
    for(int i = 90; i < 100; i++) begin
		ram_tmp_pre[31:0]   = rtype_or_gen();
		ram_tmp_pre[63:32]  = rtype_or_gen();
		ram_tmp_pre[95:64]  = rtype_or_gen();
		ram_tmp_pre[127:96] = rtype_or_gen();
		ram_tmp[i] = ram_tmp_pre;
		//ram_count = ram_count+1;
    end

	//and
    for(int i = 100; i < 110; i++) begin
		ram_tmp_pre[31:0]   = rtype_and_gen();
		ram_tmp_pre[63:32]  = rtype_and_gen();
		ram_tmp_pre[95:64]  = rtype_and_gen();
		ram_tmp_pre[127:96] = rtype_and_gen();
		ram_tmp[i] = ram_tmp_pre;
		//ram_count = ram_count+1;
    end

	//rand
    for(int i = 110; i < 256; i++) begin
		ram_tmp_pre[31:0]   = rtype_rand_gen();
		ram_tmp_pre[63:32]  = rtype_rand_gen();
		ram_tmp_pre[95:64]  = rtype_rand_gen();
		ram_tmp_pre[127:96] = rtype_rand_gen();
		ram_tmp[i] = ram_tmp_pre;
		//ram_count = ram_count+1;
    end

    ram_tmp[255][31:0]   = 'h7f;
    ram_tmp[255][63:32]  = 'h7f; 
    ram_tmp[255][95:64]  = 'h7f; 
    ram_tmp[255][127:96] = 'h7f; 
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[0] = ram_tmp[0];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[1] = ram_tmp[1];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[2] = ram_tmp[2];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[3] = ram_tmp[3];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[4] = ram_tmp[4];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[5] = ram_tmp[5];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[6] = ram_tmp[6];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[7] = ram_tmp[7];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[8] = ram_tmp[8];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[9] = ram_tmp[9];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[10] = ram_tmp[10];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[11] = ram_tmp[11];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[12] = ram_tmp[12];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[13] = ram_tmp[13];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[14] = ram_tmp[14];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[15] = ram_tmp[15];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[16] = ram_tmp[16];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[17] = ram_tmp[17];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[18] = ram_tmp[18];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[19] = ram_tmp[19];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[20] = ram_tmp[20];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[21] = ram_tmp[21];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[22] = ram_tmp[22];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[23] = ram_tmp[23];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[24] = ram_tmp[24];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[25] = ram_tmp[25];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[26] = ram_tmp[26];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[27] = ram_tmp[27];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[28] = ram_tmp[28];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[29] = ram_tmp[29];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[30] = ram_tmp[30];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[31] = ram_tmp[31];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[32] = ram_tmp[32];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[33] = ram_tmp[33];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[34] = ram_tmp[34];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[35] = ram_tmp[35];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[36] = ram_tmp[36];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[37] = ram_tmp[37];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[38] = ram_tmp[38];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[39] = ram_tmp[39];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[40] = ram_tmp[40];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[41] = ram_tmp[41];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[42] = ram_tmp[42];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[43] = ram_tmp[43];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[44] = ram_tmp[44];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[45] = ram_tmp[45];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[46] = ram_tmp[46];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[47] = ram_tmp[47];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[48] = ram_tmp[48];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[49] = ram_tmp[49];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[50] = ram_tmp[50];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[51] = ram_tmp[51];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[52] = ram_tmp[52];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[53] = ram_tmp[53];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[54] = ram_tmp[54];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[55] = ram_tmp[55];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[56] = ram_tmp[56];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[57] = ram_tmp[57];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[58] = ram_tmp[58];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[59] = ram_tmp[59];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[60] = ram_tmp[60];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[61] = ram_tmp[61];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[62] = ram_tmp[62];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[63] = ram_tmp[63];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[64] = ram_tmp[64];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[65] = ram_tmp[65];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[66] = ram_tmp[66];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[67] = ram_tmp[67];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[68] = ram_tmp[68];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[69] = ram_tmp[69];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[70] = ram_tmp[70];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[71] = ram_tmp[71];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[72] = ram_tmp[72];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[73] = ram_tmp[73];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[74] = ram_tmp[74];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[75] = ram_tmp[75];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[76] = ram_tmp[76];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[77] = ram_tmp[77];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[78] = ram_tmp[78];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[79] = ram_tmp[79];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[80] = ram_tmp[80];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[81] = ram_tmp[81];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[82] = ram_tmp[82];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[83] = ram_tmp[83];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[84] = ram_tmp[84];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[85] = ram_tmp[85];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[86] = ram_tmp[86];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[87] = ram_tmp[87];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[88] = ram_tmp[88];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[89] = ram_tmp[89];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[90] = ram_tmp[90];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[91] = ram_tmp[91];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[92] = ram_tmp[92];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[93] = ram_tmp[93];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[94] = ram_tmp[94];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[95] = ram_tmp[95];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[96] = ram_tmp[96];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[97] = ram_tmp[97];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[98] = ram_tmp[98];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[99] = ram_tmp[99];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[100] = ram_tmp[100];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[101] = ram_tmp[101];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[102] = ram_tmp[102];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[103] = ram_tmp[103];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[104] = ram_tmp[104];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[105] = ram_tmp[105];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[106] = ram_tmp[106];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[107] = ram_tmp[107];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[108] = ram_tmp[108];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[109] = ram_tmp[109];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[110] = ram_tmp[110];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[111] = ram_tmp[111];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[112] = ram_tmp[112];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[113] = ram_tmp[113];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[114] = ram_tmp[114];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[115] = ram_tmp[115];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[116] = ram_tmp[116];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[117] = ram_tmp[117];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[118] = ram_tmp[118];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[119] = ram_tmp[119];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[120] = ram_tmp[120];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[121] = ram_tmp[121];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[122] = ram_tmp[122];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[123] = ram_tmp[123];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[124] = ram_tmp[124];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[125] = ram_tmp[125];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[126] = ram_tmp[126];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[127] = ram_tmp[127];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[128] = ram_tmp[128];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[129] = ram_tmp[129];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[130] = ram_tmp[130];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[131] = ram_tmp[131];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[132] = ram_tmp[132];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[133] = ram_tmp[133];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[134] = ram_tmp[134];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[135] = ram_tmp[135];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[136] = ram_tmp[136];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[137] = ram_tmp[137];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[138] = ram_tmp[138];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[139] = ram_tmp[139];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[140] = ram_tmp[140];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[141] = ram_tmp[141];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[142] = ram_tmp[142];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[143] = ram_tmp[143];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[144] = ram_tmp[144];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[145] = ram_tmp[145];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[146] = ram_tmp[146];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[147] = ram_tmp[147];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[148] = ram_tmp[148];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[149] = ram_tmp[149];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[150] = ram_tmp[150];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[151] = ram_tmp[151];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[152] = ram_tmp[152];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[153] = ram_tmp[153];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[154] = ram_tmp[154];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[155] = ram_tmp[155];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[156] = ram_tmp[156];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[157] = ram_tmp[157];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[158] = ram_tmp[158];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[159] = ram_tmp[159];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[160] = ram_tmp[160];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[161] = ram_tmp[161];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[162] = ram_tmp[162];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[163] = ram_tmp[163];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[164] = ram_tmp[164];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[165] = ram_tmp[165];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[166] = ram_tmp[166];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[167] = ram_tmp[167];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[168] = ram_tmp[168];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[169] = ram_tmp[169];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[170] = ram_tmp[170];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[171] = ram_tmp[171];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[172] = ram_tmp[172];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[173] = ram_tmp[173];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[174] = ram_tmp[174];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[175] = ram_tmp[175];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[176] = ram_tmp[176];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[177] = ram_tmp[177];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[178] = ram_tmp[178];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[179] = ram_tmp[179];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[180] = ram_tmp[180];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[181] = ram_tmp[181];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[182] = ram_tmp[182];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[183] = ram_tmp[183];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[184] = ram_tmp[184];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[185] = ram_tmp[185];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[186] = ram_tmp[186];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[187] = ram_tmp[187];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[188] = ram_tmp[188];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[189] = ram_tmp[189];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[190] = ram_tmp[190];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[191] = ram_tmp[191];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[192] = ram_tmp[192];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[193] = ram_tmp[193];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[194] = ram_tmp[194];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[195] = ram_tmp[195];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[196] = ram_tmp[196];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[197] = ram_tmp[197];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[198] = ram_tmp[198];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[199] = ram_tmp[199];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[200] = ram_tmp[200];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[201] = ram_tmp[201];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[202] = ram_tmp[202];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[203] = ram_tmp[203];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[204] = ram_tmp[204];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[205] = ram_tmp[205];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[206] = ram_tmp[206];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[207] = ram_tmp[207];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[208] = ram_tmp[208];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[209] = ram_tmp[209];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[210] = ram_tmp[210];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[211] = ram_tmp[211];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[212] = ram_tmp[212];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[213] = ram_tmp[213];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[214] = ram_tmp[214];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[215] = ram_tmp[215];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[216] = ram_tmp[216];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[217] = ram_tmp[217];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[218] = ram_tmp[218];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[219] = ram_tmp[219];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[220] = ram_tmp[220];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[221] = ram_tmp[221];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[222] = ram_tmp[222];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[223] = ram_tmp[223];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[224] = ram_tmp[224];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[225] = ram_tmp[225];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[226] = ram_tmp[226];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[227] = ram_tmp[227];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[228] = ram_tmp[228];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[229] = ram_tmp[229];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[230] = ram_tmp[230];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[231] = ram_tmp[231];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[232] = ram_tmp[232];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[233] = ram_tmp[233];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[234] = ram_tmp[234];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[235] = ram_tmp[235];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[236] = ram_tmp[236];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[237] = ram_tmp[237];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[238] = ram_tmp[238];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[239] = ram_tmp[239];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[240] = ram_tmp[240];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[241] = ram_tmp[241];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[242] = ram_tmp[242];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[243] = ram_tmp[243];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[244] = ram_tmp[244];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[245] = ram_tmp[245];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[246] = ram_tmp[246];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[247] = ram_tmp[247];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[248] = ram_tmp[248];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[249] = ram_tmp[249];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[250] = ram_tmp[250];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[251] = ram_tmp[251];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[252] = ram_tmp[252];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[253] = ram_tmp[253];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[254] = ram_tmp[254];
    force harness.u_tpu.u_ifu.ifu_mem_wrap_256x128.mem[255] = ram_tmp[255];
   	`uvm_info(get_type_name(), "RTYPE IMEM INIT FINISH", UVM_NONE)
endtask

function bit[31:0] rtype_seq::itype_addi_gen();
	bit[31:0] itype_instr;
    addi_instr = new();	
    addi_instr.randomize();	
    addi_instr.pack();	
	itype_instr = addi_instr.instruction;
	return itype_instr;
endfunction

function bit[31:0] rtype_seq::rtype_rand_gen();
	bit[31:0] rtype_instr;
    rtype = new();	
    rtype.randomize();	
    rtype.pack();	
	rtype_instr = rtype.instruction;
	return rtype_instr;
endfunction

function bit[31:0] rtype_seq::rtype_add_gen();
	bit[31:0] rtype_instr;
    add_instr = new();	
    add_instr.randomize();	
    add_instr.pack();	
	rtype_instr = add_instr.instruction;
	return rtype_instr;
endfunction

function bit[31:0] rtype_seq::rtype_sub_gen();
	bit[31:0] rtype_instr;
    sub_instr = new();	
    sub_instr.randomize();	
    sub_instr.pack();	
	rtype_instr = sub_instr.instruction;
	return rtype_instr;
endfunction

function bit[31:0] rtype_seq::rtype_sll_gen();
	bit[31:0] rtype_instr;
    sll_instr = new();	
    sll_instr.randomize();	
    sll_instr.pack();	
	rtype_instr = sll_instr.instruction;
	return rtype_instr;
endfunction

function bit[31:0] rtype_seq::rtype_slt_gen();
	bit[31:0] rtype_instr;
    slt_instr = new();	
    slt_instr.randomize();	
    slt_instr.pack();	
	rtype_instr = slt_instr.instruction;
	return rtype_instr;
endfunction

function bit[31:0] rtype_seq::rtype_sltu_gen();
	bit[31:0] rtype_instr;
    sltu_instr = new();	
    sltu_instr.randomize();	
    sltu_instr.pack();	
	rtype_instr = sltu_instr.instruction;
	return rtype_instr;
endfunction

function bit[31:0] rtype_seq::rtype_xor_gen();
	bit[31:0] rtype_instr;
    xor_instr = new();	
    xor_instr.randomize();	
    xor_instr.pack();	
	rtype_instr = xor_instr.instruction;
	return rtype_instr;
endfunction

function bit[31:0] rtype_seq::rtype_srl_gen();
	bit[31:0] rtype_instr;
    srl_instr = new();	
    srl_instr.randomize();	
    srl_instr.pack();	
	rtype_instr = srl_instr.instruction;
	return rtype_instr;
endfunction

function bit[31:0] rtype_seq::rtype_sra_gen();
	bit[31:0] rtype_instr;
    sra_instr = new();	
    sra_instr.randomize();	
    sra_instr.pack();	
	rtype_instr = sra_instr.instruction;
	return rtype_instr;
endfunction

function bit[31:0] rtype_seq::rtype_or_gen();
	bit[31:0] rtype_instr;
    or_instr = new();	
    or_instr.randomize();	
    or_instr.pack();	
	rtype_instr = or_instr.instruction;
	return rtype_instr;
endfunction

function bit[31:0] rtype_seq::rtype_and_gen();
	bit[31:0] rtype_instr;
    and_instr = new();	
    and_instr.randomize();	
    and_instr.pack();	
	rtype_instr = and_instr.instruction;
	return rtype_instr;
endfunction

`endif
