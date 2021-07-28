// Generated by SandPiper(TM) 1.11-2021/01/28-beta from Redwood EDA.
// (Installed here: /usr/local/mono/sandpiper/distro.)
// Redwood EDA does not claim intellectual property rights to this file and provides no warranty regarding its correctness or quality.


`include "sandpiper_gen.vh"


genvar dmem, imem, xreg;


//
// Signals declared top-level.
//

// For $passed.
logic L0_passed_a0;

// For |cpu$br_tgt_pc.
logic [31:0] CPU_br_tgt_pc_a2,
             CPU_br_tgt_pc_a3;

// For |cpu$dec_bits.
logic [10:0] CPU_dec_bits_a1;

// For |cpu$dmem_addr.
logic [3:0] CPU_dmem_addr_a4;

// For |cpu$dmem_rd_data.
logic [31:0] CPU_dmem_rd_data_a4,
             CPU_dmem_rd_data_a5;

// For |cpu$dmem_rd_en.
logic CPU_dmem_rd_en_a4;

// For |cpu$dmem_wr_data.
logic [31:0] CPU_dmem_wr_data_a4;

// For |cpu$dmem_wr_en.
logic CPU_dmem_wr_en_a4;

// For |cpu$funct3.
logic [2:0] CPU_funct3_a1;

// For |cpu$funct3_valid.
logic CPU_funct3_valid_a1;

// For |cpu$funct7.
logic [6:0] CPU_funct7_a1;

// For |cpu$funct7_valid.
logic CPU_funct7_valid_a1;

// For |cpu$imem_rd_addr.
logic [4-1:0] CPU_imem_rd_addr_a0,
              CPU_imem_rd_addr_a1;

// For |cpu$imem_rd_data.
logic [31:0] CPU_imem_rd_data_a1;

// For |cpu$imem_rd_en.
logic CPU_imem_rd_en_a0,
      CPU_imem_rd_en_a1;

// For |cpu$imm.
logic [31:0] CPU_imm_a1,
             CPU_imm_a2,
             CPU_imm_a3;

// For |cpu$in_instr.
logic [31:0] CPU_in_instr_a1;

// For |cpu$incr_pc.
logic [31:0] CPU_incr_pc_a1,
             CPU_incr_pc_a2,
             CPU_incr_pc_a3;

// For |cpu$instr.
logic [31:0] CPU_instr_a1;

// For |cpu$is_add.
logic CPU_is_add_a1,
      CPU_is_add_a2,
      CPU_is_add_a3;

// For |cpu$is_addi.
logic CPU_is_addi_a1,
      CPU_is_addi_a2,
      CPU_is_addi_a3;

// For |cpu$is_and.
logic CPU_is_and_a1,
      CPU_is_and_a2,
      CPU_is_and_a3;

// For |cpu$is_andi.
logic CPU_is_andi_a1,
      CPU_is_andi_a2,
      CPU_is_andi_a3;

// For |cpu$is_auipc.
logic CPU_is_auipc_a1,
      CPU_is_auipc_a2,
      CPU_is_auipc_a3;

// For |cpu$is_b_instr.
logic CPU_is_b_instr_a1;

// For |cpu$is_beq.
logic CPU_is_beq_a1,
      CPU_is_beq_a2,
      CPU_is_beq_a3;

// For |cpu$is_bge.
logic CPU_is_bge_a1,
      CPU_is_bge_a2,
      CPU_is_bge_a3;

// For |cpu$is_bgeu.
logic CPU_is_bgeu_a1,
      CPU_is_bgeu_a2,
      CPU_is_bgeu_a3;

// For |cpu$is_blt.
logic CPU_is_blt_a1,
      CPU_is_blt_a2,
      CPU_is_blt_a3;

// For |cpu$is_bltu.
logic CPU_is_bltu_a1,
      CPU_is_bltu_a2,
      CPU_is_bltu_a3;

// For |cpu$is_bne.
logic CPU_is_bne_a1,
      CPU_is_bne_a2,
      CPU_is_bne_a3;

// For |cpu$is_compressed.
logic CPU_is_compressed_a1;

// For |cpu$is_i_instr.
logic CPU_is_i_instr_a1;

// For |cpu$is_j_instr.
logic CPU_is_j_instr_a1;

// For |cpu$is_jal.
logic CPU_is_jal_a1,
      CPU_is_jal_a2,
      CPU_is_jal_a3;

// For |cpu$is_jalr.
logic CPU_is_jalr_a1,
      CPU_is_jalr_a2,
      CPU_is_jalr_a3;

// For |cpu$is_jump.
logic CPU_is_jump_a3;

// For |cpu$is_lb.
logic CPU_is_lb_a1,
      CPU_is_lb_a2,
      CPU_is_lb_a3;

// For |cpu$is_lbu.
logic CPU_is_lbu_a1,
      CPU_is_lbu_a2,
      CPU_is_lbu_a3;

// For |cpu$is_lh.
logic CPU_is_lh_a1,
      CPU_is_lh_a2,
      CPU_is_lh_a3;

// For |cpu$is_lhu.
logic CPU_is_lhu_a1,
      CPU_is_lhu_a2,
      CPU_is_lhu_a3;

// For |cpu$is_load.
logic CPU_is_load_a3,
      CPU_is_load_a4;

// For |cpu$is_lui.
logic CPU_is_lui_a1,
      CPU_is_lui_a2,
      CPU_is_lui_a3;

// For |cpu$is_lw.
logic CPU_is_lw_a1,
      CPU_is_lw_a2,
      CPU_is_lw_a3;

// For |cpu$is_or.
logic CPU_is_or_a1,
      CPU_is_or_a2,
      CPU_is_or_a3;

// For |cpu$is_ori.
logic CPU_is_ori_a1,
      CPU_is_ori_a2,
      CPU_is_ori_a3;

// For |cpu$is_r_instr.
logic CPU_is_r_instr_a1;

// For |cpu$is_s_instr.
logic CPU_is_s_instr_a1,
      CPU_is_s_instr_a2,
      CPU_is_s_instr_a3,
      CPU_is_s_instr_a4;

// For |cpu$is_sb.
logic CPU_is_sb_a1;

// For |cpu$is_sh.
logic CPU_is_sh_a1;

// For |cpu$is_sll.
logic CPU_is_sll_a1,
      CPU_is_sll_a2,
      CPU_is_sll_a3;

// For |cpu$is_slli.
logic CPU_is_slli_a1,
      CPU_is_slli_a2,
      CPU_is_slli_a3;

// For |cpu$is_slt.
logic CPU_is_slt_a1,
      CPU_is_slt_a2,
      CPU_is_slt_a3;

// For |cpu$is_slti.
logic CPU_is_slti_a1,
      CPU_is_slti_a2,
      CPU_is_slti_a3;

// For |cpu$is_sltiu.
logic CPU_is_sltiu_a1,
      CPU_is_sltiu_a2,
      CPU_is_sltiu_a3;

// For |cpu$is_sltu.
logic CPU_is_sltu_a1,
      CPU_is_sltu_a2,
      CPU_is_sltu_a3;

// For |cpu$is_sra.
logic CPU_is_sra_a1,
      CPU_is_sra_a2,
      CPU_is_sra_a3;

// For |cpu$is_srai.
logic CPU_is_srai_a1,
      CPU_is_srai_a2,
      CPU_is_srai_a3;

// For |cpu$is_srl.
logic CPU_is_srl_a1,
      CPU_is_srl_a2,
      CPU_is_srl_a3;

// For |cpu$is_srli.
logic CPU_is_srli_a1,
      CPU_is_srli_a2,
      CPU_is_srli_a3;

// For |cpu$is_sub.
logic CPU_is_sub_a1,
      CPU_is_sub_a2,
      CPU_is_sub_a3;

// For |cpu$is_sw.
logic CPU_is_sw_a1;

// For |cpu$is_u_instr.
logic CPU_is_u_instr_a1;

// For |cpu$is_xor.
logic CPU_is_xor_a1,
      CPU_is_xor_a2,
      CPU_is_xor_a3;

// For |cpu$is_xori.
logic CPU_is_xori_a1,
      CPU_is_xori_a2,
      CPU_is_xori_a3;

// For |cpu$jalr_tgt_pc.
logic CPU_jalr_tgt_pc_a3;

// For |cpu$ld_data.
logic [31:0] CPU_ld_data_a5;

// For |cpu$opcode.
logic [6:0] CPU_opcode_a1;

// For |cpu$pc.
logic [31:0] CPU_pc_a0,
             CPU_pc_a1,
             CPU_pc_a2,
             CPU_pc_a3;

// For |cpu$rd.
logic [4:0] CPU_rd_a1,
            CPU_rd_a2,
            CPU_rd_a3,
            CPU_rd_a4,
            CPU_rd_a5;

// For |cpu$rd_valid.
logic CPU_rd_valid_a1,
      CPU_rd_valid_a2,
      CPU_rd_valid_a3,
      CPU_rd_valid_a4;

// For |cpu$reset.
logic CPU_reset_a0,
      CPU_reset_a1,
      CPU_reset_a2,
      CPU_reset_a3,
      CPU_reset_a4;

// For |cpu$result.
logic [31:0] CPU_result_a3;
logic [5:2] CPU_result_a4;

// For |cpu$rf_rd_data1.
logic [31:0] CPU_rf_rd_data1_a2;

// For |cpu$rf_rd_data2.
logic [31:0] CPU_rf_rd_data2_a2;

// For |cpu$rf_rd_en1.
logic CPU_rf_rd_en1_a2;

// For |cpu$rf_rd_en2.
logic CPU_rf_rd_en2_a2;

// For |cpu$rf_rd_index1.
logic [4:0] CPU_rf_rd_index1_a2;

// For |cpu$rf_rd_index2.
logic [4:0] CPU_rf_rd_index2_a2;

// For |cpu$rf_wr_data.
logic [31:0] CPU_rf_wr_data_a3;

// For |cpu$rf_wr_en.
logic CPU_rf_wr_en_a3;

// For |cpu$rf_wr_index.
logic [4:0] CPU_rf_wr_index_a3;

// For |cpu$rs1.
logic [4:0] CPU_rs1_a1,
            CPU_rs1_a2;

// For |cpu$rs1_valid.
logic CPU_rs1_valid_a1,
      CPU_rs1_valid_a2;

// For |cpu$rs2.
logic [4:0] CPU_rs2_a1,
            CPU_rs2_a2;

// For |cpu$rs2_valid.
logic CPU_rs2_valid_a1,
      CPU_rs2_valid_a2;

// For |cpu$sltiu_rslt.
logic CPU_sltiu_rslt_a3;

// For |cpu$sltu_rslt.
logic CPU_sltu_rslt_a3;

// For |cpu$src1_value.
logic [31:0] CPU_src1_value_a2,
             CPU_src1_value_a3;

// For |cpu$src2_value.
logic [31:0] CPU_src2_value_a2,
             CPU_src2_value_a3,
             CPU_src2_value_a4;

// For |cpu$taken_br.
logic CPU_taken_br_a3;

// For |cpu$valid.
logic CPU_valid_a3,
      CPU_valid_a4;

// For |cpu$valid_jump.
logic CPU_valid_jump_a3;

// For |cpu$valid_load.
logic CPU_valid_load_a3,
      CPU_valid_load_a4,
      CPU_valid_load_a5;

// For |cpu$valid_taken_br.
logic CPU_valid_taken_br_a3,
      CPU_valid_taken_br_a4,
      CPU_valid_taken_br_a5;

// For |cpu/dmem$value.
logic [31:0] CPU_Dmem_value_a4 [15:0],
             CPU_Dmem_value_a5 [15:0];

// For |cpu/imem$instr.
logic [31:0] CPU_Imem_instr_a1 [9:0];

// For |cpu/xreg$value.
logic [31:0] CPU_Xreg_value_a3 [31:0],
             CPU_Xreg_value_a4 [31:0],
             CPU_Xreg_value_a5 [31:0];


//
// Scope: |cpu
//

// Clock signals.
logic clkP_CPU_dmem_rd_en_a5 ;
logic clkP_CPU_rd_valid_a2 ;
logic clkP_CPU_rd_valid_a3 ;
logic clkP_CPU_rd_valid_a4 ;
logic clkP_CPU_rd_valid_a5 ;
logic clkP_CPU_rs1_valid_a2 ;
logic clkP_CPU_rs2_valid_a2 ;


generate


   //
   // Scope: |cpu
   //

      // For $br_tgt_pc.
      always_ff @(posedge clk) CPU_br_tgt_pc_a3[31:0] <= CPU_br_tgt_pc_a2[31:0];

      // For $dmem_rd_data.
      always_ff @(posedge clkP_CPU_dmem_rd_en_a5) CPU_dmem_rd_data_a5[31:0] <= CPU_dmem_rd_data_a4[31:0];

      // For $imem_rd_addr.
      always_ff @(posedge clk) CPU_imem_rd_addr_a1[4-1:0] <= CPU_imem_rd_addr_a0[4-1:0];

      // For $imem_rd_en.
      always_ff @(posedge clk) CPU_imem_rd_en_a1 <= CPU_imem_rd_en_a0;

      // For $imm.
      always_ff @(posedge clk) CPU_imm_a2[31:0] <= CPU_imm_a1[31:0];
      always_ff @(posedge clk) CPU_imm_a3[31:0] <= CPU_imm_a2[31:0];

      // For $incr_pc.
      always_ff @(posedge clk) CPU_incr_pc_a2[31:0] <= CPU_incr_pc_a1[31:0];
      always_ff @(posedge clk) CPU_incr_pc_a3[31:0] <= CPU_incr_pc_a2[31:0];

      // For $is_add.
      always_ff @(posedge clk) CPU_is_add_a2 <= CPU_is_add_a1;
      always_ff @(posedge clk) CPU_is_add_a3 <= CPU_is_add_a2;

      // For $is_addi.
      always_ff @(posedge clk) CPU_is_addi_a2 <= CPU_is_addi_a1;
      always_ff @(posedge clk) CPU_is_addi_a3 <= CPU_is_addi_a2;

      // For $is_and.
      always_ff @(posedge clk) CPU_is_and_a2 <= CPU_is_and_a1;
      always_ff @(posedge clk) CPU_is_and_a3 <= CPU_is_and_a2;

      // For $is_andi.
      always_ff @(posedge clk) CPU_is_andi_a2 <= CPU_is_andi_a1;
      always_ff @(posedge clk) CPU_is_andi_a3 <= CPU_is_andi_a2;

      // For $is_auipc.
      always_ff @(posedge clk) CPU_is_auipc_a2 <= CPU_is_auipc_a1;
      always_ff @(posedge clk) CPU_is_auipc_a3 <= CPU_is_auipc_a2;

      // For $is_beq.
      always_ff @(posedge clk) CPU_is_beq_a2 <= CPU_is_beq_a1;
      always_ff @(posedge clk) CPU_is_beq_a3 <= CPU_is_beq_a2;

      // For $is_bge.
      always_ff @(posedge clk) CPU_is_bge_a2 <= CPU_is_bge_a1;
      always_ff @(posedge clk) CPU_is_bge_a3 <= CPU_is_bge_a2;

      // For $is_bgeu.
      always_ff @(posedge clk) CPU_is_bgeu_a2 <= CPU_is_bgeu_a1;
      always_ff @(posedge clk) CPU_is_bgeu_a3 <= CPU_is_bgeu_a2;

      // For $is_blt.
      always_ff @(posedge clk) CPU_is_blt_a2 <= CPU_is_blt_a1;
      always_ff @(posedge clk) CPU_is_blt_a3 <= CPU_is_blt_a2;

      // For $is_bltu.
      always_ff @(posedge clk) CPU_is_bltu_a2 <= CPU_is_bltu_a1;
      always_ff @(posedge clk) CPU_is_bltu_a3 <= CPU_is_bltu_a2;

      // For $is_bne.
      always_ff @(posedge clk) CPU_is_bne_a2 <= CPU_is_bne_a1;
      always_ff @(posedge clk) CPU_is_bne_a3 <= CPU_is_bne_a2;

      // For $is_jal.
      always_ff @(posedge clk) CPU_is_jal_a2 <= CPU_is_jal_a1;
      always_ff @(posedge clk) CPU_is_jal_a3 <= CPU_is_jal_a2;

      // For $is_jalr.
      always_ff @(posedge clk) CPU_is_jalr_a2 <= CPU_is_jalr_a1;
      always_ff @(posedge clk) CPU_is_jalr_a3 <= CPU_is_jalr_a2;

      // For $is_lb.
      always_ff @(posedge clk) CPU_is_lb_a2 <= CPU_is_lb_a1;
      always_ff @(posedge clk) CPU_is_lb_a3 <= CPU_is_lb_a2;

      // For $is_lbu.
      always_ff @(posedge clk) CPU_is_lbu_a2 <= CPU_is_lbu_a1;
      always_ff @(posedge clk) CPU_is_lbu_a3 <= CPU_is_lbu_a2;

      // For $is_lh.
      always_ff @(posedge clk) CPU_is_lh_a2 <= CPU_is_lh_a1;
      always_ff @(posedge clk) CPU_is_lh_a3 <= CPU_is_lh_a2;

      // For $is_lhu.
      always_ff @(posedge clk) CPU_is_lhu_a2 <= CPU_is_lhu_a1;
      always_ff @(posedge clk) CPU_is_lhu_a3 <= CPU_is_lhu_a2;

      // For $is_load.
      always_ff @(posedge clk) CPU_is_load_a4 <= CPU_is_load_a3;

      // For $is_lui.
      always_ff @(posedge clk) CPU_is_lui_a2 <= CPU_is_lui_a1;
      always_ff @(posedge clk) CPU_is_lui_a3 <= CPU_is_lui_a2;

      // For $is_lw.
      always_ff @(posedge clk) CPU_is_lw_a2 <= CPU_is_lw_a1;
      always_ff @(posedge clk) CPU_is_lw_a3 <= CPU_is_lw_a2;

      // For $is_or.
      always_ff @(posedge clk) CPU_is_or_a2 <= CPU_is_or_a1;
      always_ff @(posedge clk) CPU_is_or_a3 <= CPU_is_or_a2;

      // For $is_ori.
      always_ff @(posedge clk) CPU_is_ori_a2 <= CPU_is_ori_a1;
      always_ff @(posedge clk) CPU_is_ori_a3 <= CPU_is_ori_a2;

      // For $is_s_instr.
      always_ff @(posedge clk) CPU_is_s_instr_a2 <= CPU_is_s_instr_a1;
      always_ff @(posedge clk) CPU_is_s_instr_a3 <= CPU_is_s_instr_a2;
      always_ff @(posedge clk) CPU_is_s_instr_a4 <= CPU_is_s_instr_a3;

      // For $is_sll.
      always_ff @(posedge clk) CPU_is_sll_a2 <= CPU_is_sll_a1;
      always_ff @(posedge clk) CPU_is_sll_a3 <= CPU_is_sll_a2;

      // For $is_slli.
      always_ff @(posedge clk) CPU_is_slli_a2 <= CPU_is_slli_a1;
      always_ff @(posedge clk) CPU_is_slli_a3 <= CPU_is_slli_a2;

      // For $is_slt.
      always_ff @(posedge clk) CPU_is_slt_a2 <= CPU_is_slt_a1;
      always_ff @(posedge clk) CPU_is_slt_a3 <= CPU_is_slt_a2;

      // For $is_slti.
      always_ff @(posedge clk) CPU_is_slti_a2 <= CPU_is_slti_a1;
      always_ff @(posedge clk) CPU_is_slti_a3 <= CPU_is_slti_a2;

      // For $is_sltiu.
      always_ff @(posedge clk) CPU_is_sltiu_a2 <= CPU_is_sltiu_a1;
      always_ff @(posedge clk) CPU_is_sltiu_a3 <= CPU_is_sltiu_a2;

      // For $is_sltu.
      always_ff @(posedge clk) CPU_is_sltu_a2 <= CPU_is_sltu_a1;
      always_ff @(posedge clk) CPU_is_sltu_a3 <= CPU_is_sltu_a2;

      // For $is_sra.
      always_ff @(posedge clk) CPU_is_sra_a2 <= CPU_is_sra_a1;
      always_ff @(posedge clk) CPU_is_sra_a3 <= CPU_is_sra_a2;

      // For $is_srai.
      always_ff @(posedge clk) CPU_is_srai_a2 <= CPU_is_srai_a1;
      always_ff @(posedge clk) CPU_is_srai_a3 <= CPU_is_srai_a2;

      // For $is_srl.
      always_ff @(posedge clk) CPU_is_srl_a2 <= CPU_is_srl_a1;
      always_ff @(posedge clk) CPU_is_srl_a3 <= CPU_is_srl_a2;

      // For $is_srli.
      always_ff @(posedge clk) CPU_is_srli_a2 <= CPU_is_srli_a1;
      always_ff @(posedge clk) CPU_is_srli_a3 <= CPU_is_srli_a2;

      // For $is_sub.
      always_ff @(posedge clk) CPU_is_sub_a2 <= CPU_is_sub_a1;
      always_ff @(posedge clk) CPU_is_sub_a3 <= CPU_is_sub_a2;

      // For $is_xor.
      always_ff @(posedge clk) CPU_is_xor_a2 <= CPU_is_xor_a1;
      always_ff @(posedge clk) CPU_is_xor_a3 <= CPU_is_xor_a2;

      // For $is_xori.
      always_ff @(posedge clk) CPU_is_xori_a2 <= CPU_is_xori_a1;
      always_ff @(posedge clk) CPU_is_xori_a3 <= CPU_is_xori_a2;

      // For $pc.
      always_ff @(posedge clk) CPU_pc_a1[31:0] <= CPU_pc_a0[31:0];
      always_ff @(posedge clk) CPU_pc_a2[31:0] <= CPU_pc_a1[31:0];
      always_ff @(posedge clk) CPU_pc_a3[31:0] <= CPU_pc_a2[31:0];

      // For $rd.
      always_ff @(posedge clkP_CPU_rd_valid_a2) CPU_rd_a2[4:0] <= CPU_rd_a1[4:0];
      always_ff @(posedge clkP_CPU_rd_valid_a3) CPU_rd_a3[4:0] <= CPU_rd_a2[4:0];
      always_ff @(posedge clkP_CPU_rd_valid_a4) CPU_rd_a4[4:0] <= CPU_rd_a3[4:0];
      always_ff @(posedge clkP_CPU_rd_valid_a5) CPU_rd_a5[4:0] <= CPU_rd_a4[4:0];

      // For $rd_valid.
      always_ff @(posedge clk) CPU_rd_valid_a2 <= CPU_rd_valid_a1;
      always_ff @(posedge clk) CPU_rd_valid_a3 <= CPU_rd_valid_a2;
      always_ff @(posedge clk) CPU_rd_valid_a4 <= CPU_rd_valid_a3;

      // For $reset.
      always_ff @(posedge clk) CPU_reset_a1 <= CPU_reset_a0;
      always_ff @(posedge clk) CPU_reset_a2 <= CPU_reset_a1;
      always_ff @(posedge clk) CPU_reset_a3 <= CPU_reset_a2;
      always_ff @(posedge clk) CPU_reset_a4 <= CPU_reset_a3;

      // For $result.
      always_ff @(posedge clk) CPU_result_a4[5:2] <= CPU_result_a3[5:2];

      // For $rs1.
      always_ff @(posedge clkP_CPU_rs1_valid_a2) CPU_rs1_a2[4:0] <= CPU_rs1_a1[4:0];

      // For $rs1_valid.
      always_ff @(posedge clk) CPU_rs1_valid_a2 <= CPU_rs1_valid_a1;

      // For $rs2.
      always_ff @(posedge clkP_CPU_rs2_valid_a2) CPU_rs2_a2[4:0] <= CPU_rs2_a1[4:0];

      // For $rs2_valid.
      always_ff @(posedge clk) CPU_rs2_valid_a2 <= CPU_rs2_valid_a1;

      // For $src1_value.
      always_ff @(posedge clk) CPU_src1_value_a3[31:0] <= CPU_src1_value_a2[31:0];

      // For $src2_value.
      always_ff @(posedge clk) CPU_src2_value_a3[31:0] <= CPU_src2_value_a2[31:0];
      always_ff @(posedge clk) CPU_src2_value_a4[31:0] <= CPU_src2_value_a3[31:0];

      // For $valid.
      always_ff @(posedge clk) CPU_valid_a4 <= CPU_valid_a3;

      // For $valid_load.
      always_ff @(posedge clk) CPU_valid_load_a4 <= CPU_valid_load_a3;
      always_ff @(posedge clk) CPU_valid_load_a5 <= CPU_valid_load_a4;

      // For $valid_taken_br.
      always_ff @(posedge clk) CPU_valid_taken_br_a4 <= CPU_valid_taken_br_a3;
      always_ff @(posedge clk) CPU_valid_taken_br_a5 <= CPU_valid_taken_br_a4;


      //
      // Scope: /dmem[15:0]
      //
      for (dmem = 0; dmem <= 15; dmem++) begin : L1gen_CPU_Dmem
         // For $value.
         always_ff @(posedge clk) CPU_Dmem_value_a5[dmem][31:0] <= CPU_Dmem_value_a4[dmem][31:0];

      end

      //
      // Scope: /xreg[31:0]
      //
      for (xreg = 0; xreg <= 31; xreg++) begin : L1gen_CPU_Xreg
         // For $value.
         always_ff @(posedge clk) CPU_Xreg_value_a4[xreg][31:0] <= CPU_Xreg_value_a3[xreg][31:0];
         always_ff @(posedge clk) CPU_Xreg_value_a5[xreg][31:0] <= CPU_Xreg_value_a4[xreg][31:0];

      end



endgenerate



//
// Gated clocks.
//

generate



   //
   // Scope: |cpu
   //

      clk_gate gen_clkP_CPU_dmem_rd_en_a5(clkP_CPU_dmem_rd_en_a5, clk, 1'b1, CPU_dmem_rd_en_a4, 1'b0);
      clk_gate gen_clkP_CPU_rd_valid_a2(clkP_CPU_rd_valid_a2, clk, 1'b1, CPU_rd_valid_a1, 1'b0);
      clk_gate gen_clkP_CPU_rd_valid_a3(clkP_CPU_rd_valid_a3, clk, 1'b1, CPU_rd_valid_a2, 1'b0);
      clk_gate gen_clkP_CPU_rd_valid_a4(clkP_CPU_rd_valid_a4, clk, 1'b1, CPU_rd_valid_a3, 1'b0);
      clk_gate gen_clkP_CPU_rd_valid_a5(clkP_CPU_rd_valid_a5, clk, 1'b1, CPU_rd_valid_a4, 1'b0);
      clk_gate gen_clkP_CPU_rs1_valid_a2(clkP_CPU_rs1_valid_a2, clk, 1'b1, CPU_rs1_valid_a1, 1'b0);
      clk_gate gen_clkP_CPU_rs2_valid_a2(clkP_CPU_rs2_valid_a2, clk, 1'b1, CPU_rs2_valid_a1, 1'b0);



endgenerate



//
// Debug Signals
//

generate

   if (1) begin : DEBUG_SIGS

      logic  \@0$passed ;
      assign \@0$passed = L0_passed_a0;

      //
      // Scope: |cpu
      //
      if (1) begin : \|cpu 
         logic [31:0] \>@2$br_tgt_pc ;
         assign \>@2$br_tgt_pc = CPU_br_tgt_pc_a2;
         logic [10:0] \>@1$dec_bits ;
         assign \>@1$dec_bits = CPU_dec_bits_a1;
         logic [3:0] \>@4$dmem_addr ;
         assign \>@4$dmem_addr = CPU_dmem_addr_a4;
         logic [31:0] \>?$dmem_rd_en@4$dmem_rd_data ;
         assign \>?$dmem_rd_en@4$dmem_rd_data = CPU_dmem_rd_data_a4;
         logic  \>@4$dmem_rd_en ;
         assign \>@4$dmem_rd_en = CPU_dmem_rd_en_a4;
         logic [31:0] \>@4$dmem_wr_data ;
         assign \>@4$dmem_wr_data = CPU_dmem_wr_data_a4;
         logic  \>@4$dmem_wr_en ;
         assign \>@4$dmem_wr_en = CPU_dmem_wr_en_a4;
         logic [2:0] \>?$funct3_valid@1$funct3 ;
         assign \>?$funct3_valid@1$funct3 = CPU_funct3_a1;
         logic  \>@1$funct3_valid ;
         assign \>@1$funct3_valid = CPU_funct3_valid_a1;
         logic [6:0] \>?$funct7_valid@1$funct7 ;
         assign \>?$funct7_valid@1$funct7 = CPU_funct7_a1;
         logic  \>@1$funct7_valid ;
         assign \>@1$funct7_valid = CPU_funct7_valid_a1;
         logic [4-1:0] \>@0$imem_rd_addr ;
         assign \>@0$imem_rd_addr = CPU_imem_rd_addr_a0;
         logic [31:0] \>?$imem_rd_en@1$imem_rd_data ;
         assign \>?$imem_rd_en@1$imem_rd_data = CPU_imem_rd_data_a1;
         logic  \>@0$imem_rd_en ;
         assign \>@0$imem_rd_en = CPU_imem_rd_en_a0;
         logic [31:0] \>@1$imm ;
         assign \>@1$imm = CPU_imm_a1;
         logic [31:0] \>@1$in_instr ;
         assign \>@1$in_instr = CPU_in_instr_a1;
         logic [31:0] \>@1$incr_pc ;
         assign \>@1$incr_pc = CPU_incr_pc_a1;
         logic [31:0] \>@1$instr ;
         assign \>@1$instr = CPU_instr_a1;
         logic  \>@1$is_add ;
         assign \>@1$is_add = CPU_is_add_a1;
         logic  \>@1$is_addi ;
         assign \>@1$is_addi = CPU_is_addi_a1;
         logic  \>@1$is_and ;
         assign \>@1$is_and = CPU_is_and_a1;
         logic  \>@1$is_andi ;
         assign \>@1$is_andi = CPU_is_andi_a1;
         logic  \>@1$is_auipc ;
         assign \>@1$is_auipc = CPU_is_auipc_a1;
         logic  \>@1$is_b_instr ;
         assign \>@1$is_b_instr = CPU_is_b_instr_a1;
         logic  \>@1$is_beq ;
         assign \>@1$is_beq = CPU_is_beq_a1;
         logic  \>@1$is_bge ;
         assign \>@1$is_bge = CPU_is_bge_a1;
         logic  \>@1$is_bgeu ;
         assign \>@1$is_bgeu = CPU_is_bgeu_a1;
         logic  \>@1$is_blt ;
         assign \>@1$is_blt = CPU_is_blt_a1;
         logic  \>@1$is_bltu ;
         assign \>@1$is_bltu = CPU_is_bltu_a1;
         logic  \>@1$is_bne ;
         assign \>@1$is_bne = CPU_is_bne_a1;
         logic  \>@1$is_compressed ;
         assign \>@1$is_compressed = CPU_is_compressed_a1;
         logic  \>@1$is_i_instr ;
         assign \>@1$is_i_instr = CPU_is_i_instr_a1;
         logic  \>@1$is_j_instr ;
         assign \>@1$is_j_instr = CPU_is_j_instr_a1;
         logic  \>@1$is_jal ;
         assign \>@1$is_jal = CPU_is_jal_a1;
         logic  \>@1$is_jalr ;
         assign \>@1$is_jalr = CPU_is_jalr_a1;
         logic  \>@3$is_jump ;
         assign \>@3$is_jump = CPU_is_jump_a3;
         logic  \>@1$is_lb ;
         assign \>@1$is_lb = CPU_is_lb_a1;
         logic  \>@1$is_lbu ;
         assign \>@1$is_lbu = CPU_is_lbu_a1;
         logic  \>@1$is_lh ;
         assign \>@1$is_lh = CPU_is_lh_a1;
         logic  \>@1$is_lhu ;
         assign \>@1$is_lhu = CPU_is_lhu_a1;
         logic  \>@3$is_load ;
         assign \>@3$is_load = CPU_is_load_a3;
         logic  \>@1$is_lui ;
         assign \>@1$is_lui = CPU_is_lui_a1;
         logic  \>@1$is_lw ;
         assign \>@1$is_lw = CPU_is_lw_a1;
         logic  \>@1$is_or ;
         assign \>@1$is_or = CPU_is_or_a1;
         logic  \>@1$is_ori ;
         assign \>@1$is_ori = CPU_is_ori_a1;
         logic  \>@1$is_r_instr ;
         assign \>@1$is_r_instr = CPU_is_r_instr_a1;
         logic  \>@1$is_s_instr ;
         assign \>@1$is_s_instr = CPU_is_s_instr_a1;
         logic  \>@1$is_sb ;
         assign \>@1$is_sb = CPU_is_sb_a1;
         logic  \>@1$is_sh ;
         assign \>@1$is_sh = CPU_is_sh_a1;
         logic  \>@1$is_sll ;
         assign \>@1$is_sll = CPU_is_sll_a1;
         logic  \>@1$is_slli ;
         assign \>@1$is_slli = CPU_is_slli_a1;
         logic  \>@1$is_slt ;
         assign \>@1$is_slt = CPU_is_slt_a1;
         logic  \>@1$is_slti ;
         assign \>@1$is_slti = CPU_is_slti_a1;
         logic  \>@1$is_sltiu ;
         assign \>@1$is_sltiu = CPU_is_sltiu_a1;
         logic  \>@1$is_sltu ;
         assign \>@1$is_sltu = CPU_is_sltu_a1;
         logic  \>@1$is_sra ;
         assign \>@1$is_sra = CPU_is_sra_a1;
         logic  \>@1$is_srai ;
         assign \>@1$is_srai = CPU_is_srai_a1;
         logic  \>@1$is_srl ;
         assign \>@1$is_srl = CPU_is_srl_a1;
         logic  \>@1$is_srli ;
         assign \>@1$is_srli = CPU_is_srli_a1;
         logic  \>@1$is_sub ;
         assign \>@1$is_sub = CPU_is_sub_a1;
         logic  \>@1$is_sw ;
         assign \>@1$is_sw = CPU_is_sw_a1;
         logic  \>@1$is_u_instr ;
         assign \>@1$is_u_instr = CPU_is_u_instr_a1;
         logic  \>@1$is_xor ;
         assign \>@1$is_xor = CPU_is_xor_a1;
         logic  \>@1$is_xori ;
         assign \>@1$is_xori = CPU_is_xori_a1;
         logic  \>@3$jalr_tgt_pc ;
         assign \>@3$jalr_tgt_pc = CPU_jalr_tgt_pc_a3;
         logic [31:0] \>@5$ld_data ;
         assign \>@5$ld_data = CPU_ld_data_a5;
         logic [6:0] \>@1$opcode ;
         assign \>@1$opcode = CPU_opcode_a1;
         logic [31:0] \>@0$pc ;
         assign \>@0$pc = CPU_pc_a0;
         logic [4:0] \>?$rd_valid@1$rd ;
         assign \>?$rd_valid@1$rd = CPU_rd_a1;
         logic  \>@1$rd_valid ;
         assign \>@1$rd_valid = CPU_rd_valid_a1;
         logic  \>@0$reset ;
         assign \>@0$reset = CPU_reset_a0;
         logic [31:0] \>@3$result ;
         assign \>@3$result = CPU_result_a3;
         logic [31:0] \>?$rf_rd_en1@2$rf_rd_data1 ;
         assign \>?$rf_rd_en1@2$rf_rd_data1 = CPU_rf_rd_data1_a2;
         logic [31:0] \>?$rf_rd_en2@2$rf_rd_data2 ;
         assign \>?$rf_rd_en2@2$rf_rd_data2 = CPU_rf_rd_data2_a2;
         logic  \>@2$rf_rd_en1 ;
         assign \>@2$rf_rd_en1 = CPU_rf_rd_en1_a2;
         logic  \>@2$rf_rd_en2 ;
         assign \>@2$rf_rd_en2 = CPU_rf_rd_en2_a2;
         logic [4:0] \>?$rs1_valid@2$rf_rd_index1 ;
         assign \>?$rs1_valid@2$rf_rd_index1 = CPU_rf_rd_index1_a2;
         logic [4:0] \>?$rs2_valid@2$rf_rd_index2 ;
         assign \>?$rs2_valid@2$rf_rd_index2 = CPU_rf_rd_index2_a2;
         logic [31:0] \>@3$rf_wr_data ;
         assign \>@3$rf_wr_data = CPU_rf_wr_data_a3;
         logic  \>@3$rf_wr_en ;
         assign \>@3$rf_wr_en = CPU_rf_wr_en_a3;
         logic [4:0] \>@3$rf_wr_index ;
         assign \>@3$rf_wr_index = CPU_rf_wr_index_a3;
         logic [4:0] \>?$rs1_valid@1$rs1 ;
         assign \>?$rs1_valid@1$rs1 = CPU_rs1_a1;
         logic  \>@1$rs1_valid ;
         assign \>@1$rs1_valid = CPU_rs1_valid_a1;
         logic [4:0] \>?$rs2_valid@1$rs2 ;
         assign \>?$rs2_valid@1$rs2 = CPU_rs2_a1;
         logic  \>@1$rs2_valid ;
         assign \>@1$rs2_valid = CPU_rs2_valid_a1;
         logic  \>@3$sltiu_rslt ;
         assign \>@3$sltiu_rslt = CPU_sltiu_rslt_a3;
         logic  \>@3$sltu_rslt ;
         assign \>@3$sltu_rslt = CPU_sltu_rslt_a3;
         logic [31:0] \>@2$src1_value ;
         assign \>@2$src1_value = CPU_src1_value_a2;
         logic [31:0] \>@2$src2_value ;
         assign \>@2$src2_value = CPU_src2_value_a2;
         logic  \>@3$taken_br ;
         assign \>@3$taken_br = CPU_taken_br_a3;
         logic  \>@3$valid ;
         assign \>@3$valid = CPU_valid_a3;
         logic  \>@3$valid_jump ;
         assign \>@3$valid_jump = CPU_valid_jump_a3;
         logic  \>@3$valid_load ;
         assign \>@3$valid_load = CPU_valid_load_a3;
         logic  \>@3$valid_taken_br ;
         assign \>@3$valid_taken_br = CPU_valid_taken_br_a3;

         //
         // Scope: /dmem[15:0]
         //
         for (dmem = 0; dmem <= 15; dmem++) begin : \/dmem 
            logic [31:0] \>>@4$value ;
            assign \>>@4$value = CPU_Dmem_value_a4[dmem];
            logic  \>>@4$wr ;
            assign \>>@4$wr = L1_CPU_Dmem[dmem].L1_wr_a4;
         end

         //
         // Scope: /imem[9:0]
         //
         for (imem = 0; imem <= 9; imem++) begin : \/imem 
            logic [31:0] \>>@1$instr ;
            assign \>>@1$instr = CPU_Imem_instr_a1[imem];
         end

         //
         // Scope: /xreg[31:0]
         //
         for (xreg = 0; xreg <= 31; xreg++) begin : \/xreg 
            logic [31:0] \>>@3$value ;
            assign \>>@3$value = CPU_Xreg_value_a3[xreg];
            logic  \>>@3$wr ;
            assign \>>@3$wr = L1_CPU_Xreg[xreg].L1_wr_a3;
         end
      end


   end

endgenerate




generate   // This is awkward, but we need to go into 'generate' context in the line that `includes the declarations file.
