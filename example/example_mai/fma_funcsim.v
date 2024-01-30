// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Feb 21 22:23:42 2023
// Host        : DESKTOP-L8UAPOA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -force C:/Users/ZhaoYue/Desktop/proj/fma_proj/ip/fma_funcsim.v
// Design      : fma
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* BIAS = "127" *) (* EXPONENTWIDTH = "8" *) (* EXPONENT_MAX = "255" *) 
(* EXPONENT_MIN = "0" *) (* EXPWIDTH = "10" *) (* LEADONE_WIDTH = "6" *) 
(* MANTISSAWIDTH = "23" *) (* PRECISION = "24" *) (* RD = "2" *) 
(* RNE = "0" *) (* RNM = "4" *) (* RTZ = "1" *) 
(* RU = "3" *) (* SHIFT_WIDTH = "7" *) (* WORDWIDTH = "32" *) 
(* NotValidForBitStream *)
module fma
   (clk_I,
    rst_n_I,
    operand_a_I,
    operand_b_I,
    operand_c_I,
    rnd_mode,
    gate,
    result_O,
    flag_overflow_O,
    flag_underflow_O,
    done_valid_O);
  input clk_I;
  input rst_n_I;
  input [31:0]operand_a_I;
  input [31:0]operand_b_I;
  input [31:0]operand_c_I;
  input [2:0]rnd_mode;
  input gate;
  output [31:0]result_O;
  output flag_overflow_O;
  output flag_underflow_O;
  output done_valid_O;

  wire [23:0]A;
  wire clk_I;
  wire done_valid_O;
  wire [9:0]exponent_dif;
  wire [30:0]exponent_mantissa_round_i;
  wire [9:1]exponent_norm_result1;
  wire [8:0]exponent_product0;
  wire [8:0]exponent_product_d;
  wire flag_overflow_O;
  wire flag_overflow_result_d_i_10_n_0;
  wire flag_overflow_result_d_i_11_n_0;
  wire flag_overflow_result_d_i_12_n_0;
  wire flag_overflow_result_d_i_13_n_0;
  wire flag_overflow_result_d_i_14_n_0;
  wire flag_overflow_result_d_i_15_n_0;
  wire flag_overflow_result_d_i_16_n_0;
  wire flag_overflow_result_d_i_17_n_0;
  wire flag_overflow_result_d_i_18_n_0;
  wire flag_overflow_result_d_i_1_n_0;
  wire flag_overflow_result_d_i_20_n_0;
  wire flag_overflow_result_d_i_21_n_0;
  wire flag_overflow_result_d_i_22_n_0;
  wire flag_overflow_result_d_i_24_n_0;
  wire flag_overflow_result_d_i_25_n_0;
  wire flag_overflow_result_d_i_2_n_0;
  wire flag_overflow_result_d_i_3_n_0;
  wire flag_overflow_result_d_i_4_n_0;
  wire flag_overflow_result_d_i_5_n_0;
  wire flag_overflow_result_d_i_6_n_0;
  wire flag_overflow_result_d_i_7_n_0;
  wire flag_overflow_result_d_i_8_n_0;
  wire flag_overflow_result_d_i_9_n_0;
  wire flag_overflow_result_d_reg_i_19_n_7;
  wire flag_overflow_result_d_reg_i_23_n_6;
  wire flag_sum_positive;
  wire flag_underflow_O;
  wire flag_underflow_result;
  wire flag_underflow_result_d_i_2_n_0;
  wire gate;
  wire hidBit_a;
  wire in_valid_d;
  wire inject_carry_in;
  wire [1:1]leading_zero_count;
  wire [31:0]operand_a_I;
  wire \operand_a_d_reg_n_0_[0] ;
  wire \operand_a_d_reg_n_0_[10] ;
  wire \operand_a_d_reg_n_0_[11] ;
  wire \operand_a_d_reg_n_0_[12] ;
  wire \operand_a_d_reg_n_0_[13] ;
  wire \operand_a_d_reg_n_0_[14] ;
  wire \operand_a_d_reg_n_0_[15] ;
  wire \operand_a_d_reg_n_0_[16] ;
  wire \operand_a_d_reg_n_0_[17] ;
  wire \operand_a_d_reg_n_0_[18] ;
  wire \operand_a_d_reg_n_0_[19] ;
  wire \operand_a_d_reg_n_0_[1] ;
  wire \operand_a_d_reg_n_0_[20] ;
  wire \operand_a_d_reg_n_0_[21] ;
  wire \operand_a_d_reg_n_0_[22] ;
  wire \operand_a_d_reg_n_0_[23] ;
  wire \operand_a_d_reg_n_0_[24] ;
  wire \operand_a_d_reg_n_0_[25] ;
  wire \operand_a_d_reg_n_0_[26] ;
  wire \operand_a_d_reg_n_0_[27] ;
  wire \operand_a_d_reg_n_0_[28] ;
  wire \operand_a_d_reg_n_0_[29] ;
  wire \operand_a_d_reg_n_0_[2] ;
  wire \operand_a_d_reg_n_0_[30] ;
  wire \operand_a_d_reg_n_0_[3] ;
  wire \operand_a_d_reg_n_0_[4] ;
  wire \operand_a_d_reg_n_0_[5] ;
  wire \operand_a_d_reg_n_0_[6] ;
  wire \operand_a_d_reg_n_0_[7] ;
  wire \operand_a_d_reg_n_0_[8] ;
  wire \operand_a_d_reg_n_0_[9] ;
  wire [31:0]operand_b_I;
  wire \operand_b_d[31]_i_1_n_0 ;
  wire [31:0]operand_c_I;
  wire \operand_c_d_reg_n_0_[0] ;
  wire \operand_c_d_reg_n_0_[10] ;
  wire \operand_c_d_reg_n_0_[11] ;
  wire \operand_c_d_reg_n_0_[12] ;
  wire \operand_c_d_reg_n_0_[13] ;
  wire \operand_c_d_reg_n_0_[14] ;
  wire \operand_c_d_reg_n_0_[15] ;
  wire \operand_c_d_reg_n_0_[16] ;
  wire \operand_c_d_reg_n_0_[17] ;
  wire \operand_c_d_reg_n_0_[18] ;
  wire \operand_c_d_reg_n_0_[19] ;
  wire \operand_c_d_reg_n_0_[1] ;
  wire \operand_c_d_reg_n_0_[20] ;
  wire \operand_c_d_reg_n_0_[21] ;
  wire \operand_c_d_reg_n_0_[22] ;
  wire \operand_c_d_reg_n_0_[23] ;
  wire \operand_c_d_reg_n_0_[24] ;
  wire \operand_c_d_reg_n_0_[25] ;
  wire \operand_c_d_reg_n_0_[26] ;
  wire \operand_c_d_reg_n_0_[27] ;
  wire \operand_c_d_reg_n_0_[28] ;
  wire \operand_c_d_reg_n_0_[29] ;
  wire \operand_c_d_reg_n_0_[2] ;
  wire \operand_c_d_reg_n_0_[30] ;
  wire \operand_c_d_reg_n_0_[3] ;
  wire \operand_c_d_reg_n_0_[4] ;
  wire \operand_c_d_reg_n_0_[5] ;
  wire \operand_c_d_reg_n_0_[6] ;
  wire \operand_c_d_reg_n_0_[7] ;
  wire \operand_c_d_reg_n_0_[8] ;
  wire \operand_c_d_reg_n_0_[9] ;
  wire [7:0]p_0_in;
  wire [9:9]p_0_in1_in;
  wire [1:0]p_0_out__0;
  wire product_ab_i_2__0_n_0;
  wire product_ab_i_2_n_0;
  wire product_ab_i_3__0_n_0;
  wire product_ab_i_3_n_0;
  wire product_ab_n_106;
  wire product_ab_n_107;
  wire product_ab_n_108;
  wire product_ab_n_109;
  wire product_ab_n_110;
  wire product_ab_n_111;
  wire product_ab_n_112;
  wire product_ab_n_113;
  wire product_ab_n_114;
  wire product_ab_n_115;
  wire product_ab_n_116;
  wire product_ab_n_117;
  wire product_ab_n_118;
  wire product_ab_n_119;
  wire product_ab_n_120;
  wire product_ab_n_121;
  wire product_ab_n_122;
  wire product_ab_n_123;
  wire product_ab_n_124;
  wire product_ab_n_125;
  wire product_ab_n_126;
  wire product_ab_n_127;
  wire product_ab_n_128;
  wire product_ab_n_129;
  wire product_ab_n_130;
  wire product_ab_n_131;
  wire product_ab_n_132;
  wire product_ab_n_133;
  wire product_ab_n_134;
  wire product_ab_n_135;
  wire product_ab_n_136;
  wire product_ab_n_137;
  wire product_ab_n_138;
  wire product_ab_n_139;
  wire product_ab_n_140;
  wire product_ab_n_141;
  wire product_ab_n_142;
  wire product_ab_n_143;
  wire product_ab_n_144;
  wire product_ab_n_145;
  wire product_ab_n_146;
  wire product_ab_n_147;
  wire product_ab_n_148;
  wire product_ab_n_149;
  wire product_ab_n_150;
  wire product_ab_n_151;
  wire product_ab_n_152;
  wire product_ab_n_153;
  wire product_ab_n_58;
  wire product_ab_n_59;
  wire product_ab_n_60;
  wire product_ab_n_61;
  wire product_ab_n_62;
  wire product_ab_n_63;
  wire product_ab_n_64;
  wire product_ab_n_65;
  wire product_ab_n_66;
  wire product_ab_n_67;
  wire product_ab_n_68;
  wire product_ab_n_69;
  wire product_ab_n_70;
  wire product_ab_n_71;
  wire product_ab_n_72;
  wire product_ab_n_73;
  wire product_ab_n_74;
  wire product_ab_n_75;
  wire product_ab_n_76;
  wire product_ab_n_77;
  wire product_ab_n_78;
  wire product_ab_n_79;
  wire product_ab_n_80;
  wire product_ab_n_81;
  wire product_ab_n_82;
  wire product_ab_n_83;
  wire product_ab_n_84;
  wire product_ab_n_85;
  wire product_ab_n_86;
  wire product_ab_n_87;
  wire product_ab_n_88;
  wire [31:0]result;
  wire [31:0]result_O;
  wire \result_d[15]_i_11_n_0 ;
  wire \result_d[15]_i_12_n_0 ;
  wire \result_d[15]_i_13_n_0 ;
  wire \result_d[15]_i_14_n_0 ;
  wire \result_d[15]_i_15_n_0 ;
  wire \result_d[15]_i_16_n_0 ;
  wire \result_d[15]_i_17_n_0 ;
  wire \result_d[15]_i_18_n_0 ;
  wire \result_d[15]_i_19_n_0 ;
  wire \result_d[15]_i_20_n_0 ;
  wire \result_d[15]_i_21_n_0 ;
  wire \result_d[15]_i_22_n_0 ;
  wire \result_d[15]_i_23_n_0 ;
  wire \result_d[15]_i_24_n_0 ;
  wire \result_d[15]_i_25_n_0 ;
  wire \result_d[15]_i_26_n_0 ;
  wire \result_d[15]_i_27_n_0 ;
  wire \result_d[15]_i_28_n_0 ;
  wire \result_d[15]_i_29_n_0 ;
  wire \result_d[15]_i_30_n_0 ;
  wire \result_d[15]_i_31_n_0 ;
  wire \result_d[15]_i_32_n_0 ;
  wire \result_d[15]_i_33_n_0 ;
  wire \result_d[15]_i_34_n_0 ;
  wire \result_d[15]_i_35_n_0 ;
  wire \result_d[15]_i_36_n_0 ;
  wire \result_d[15]_i_37_n_0 ;
  wire \result_d[15]_i_38_n_0 ;
  wire \result_d[15]_i_39_n_0 ;
  wire \result_d[15]_i_40_n_0 ;
  wire \result_d[15]_i_41_n_0 ;
  wire \result_d[15]_i_42_n_0 ;
  wire \result_d[15]_i_43_n_0 ;
  wire \result_d[15]_i_44_n_0 ;
  wire \result_d[15]_i_45_n_0 ;
  wire \result_d[15]_i_46_n_0 ;
  wire \result_d[23]_i_100_n_0 ;
  wire \result_d[23]_i_101_n_0 ;
  wire \result_d[23]_i_102_n_0 ;
  wire \result_d[23]_i_11_n_0 ;
  wire \result_d[23]_i_12_n_0 ;
  wire \result_d[23]_i_13_n_0 ;
  wire \result_d[23]_i_14_n_0 ;
  wire \result_d[23]_i_15_n_0 ;
  wire \result_d[23]_i_16_n_0 ;
  wire \result_d[23]_i_17_n_0 ;
  wire \result_d[23]_i_18_n_0 ;
  wire \result_d[23]_i_19_n_0 ;
  wire \result_d[23]_i_20_n_0 ;
  wire \result_d[23]_i_21_n_0 ;
  wire \result_d[23]_i_22_n_0 ;
  wire \result_d[23]_i_23_n_0 ;
  wire \result_d[23]_i_24_n_0 ;
  wire \result_d[23]_i_25_n_0 ;
  wire \result_d[23]_i_26_n_0 ;
  wire \result_d[23]_i_27_n_0 ;
  wire \result_d[23]_i_28_n_0 ;
  wire \result_d[23]_i_29_n_0 ;
  wire \result_d[23]_i_30_n_0 ;
  wire \result_d[23]_i_31_n_0 ;
  wire \result_d[23]_i_32_n_0 ;
  wire \result_d[23]_i_34_n_0 ;
  wire \result_d[23]_i_36_n_0 ;
  wire \result_d[23]_i_37_n_0 ;
  wire \result_d[23]_i_38_n_0 ;
  wire \result_d[23]_i_39_n_0 ;
  wire \result_d[23]_i_40_n_0 ;
  wire \result_d[23]_i_41_n_0 ;
  wire \result_d[23]_i_42_n_0 ;
  wire \result_d[23]_i_43_n_0 ;
  wire \result_d[23]_i_44_n_0 ;
  wire \result_d[23]_i_45_n_0 ;
  wire \result_d[23]_i_46_n_0 ;
  wire \result_d[23]_i_47_n_0 ;
  wire \result_d[23]_i_48_n_0 ;
  wire \result_d[23]_i_49_n_0 ;
  wire \result_d[23]_i_50_n_0 ;
  wire \result_d[23]_i_51_n_0 ;
  wire \result_d[23]_i_52_n_0 ;
  wire \result_d[23]_i_53_n_0 ;
  wire \result_d[23]_i_54_n_0 ;
  wire \result_d[23]_i_55_n_0 ;
  wire \result_d[23]_i_56_n_0 ;
  wire \result_d[23]_i_57_n_0 ;
  wire \result_d[23]_i_58_n_0 ;
  wire \result_d[23]_i_59_n_0 ;
  wire \result_d[23]_i_60_n_0 ;
  wire \result_d[23]_i_61_n_0 ;
  wire \result_d[23]_i_62_n_0 ;
  wire \result_d[23]_i_63_n_0 ;
  wire \result_d[23]_i_64_n_0 ;
  wire \result_d[23]_i_65_n_0 ;
  wire \result_d[23]_i_66_n_0 ;
  wire \result_d[23]_i_67_n_0 ;
  wire \result_d[23]_i_68_n_0 ;
  wire \result_d[23]_i_69_n_0 ;
  wire \result_d[23]_i_70_n_0 ;
  wire \result_d[23]_i_71_n_0 ;
  wire \result_d[23]_i_72_n_0 ;
  wire \result_d[23]_i_73_n_0 ;
  wire \result_d[23]_i_74_n_0 ;
  wire \result_d[23]_i_75_n_0 ;
  wire \result_d[23]_i_76_n_0 ;
  wire \result_d[23]_i_77_n_0 ;
  wire \result_d[23]_i_78_n_0 ;
  wire \result_d[23]_i_79_n_0 ;
  wire \result_d[23]_i_80_n_0 ;
  wire \result_d[23]_i_81_n_0 ;
  wire \result_d[23]_i_82_n_0 ;
  wire \result_d[23]_i_83_n_0 ;
  wire \result_d[23]_i_84_n_0 ;
  wire \result_d[23]_i_85_n_0 ;
  wire \result_d[23]_i_86_n_0 ;
  wire \result_d[23]_i_87_n_0 ;
  wire \result_d[23]_i_88_n_0 ;
  wire \result_d[23]_i_89_n_0 ;
  wire \result_d[23]_i_90_n_0 ;
  wire \result_d[23]_i_91_n_0 ;
  wire \result_d[23]_i_92_n_0 ;
  wire \result_d[23]_i_93_n_0 ;
  wire \result_d[23]_i_94_n_0 ;
  wire \result_d[23]_i_95_n_0 ;
  wire \result_d[23]_i_96_n_0 ;
  wire \result_d[23]_i_97_n_0 ;
  wire \result_d[23]_i_98_n_0 ;
  wire \result_d[23]_i_99_n_0 ;
  wire \result_d[30]_i_10_n_0 ;
  wire \result_d[30]_i_11_n_0 ;
  wire \result_d[30]_i_14_n_0 ;
  wire \result_d[30]_i_19_n_0 ;
  wire \result_d[30]_i_20_n_0 ;
  wire \result_d[30]_i_21_n_0 ;
  wire \result_d[30]_i_22_n_0 ;
  wire \result_d[30]_i_23_n_0 ;
  wire \result_d[30]_i_24_n_0 ;
  wire \result_d[30]_i_25_n_0 ;
  wire \result_d[30]_i_26_n_0 ;
  wire \result_d[30]_i_27_n_0 ;
  wire \result_d[30]_i_28_n_0 ;
  wire \result_d[30]_i_29_n_0 ;
  wire \result_d[30]_i_2_n_0 ;
  wire \result_d[30]_i_30_n_0 ;
  wire \result_d[30]_i_31_n_0 ;
  wire \result_d[30]_i_32_n_0 ;
  wire \result_d[30]_i_33_n_0 ;
  wire \result_d[30]_i_34_n_0 ;
  wire \result_d[30]_i_35_n_0 ;
  wire \result_d[30]_i_36_n_0 ;
  wire \result_d[30]_i_37_n_0 ;
  wire \result_d[30]_i_38_n_0 ;
  wire \result_d[30]_i_39_n_0 ;
  wire \result_d[30]_i_3_n_0 ;
  wire \result_d[30]_i_40_n_0 ;
  wire \result_d[30]_i_41_n_0 ;
  wire \result_d[30]_i_42_n_0 ;
  wire \result_d[30]_i_43_n_0 ;
  wire \result_d[30]_i_44_n_0 ;
  wire \result_d[30]_i_46_n_0 ;
  wire \result_d[30]_i_47_n_0 ;
  wire \result_d[30]_i_48_n_0 ;
  wire \result_d[30]_i_49_n_0 ;
  wire \result_d[30]_i_4_n_0 ;
  wire \result_d[30]_i_50_n_0 ;
  wire \result_d[30]_i_51_n_0 ;
  wire \result_d[30]_i_52_n_0 ;
  wire \result_d[30]_i_53_n_0 ;
  wire \result_d[30]_i_54_n_0 ;
  wire \result_d[30]_i_55_n_0 ;
  wire \result_d[30]_i_58_n_0 ;
  wire \result_d[30]_i_59_n_0 ;
  wire \result_d[30]_i_60_n_0 ;
  wire \result_d[30]_i_61_n_0 ;
  wire \result_d[30]_i_62_n_0 ;
  wire \result_d[30]_i_63_n_0 ;
  wire \result_d[30]_i_64_n_0 ;
  wire \result_d[30]_i_65_n_0 ;
  wire \result_d[30]_i_6_n_0 ;
  wire \result_d[30]_i_7_n_0 ;
  wire \result_d[30]_i_8_n_0 ;
  wire \result_d[30]_i_9_n_0 ;
  wire \result_d[31]_i_100_n_0 ;
  wire \result_d[31]_i_101_n_0 ;
  wire \result_d[31]_i_102_n_0 ;
  wire \result_d[31]_i_103_n_0 ;
  wire \result_d[31]_i_104_n_0 ;
  wire \result_d[31]_i_105_n_0 ;
  wire \result_d[31]_i_106_n_0 ;
  wire \result_d[31]_i_107_n_0 ;
  wire \result_d[31]_i_108_n_0 ;
  wire \result_d[31]_i_109_n_0 ;
  wire \result_d[31]_i_10_n_0 ;
  wire \result_d[31]_i_110_n_0 ;
  wire \result_d[31]_i_111_n_0 ;
  wire \result_d[31]_i_112_n_0 ;
  wire \result_d[31]_i_113_n_0 ;
  wire \result_d[31]_i_114_n_0 ;
  wire \result_d[31]_i_115_n_0 ;
  wire \result_d[31]_i_116_n_0 ;
  wire \result_d[31]_i_117_n_0 ;
  wire \result_d[31]_i_118_n_0 ;
  wire \result_d[31]_i_119_n_0 ;
  wire \result_d[31]_i_11_n_0 ;
  wire \result_d[31]_i_120_n_0 ;
  wire \result_d[31]_i_121_n_0 ;
  wire \result_d[31]_i_122_n_0 ;
  wire \result_d[31]_i_123_n_0 ;
  wire \result_d[31]_i_124_n_0 ;
  wire \result_d[31]_i_125_n_0 ;
  wire \result_d[31]_i_126_n_0 ;
  wire \result_d[31]_i_127_n_0 ;
  wire \result_d[31]_i_128_n_0 ;
  wire \result_d[31]_i_12_n_0 ;
  wire \result_d[31]_i_130_n_0 ;
  wire \result_d[31]_i_131_n_0 ;
  wire \result_d[31]_i_132_n_0 ;
  wire \result_d[31]_i_133_n_0 ;
  wire \result_d[31]_i_134_n_0 ;
  wire \result_d[31]_i_135_n_0 ;
  wire \result_d[31]_i_136_n_0 ;
  wire \result_d[31]_i_137_n_0 ;
  wire \result_d[31]_i_138_n_0 ;
  wire \result_d[31]_i_139_n_0 ;
  wire \result_d[31]_i_13_n_0 ;
  wire \result_d[31]_i_140_n_0 ;
  wire \result_d[31]_i_141_n_0 ;
  wire \result_d[31]_i_142_n_0 ;
  wire \result_d[31]_i_143_n_0 ;
  wire \result_d[31]_i_144_n_0 ;
  wire \result_d[31]_i_145_n_0 ;
  wire \result_d[31]_i_146_n_0 ;
  wire \result_d[31]_i_147_n_0 ;
  wire \result_d[31]_i_148_n_0 ;
  wire \result_d[31]_i_149_n_0 ;
  wire \result_d[31]_i_14_n_0 ;
  wire \result_d[31]_i_150_n_0 ;
  wire \result_d[31]_i_151_n_0 ;
  wire \result_d[31]_i_152_n_0 ;
  wire \result_d[31]_i_153_n_0 ;
  wire \result_d[31]_i_154_n_0 ;
  wire \result_d[31]_i_155_n_0 ;
  wire \result_d[31]_i_157_n_0 ;
  wire \result_d[31]_i_158_n_0 ;
  wire \result_d[31]_i_159_n_0 ;
  wire \result_d[31]_i_15_n_0 ;
  wire \result_d[31]_i_160_n_0 ;
  wire \result_d[31]_i_161_n_0 ;
  wire \result_d[31]_i_162_n_0 ;
  wire \result_d[31]_i_163_n_0 ;
  wire \result_d[31]_i_164_n_0 ;
  wire \result_d[31]_i_165_n_0 ;
  wire \result_d[31]_i_166_n_0 ;
  wire \result_d[31]_i_167_n_0 ;
  wire \result_d[31]_i_168_n_0 ;
  wire \result_d[31]_i_169_n_0 ;
  wire \result_d[31]_i_16_n_0 ;
  wire \result_d[31]_i_170_n_0 ;
  wire \result_d[31]_i_171_n_0 ;
  wire \result_d[31]_i_172_n_0 ;
  wire \result_d[31]_i_173_n_0 ;
  wire \result_d[31]_i_174_n_0 ;
  wire \result_d[31]_i_175_n_0 ;
  wire \result_d[31]_i_176_n_0 ;
  wire \result_d[31]_i_177_n_0 ;
  wire \result_d[31]_i_178_n_0 ;
  wire \result_d[31]_i_179_n_0 ;
  wire \result_d[31]_i_17_n_0 ;
  wire \result_d[31]_i_180_n_0 ;
  wire \result_d[31]_i_181_n_0 ;
  wire \result_d[31]_i_182_n_0 ;
  wire \result_d[31]_i_183_n_0 ;
  wire \result_d[31]_i_184_n_0 ;
  wire \result_d[31]_i_185_n_0 ;
  wire \result_d[31]_i_186_n_0 ;
  wire \result_d[31]_i_187_n_0 ;
  wire \result_d[31]_i_188_n_0 ;
  wire \result_d[31]_i_189_n_0 ;
  wire \result_d[31]_i_190_n_0 ;
  wire \result_d[31]_i_191_n_0 ;
  wire \result_d[31]_i_192_n_0 ;
  wire \result_d[31]_i_193_n_0 ;
  wire \result_d[31]_i_194_n_0 ;
  wire \result_d[31]_i_195_n_0 ;
  wire \result_d[31]_i_196_n_0 ;
  wire \result_d[31]_i_198_n_0 ;
  wire \result_d[31]_i_19_n_0 ;
  wire \result_d[31]_i_201_n_0 ;
  wire \result_d[31]_i_202_n_0 ;
  wire \result_d[31]_i_203_n_0 ;
  wire \result_d[31]_i_204_n_0 ;
  wire \result_d[31]_i_205_n_0 ;
  wire \result_d[31]_i_206_n_0 ;
  wire \result_d[31]_i_207_n_0 ;
  wire \result_d[31]_i_208_n_0 ;
  wire \result_d[31]_i_209_n_0 ;
  wire \result_d[31]_i_20_n_0 ;
  wire \result_d[31]_i_210_n_0 ;
  wire \result_d[31]_i_211_n_0 ;
  wire \result_d[31]_i_212_n_0 ;
  wire \result_d[31]_i_213_n_0 ;
  wire \result_d[31]_i_214_n_0 ;
  wire \result_d[31]_i_215_n_0 ;
  wire \result_d[31]_i_216_n_0 ;
  wire \result_d[31]_i_217_n_0 ;
  wire \result_d[31]_i_218_n_0 ;
  wire \result_d[31]_i_219_n_0 ;
  wire \result_d[31]_i_21_n_0 ;
  wire \result_d[31]_i_220_n_0 ;
  wire \result_d[31]_i_221_n_0 ;
  wire \result_d[31]_i_222_n_0 ;
  wire \result_d[31]_i_223_n_0 ;
  wire \result_d[31]_i_225_n_0 ;
  wire \result_d[31]_i_226_n_0 ;
  wire \result_d[31]_i_227_n_0 ;
  wire \result_d[31]_i_228_n_0 ;
  wire \result_d[31]_i_229_n_0 ;
  wire \result_d[31]_i_22_n_0 ;
  wire \result_d[31]_i_230_n_0 ;
  wire \result_d[31]_i_231_n_0 ;
  wire \result_d[31]_i_232_n_0 ;
  wire \result_d[31]_i_233_n_0 ;
  wire \result_d[31]_i_234_n_0 ;
  wire \result_d[31]_i_235_n_0 ;
  wire \result_d[31]_i_236_n_0 ;
  wire \result_d[31]_i_237_n_0 ;
  wire \result_d[31]_i_238_n_0 ;
  wire \result_d[31]_i_239_n_0 ;
  wire \result_d[31]_i_23_n_0 ;
  wire \result_d[31]_i_240_n_0 ;
  wire \result_d[31]_i_241_n_0 ;
  wire \result_d[31]_i_242_n_0 ;
  wire \result_d[31]_i_243_n_0 ;
  wire \result_d[31]_i_244_n_0 ;
  wire \result_d[31]_i_245_n_0 ;
  wire \result_d[31]_i_246_n_0 ;
  wire \result_d[31]_i_247_n_0 ;
  wire \result_d[31]_i_248_n_0 ;
  wire \result_d[31]_i_249_n_0 ;
  wire \result_d[31]_i_24_n_0 ;
  wire \result_d[31]_i_250_n_0 ;
  wire \result_d[31]_i_251_n_0 ;
  wire \result_d[31]_i_252_n_0 ;
  wire \result_d[31]_i_253_n_0 ;
  wire \result_d[31]_i_254_n_0 ;
  wire \result_d[31]_i_255_n_0 ;
  wire \result_d[31]_i_256_n_0 ;
  wire \result_d[31]_i_257_n_0 ;
  wire \result_d[31]_i_258_n_0 ;
  wire \result_d[31]_i_259_n_0 ;
  wire \result_d[31]_i_25_n_0 ;
  wire \result_d[31]_i_260_n_0 ;
  wire \result_d[31]_i_261_n_0 ;
  wire \result_d[31]_i_262_n_0 ;
  wire \result_d[31]_i_263_n_0 ;
  wire \result_d[31]_i_264_n_0 ;
  wire \result_d[31]_i_265_n_0 ;
  wire \result_d[31]_i_266_n_0 ;
  wire \result_d[31]_i_267_n_0 ;
  wire \result_d[31]_i_268_n_0 ;
  wire \result_d[31]_i_269_n_0 ;
  wire \result_d[31]_i_26_n_0 ;
  wire \result_d[31]_i_270_n_0 ;
  wire \result_d[31]_i_271_n_0 ;
  wire \result_d[31]_i_272_n_0 ;
  wire \result_d[31]_i_273_n_0 ;
  wire \result_d[31]_i_274_n_0 ;
  wire \result_d[31]_i_275_n_0 ;
  wire \result_d[31]_i_276_n_0 ;
  wire \result_d[31]_i_277_n_0 ;
  wire \result_d[31]_i_278_n_0 ;
  wire \result_d[31]_i_279_n_0 ;
  wire \result_d[31]_i_27_n_0 ;
  wire \result_d[31]_i_280_n_0 ;
  wire \result_d[31]_i_281_n_0 ;
  wire \result_d[31]_i_282_n_0 ;
  wire \result_d[31]_i_284_n_0 ;
  wire \result_d[31]_i_285_n_0 ;
  wire \result_d[31]_i_286_n_0 ;
  wire \result_d[31]_i_287_n_0 ;
  wire \result_d[31]_i_288_n_0 ;
  wire \result_d[31]_i_289_n_0 ;
  wire \result_d[31]_i_28_n_0 ;
  wire \result_d[31]_i_290_n_0 ;
  wire \result_d[31]_i_291_n_0 ;
  wire \result_d[31]_i_292_n_0 ;
  wire \result_d[31]_i_293_n_0 ;
  wire \result_d[31]_i_294_n_0 ;
  wire \result_d[31]_i_295_n_0 ;
  wire \result_d[31]_i_296_n_0 ;
  wire \result_d[31]_i_297_n_0 ;
  wire \result_d[31]_i_298_n_0 ;
  wire \result_d[31]_i_299_n_0 ;
  wire \result_d[31]_i_29_n_0 ;
  wire \result_d[31]_i_2_n_0 ;
  wire \result_d[31]_i_300_n_0 ;
  wire \result_d[31]_i_301_n_0 ;
  wire \result_d[31]_i_302_n_0 ;
  wire \result_d[31]_i_303_n_0 ;
  wire \result_d[31]_i_304_n_0 ;
  wire \result_d[31]_i_305_n_0 ;
  wire \result_d[31]_i_306_n_0 ;
  wire \result_d[31]_i_307_n_0 ;
  wire \result_d[31]_i_308_n_0 ;
  wire \result_d[31]_i_309_n_0 ;
  wire \result_d[31]_i_30_n_0 ;
  wire \result_d[31]_i_310_n_0 ;
  wire \result_d[31]_i_311_n_0 ;
  wire \result_d[31]_i_312_n_0 ;
  wire \result_d[31]_i_313_n_0 ;
  wire \result_d[31]_i_314_n_0 ;
  wire \result_d[31]_i_315_n_0 ;
  wire \result_d[31]_i_316_n_0 ;
  wire \result_d[31]_i_317_n_0 ;
  wire \result_d[31]_i_318_n_0 ;
  wire \result_d[31]_i_319_n_0 ;
  wire \result_d[31]_i_31_n_0 ;
  wire \result_d[31]_i_320_n_0 ;
  wire \result_d[31]_i_321_n_0 ;
  wire \result_d[31]_i_322_n_0 ;
  wire \result_d[31]_i_323_n_0 ;
  wire \result_d[31]_i_324_n_0 ;
  wire \result_d[31]_i_325_n_0 ;
  wire \result_d[31]_i_326_n_0 ;
  wire \result_d[31]_i_327_n_0 ;
  wire \result_d[31]_i_328_n_0 ;
  wire \result_d[31]_i_329_n_0 ;
  wire \result_d[31]_i_32_n_0 ;
  wire \result_d[31]_i_330_n_0 ;
  wire \result_d[31]_i_331_n_0 ;
  wire \result_d[31]_i_332_n_0 ;
  wire \result_d[31]_i_333_n_0 ;
  wire \result_d[31]_i_334_n_0 ;
  wire \result_d[31]_i_335_n_0 ;
  wire \result_d[31]_i_336_n_0 ;
  wire \result_d[31]_i_337_n_0 ;
  wire \result_d[31]_i_338_n_0 ;
  wire \result_d[31]_i_339_n_0 ;
  wire \result_d[31]_i_33_n_0 ;
  wire \result_d[31]_i_340_n_0 ;
  wire \result_d[31]_i_341_n_0 ;
  wire \result_d[31]_i_342_n_0 ;
  wire \result_d[31]_i_343_n_0 ;
  wire \result_d[31]_i_344_n_0 ;
  wire \result_d[31]_i_345_n_0 ;
  wire \result_d[31]_i_346_n_0 ;
  wire \result_d[31]_i_347_n_0 ;
  wire \result_d[31]_i_348_n_0 ;
  wire \result_d[31]_i_349_n_0 ;
  wire \result_d[31]_i_34_n_0 ;
  wire \result_d[31]_i_350_n_0 ;
  wire \result_d[31]_i_351_n_0 ;
  wire \result_d[31]_i_352_n_0 ;
  wire \result_d[31]_i_353_n_0 ;
  wire \result_d[31]_i_354_n_0 ;
  wire \result_d[31]_i_355_n_0 ;
  wire \result_d[31]_i_356_n_0 ;
  wire \result_d[31]_i_357_n_0 ;
  wire \result_d[31]_i_358_n_0 ;
  wire \result_d[31]_i_359_n_0 ;
  wire \result_d[31]_i_35_n_0 ;
  wire \result_d[31]_i_360_n_0 ;
  wire \result_d[31]_i_361_n_0 ;
  wire \result_d[31]_i_362_n_0 ;
  wire \result_d[31]_i_363_n_0 ;
  wire \result_d[31]_i_364_n_0 ;
  wire \result_d[31]_i_365_n_0 ;
  wire \result_d[31]_i_366_n_0 ;
  wire \result_d[31]_i_367_n_0 ;
  wire \result_d[31]_i_368_n_0 ;
  wire \result_d[31]_i_369_n_0 ;
  wire \result_d[31]_i_36_n_0 ;
  wire \result_d[31]_i_370_n_0 ;
  wire \result_d[31]_i_371_n_0 ;
  wire \result_d[31]_i_372_n_0 ;
  wire \result_d[31]_i_373_n_0 ;
  wire \result_d[31]_i_374_n_0 ;
  wire \result_d[31]_i_375_n_0 ;
  wire \result_d[31]_i_376_n_0 ;
  wire \result_d[31]_i_377_n_0 ;
  wire \result_d[31]_i_378_n_0 ;
  wire \result_d[31]_i_379_n_0 ;
  wire \result_d[31]_i_37_n_0 ;
  wire \result_d[31]_i_380_n_0 ;
  wire \result_d[31]_i_381_n_0 ;
  wire \result_d[31]_i_382_n_0 ;
  wire \result_d[31]_i_383_n_0 ;
  wire \result_d[31]_i_384_n_0 ;
  wire \result_d[31]_i_385_n_0 ;
  wire \result_d[31]_i_386_n_0 ;
  wire \result_d[31]_i_387_n_0 ;
  wire \result_d[31]_i_388_n_0 ;
  wire \result_d[31]_i_389_n_0 ;
  wire \result_d[31]_i_38_n_0 ;
  wire \result_d[31]_i_390_n_0 ;
  wire \result_d[31]_i_391_n_0 ;
  wire \result_d[31]_i_392_n_0 ;
  wire \result_d[31]_i_393_n_0 ;
  wire \result_d[31]_i_394_n_0 ;
  wire \result_d[31]_i_395_n_0 ;
  wire \result_d[31]_i_396_n_0 ;
  wire \result_d[31]_i_397_n_0 ;
  wire \result_d[31]_i_398_n_0 ;
  wire \result_d[31]_i_399_n_0 ;
  wire \result_d[31]_i_39_n_0 ;
  wire \result_d[31]_i_3_n_0 ;
  wire \result_d[31]_i_400_n_0 ;
  wire \result_d[31]_i_401_n_0 ;
  wire \result_d[31]_i_402_n_0 ;
  wire \result_d[31]_i_403_n_0 ;
  wire \result_d[31]_i_404_n_0 ;
  wire \result_d[31]_i_405_n_0 ;
  wire \result_d[31]_i_406_n_0 ;
  wire \result_d[31]_i_407_n_0 ;
  wire \result_d[31]_i_408_n_0 ;
  wire \result_d[31]_i_409_n_0 ;
  wire \result_d[31]_i_40_n_0 ;
  wire \result_d[31]_i_410_n_0 ;
  wire \result_d[31]_i_411_n_0 ;
  wire \result_d[31]_i_412_n_0 ;
  wire \result_d[31]_i_413_n_0 ;
  wire \result_d[31]_i_414_n_0 ;
  wire \result_d[31]_i_417_n_0 ;
  wire \result_d[31]_i_418_n_0 ;
  wire \result_d[31]_i_419_n_0 ;
  wire \result_d[31]_i_41_n_0 ;
  wire \result_d[31]_i_420_n_0 ;
  wire \result_d[31]_i_421_n_0 ;
  wire \result_d[31]_i_422_n_0 ;
  wire \result_d[31]_i_424_n_0 ;
  wire \result_d[31]_i_426_n_0 ;
  wire \result_d[31]_i_427_n_0 ;
  wire \result_d[31]_i_428_n_0 ;
  wire \result_d[31]_i_429_n_0 ;
  wire \result_d[31]_i_42_n_0 ;
  wire \result_d[31]_i_430_n_0 ;
  wire \result_d[31]_i_431_n_0 ;
  wire \result_d[31]_i_432_n_0 ;
  wire \result_d[31]_i_433_n_0 ;
  wire \result_d[31]_i_434_n_0 ;
  wire \result_d[31]_i_435_n_0 ;
  wire \result_d[31]_i_436_n_0 ;
  wire \result_d[31]_i_437_n_0 ;
  wire \result_d[31]_i_438_n_0 ;
  wire \result_d[31]_i_43_n_0 ;
  wire \result_d[31]_i_441_n_0 ;
  wire \result_d[31]_i_443_n_0 ;
  wire \result_d[31]_i_444_n_0 ;
  wire \result_d[31]_i_445_n_0 ;
  wire \result_d[31]_i_446_n_0 ;
  wire \result_d[31]_i_447_n_0 ;
  wire \result_d[31]_i_448_n_0 ;
  wire \result_d[31]_i_449_n_0 ;
  wire \result_d[31]_i_44_n_0 ;
  wire \result_d[31]_i_450_n_0 ;
  wire \result_d[31]_i_451_n_0 ;
  wire \result_d[31]_i_452_n_0 ;
  wire \result_d[31]_i_454_n_0 ;
  wire \result_d[31]_i_455_n_0 ;
  wire \result_d[31]_i_456_n_0 ;
  wire \result_d[31]_i_457_n_0 ;
  wire \result_d[31]_i_458_n_0 ;
  wire \result_d[31]_i_459_n_0 ;
  wire \result_d[31]_i_45_n_0 ;
  wire \result_d[31]_i_460_n_0 ;
  wire \result_d[31]_i_461_n_0 ;
  wire \result_d[31]_i_462_n_0 ;
  wire \result_d[31]_i_463_n_0 ;
  wire \result_d[31]_i_464_n_0 ;
  wire \result_d[31]_i_465_n_0 ;
  wire \result_d[31]_i_466_n_0 ;
  wire \result_d[31]_i_467_n_0 ;
  wire \result_d[31]_i_468_n_0 ;
  wire \result_d[31]_i_469_n_0 ;
  wire \result_d[31]_i_46_n_0 ;
  wire \result_d[31]_i_470_n_0 ;
  wire \result_d[31]_i_471_n_0 ;
  wire \result_d[31]_i_472_n_0 ;
  wire \result_d[31]_i_473_n_0 ;
  wire \result_d[31]_i_474_n_0 ;
  wire \result_d[31]_i_475_n_0 ;
  wire \result_d[31]_i_476_n_0 ;
  wire \result_d[31]_i_477_n_0 ;
  wire \result_d[31]_i_478_n_0 ;
  wire \result_d[31]_i_479_n_0 ;
  wire \result_d[31]_i_47_n_0 ;
  wire \result_d[31]_i_480_n_0 ;
  wire \result_d[31]_i_481_n_0 ;
  wire \result_d[31]_i_482_n_0 ;
  wire \result_d[31]_i_483_n_0 ;
  wire \result_d[31]_i_484_n_0 ;
  wire \result_d[31]_i_485_n_0 ;
  wire \result_d[31]_i_486_n_0 ;
  wire \result_d[31]_i_487_n_0 ;
  wire \result_d[31]_i_488_n_0 ;
  wire \result_d[31]_i_489_n_0 ;
  wire \result_d[31]_i_48_n_0 ;
  wire \result_d[31]_i_490_n_0 ;
  wire \result_d[31]_i_491_n_0 ;
  wire \result_d[31]_i_492_n_0 ;
  wire \result_d[31]_i_493_n_0 ;
  wire \result_d[31]_i_494_n_0 ;
  wire \result_d[31]_i_495_n_0 ;
  wire \result_d[31]_i_496_n_0 ;
  wire \result_d[31]_i_497_n_0 ;
  wire \result_d[31]_i_498_n_0 ;
  wire \result_d[31]_i_499_n_0 ;
  wire \result_d[31]_i_49_n_0 ;
  wire \result_d[31]_i_4_n_0 ;
  wire \result_d[31]_i_500_n_0 ;
  wire \result_d[31]_i_501_n_0 ;
  wire \result_d[31]_i_502_n_0 ;
  wire \result_d[31]_i_503_n_0 ;
  wire \result_d[31]_i_504_n_0 ;
  wire \result_d[31]_i_505_n_0 ;
  wire \result_d[31]_i_506_n_0 ;
  wire \result_d[31]_i_507_n_0 ;
  wire \result_d[31]_i_508_n_0 ;
  wire \result_d[31]_i_509_n_0 ;
  wire \result_d[31]_i_50_n_0 ;
  wire \result_d[31]_i_510_n_0 ;
  wire \result_d[31]_i_511_n_0 ;
  wire \result_d[31]_i_512_n_0 ;
  wire \result_d[31]_i_513_n_0 ;
  wire \result_d[31]_i_514_n_0 ;
  wire \result_d[31]_i_515_n_0 ;
  wire \result_d[31]_i_516_n_0 ;
  wire \result_d[31]_i_517_n_0 ;
  wire \result_d[31]_i_518_n_0 ;
  wire \result_d[31]_i_520_n_0 ;
  wire \result_d[31]_i_521_n_0 ;
  wire \result_d[31]_i_522_n_0 ;
  wire \result_d[31]_i_523_n_0 ;
  wire \result_d[31]_i_524_n_0 ;
  wire \result_d[31]_i_525_n_0 ;
  wire \result_d[31]_i_526_n_0 ;
  wire \result_d[31]_i_527_n_0 ;
  wire \result_d[31]_i_528_n_0 ;
  wire \result_d[31]_i_529_n_0 ;
  wire \result_d[31]_i_52_n_0 ;
  wire \result_d[31]_i_530_n_0 ;
  wire \result_d[31]_i_531_n_0 ;
  wire \result_d[31]_i_535_n_0 ;
  wire \result_d[31]_i_536_n_0 ;
  wire \result_d[31]_i_537_n_0 ;
  wire \result_d[31]_i_538_n_0 ;
  wire \result_d[31]_i_53_n_0 ;
  wire \result_d[31]_i_543_n_0 ;
  wire \result_d[31]_i_544_n_0 ;
  wire \result_d[31]_i_545_n_0 ;
  wire \result_d[31]_i_546_n_0 ;
  wire \result_d[31]_i_547_n_0 ;
  wire \result_d[31]_i_548_n_0 ;
  wire \result_d[31]_i_549_n_0 ;
  wire \result_d[31]_i_54_n_0 ;
  wire \result_d[31]_i_550_n_0 ;
  wire \result_d[31]_i_551_n_0 ;
  wire \result_d[31]_i_552_n_0 ;
  wire \result_d[31]_i_553_n_0 ;
  wire \result_d[31]_i_555_n_0 ;
  wire \result_d[31]_i_556_n_0 ;
  wire \result_d[31]_i_557_n_0 ;
  wire \result_d[31]_i_558_n_0 ;
  wire \result_d[31]_i_559_n_0 ;
  wire \result_d[31]_i_55_n_0 ;
  wire \result_d[31]_i_560_n_0 ;
  wire \result_d[31]_i_561_n_0 ;
  wire \result_d[31]_i_562_n_0 ;
  wire \result_d[31]_i_566_n_0 ;
  wire \result_d[31]_i_567_n_0 ;
  wire \result_d[31]_i_568_n_0 ;
  wire \result_d[31]_i_569_n_0 ;
  wire \result_d[31]_i_56_n_0 ;
  wire \result_d[31]_i_570_n_0 ;
  wire \result_d[31]_i_571_n_0 ;
  wire \result_d[31]_i_572_n_0 ;
  wire \result_d[31]_i_573_n_0 ;
  wire \result_d[31]_i_574_n_0 ;
  wire \result_d[31]_i_575_n_0 ;
  wire \result_d[31]_i_576_n_0 ;
  wire \result_d[31]_i_577_n_0 ;
  wire \result_d[31]_i_578_n_0 ;
  wire \result_d[31]_i_579_n_0 ;
  wire \result_d[31]_i_57_n_0 ;
  wire \result_d[31]_i_580_n_0 ;
  wire \result_d[31]_i_581_n_0 ;
  wire \result_d[31]_i_582_n_0 ;
  wire \result_d[31]_i_583_n_0 ;
  wire \result_d[31]_i_584_n_0 ;
  wire \result_d[31]_i_585_n_0 ;
  wire \result_d[31]_i_586_n_0 ;
  wire \result_d[31]_i_587_n_0 ;
  wire \result_d[31]_i_588_n_0 ;
  wire \result_d[31]_i_58_n_0 ;
  wire \result_d[31]_i_591_n_0 ;
  wire \result_d[31]_i_592_n_0 ;
  wire \result_d[31]_i_593_n_0 ;
  wire \result_d[31]_i_594_n_0 ;
  wire \result_d[31]_i_595_n_0 ;
  wire \result_d[31]_i_596_n_0 ;
  wire \result_d[31]_i_597_n_0 ;
  wire \result_d[31]_i_598_n_0 ;
  wire \result_d[31]_i_599_n_0 ;
  wire \result_d[31]_i_59_n_0 ;
  wire \result_d[31]_i_5_n_0 ;
  wire \result_d[31]_i_600_n_0 ;
  wire \result_d[31]_i_601_n_0 ;
  wire \result_d[31]_i_602_n_0 ;
  wire \result_d[31]_i_603_n_0 ;
  wire \result_d[31]_i_604_n_0 ;
  wire \result_d[31]_i_605_n_0 ;
  wire \result_d[31]_i_606_n_0 ;
  wire \result_d[31]_i_607_n_0 ;
  wire \result_d[31]_i_608_n_0 ;
  wire \result_d[31]_i_609_n_0 ;
  wire \result_d[31]_i_60_n_0 ;
  wire \result_d[31]_i_610_n_0 ;
  wire \result_d[31]_i_611_n_0 ;
  wire \result_d[31]_i_612_n_0 ;
  wire \result_d[31]_i_613_n_0 ;
  wire \result_d[31]_i_614_n_0 ;
  wire \result_d[31]_i_615_n_0 ;
  wire \result_d[31]_i_616_n_0 ;
  wire \result_d[31]_i_617_n_0 ;
  wire \result_d[31]_i_618_n_0 ;
  wire \result_d[31]_i_619_n_0 ;
  wire \result_d[31]_i_61_n_0 ;
  wire \result_d[31]_i_620_n_0 ;
  wire \result_d[31]_i_621_n_0 ;
  wire \result_d[31]_i_622_n_0 ;
  wire \result_d[31]_i_623_n_0 ;
  wire \result_d[31]_i_624_n_0 ;
  wire \result_d[31]_i_625_n_0 ;
  wire \result_d[31]_i_626_n_0 ;
  wire \result_d[31]_i_627_n_0 ;
  wire \result_d[31]_i_628_n_0 ;
  wire \result_d[31]_i_629_n_0 ;
  wire \result_d[31]_i_62_n_0 ;
  wire \result_d[31]_i_630_n_0 ;
  wire \result_d[31]_i_631_n_0 ;
  wire \result_d[31]_i_632_n_0 ;
  wire \result_d[31]_i_633_n_0 ;
  wire \result_d[31]_i_634_n_0 ;
  wire \result_d[31]_i_635_n_0 ;
  wire \result_d[31]_i_636_n_0 ;
  wire \result_d[31]_i_637_n_0 ;
  wire \result_d[31]_i_638_n_0 ;
  wire \result_d[31]_i_639_n_0 ;
  wire \result_d[31]_i_63_n_0 ;
  wire \result_d[31]_i_640_n_0 ;
  wire \result_d[31]_i_641_n_0 ;
  wire \result_d[31]_i_642_n_0 ;
  wire \result_d[31]_i_643_n_0 ;
  wire \result_d[31]_i_644_n_0 ;
  wire \result_d[31]_i_645_n_0 ;
  wire \result_d[31]_i_646_n_0 ;
  wire \result_d[31]_i_647_n_0 ;
  wire \result_d[31]_i_648_n_0 ;
  wire \result_d[31]_i_649_n_0 ;
  wire \result_d[31]_i_64_n_0 ;
  wire \result_d[31]_i_650_n_0 ;
  wire \result_d[31]_i_651_n_0 ;
  wire \result_d[31]_i_652_n_0 ;
  wire \result_d[31]_i_653_n_0 ;
  wire \result_d[31]_i_654_n_0 ;
  wire \result_d[31]_i_655_n_0 ;
  wire \result_d[31]_i_656_n_0 ;
  wire \result_d[31]_i_657_n_0 ;
  wire \result_d[31]_i_658_n_0 ;
  wire \result_d[31]_i_659_n_0 ;
  wire \result_d[31]_i_65_n_0 ;
  wire \result_d[31]_i_660_n_0 ;
  wire \result_d[31]_i_661_n_0 ;
  wire \result_d[31]_i_662_n_0 ;
  wire \result_d[31]_i_663_n_0 ;
  wire \result_d[31]_i_664_n_0 ;
  wire \result_d[31]_i_665_n_0 ;
  wire \result_d[31]_i_666_n_0 ;
  wire \result_d[31]_i_667_n_0 ;
  wire \result_d[31]_i_668_n_0 ;
  wire \result_d[31]_i_669_n_0 ;
  wire \result_d[31]_i_66_n_0 ;
  wire \result_d[31]_i_670_n_0 ;
  wire \result_d[31]_i_671_n_0 ;
  wire \result_d[31]_i_672_n_0 ;
  wire \result_d[31]_i_673_n_0 ;
  wire \result_d[31]_i_674_n_0 ;
  wire \result_d[31]_i_675_n_0 ;
  wire \result_d[31]_i_676_n_0 ;
  wire \result_d[31]_i_677_n_0 ;
  wire \result_d[31]_i_678_n_0 ;
  wire \result_d[31]_i_679_n_0 ;
  wire \result_d[31]_i_67_n_0 ;
  wire \result_d[31]_i_680_n_0 ;
  wire \result_d[31]_i_681_n_0 ;
  wire \result_d[31]_i_682_n_0 ;
  wire \result_d[31]_i_683_n_0 ;
  wire \result_d[31]_i_684_n_0 ;
  wire \result_d[31]_i_685_n_0 ;
  wire \result_d[31]_i_686_n_0 ;
  wire \result_d[31]_i_687_n_0 ;
  wire \result_d[31]_i_688_n_0 ;
  wire \result_d[31]_i_689_n_0 ;
  wire \result_d[31]_i_68_n_0 ;
  wire \result_d[31]_i_690_n_0 ;
  wire \result_d[31]_i_691_n_0 ;
  wire \result_d[31]_i_692_n_0 ;
  wire \result_d[31]_i_693_n_0 ;
  wire \result_d[31]_i_694_n_0 ;
  wire \result_d[31]_i_695_n_0 ;
  wire \result_d[31]_i_696_n_0 ;
  wire \result_d[31]_i_697_n_0 ;
  wire \result_d[31]_i_698_n_0 ;
  wire \result_d[31]_i_699_n_0 ;
  wire \result_d[31]_i_69_n_0 ;
  wire \result_d[31]_i_6_n_0 ;
  wire \result_d[31]_i_700_n_0 ;
  wire \result_d[31]_i_701_n_0 ;
  wire \result_d[31]_i_702_n_0 ;
  wire \result_d[31]_i_703_n_0 ;
  wire \result_d[31]_i_704_n_0 ;
  wire \result_d[31]_i_705_n_0 ;
  wire \result_d[31]_i_706_n_0 ;
  wire \result_d[31]_i_707_n_0 ;
  wire \result_d[31]_i_708_n_0 ;
  wire \result_d[31]_i_709_n_0 ;
  wire \result_d[31]_i_70_n_0 ;
  wire \result_d[31]_i_710_n_0 ;
  wire \result_d[31]_i_711_n_0 ;
  wire \result_d[31]_i_712_n_0 ;
  wire \result_d[31]_i_713_n_0 ;
  wire \result_d[31]_i_714_n_0 ;
  wire \result_d[31]_i_715_n_0 ;
  wire \result_d[31]_i_716_n_0 ;
  wire \result_d[31]_i_717_n_0 ;
  wire \result_d[31]_i_718_n_0 ;
  wire \result_d[31]_i_719_n_0 ;
  wire \result_d[31]_i_71_n_0 ;
  wire \result_d[31]_i_720_n_0 ;
  wire \result_d[31]_i_721_n_0 ;
  wire \result_d[31]_i_722_n_0 ;
  wire \result_d[31]_i_723_n_0 ;
  wire \result_d[31]_i_724_n_0 ;
  wire \result_d[31]_i_725_n_0 ;
  wire \result_d[31]_i_726_n_0 ;
  wire \result_d[31]_i_727_n_0 ;
  wire \result_d[31]_i_728_n_0 ;
  wire \result_d[31]_i_729_n_0 ;
  wire \result_d[31]_i_72_n_0 ;
  wire \result_d[31]_i_730_n_0 ;
  wire \result_d[31]_i_731_n_0 ;
  wire \result_d[31]_i_732_n_0 ;
  wire \result_d[31]_i_733_n_0 ;
  wire \result_d[31]_i_734_n_0 ;
  wire \result_d[31]_i_735_n_0 ;
  wire \result_d[31]_i_736_n_0 ;
  wire \result_d[31]_i_737_n_0 ;
  wire \result_d[31]_i_738_n_0 ;
  wire \result_d[31]_i_739_n_0 ;
  wire \result_d[31]_i_73_n_0 ;
  wire \result_d[31]_i_740_n_0 ;
  wire \result_d[31]_i_741_n_0 ;
  wire \result_d[31]_i_742_n_0 ;
  wire \result_d[31]_i_743_n_0 ;
  wire \result_d[31]_i_744_n_0 ;
  wire \result_d[31]_i_745_n_0 ;
  wire \result_d[31]_i_746_n_0 ;
  wire \result_d[31]_i_747_n_0 ;
  wire \result_d[31]_i_748_n_0 ;
  wire \result_d[31]_i_749_n_0 ;
  wire \result_d[31]_i_74_n_0 ;
  wire \result_d[31]_i_750_n_0 ;
  wire \result_d[31]_i_751_n_0 ;
  wire \result_d[31]_i_752_n_0 ;
  wire \result_d[31]_i_753_n_0 ;
  wire \result_d[31]_i_754_n_0 ;
  wire \result_d[31]_i_755_n_0 ;
  wire \result_d[31]_i_756_n_0 ;
  wire \result_d[31]_i_757_n_0 ;
  wire \result_d[31]_i_758_n_0 ;
  wire \result_d[31]_i_759_n_0 ;
  wire \result_d[31]_i_75_n_0 ;
  wire \result_d[31]_i_760_n_0 ;
  wire \result_d[31]_i_761_n_0 ;
  wire \result_d[31]_i_762_n_0 ;
  wire \result_d[31]_i_763_n_0 ;
  wire \result_d[31]_i_764_n_0 ;
  wire \result_d[31]_i_765_n_0 ;
  wire \result_d[31]_i_766_n_0 ;
  wire \result_d[31]_i_767_n_0 ;
  wire \result_d[31]_i_768_n_0 ;
  wire \result_d[31]_i_769_n_0 ;
  wire \result_d[31]_i_76_n_0 ;
  wire \result_d[31]_i_770_n_0 ;
  wire \result_d[31]_i_771_n_0 ;
  wire \result_d[31]_i_772_n_0 ;
  wire \result_d[31]_i_773_n_0 ;
  wire \result_d[31]_i_774_n_0 ;
  wire \result_d[31]_i_775_n_0 ;
  wire \result_d[31]_i_776_n_0 ;
  wire \result_d[31]_i_777_n_0 ;
  wire \result_d[31]_i_778_n_0 ;
  wire \result_d[31]_i_779_n_0 ;
  wire \result_d[31]_i_77_n_0 ;
  wire \result_d[31]_i_780_n_0 ;
  wire \result_d[31]_i_781_n_0 ;
  wire \result_d[31]_i_782_n_0 ;
  wire \result_d[31]_i_783_n_0 ;
  wire \result_d[31]_i_784_n_0 ;
  wire \result_d[31]_i_785_n_0 ;
  wire \result_d[31]_i_786_n_0 ;
  wire \result_d[31]_i_787_n_0 ;
  wire \result_d[31]_i_788_n_0 ;
  wire \result_d[31]_i_789_n_0 ;
  wire \result_d[31]_i_78_n_0 ;
  wire \result_d[31]_i_790_n_0 ;
  wire \result_d[31]_i_791_n_0 ;
  wire \result_d[31]_i_79_n_0 ;
  wire \result_d[31]_i_7_n_0 ;
  wire \result_d[31]_i_80_n_0 ;
  wire \result_d[31]_i_81_n_0 ;
  wire \result_d[31]_i_82_n_0 ;
  wire \result_d[31]_i_83_n_0 ;
  wire \result_d[31]_i_84_n_0 ;
  wire \result_d[31]_i_85_n_0 ;
  wire \result_d[31]_i_86_n_0 ;
  wire \result_d[31]_i_87_n_0 ;
  wire \result_d[31]_i_88_n_0 ;
  wire \result_d[31]_i_89_n_0 ;
  wire \result_d[31]_i_8_n_0 ;
  wire \result_d[31]_i_90_n_0 ;
  wire \result_d[31]_i_91_n_0 ;
  wire \result_d[31]_i_92_n_0 ;
  wire \result_d[31]_i_93_n_0 ;
  wire \result_d[31]_i_94_n_0 ;
  wire \result_d[31]_i_95_n_0 ;
  wire \result_d[31]_i_96_n_0 ;
  wire \result_d[31]_i_97_n_0 ;
  wire \result_d[31]_i_98_n_0 ;
  wire \result_d[31]_i_99_n_0 ;
  wire \result_d[31]_i_9_n_0 ;
  wire \result_d[7]_i_11_n_0 ;
  wire \result_d[7]_i_12_n_0 ;
  wire \result_d[7]_i_13_n_0 ;
  wire \result_d[7]_i_14_n_0 ;
  wire \result_d[7]_i_15_n_0 ;
  wire \result_d[7]_i_16_n_0 ;
  wire \result_d[7]_i_17_n_0 ;
  wire \result_d[7]_i_18_n_0 ;
  wire \result_d[7]_i_19_n_0 ;
  wire \result_d[7]_i_20_n_0 ;
  wire \result_d[7]_i_21_n_0 ;
  wire \result_d[7]_i_22_n_0 ;
  wire \result_d[7]_i_23_n_0 ;
  wire \result_d[7]_i_24_n_0 ;
  wire \result_d[7]_i_25_n_0 ;
  wire \result_d[7]_i_26_n_0 ;
  wire \result_d[7]_i_27_n_0 ;
  wire \result_d[7]_i_28_n_0 ;
  wire \result_d[7]_i_29_n_0 ;
  wire \result_d[7]_i_30_n_0 ;
  wire \result_d[7]_i_31_n_0 ;
  wire \result_d[7]_i_32_n_0 ;
  wire \result_d[7]_i_33_n_0 ;
  wire \result_d[7]_i_34_n_0 ;
  wire \result_d[7]_i_35_n_0 ;
  wire \result_d[7]_i_36_n_0 ;
  wire \result_d[7]_i_37_n_0 ;
  wire \result_d[7]_i_38_n_0 ;
  wire \result_d_reg[15]_i_2_n_0 ;
  wire \result_d_reg[15]_i_2_n_1 ;
  wire \result_d_reg[15]_i_2_n_10 ;
  wire \result_d_reg[15]_i_2_n_11 ;
  wire \result_d_reg[15]_i_2_n_12 ;
  wire \result_d_reg[15]_i_2_n_13 ;
  wire \result_d_reg[15]_i_2_n_14 ;
  wire \result_d_reg[15]_i_2_n_15 ;
  wire \result_d_reg[15]_i_2_n_2 ;
  wire \result_d_reg[15]_i_2_n_3 ;
  wire \result_d_reg[15]_i_2_n_4 ;
  wire \result_d_reg[15]_i_2_n_5 ;
  wire \result_d_reg[15]_i_2_n_6 ;
  wire \result_d_reg[15]_i_2_n_7 ;
  wire \result_d_reg[15]_i_2_n_8 ;
  wire \result_d_reg[15]_i_2_n_9 ;
  wire \result_d_reg[23]_i_2_n_0 ;
  wire \result_d_reg[23]_i_2_n_1 ;
  wire \result_d_reg[23]_i_2_n_10 ;
  wire \result_d_reg[23]_i_2_n_11 ;
  wire \result_d_reg[23]_i_2_n_12 ;
  wire \result_d_reg[23]_i_2_n_13 ;
  wire \result_d_reg[23]_i_2_n_14 ;
  wire \result_d_reg[23]_i_2_n_15 ;
  wire \result_d_reg[23]_i_2_n_2 ;
  wire \result_d_reg[23]_i_2_n_3 ;
  wire \result_d_reg[23]_i_2_n_4 ;
  wire \result_d_reg[23]_i_2_n_5 ;
  wire \result_d_reg[23]_i_2_n_6 ;
  wire \result_d_reg[23]_i_2_n_7 ;
  wire \result_d_reg[23]_i_2_n_9 ;
  wire \result_d_reg[23]_i_33_n_0 ;
  wire \result_d_reg[23]_i_33_n_1 ;
  wire \result_d_reg[23]_i_33_n_2 ;
  wire \result_d_reg[23]_i_33_n_3 ;
  wire \result_d_reg[23]_i_33_n_4 ;
  wire \result_d_reg[23]_i_33_n_5 ;
  wire \result_d_reg[23]_i_33_n_6 ;
  wire \result_d_reg[23]_i_33_n_7 ;
  wire \result_d_reg[30]_i_45_n_0 ;
  wire \result_d_reg[30]_i_45_n_1 ;
  wire \result_d_reg[30]_i_45_n_2 ;
  wire \result_d_reg[30]_i_45_n_3 ;
  wire \result_d_reg[30]_i_45_n_4 ;
  wire \result_d_reg[30]_i_45_n_5 ;
  wire \result_d_reg[30]_i_45_n_6 ;
  wire \result_d_reg[30]_i_45_n_7 ;
  wire \result_d_reg[30]_i_5_n_2 ;
  wire \result_d_reg[30]_i_5_n_3 ;
  wire \result_d_reg[30]_i_5_n_4 ;
  wire \result_d_reg[30]_i_5_n_5 ;
  wire \result_d_reg[30]_i_5_n_6 ;
  wire \result_d_reg[30]_i_5_n_7 ;
  wire \result_d_reg[31]_i_129_n_0 ;
  wire \result_d_reg[31]_i_129_n_1 ;
  wire \result_d_reg[31]_i_129_n_10 ;
  wire \result_d_reg[31]_i_129_n_11 ;
  wire \result_d_reg[31]_i_129_n_12 ;
  wire \result_d_reg[31]_i_129_n_13 ;
  wire \result_d_reg[31]_i_129_n_14 ;
  wire \result_d_reg[31]_i_129_n_15 ;
  wire \result_d_reg[31]_i_129_n_2 ;
  wire \result_d_reg[31]_i_129_n_3 ;
  wire \result_d_reg[31]_i_129_n_4 ;
  wire \result_d_reg[31]_i_129_n_5 ;
  wire \result_d_reg[31]_i_129_n_6 ;
  wire \result_d_reg[31]_i_129_n_7 ;
  wire \result_d_reg[31]_i_129_n_8 ;
  wire \result_d_reg[31]_i_129_n_9 ;
  wire \result_d_reg[31]_i_156_n_0 ;
  wire \result_d_reg[31]_i_156_n_1 ;
  wire \result_d_reg[31]_i_156_n_2 ;
  wire \result_d_reg[31]_i_156_n_3 ;
  wire \result_d_reg[31]_i_156_n_4 ;
  wire \result_d_reg[31]_i_156_n_5 ;
  wire \result_d_reg[31]_i_156_n_6 ;
  wire \result_d_reg[31]_i_156_n_7 ;
  wire \result_d_reg[31]_i_18_n_12 ;
  wire \result_d_reg[31]_i_18_n_13 ;
  wire \result_d_reg[31]_i_18_n_14 ;
  wire \result_d_reg[31]_i_18_n_15 ;
  wire \result_d_reg[31]_i_18_n_5 ;
  wire \result_d_reg[31]_i_18_n_6 ;
  wire \result_d_reg[31]_i_18_n_7 ;
  wire \result_d_reg[31]_i_199_n_1 ;
  wire \result_d_reg[31]_i_199_n_2 ;
  wire \result_d_reg[31]_i_199_n_3 ;
  wire \result_d_reg[31]_i_199_n_4 ;
  wire \result_d_reg[31]_i_199_n_5 ;
  wire \result_d_reg[31]_i_199_n_6 ;
  wire \result_d_reg[31]_i_199_n_7 ;
  wire \result_d_reg[31]_i_200_n_7 ;
  wire \result_d_reg[31]_i_224_n_0 ;
  wire \result_d_reg[31]_i_224_n_1 ;
  wire \result_d_reg[31]_i_224_n_10 ;
  wire \result_d_reg[31]_i_224_n_11 ;
  wire \result_d_reg[31]_i_224_n_12 ;
  wire \result_d_reg[31]_i_224_n_13 ;
  wire \result_d_reg[31]_i_224_n_14 ;
  wire \result_d_reg[31]_i_224_n_15 ;
  wire \result_d_reg[31]_i_224_n_2 ;
  wire \result_d_reg[31]_i_224_n_3 ;
  wire \result_d_reg[31]_i_224_n_4 ;
  wire \result_d_reg[31]_i_224_n_5 ;
  wire \result_d_reg[31]_i_224_n_6 ;
  wire \result_d_reg[31]_i_224_n_7 ;
  wire \result_d_reg[31]_i_224_n_8 ;
  wire \result_d_reg[31]_i_224_n_9 ;
  wire \result_d_reg[31]_i_283_n_0 ;
  wire \result_d_reg[31]_i_283_n_1 ;
  wire \result_d_reg[31]_i_283_n_10 ;
  wire \result_d_reg[31]_i_283_n_11 ;
  wire \result_d_reg[31]_i_283_n_12 ;
  wire \result_d_reg[31]_i_283_n_13 ;
  wire \result_d_reg[31]_i_283_n_14 ;
  wire \result_d_reg[31]_i_283_n_15 ;
  wire \result_d_reg[31]_i_283_n_2 ;
  wire \result_d_reg[31]_i_283_n_3 ;
  wire \result_d_reg[31]_i_283_n_4 ;
  wire \result_d_reg[31]_i_283_n_5 ;
  wire \result_d_reg[31]_i_283_n_6 ;
  wire \result_d_reg[31]_i_283_n_7 ;
  wire \result_d_reg[31]_i_283_n_8 ;
  wire \result_d_reg[31]_i_283_n_9 ;
  wire \result_d_reg[31]_i_415_n_0 ;
  wire \result_d_reg[31]_i_415_n_1 ;
  wire \result_d_reg[31]_i_415_n_2 ;
  wire \result_d_reg[31]_i_415_n_3 ;
  wire \result_d_reg[31]_i_415_n_4 ;
  wire \result_d_reg[31]_i_415_n_5 ;
  wire \result_d_reg[31]_i_415_n_6 ;
  wire \result_d_reg[31]_i_415_n_7 ;
  wire \result_d_reg[31]_i_423_n_5 ;
  wire \result_d_reg[31]_i_423_n_7 ;
  wire \result_d_reg[31]_i_439_n_0 ;
  wire \result_d_reg[31]_i_439_n_1 ;
  wire \result_d_reg[31]_i_439_n_2 ;
  wire \result_d_reg[31]_i_439_n_3 ;
  wire \result_d_reg[31]_i_439_n_4 ;
  wire \result_d_reg[31]_i_439_n_5 ;
  wire \result_d_reg[31]_i_439_n_6 ;
  wire \result_d_reg[31]_i_439_n_7 ;
  wire \result_d_reg[31]_i_440_n_0 ;
  wire \result_d_reg[31]_i_440_n_1 ;
  wire \result_d_reg[31]_i_440_n_10 ;
  wire \result_d_reg[31]_i_440_n_11 ;
  wire \result_d_reg[31]_i_440_n_12 ;
  wire \result_d_reg[31]_i_440_n_13 ;
  wire \result_d_reg[31]_i_440_n_14 ;
  wire \result_d_reg[31]_i_440_n_15 ;
  wire \result_d_reg[31]_i_440_n_2 ;
  wire \result_d_reg[31]_i_440_n_3 ;
  wire \result_d_reg[31]_i_440_n_4 ;
  wire \result_d_reg[31]_i_440_n_5 ;
  wire \result_d_reg[31]_i_440_n_6 ;
  wire \result_d_reg[31]_i_440_n_7 ;
  wire \result_d_reg[31]_i_440_n_8 ;
  wire \result_d_reg[31]_i_440_n_9 ;
  wire \result_d_reg[31]_i_442_n_0 ;
  wire \result_d_reg[31]_i_442_n_1 ;
  wire \result_d_reg[31]_i_442_n_2 ;
  wire \result_d_reg[31]_i_442_n_3 ;
  wire \result_d_reg[31]_i_442_n_4 ;
  wire \result_d_reg[31]_i_442_n_5 ;
  wire \result_d_reg[31]_i_442_n_6 ;
  wire \result_d_reg[31]_i_442_n_7 ;
  wire \result_d_reg[31]_i_519_n_0 ;
  wire \result_d_reg[31]_i_519_n_1 ;
  wire \result_d_reg[31]_i_519_n_10 ;
  wire \result_d_reg[31]_i_519_n_11 ;
  wire \result_d_reg[31]_i_519_n_12 ;
  wire \result_d_reg[31]_i_519_n_13 ;
  wire \result_d_reg[31]_i_519_n_14 ;
  wire \result_d_reg[31]_i_519_n_15 ;
  wire \result_d_reg[31]_i_519_n_2 ;
  wire \result_d_reg[31]_i_519_n_3 ;
  wire \result_d_reg[31]_i_519_n_4 ;
  wire \result_d_reg[31]_i_519_n_5 ;
  wire \result_d_reg[31]_i_519_n_6 ;
  wire \result_d_reg[31]_i_519_n_7 ;
  wire \result_d_reg[31]_i_519_n_8 ;
  wire \result_d_reg[31]_i_519_n_9 ;
  wire \result_d_reg[31]_i_51_n_0 ;
  wire \result_d_reg[31]_i_51_n_1 ;
  wire \result_d_reg[31]_i_51_n_10 ;
  wire \result_d_reg[31]_i_51_n_11 ;
  wire \result_d_reg[31]_i_51_n_12 ;
  wire \result_d_reg[31]_i_51_n_13 ;
  wire \result_d_reg[31]_i_51_n_14 ;
  wire \result_d_reg[31]_i_51_n_15 ;
  wire \result_d_reg[31]_i_51_n_2 ;
  wire \result_d_reg[31]_i_51_n_3 ;
  wire \result_d_reg[31]_i_51_n_4 ;
  wire \result_d_reg[31]_i_51_n_5 ;
  wire \result_d_reg[31]_i_51_n_6 ;
  wire \result_d_reg[31]_i_51_n_7 ;
  wire \result_d_reg[31]_i_51_n_8 ;
  wire \result_d_reg[31]_i_51_n_9 ;
  wire \result_d_reg[31]_i_532_n_0 ;
  wire \result_d_reg[31]_i_532_n_1 ;
  wire \result_d_reg[31]_i_532_n_10 ;
  wire \result_d_reg[31]_i_532_n_11 ;
  wire \result_d_reg[31]_i_532_n_12 ;
  wire \result_d_reg[31]_i_532_n_13 ;
  wire \result_d_reg[31]_i_532_n_14 ;
  wire \result_d_reg[31]_i_532_n_15 ;
  wire \result_d_reg[31]_i_532_n_2 ;
  wire \result_d_reg[31]_i_532_n_3 ;
  wire \result_d_reg[31]_i_532_n_4 ;
  wire \result_d_reg[31]_i_532_n_5 ;
  wire \result_d_reg[31]_i_532_n_6 ;
  wire \result_d_reg[31]_i_532_n_7 ;
  wire \result_d_reg[31]_i_532_n_8 ;
  wire \result_d_reg[31]_i_532_n_9 ;
  wire \result_d_reg[31]_i_533_n_0 ;
  wire \result_d_reg[31]_i_533_n_1 ;
  wire \result_d_reg[31]_i_533_n_2 ;
  wire \result_d_reg[31]_i_533_n_3 ;
  wire \result_d_reg[31]_i_533_n_4 ;
  wire \result_d_reg[31]_i_533_n_5 ;
  wire \result_d_reg[31]_i_533_n_6 ;
  wire \result_d_reg[31]_i_533_n_7 ;
  wire \result_d_reg[31]_i_534_n_0 ;
  wire \result_d_reg[31]_i_534_n_1 ;
  wire \result_d_reg[31]_i_534_n_2 ;
  wire \result_d_reg[31]_i_534_n_3 ;
  wire \result_d_reg[31]_i_534_n_4 ;
  wire \result_d_reg[31]_i_534_n_5 ;
  wire \result_d_reg[31]_i_534_n_6 ;
  wire \result_d_reg[31]_i_534_n_7 ;
  wire \result_d_reg[31]_i_539_n_0 ;
  wire \result_d_reg[31]_i_539_n_1 ;
  wire \result_d_reg[31]_i_539_n_10 ;
  wire \result_d_reg[31]_i_539_n_11 ;
  wire \result_d_reg[31]_i_539_n_12 ;
  wire \result_d_reg[31]_i_539_n_13 ;
  wire \result_d_reg[31]_i_539_n_14 ;
  wire \result_d_reg[31]_i_539_n_15 ;
  wire \result_d_reg[31]_i_539_n_2 ;
  wire \result_d_reg[31]_i_539_n_3 ;
  wire \result_d_reg[31]_i_539_n_4 ;
  wire \result_d_reg[31]_i_539_n_5 ;
  wire \result_d_reg[31]_i_539_n_6 ;
  wire \result_d_reg[31]_i_539_n_7 ;
  wire \result_d_reg[31]_i_539_n_8 ;
  wire \result_d_reg[31]_i_539_n_9 ;
  wire \result_d_reg[31]_i_540_n_0 ;
  wire \result_d_reg[31]_i_540_n_1 ;
  wire \result_d_reg[31]_i_540_n_2 ;
  wire \result_d_reg[31]_i_540_n_3 ;
  wire \result_d_reg[31]_i_540_n_4 ;
  wire \result_d_reg[31]_i_540_n_5 ;
  wire \result_d_reg[31]_i_540_n_6 ;
  wire \result_d_reg[31]_i_540_n_7 ;
  wire \result_d_reg[31]_i_541_n_0 ;
  wire \result_d_reg[31]_i_541_n_1 ;
  wire \result_d_reg[31]_i_541_n_10 ;
  wire \result_d_reg[31]_i_541_n_11 ;
  wire \result_d_reg[31]_i_541_n_12 ;
  wire \result_d_reg[31]_i_541_n_13 ;
  wire \result_d_reg[31]_i_541_n_14 ;
  wire \result_d_reg[31]_i_541_n_15 ;
  wire \result_d_reg[31]_i_541_n_2 ;
  wire \result_d_reg[31]_i_541_n_3 ;
  wire \result_d_reg[31]_i_541_n_4 ;
  wire \result_d_reg[31]_i_541_n_5 ;
  wire \result_d_reg[31]_i_541_n_6 ;
  wire \result_d_reg[31]_i_541_n_7 ;
  wire \result_d_reg[31]_i_541_n_8 ;
  wire \result_d_reg[31]_i_541_n_9 ;
  wire \result_d_reg[31]_i_542_n_0 ;
  wire \result_d_reg[31]_i_542_n_1 ;
  wire \result_d_reg[31]_i_542_n_2 ;
  wire \result_d_reg[31]_i_542_n_3 ;
  wire \result_d_reg[31]_i_542_n_4 ;
  wire \result_d_reg[31]_i_542_n_5 ;
  wire \result_d_reg[31]_i_542_n_6 ;
  wire \result_d_reg[31]_i_542_n_7 ;
  wire \result_d_reg[31]_i_554_n_0 ;
  wire \result_d_reg[31]_i_554_n_1 ;
  wire \result_d_reg[31]_i_554_n_2 ;
  wire \result_d_reg[31]_i_554_n_3 ;
  wire \result_d_reg[31]_i_554_n_4 ;
  wire \result_d_reg[31]_i_554_n_5 ;
  wire \result_d_reg[31]_i_554_n_6 ;
  wire \result_d_reg[31]_i_554_n_7 ;
  wire \result_d_reg[31]_i_563_n_6 ;
  wire \result_d_reg[31]_i_563_n_7 ;
  wire \result_d_reg[31]_i_564_n_0 ;
  wire \result_d_reg[31]_i_564_n_1 ;
  wire \result_d_reg[31]_i_564_n_2 ;
  wire \result_d_reg[31]_i_564_n_3 ;
  wire \result_d_reg[31]_i_564_n_4 ;
  wire \result_d_reg[31]_i_564_n_5 ;
  wire \result_d_reg[31]_i_564_n_6 ;
  wire \result_d_reg[31]_i_564_n_7 ;
  wire \result_d_reg[31]_i_565_n_0 ;
  wire \result_d_reg[31]_i_565_n_1 ;
  wire \result_d_reg[31]_i_565_n_2 ;
  wire \result_d_reg[31]_i_565_n_3 ;
  wire \result_d_reg[31]_i_565_n_4 ;
  wire \result_d_reg[31]_i_565_n_5 ;
  wire \result_d_reg[31]_i_565_n_6 ;
  wire \result_d_reg[31]_i_565_n_7 ;
  wire \result_d_reg[31]_i_589_n_0 ;
  wire \result_d_reg[31]_i_589_n_1 ;
  wire \result_d_reg[31]_i_589_n_2 ;
  wire \result_d_reg[31]_i_589_n_3 ;
  wire \result_d_reg[31]_i_589_n_4 ;
  wire \result_d_reg[31]_i_589_n_5 ;
  wire \result_d_reg[31]_i_589_n_6 ;
  wire \result_d_reg[31]_i_589_n_7 ;
  wire \result_d_reg[7]_i_2_n_0 ;
  wire \result_d_reg[7]_i_2_n_1 ;
  wire \result_d_reg[7]_i_2_n_10 ;
  wire \result_d_reg[7]_i_2_n_11 ;
  wire \result_d_reg[7]_i_2_n_12 ;
  wire \result_d_reg[7]_i_2_n_13 ;
  wire \result_d_reg[7]_i_2_n_14 ;
  wire \result_d_reg[7]_i_2_n_15 ;
  wire \result_d_reg[7]_i_2_n_2 ;
  wire \result_d_reg[7]_i_2_n_3 ;
  wire \result_d_reg[7]_i_2_n_4 ;
  wire \result_d_reg[7]_i_2_n_5 ;
  wire \result_d_reg[7]_i_2_n_6 ;
  wire \result_d_reg[7]_i_2_n_7 ;
  wire \result_d_reg[7]_i_2_n_8 ;
  wire \result_d_reg[7]_i_2_n_9 ;
  wire [2:0]rnd_mode;
  wire [2:0]rnd_mode_d;
  wire rst_n_I;
  wire [7:0]sel0;
  wire [49:2]shift_ab;
  wire shift_width_norm35_in;
  wire [31:0]shift_width_norm4;
  wire sign_a;
  wire sign_b;
  wire sign_c;
  wire [75:1]sum_negtive;
  wire [7:1]NLW_flag_overflow_result_d_reg_i_19_CO_UNCONNECTED;
  wire [7:2]NLW_flag_overflow_result_d_reg_i_19_O_UNCONNECTED;
  wire [7:0]NLW_flag_overflow_result_d_reg_i_23_CO_UNCONNECTED;
  wire [7:1]NLW_flag_overflow_result_d_reg_i_23_O_UNCONNECTED;
  wire NLW_product_ab_CARRYCASCOUT_UNCONNECTED;
  wire NLW_product_ab_MULTSIGNOUT_UNCONNECTED;
  wire NLW_product_ab_OVERFLOW_UNCONNECTED;
  wire NLW_product_ab_PATTERNBDETECT_UNCONNECTED;
  wire NLW_product_ab_PATTERNDETECT_UNCONNECTED;
  wire NLW_product_ab_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_product_ab_ACOUT_UNCONNECTED;
  wire [17:0]NLW_product_ab_BCOUT_UNCONNECTED;
  wire [3:0]NLW_product_ab_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_product_ab_XOROUT_UNCONNECTED;
  wire NLW_product_ab__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_product_ab__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_product_ab__0_OVERFLOW_UNCONNECTED;
  wire NLW_product_ab__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_product_ab__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_product_ab__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_product_ab__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_product_ab__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_product_ab__0_CARRYOUT_UNCONNECTED;
  wire [47:31]NLW_product_ab__0_P_UNCONNECTED;
  wire [47:0]NLW_product_ab__0_PCOUT_UNCONNECTED;
  wire [7:0]NLW_product_ab__0_XOROUT_UNCONNECTED;
  wire [0:0]\NLW_result_d_reg[30]_i_45_O_UNCONNECTED ;
  wire [7:6]\NLW_result_d_reg[30]_i_5_CO_UNCONNECTED ;
  wire [7:7]\NLW_result_d_reg[30]_i_5_O_UNCONNECTED ;
  wire [7:3]\NLW_result_d_reg[31]_i_18_CO_UNCONNECTED ;
  wire [7:4]\NLW_result_d_reg[31]_i_18_O_UNCONNECTED ;
  wire [7:0]\NLW_result_d_reg[31]_i_199_O_UNCONNECTED ;
  wire [7:1]\NLW_result_d_reg[31]_i_200_CO_UNCONNECTED ;
  wire [7:2]\NLW_result_d_reg[31]_i_200_O_UNCONNECTED ;
  wire [7:0]\NLW_result_d_reg[31]_i_415_O_UNCONNECTED ;
  wire [7:1]\NLW_result_d_reg[31]_i_423_CO_UNCONNECTED ;
  wire [7:2]\NLW_result_d_reg[31]_i_423_O_UNCONNECTED ;
  wire [7:2]\NLW_result_d_reg[31]_i_563_CO_UNCONNECTED ;
  wire [7:3]\NLW_result_d_reg[31]_i_563_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h40000000FFFFFFFF)) 
    flag_overflow_result_d_i_1
       (.I0(flag_overflow_result_d_i_2_n_0),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[6]),
        .I4(p_0_in[4]),
        .I5(flag_overflow_result_d_i_3_n_0),
        .O(flag_overflow_result_d_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    flag_overflow_result_d_i_10
       (.I0(flag_overflow_result_d_i_17_n_0),
        .I1(\result_d[30]_i_42_n_0 ),
        .I2(\result_d[30]_i_43_n_0 ),
        .I3(\result_d[31]_i_40_n_0 ),
        .I4(\result_d[30]_i_44_n_0 ),
        .I5(\result_d[30]_i_27_n_0 ),
        .O(flag_overflow_result_d_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h08)) 
    flag_overflow_result_d_i_11
       (.I0(\result_d[31]_i_81_n_0 ),
        .I1(exponent_norm_result1[9]),
        .I2(\result_d[31]_i_82_n_0 ),
        .O(flag_overflow_result_d_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    flag_overflow_result_d_i_12
       (.I0(\operand_c_d_reg_n_0_[30] ),
        .I1(\result_d[31]_i_82_n_0 ),
        .I2(exponent_norm_result1[7]),
        .I3(\result_d[31]_i_81_n_0 ),
        .O(flag_overflow_result_d_i_12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    flag_overflow_result_d_i_13
       (.I0(\result_d[30]_i_28_n_0 ),
        .I1(\result_d[30]_i_27_n_0 ),
        .O(flag_overflow_result_d_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h40)) 
    flag_overflow_result_d_i_14
       (.I0(\result_d[31]_i_82_n_0 ),
        .I1(\result_d[31]_i_81_n_0 ),
        .I2(exponent_norm_result1[8]),
        .O(flag_overflow_result_d_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h3E3E3E0E)) 
    flag_overflow_result_d_i_15
       (.I0(\result_d[23]_i_13_n_0 ),
        .I1(\result_d[31]_i_23_n_0 ),
        .I2(\result_d[23]_i_12_n_0 ),
        .I3(\result_d[31]_i_40_n_0 ),
        .I4(\result_d[31]_i_42_n_0 ),
        .O(flag_overflow_result_d_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    flag_overflow_result_d_i_16
       (.I0(flag_overflow_result_d_i_17_n_0),
        .I1(\result_d[30]_i_42_n_0 ),
        .I2(\result_d[30]_i_43_n_0 ),
        .I3(\result_d[31]_i_40_n_0 ),
        .O(flag_overflow_result_d_i_16_n_0));
  LUT4 #(
    .INIT(16'hB888)) 
    flag_overflow_result_d_i_17
       (.I0(\operand_c_d_reg_n_0_[27] ),
        .I1(\result_d[31]_i_82_n_0 ),
        .I2(exponent_norm_result1[4]),
        .I3(\result_d[31]_i_81_n_0 ),
        .O(flag_overflow_result_d_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    flag_overflow_result_d_i_18
       (.I0(\result_d[23]_i_12_n_0 ),
        .I1(\result_d[30]_i_46_n_0 ),
        .I2(\result_d[30]_i_47_n_0 ),
        .I3(\result_d[30]_i_43_n_0 ),
        .O(flag_overflow_result_d_i_18_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    flag_overflow_result_d_i_2
       (.I0(p_0_in[7]),
        .I1(p_0_in[5]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .O(flag_overflow_result_d_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    flag_overflow_result_d_i_20
       (.I0(exponent_product0[8]),
        .I1(\result_d[23]_i_34_n_0 ),
        .O(flag_overflow_result_d_i_20_n_0));
  LUT3 #(
    .INIT(8'hDE)) 
    flag_overflow_result_d_i_21
       (.I0(exponent_product0[8]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(flag_overflow_result_d_reg_i_23_n_6),
        .O(flag_overflow_result_d_i_21_n_0));
  LUT3 #(
    .INIT(8'hED)) 
    flag_overflow_result_d_i_22
       (.I0(exponent_product0[7]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(exponent_product0[8]),
        .O(flag_overflow_result_d_i_22_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    flag_overflow_result_d_i_24
       (.I0(\operand_a_d_reg_n_0_[30] ),
        .I1(sel0[7]),
        .O(flag_overflow_result_d_i_24_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    flag_overflow_result_d_i_25
       (.I0(sel0[7]),
        .I1(\operand_a_d_reg_n_0_[30] ),
        .O(flag_overflow_result_d_i_25_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEAEE)) 
    flag_overflow_result_d_i_3
       (.I0(flag_overflow_result_d_i_4_n_0),
        .I1(flag_overflow_result_d_i_5_n_0),
        .I2(flag_overflow_result_d_i_6_n_0),
        .I3(flag_overflow_result_d_i_7_n_0),
        .I4(flag_overflow_result_d_i_8_n_0),
        .I5(flag_overflow_result_d_i_9_n_0),
        .O(flag_overflow_result_d_i_3_n_0));
  LUT6 #(
    .INIT(64'hCFF4FCF4F0F8F0F8)) 
    flag_overflow_result_d_i_4
       (.I0(flag_overflow_result_d_i_10_n_0),
        .I1(\result_d[30]_i_26_n_0 ),
        .I2(flag_overflow_result_d_i_11_n_0),
        .I3(flag_overflow_result_d_i_12_n_0),
        .I4(flag_overflow_result_d_i_13_n_0),
        .I5(flag_overflow_result_d_i_14_n_0),
        .O(flag_overflow_result_d_i_4_n_0));
  LUT6 #(
    .INIT(64'h30070F073FB73FB7)) 
    flag_overflow_result_d_i_5
       (.I0(flag_overflow_result_d_i_10_n_0),
        .I1(\result_d[30]_i_26_n_0 ),
        .I2(flag_overflow_result_d_i_14_n_0),
        .I3(flag_overflow_result_d_i_12_n_0),
        .I4(flag_overflow_result_d_i_13_n_0),
        .I5(\result_d[31]_i_23_n_0 ),
        .O(flag_overflow_result_d_i_5_n_0));
  LUT6 #(
    .INIT(64'hEAFAEBFFABAFEBFF)) 
    flag_overflow_result_d_i_6
       (.I0(\result_d[30]_i_30_n_0 ),
        .I1(\result_d[30]_i_28_n_0 ),
        .I2(\result_d[30]_i_27_n_0 ),
        .I3(\result_d[31]_i_23_n_0 ),
        .I4(\result_d[30]_i_26_n_0 ),
        .I5(\result_d[30]_i_25_n_0 ),
        .O(flag_overflow_result_d_i_6_n_0));
  LUT4 #(
    .INIT(16'h0002)) 
    flag_overflow_result_d_i_7
       (.I0(\result_d[30]_i_29_n_0 ),
        .I1(flag_overflow_result_d_i_15_n_0),
        .I2(\result_d[30]_i_32_n_0 ),
        .I3(\result_d[30]_i_31_n_0 ),
        .O(flag_overflow_result_d_i_7_n_0));
  LUT5 #(
    .INIT(32'hBB070B77)) 
    flag_overflow_result_d_i_8
       (.I0(flag_overflow_result_d_i_10_n_0),
        .I1(\result_d[30]_i_26_n_0 ),
        .I2(\result_d[31]_i_23_n_0 ),
        .I3(flag_overflow_result_d_i_12_n_0),
        .I4(flag_overflow_result_d_i_13_n_0),
        .O(flag_overflow_result_d_i_8_n_0));
  LUT5 #(
    .INIT(32'hBB0B0BBB)) 
    flag_overflow_result_d_i_9
       (.I0(flag_overflow_result_d_i_16_n_0),
        .I1(\result_d[30]_i_26_n_0 ),
        .I2(\result_d[31]_i_23_n_0 ),
        .I3(flag_overflow_result_d_i_17_n_0),
        .I4(flag_overflow_result_d_i_18_n_0),
        .O(flag_overflow_result_d_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    flag_overflow_result_d_reg
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(flag_overflow_result_d_i_1_n_0),
        .Q(flag_overflow_O));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    flag_overflow_result_d_reg_i_19
       (.CI(\result_d_reg[30]_i_45_n_0 ),
        .CI_TOP(1'b0),
        .CO({NLW_flag_overflow_result_d_reg_i_19_CO_UNCONNECTED[7:1],flag_overflow_result_d_reg_i_19_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,flag_overflow_result_d_i_20_n_0}),
        .O({NLW_flag_overflow_result_d_reg_i_19_O_UNCONNECTED[7:2],exponent_norm_result1[9:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,flag_overflow_result_d_i_21_n_0,flag_overflow_result_d_i_22_n_0}));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    flag_overflow_result_d_reg_i_23
       (.CI(\result_d_reg[23]_i_33_n_0 ),
        .CI_TOP(1'b0),
        .CO({NLW_flag_overflow_result_d_reg_i_23_CO_UNCONNECTED[7:2],flag_overflow_result_d_reg_i_23_n_6,NLW_flag_overflow_result_d_reg_i_23_CO_UNCONNECTED[0]}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,flag_overflow_result_d_i_24_n_0}),
        .O({NLW_flag_overflow_result_d_reg_i_23_O_UNCONNECTED[7:1],exponent_product0[8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,flag_overflow_result_d_i_25_n_0}));
  LUT5 #(
    .INIT(32'h00000001)) 
    flag_underflow_result_d_i_1
       (.I0(p_0_in[4]),
        .I1(p_0_in[5]),
        .I2(p_0_in[7]),
        .I3(p_0_in[6]),
        .I4(flag_underflow_result_d_i_2_n_0),
        .O(flag_underflow_result));
  LUT4 #(
    .INIT(16'hFFFE)) 
    flag_underflow_result_d_i_2
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .O(flag_underflow_result_d_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    flag_underflow_result_d_reg
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(flag_underflow_result),
        .Q(flag_underflow_O));
  FDCE #(
    .INIT(1'b0)) 
    in_valid_d_d_d_reg
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(in_valid_d),
        .Q(done_valid_O));
  FDCE #(
    .INIT(1'b0)) 
    in_valid_d_reg
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(\operand_b_d[31]_i_1_n_0 ),
        .Q(in_valid_d));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[0] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[0]),
        .Q(\operand_a_d_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[10] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[10]),
        .Q(\operand_a_d_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[11] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[11]),
        .Q(\operand_a_d_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[12] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[12]),
        .Q(\operand_a_d_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[13] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[13]),
        .Q(\operand_a_d_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[14] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[14]),
        .Q(\operand_a_d_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[15] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[15]),
        .Q(\operand_a_d_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[16] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[16]),
        .Q(\operand_a_d_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[17] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[17]),
        .Q(\operand_a_d_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[18] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[18]),
        .Q(\operand_a_d_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[19] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[19]),
        .Q(\operand_a_d_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[1] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[1]),
        .Q(\operand_a_d_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[20] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[20]),
        .Q(\operand_a_d_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[21] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[21]),
        .Q(\operand_a_d_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[22] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[22]),
        .Q(\operand_a_d_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[23] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[23]),
        .Q(\operand_a_d_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[24] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[24]),
        .Q(\operand_a_d_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[25] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[25]),
        .Q(\operand_a_d_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[26] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[26]),
        .Q(\operand_a_d_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[27] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[27]),
        .Q(\operand_a_d_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[28] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[28]),
        .Q(\operand_a_d_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[29] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[29]),
        .Q(\operand_a_d_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[2] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[2]),
        .Q(\operand_a_d_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[30] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[30]),
        .Q(\operand_a_d_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[31] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[31]),
        .Q(sign_a));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[3] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[3]),
        .Q(\operand_a_d_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[4] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[4]),
        .Q(\operand_a_d_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[5] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[5]),
        .Q(\operand_a_d_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[6] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[6]),
        .Q(\operand_a_d_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[7] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[7]),
        .Q(\operand_a_d_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[8] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[8]),
        .Q(\operand_a_d_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_a_d_reg[9] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_a_I[9]),
        .Q(\operand_a_d_reg_n_0_[9] ));
  LUT1 #(
    .INIT(2'h1)) 
    \operand_b_d[31]_i_1 
       (.I0(gate),
        .O(\operand_b_d[31]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[0] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[0]),
        .Q(A[0]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[10] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[10]),
        .Q(A[10]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[11] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[11]),
        .Q(A[11]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[12] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[12]),
        .Q(A[12]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[13] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[13]),
        .Q(A[13]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[14] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[14]),
        .Q(A[14]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[15] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[15]),
        .Q(A[15]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[16] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[16]),
        .Q(A[16]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[17] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[17]),
        .Q(A[17]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[18] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[18]),
        .Q(A[18]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[19] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[19]),
        .Q(A[19]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[1] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[1]),
        .Q(A[1]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[20] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[20]),
        .Q(A[20]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[21] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[21]),
        .Q(A[21]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[22] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[22]),
        .Q(A[22]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[23] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[23]),
        .Q(sel0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[24] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[24]),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[25] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[25]),
        .Q(sel0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[26] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[26]),
        .Q(sel0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[27] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[27]),
        .Q(sel0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[28] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[28]),
        .Q(sel0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[29] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[29]),
        .Q(sel0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[2] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[2]),
        .Q(A[2]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[30] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[30]),
        .Q(sel0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[31] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[31]),
        .Q(sign_b));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[3] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[3]),
        .Q(A[3]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[4] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[4]),
        .Q(A[4]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[5] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[5]),
        .Q(A[5]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[6] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[6]),
        .Q(A[6]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[7] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[7]),
        .Q(A[7]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[8] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[8]),
        .Q(A[8]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_b_d_reg[9] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_b_I[9]),
        .Q(A[9]));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[0] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[0]),
        .Q(\operand_c_d_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[10] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[10]),
        .Q(\operand_c_d_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[11] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[11]),
        .Q(\operand_c_d_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[12] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[12]),
        .Q(\operand_c_d_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[13] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[13]),
        .Q(\operand_c_d_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[14] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[14]),
        .Q(\operand_c_d_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[15] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[15]),
        .Q(\operand_c_d_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[16] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[16]),
        .Q(\operand_c_d_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[17] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[17]),
        .Q(\operand_c_d_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[18] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[18]),
        .Q(\operand_c_d_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[19] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[19]),
        .Q(\operand_c_d_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[1] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[1]),
        .Q(\operand_c_d_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[20] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[20]),
        .Q(\operand_c_d_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[21] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[21]),
        .Q(\operand_c_d_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[22] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[22]),
        .Q(\operand_c_d_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[23] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[23]),
        .Q(\operand_c_d_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[24] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[24]),
        .Q(\operand_c_d_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[25] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[25]),
        .Q(\operand_c_d_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[26] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[26]),
        .Q(\operand_c_d_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[27] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[27]),
        .Q(\operand_c_d_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[28] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[28]),
        .Q(\operand_c_d_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[29] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[29]),
        .Q(\operand_c_d_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[2] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[2]),
        .Q(\operand_c_d_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[30] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[30]),
        .Q(\operand_c_d_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[31] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[31]),
        .Q(sign_c));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[3] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[3]),
        .Q(\operand_c_d_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[4] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[4]),
        .Q(\operand_c_d_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[5] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[5]),
        .Q(\operand_c_d_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[6] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[6]),
        .Q(\operand_c_d_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[7] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[7]),
        .Q(\operand_c_d_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[8] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[8]),
        .Q(\operand_c_d_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \operand_c_d_reg[9] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(operand_c_I[9]),
        .Q(\operand_c_d_reg_n_0_[9] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    product_ab
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_product_ab_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,\operand_a_d_reg_n_0_[16] ,\operand_a_d_reg_n_0_[15] ,\operand_a_d_reg_n_0_[14] ,\operand_a_d_reg_n_0_[13] ,\operand_a_d_reg_n_0_[12] ,\operand_a_d_reg_n_0_[11] ,\operand_a_d_reg_n_0_[10] ,\operand_a_d_reg_n_0_[9] ,\operand_a_d_reg_n_0_[8] ,\operand_a_d_reg_n_0_[7] ,\operand_a_d_reg_n_0_[6] ,\operand_a_d_reg_n_0_[5] ,\operand_a_d_reg_n_0_[4] ,\operand_a_d_reg_n_0_[3] ,\operand_a_d_reg_n_0_[2] ,\operand_a_d_reg_n_0_[1] ,\operand_a_d_reg_n_0_[0] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_product_ab_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_product_ab_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_product_ab_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_product_ab_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_product_ab_OVERFLOW_UNCONNECTED),
        .P({product_ab_n_58,product_ab_n_59,product_ab_n_60,product_ab_n_61,product_ab_n_62,product_ab_n_63,product_ab_n_64,product_ab_n_65,product_ab_n_66,product_ab_n_67,product_ab_n_68,product_ab_n_69,product_ab_n_70,product_ab_n_71,product_ab_n_72,product_ab_n_73,product_ab_n_74,product_ab_n_75,product_ab_n_76,product_ab_n_77,product_ab_n_78,product_ab_n_79,product_ab_n_80,product_ab_n_81,product_ab_n_82,product_ab_n_83,product_ab_n_84,product_ab_n_85,product_ab_n_86,product_ab_n_87,product_ab_n_88,shift_ab[18:2]}),
        .PATTERNBDETECT(NLW_product_ab_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_product_ab_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({product_ab_n_106,product_ab_n_107,product_ab_n_108,product_ab_n_109,product_ab_n_110,product_ab_n_111,product_ab_n_112,product_ab_n_113,product_ab_n_114,product_ab_n_115,product_ab_n_116,product_ab_n_117,product_ab_n_118,product_ab_n_119,product_ab_n_120,product_ab_n_121,product_ab_n_122,product_ab_n_123,product_ab_n_124,product_ab_n_125,product_ab_n_126,product_ab_n_127,product_ab_n_128,product_ab_n_129,product_ab_n_130,product_ab_n_131,product_ab_n_132,product_ab_n_133,product_ab_n_134,product_ab_n_135,product_ab_n_136,product_ab_n_137,product_ab_n_138,product_ab_n_139,product_ab_n_140,product_ab_n_141,product_ab_n_142,product_ab_n_143,product_ab_n_144,product_ab_n_145,product_ab_n_146,product_ab_n_147,product_ab_n_148,product_ab_n_149,product_ab_n_150,product_ab_n_151,product_ab_n_152,product_ab_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_product_ab_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_product_ab_XOROUT_UNCONNECTED[7:0]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    product_ab__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_product_ab__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hidBit_a,\operand_a_d_reg_n_0_[22] ,\operand_a_d_reg_n_0_[21] ,\operand_a_d_reg_n_0_[20] ,\operand_a_d_reg_n_0_[19] ,\operand_a_d_reg_n_0_[18] ,\operand_a_d_reg_n_0_[17] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_product_ab__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_product_ab__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_product_ab__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_product_ab__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_product_ab__0_OVERFLOW_UNCONNECTED),
        .P({NLW_product_ab__0_P_UNCONNECTED[47:31],shift_ab[49:19]}),
        .PATTERNBDETECT(NLW_product_ab__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_product_ab__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({product_ab_n_106,product_ab_n_107,product_ab_n_108,product_ab_n_109,product_ab_n_110,product_ab_n_111,product_ab_n_112,product_ab_n_113,product_ab_n_114,product_ab_n_115,product_ab_n_116,product_ab_n_117,product_ab_n_118,product_ab_n_119,product_ab_n_120,product_ab_n_121,product_ab_n_122,product_ab_n_123,product_ab_n_124,product_ab_n_125,product_ab_n_126,product_ab_n_127,product_ab_n_128,product_ab_n_129,product_ab_n_130,product_ab_n_131,product_ab_n_132,product_ab_n_133,product_ab_n_134,product_ab_n_135,product_ab_n_136,product_ab_n_137,product_ab_n_138,product_ab_n_139,product_ab_n_140,product_ab_n_141,product_ab_n_142,product_ab_n_143,product_ab_n_144,product_ab_n_145,product_ab_n_146,product_ab_n_147,product_ab_n_148,product_ab_n_149,product_ab_n_150,product_ab_n_151,product_ab_n_152,product_ab_n_153}),
        .PCOUT(NLW_product_ab__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_product_ab__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_product_ab__0_XOROUT_UNCONNECTED[7:0]));
  LUT1 #(
    .INIT(2'h1)) 
    product_ab_i_1
       (.I0(product_ab_i_2_n_0),
        .O(hidBit_a));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT1 #(
    .INIT(2'h1)) 
    product_ab_i_1__0
       (.I0(product_ab_i_2__0_n_0),
        .O(A[23]));
  LUT5 #(
    .INIT(32'h00000001)) 
    product_ab_i_2
       (.I0(\operand_a_d_reg_n_0_[27] ),
        .I1(\operand_a_d_reg_n_0_[30] ),
        .I2(\operand_a_d_reg_n_0_[25] ),
        .I3(\operand_a_d_reg_n_0_[28] ),
        .I4(product_ab_i_3_n_0),
        .O(product_ab_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    product_ab_i_2__0
       (.I0(sel0[4]),
        .I1(sel0[7]),
        .I2(sel0[2]),
        .I3(sel0[5]),
        .I4(product_ab_i_3__0_n_0),
        .O(product_ab_i_2__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    product_ab_i_3
       (.I0(\operand_a_d_reg_n_0_[26] ),
        .I1(\operand_a_d_reg_n_0_[23] ),
        .I2(\operand_a_d_reg_n_0_[29] ),
        .I3(\operand_a_d_reg_n_0_[24] ),
        .O(product_ab_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    product_ab_i_3__0
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[6]),
        .I3(sel0[1]),
        .O(product_ab_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[0]_i_1 
       (.I0(\result_d_reg[7]_i_2_n_15 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[0]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[10]_i_1 
       (.I0(\result_d_reg[15]_i_2_n_13 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[10]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[11]_i_1 
       (.I0(\result_d_reg[15]_i_2_n_12 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[11]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[12]_i_1 
       (.I0(\result_d_reg[15]_i_2_n_11 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[12]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[13]_i_1 
       (.I0(\result_d_reg[15]_i_2_n_10 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[13]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[14]_i_1 
       (.I0(\result_d_reg[15]_i_2_n_9 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[14]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[15]_i_1 
       (.I0(\result_d_reg[15]_i_2_n_8 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[15]));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[15]_i_10 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[15]_i_18_n_0 ),
        .O(exponent_mantissa_round_i[8]));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \result_d[15]_i_11 
       (.I0(\result_d[31]_i_19_n_0 ),
        .I1(\result_d[15]_i_19_n_0 ),
        .I2(\result_d[31]_i_21_n_0 ),
        .I3(\result_d[23]_i_31_n_0 ),
        .I4(\result_d[31]_i_23_n_0 ),
        .I5(\result_d[23]_i_30_n_0 ),
        .O(\result_d[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \result_d[15]_i_12 
       (.I0(\result_d[31]_i_19_n_0 ),
        .I1(\result_d[15]_i_20_n_0 ),
        .I2(\result_d[31]_i_21_n_0 ),
        .I3(\result_d[15]_i_19_n_0 ),
        .I4(\result_d[31]_i_23_n_0 ),
        .I5(\result_d[23]_i_31_n_0 ),
        .O(\result_d[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \result_d[15]_i_13 
       (.I0(\result_d[31]_i_19_n_0 ),
        .I1(\result_d[15]_i_21_n_0 ),
        .I2(\result_d[31]_i_21_n_0 ),
        .I3(\result_d[15]_i_20_n_0 ),
        .I4(\result_d[31]_i_23_n_0 ),
        .I5(\result_d[15]_i_19_n_0 ),
        .O(\result_d[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \result_d[15]_i_14 
       (.I0(\result_d[15]_i_20_n_0 ),
        .I1(\result_d[31]_i_23_n_0 ),
        .I2(\result_d[15]_i_21_n_0 ),
        .I3(\result_d[31]_i_40_n_0 ),
        .I4(\result_d[31]_i_42_n_0 ),
        .I5(\result_d[15]_i_22_n_0 ),
        .O(\result_d[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \result_d[15]_i_15 
       (.I0(\result_d[15]_i_21_n_0 ),
        .I1(\result_d[31]_i_23_n_0 ),
        .I2(\result_d[15]_i_22_n_0 ),
        .I3(\result_d[31]_i_40_n_0 ),
        .I4(\result_d[31]_i_42_n_0 ),
        .I5(\result_d[15]_i_23_n_0 ),
        .O(\result_d[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBBB88888BBB8BBB8)) 
    \result_d[15]_i_16 
       (.I0(\result_d[15]_i_22_n_0 ),
        .I1(\result_d[31]_i_23_n_0 ),
        .I2(\result_d[15]_i_24_n_0 ),
        .I3(\result_d[23]_i_11_n_0 ),
        .I4(\result_d[15]_i_23_n_0 ),
        .I5(\result_d[31]_i_40_n_0 ),
        .O(\result_d[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \result_d[15]_i_17 
       (.I0(\result_d[31]_i_19_n_0 ),
        .I1(\result_d[15]_i_25_n_0 ),
        .I2(\result_d[31]_i_21_n_0 ),
        .I3(\result_d[15]_i_24_n_0 ),
        .I4(\result_d[31]_i_23_n_0 ),
        .I5(\result_d[15]_i_23_n_0 ),
        .O(\result_d[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \result_d[15]_i_18 
       (.I0(\result_d[15]_i_24_n_0 ),
        .I1(\result_d[31]_i_23_n_0 ),
        .I2(\result_d[15]_i_25_n_0 ),
        .I3(\result_d[31]_i_40_n_0 ),
        .I4(\result_d[31]_i_42_n_0 ),
        .I5(\result_d[15]_i_26_n_0 ),
        .O(\result_d[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF0F7707)) 
    \result_d[15]_i_19 
       (.I0(\result_d[31]_i_57_n_0 ),
        .I1(\result_d[23]_i_48_n_0 ),
        .I2(\result_d[31]_i_66_n_0 ),
        .I3(\result_d[15]_i_27_n_0 ),
        .I4(\result_d[31]_i_158_n_0 ),
        .I5(\result_d[15]_i_28_n_0 ),
        .O(\result_d[15]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF0F7707)) 
    \result_d[15]_i_20 
       (.I0(\result_d[31]_i_57_n_0 ),
        .I1(\result_d[23]_i_48_n_0 ),
        .I2(\result_d[31]_i_66_n_0 ),
        .I3(\result_d[31]_i_275_n_0 ),
        .I4(\result_d[31]_i_276_n_0 ),
        .I5(\result_d[15]_i_29_n_0 ),
        .O(\result_d[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000007770FFF)) 
    \result_d[15]_i_21 
       (.I0(\result_d[31]_i_57_n_0 ),
        .I1(\result_d[23]_i_48_n_0 ),
        .I2(\result_d[31]_i_277_n_0 ),
        .I3(\result_d[31]_i_66_n_0 ),
        .I4(\result_d[31]_i_93_n_0 ),
        .I5(\result_d[15]_i_30_n_0 ),
        .O(\result_d[15]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h0000B8FF)) 
    \result_d[15]_i_22 
       (.I0(\result_d[31]_i_106_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[31]_i_107_n_0 ),
        .I3(\result_d[31]_i_66_n_0 ),
        .I4(\result_d[15]_i_31_n_0 ),
        .O(\result_d[15]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h00002EFF)) 
    \result_d[15]_i_23 
       (.I0(\result_d[31]_i_108_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[31]_i_273_n_0 ),
        .I3(\result_d[31]_i_66_n_0 ),
        .I4(\result_d[15]_i_32_n_0 ),
        .O(\result_d[15]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h0000B8FF)) 
    \result_d[15]_i_24 
       (.I0(\result_d[15]_i_33_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[15]_i_34_n_0 ),
        .I3(\result_d[31]_i_66_n_0 ),
        .I4(\result_d[15]_i_35_n_0 ),
        .O(\result_d[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFBABFFFFFBAB)) 
    \result_d[15]_i_25 
       (.I0(\result_d[31]_i_29_n_0 ),
        .I1(\result_d[31]_i_161_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .I3(\result_d[15]_i_36_n_0 ),
        .I4(\result_d[31]_i_59_n_0 ),
        .I5(\result_d[15]_i_37_n_0 ),
        .O(\result_d[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000DDDDDDD0DDDDD)) 
    \result_d[15]_i_26 
       (.I0(\result_d[31]_i_66_n_0 ),
        .I1(\result_d[31]_i_104_n_0 ),
        .I2(\result_d[15]_i_38_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .I4(\result_d[31]_i_68_n_0 ),
        .I5(\result_d[31]_i_265_n_0 ),
        .O(\result_d[15]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[15]_i_27 
       (.I0(\result_d[31]_i_56_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[31]_i_157_n_0 ),
        .O(\result_d[15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h020202A2A2A202A2)) 
    \result_d[15]_i_28 
       (.I0(\result_d[31]_i_68_n_0 ),
        .I1(\result_d[31]_i_58_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .I3(\result_d[31]_i_271_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .I5(\result_d[31]_i_270_n_0 ),
        .O(\result_d[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h08A8A8A808A80808)) 
    \result_d[15]_i_29 
       (.I0(\result_d[31]_i_68_n_0 ),
        .I1(\result_d[15]_i_39_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .I3(\result_d[23]_i_39_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .I5(\result_d[23]_i_75_n_0 ),
        .O(\result_d[15]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[15]_i_3 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[15]_i_11_n_0 ),
        .O(exponent_mantissa_round_i[15]));
  LUT6 #(
    .INIT(64'h020202A2A2A202A2)) 
    \result_d[15]_i_30 
       (.I0(\result_d[31]_i_68_n_0 ),
        .I1(\result_d[31]_i_202_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .I3(\result_d[15]_i_40_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .I5(\result_d[23]_i_77_n_0 ),
        .O(\result_d[15]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \result_d[15]_i_31 
       (.I0(\result_d[31]_i_105_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[15]_i_41_n_0 ),
        .I3(\result_d[31]_i_91_n_0 ),
        .I4(\result_d[23]_i_79_n_0 ),
        .I5(\result_d[31]_i_68_n_0 ),
        .O(\result_d[15]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h080808A8A8A808A8)) 
    \result_d[15]_i_32 
       (.I0(\result_d[31]_i_68_n_0 ),
        .I1(\result_d[31]_i_274_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .I3(\result_d[15]_i_42_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .I5(\result_d[15]_i_43_n_0 ),
        .O(\result_d[15]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h4747FF00)) 
    \result_d[15]_i_33 
       (.I0(\result_d[31]_i_435_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_432_n_0 ),
        .I3(\result_d[31]_i_279_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .O(\result_d[15]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[15]_i_34 
       (.I0(\result_d[31]_i_260_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_190_n_0 ),
        .O(\result_d[15]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \result_d[15]_i_35 
       (.I0(\result_d[31]_i_518_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[15]_i_44_n_0 ),
        .I3(\result_d[31]_i_91_n_0 ),
        .I4(\result_d[15]_i_45_n_0 ),
        .I5(\result_d[31]_i_68_n_0 ),
        .O(\result_d[15]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \result_d[15]_i_36 
       (.I0(\result_d[31]_i_170_n_0 ),
        .I1(\result_d[31]_i_171_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .O(\result_d[15]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'hD1DDD111)) 
    \result_d[15]_i_37 
       (.I0(\result_d[31]_i_63_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[31]_i_162_n_0 ),
        .I3(\result_d[31]_i_91_n_0 ),
        .I4(\result_d[31]_i_163_n_0 ),
        .O(\result_d[15]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[15]_i_38 
       (.I0(\result_d[31]_i_261_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_262_n_0 ),
        .O(\result_d[15]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[15]_i_39 
       (.I0(\result_d[31]_i_203_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_204_n_0 ),
        .O(\result_d[15]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[15]_i_4 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[15]_i_12_n_0 ),
        .O(exponent_mantissa_round_i[14]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \result_d[15]_i_40 
       (.I0(\result_d[31]_i_391_n_0 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[31]_i_392_n_0 ),
        .I3(\result_d[31]_i_343_n_0 ),
        .I4(\result_d[31]_i_390_n_0 ),
        .I5(\result_d[31]_i_144_n_0 ),
        .O(\result_d[15]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[15]_i_41 
       (.I0(\result_d[15]_i_46_n_0 ),
        .I1(\result_d[23]_i_91_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[23]_i_92_n_0 ),
        .I4(\result_d[31]_i_213_n_0 ),
        .I5(\result_d[23]_i_93_n_0 ),
        .O(\result_d[15]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \result_d[15]_i_42 
       (.I0(\result_d[31]_i_390_n_0 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[31]_i_391_n_0 ),
        .I3(\result_d[31]_i_342_n_0 ),
        .I4(\result_d[31]_i_343_n_0 ),
        .I5(\result_d[31]_i_144_n_0 ),
        .O(\result_d[15]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \result_d[15]_i_43 
       (.I0(\result_d[31]_i_392_n_0 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[31]_i_393_n_0 ),
        .I3(\result_d[31]_i_394_n_0 ),
        .I4(\result_d[31]_i_385_n_0 ),
        .I5(\result_d[31]_i_144_n_0 ),
        .O(\result_d[15]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \result_d[15]_i_44 
       (.I0(\result_d[23]_i_91_n_0 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[23]_i_92_n_0 ),
        .I3(\result_d[31]_i_429_n_0 ),
        .I4(\result_d[31]_i_144_n_0 ),
        .O(\result_d[15]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \result_d[15]_i_45 
       (.I0(\result_d[23]_i_93_n_0 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[23]_i_94_n_0 ),
        .I3(\result_d[23]_i_73_n_0 ),
        .I4(\result_d[31]_i_509_n_0 ),
        .I5(\result_d[31]_i_144_n_0 ),
        .O(\result_d[15]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[15]_i_46 
       (.I0(\result_d_reg[31]_i_283_n_15 ),
        .I1(sum_negtive[48]),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(\result_d_reg[31]_i_283_n_14 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[49]),
        .O(\result_d[15]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[15]_i_5 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[15]_i_13_n_0 ),
        .O(exponent_mantissa_round_i[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[15]_i_6 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[15]_i_14_n_0 ),
        .O(exponent_mantissa_round_i[12]));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[15]_i_7 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[15]_i_15_n_0 ),
        .O(exponent_mantissa_round_i[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[15]_i_8 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[15]_i_16_n_0 ),
        .O(exponent_mantissa_round_i[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[15]_i_9 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[15]_i_17_n_0 ),
        .O(exponent_mantissa_round_i[9]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[16]_i_1 
       (.I0(\result_d_reg[23]_i_2_n_15 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[16]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[17]_i_1 
       (.I0(\result_d_reg[23]_i_2_n_14 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[17]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[18]_i_1 
       (.I0(\result_d_reg[23]_i_2_n_13 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[18]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[19]_i_1 
       (.I0(\result_d_reg[23]_i_2_n_12 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[19]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[1]_i_1 
       (.I0(\result_d_reg[7]_i_2_n_14 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[1]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[20]_i_1 
       (.I0(\result_d_reg[23]_i_2_n_11 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[20]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[21]_i_1 
       (.I0(\result_d_reg[23]_i_2_n_10 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[21]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[22]_i_1 
       (.I0(\result_d_reg[23]_i_2_n_9 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[22]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \result_d[23]_i_1 
       (.I0(\result_d[30]_i_2_n_0 ),
        .I1(\result_d[30]_i_3_n_0 ),
        .I2(\result_d[30]_i_4_n_0 ),
        .I3(p_0_in[0]),
        .O(result[23]));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[23]_i_10 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[23]_i_20_n_0 ),
        .O(exponent_mantissa_round_i[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[23]_i_100 
       (.I0(sum_negtive[10]),
        .I1(\result_d_reg[31]_i_440_n_13 ),
        .I2(sum_negtive[12]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_440_n_11 ),
        .O(\result_d[23]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h0000000533333305)) 
    \result_d[23]_i_101 
       (.I0(sum_negtive[15]),
        .I1(\result_d_reg[31]_i_440_n_8 ),
        .I2(sum_negtive[17]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_541_n_14 ),
        .O(\result_d[23]_i_101_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[23]_i_102 
       (.I0(sum_negtive[25]),
        .I1(\result_d_reg[31]_i_532_n_14 ),
        .I2(sum_negtive[27]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_532_n_12 ),
        .O(\result_d[23]_i_102_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_d[23]_i_11 
       (.I0(\result_d[31]_i_40_n_0 ),
        .I1(\result_d[31]_i_42_n_0 ),
        .O(\result_d[23]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0D000DFF0DFF0DFF)) 
    \result_d[23]_i_12 
       (.I0(\result_d[23]_i_21_n_0 ),
        .I1(\result_d[30]_i_6_n_0 ),
        .I2(\operand_c_d_reg_n_0_[23] ),
        .I3(\result_d[31]_i_82_n_0 ),
        .I4(\result_d[23]_i_22_n_0 ),
        .I5(\result_d[31]_i_81_n_0 ),
        .O(\result_d[23]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hCF88CFBB)) 
    \result_d[23]_i_13 
       (.I0(\result_d[31]_i_110_n_0 ),
        .I1(\result_d[31]_i_29_n_0 ),
        .I2(\result_d[31]_i_111_n_0 ),
        .I3(\result_d[31]_i_59_n_0 ),
        .I4(\result_d[31]_i_112_n_0 ),
        .O(\result_d[23]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hDFDCD3D0)) 
    \result_d[23]_i_14 
       (.I0(\result_d[23]_i_23_n_0 ),
        .I1(\result_d[31]_i_29_n_0 ),
        .I2(\result_d[31]_i_59_n_0 ),
        .I3(\result_d[23]_i_24_n_0 ),
        .I4(\result_d[23]_i_25_n_0 ),
        .O(\result_d[23]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0DDD0D0000)) 
    \result_d[23]_i_15 
       (.I0(\result_d[31]_i_21_n_0 ),
        .I1(\result_d[23]_i_14_n_0 ),
        .I2(\result_d[31]_i_23_n_0 ),
        .I3(\result_d[31]_i_42_n_0 ),
        .I4(\result_d[23]_i_11_n_0 ),
        .I5(\result_d[23]_i_26_n_0 ),
        .O(\result_d[23]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \result_d[23]_i_16 
       (.I0(\result_d[31]_i_19_n_0 ),
        .I1(\result_d[23]_i_27_n_0 ),
        .I2(\result_d[31]_i_21_n_0 ),
        .I3(\result_d[23]_i_26_n_0 ),
        .I4(\result_d[31]_i_23_n_0 ),
        .I5(\result_d[23]_i_14_n_0 ),
        .O(\result_d[23]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \result_d[23]_i_17 
       (.I0(\result_d[31]_i_19_n_0 ),
        .I1(\result_d[23]_i_28_n_0 ),
        .I2(\result_d[31]_i_21_n_0 ),
        .I3(\result_d[23]_i_27_n_0 ),
        .I4(\result_d[31]_i_23_n_0 ),
        .I5(\result_d[23]_i_26_n_0 ),
        .O(\result_d[23]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \result_d[23]_i_18 
       (.I0(\result_d[31]_i_19_n_0 ),
        .I1(\result_d[23]_i_29_n_0 ),
        .I2(\result_d[31]_i_21_n_0 ),
        .I3(\result_d[23]_i_28_n_0 ),
        .I4(\result_d[31]_i_23_n_0 ),
        .I5(\result_d[23]_i_27_n_0 ),
        .O(\result_d[23]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \result_d[23]_i_19 
       (.I0(\result_d[31]_i_19_n_0 ),
        .I1(\result_d[23]_i_30_n_0 ),
        .I2(\result_d[31]_i_21_n_0 ),
        .I3(\result_d[23]_i_29_n_0 ),
        .I4(\result_d[31]_i_23_n_0 ),
        .I5(\result_d[23]_i_28_n_0 ),
        .O(\result_d[23]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hBBB88888BBB8BBB8)) 
    \result_d[23]_i_20 
       (.I0(\result_d[23]_i_29_n_0 ),
        .I1(\result_d[31]_i_23_n_0 ),
        .I2(\result_d[23]_i_31_n_0 ),
        .I3(\result_d[23]_i_11_n_0 ),
        .I4(\result_d[23]_i_30_n_0 ),
        .I5(\result_d[31]_i_40_n_0 ),
        .O(\result_d[23]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \result_d[23]_i_21 
       (.I0(\operand_c_d_reg_n_0_[26] ),
        .I1(\operand_c_d_reg_n_0_[23] ),
        .I2(\operand_c_d_reg_n_0_[29] ),
        .I3(\operand_c_d_reg_n_0_[30] ),
        .I4(\result_d[23]_i_32_n_0 ),
        .O(\result_d[23]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \result_d[23]_i_22 
       (.I0(exponent_product0[0]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(p_0_out__0[0]),
        .O(\result_d[23]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFD100D1)) 
    \result_d[23]_i_23 
       (.I0(\result_d[31]_i_210_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[23]_i_36_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .I4(\result_d[23]_i_37_n_0 ),
        .O(\result_d[23]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    \result_d[23]_i_24 
       (.I0(\result_d[23]_i_38_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[23]_i_39_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .I4(\result_d[23]_i_40_n_0 ),
        .O(\result_d[23]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hE2FF)) 
    \result_d[23]_i_25 
       (.I0(\result_d[31]_i_192_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_191_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .O(\result_d[23]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFDD00F0FFDDFFF0)) 
    \result_d[23]_i_26 
       (.I0(\result_d[31]_i_57_n_0 ),
        .I1(\result_d[31]_i_193_n_0 ),
        .I2(\result_d[23]_i_41_n_0 ),
        .I3(\result_d[31]_i_59_n_0 ),
        .I4(\result_d[31]_i_29_n_0 ),
        .I5(\result_d[31]_i_282_n_0 ),
        .O(\result_d[23]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hCF88CFBB)) 
    \result_d[23]_i_27 
       (.I0(\result_d[23]_i_42_n_0 ),
        .I1(\result_d[31]_i_29_n_0 ),
        .I2(\result_d[31]_i_124_n_0 ),
        .I3(\result_d[31]_i_59_n_0 ),
        .I4(\result_d[23]_i_43_n_0 ),
        .O(\result_d[23]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF30AF3FA)) 
    \result_d[23]_i_28 
       (.I0(\result_d[23]_i_44_n_0 ),
        .I1(\result_d[23]_i_45_n_0 ),
        .I2(\result_d[31]_i_59_n_0 ),
        .I3(\result_d[31]_i_29_n_0 ),
        .I4(\result_d[31]_i_281_n_0 ),
        .O(\result_d[23]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \result_d[23]_i_29 
       (.I0(\result_d[23]_i_46_n_0 ),
        .I1(\result_d[31]_i_29_n_0 ),
        .I2(\result_d[31]_i_125_n_0 ),
        .I3(\result_d[31]_i_59_n_0 ),
        .I4(\result_d[23]_i_47_n_0 ),
        .O(\result_d[23]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hAA2AA020)) 
    \result_d[23]_i_3 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[23]_i_11_n_0 ),
        .I2(\result_d[23]_i_12_n_0 ),
        .I3(\result_d[31]_i_23_n_0 ),
        .I4(\result_d[31]_i_21_n_0 ),
        .O(exponent_mantissa_round_i[23]));
  LUT6 #(
    .INIT(64'h0000077700000FFF)) 
    \result_d[23]_i_30 
       (.I0(\result_d[31]_i_57_n_0 ),
        .I1(\result_d[23]_i_48_n_0 ),
        .I2(\result_d[31]_i_126_n_0 ),
        .I3(\result_d[31]_i_66_n_0 ),
        .I4(\result_d[23]_i_49_n_0 ),
        .I5(\result_d[31]_i_173_n_0 ),
        .O(\result_d[23]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h000000000FFF0777)) 
    \result_d[23]_i_31 
       (.I0(\result_d[31]_i_57_n_0 ),
        .I1(\result_d[23]_i_48_n_0 ),
        .I2(\result_d[31]_i_211_n_0 ),
        .I3(\result_d[31]_i_66_n_0 ),
        .I4(\result_d[31]_i_182_n_0 ),
        .I5(\result_d[23]_i_50_n_0 ),
        .O(\result_d[23]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_d[23]_i_32 
       (.I0(\operand_c_d_reg_n_0_[28] ),
        .I1(\operand_c_d_reg_n_0_[27] ),
        .I2(\operand_c_d_reg_n_0_[25] ),
        .I3(\operand_c_d_reg_n_0_[24] ),
        .O(\result_d[23]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \result_d[23]_i_34 
       (.I0(product_ab_i_2__0_n_0),
        .I1(\result_d[30]_i_11_n_0 ),
        .I2(\result_d[30]_i_8_n_0 ),
        .I3(product_ab_i_2_n_0),
        .O(\result_d[23]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFBBAB)) 
    \result_d[23]_i_35 
       (.I0(\result_d[31]_i_452_n_0 ),
        .I1(\result_d[23]_i_67_n_0 ),
        .I2(\result_d[23]_i_68_n_0 ),
        .I3(\result_d[23]_i_69_n_0 ),
        .I4(\result_d[23]_i_70_n_0 ),
        .I5(\result_d[23]_i_71_n_0 ),
        .O(p_0_out__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[23]_i_36 
       (.I0(\result_d[31]_i_434_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_435_n_0 ),
        .O(\result_d[23]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[23]_i_37 
       (.I0(\result_d[31]_i_430_n_0 ),
        .I1(\result_d[31]_i_431_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[31]_i_432_n_0 ),
        .I4(\result_d[31]_i_144_n_0 ),
        .I5(\result_d[31]_i_433_n_0 ),
        .O(\result_d[23]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h8B888BBB)) 
    \result_d[23]_i_38 
       (.I0(\result_d[23]_i_72_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_506_n_0 ),
        .I3(\result_d[31]_i_213_n_0 ),
        .I4(\result_d[31]_i_507_n_0 ),
        .O(\result_d[23]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h4747FF00)) 
    \result_d[23]_i_39 
       (.I0(\result_d[23]_i_73_n_0 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[31]_i_509_n_0 ),
        .I3(\result_d[23]_i_74_n_0 ),
        .I4(\result_d[31]_i_144_n_0 ),
        .O(\result_d[23]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h00A202A2)) 
    \result_d[23]_i_4 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[31]_i_42_n_0 ),
        .I2(\result_d[31]_i_23_n_0 ),
        .I3(\result_d[23]_i_13_n_0 ),
        .I4(\result_d[23]_i_14_n_0 ),
        .O(exponent_mantissa_round_i[22]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[23]_i_40 
       (.I0(\result_d[23]_i_75_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_203_n_0 ),
        .O(\result_d[23]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \result_d[23]_i_41 
       (.I0(\result_d[23]_i_76_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[23]_i_77_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .I4(\result_d[7]_i_33_n_0 ),
        .O(\result_d[23]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \result_d[23]_i_42 
       (.I0(\result_d[31]_i_57_n_0 ),
        .I1(\result_d[31]_i_92_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .O(\result_d[23]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \result_d[23]_i_43 
       (.I0(\result_d[23]_i_78_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[23]_i_79_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .I4(\result_d[7]_i_34_n_0 ),
        .O(\result_d[23]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[23]_i_44 
       (.I0(\result_d[23]_i_80_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[7]_i_36_n_0 ),
        .O(\result_d[23]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h02A20000)) 
    \result_d[23]_i_45 
       (.I0(\result_d[31]_i_91_n_0 ),
        .I1(\result_d[31]_i_259_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[31]_i_258_n_0 ),
        .I4(\result_d[31]_i_57_n_0 ),
        .O(\result_d[23]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \result_d[23]_i_46 
       (.I0(\result_d[31]_i_190_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .O(\result_d[23]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[23]_i_47 
       (.I0(\result_d[23]_i_81_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[7]_i_30_n_0 ),
        .O(\result_d[23]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[23]_i_48 
       (.I0(\result_d[31]_i_29_n_0 ),
        .I1(\result_d[31]_i_59_n_0 ),
        .O(\result_d[23]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h020202A2A2A202A2)) 
    \result_d[23]_i_49 
       (.I0(\result_d[31]_i_68_n_0 ),
        .I1(\result_d[31]_i_69_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .I3(\result_d[31]_i_171_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .I5(\result_d[31]_i_169_n_0 ),
        .O(\result_d[23]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[23]_i_5 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[23]_i_15_n_0 ),
        .O(exponent_mantissa_round_i[21]));
  LUT6 #(
    .INIT(64'hEEE22E2200000000)) 
    \result_d[23]_i_50 
       (.I0(\result_d[31]_i_159_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[23]_i_82_n_0 ),
        .I4(\result_d[31]_i_264_n_0 ),
        .I5(\result_d[31]_i_68_n_0 ),
        .O(\result_d[23]_i_50_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_d[23]_i_51 
       (.I0(\operand_a_d_reg_n_0_[30] ),
        .I1(sel0[7]),
        .O(\result_d[23]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_d[23]_i_52 
       (.I0(sel0[5]),
        .I1(\operand_a_d_reg_n_0_[28] ),
        .O(\result_d[23]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_d[23]_i_53 
       (.I0(sel0[4]),
        .I1(\operand_a_d_reg_n_0_[27] ),
        .O(\result_d[23]_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_d[23]_i_54 
       (.I0(sel0[3]),
        .I1(\operand_a_d_reg_n_0_[26] ),
        .O(\result_d[23]_i_54_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_d[23]_i_55 
       (.I0(sel0[2]),
        .I1(\operand_a_d_reg_n_0_[25] ),
        .O(\result_d[23]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'hF880)) 
    \result_d[23]_i_56 
       (.I0(\operand_a_d_reg_n_0_[23] ),
        .I1(\result_d[23]_i_83_n_0 ),
        .I2(sel0[1]),
        .I3(\operand_a_d_reg_n_0_[24] ),
        .O(\result_d[23]_i_56_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \result_d[23]_i_57 
       (.I0(product_ab_i_2_n_0),
        .I1(\result_d[30]_i_8_n_0 ),
        .I2(sel0[0]),
        .O(\result_d[23]_i_57_n_0 ));
  LUT3 #(
    .INIT(8'h87)) 
    \result_d[23]_i_58 
       (.I0(product_ab_i_2_n_0),
        .I1(\result_d[30]_i_8_n_0 ),
        .I2(sel0[0]),
        .O(\result_d[23]_i_58_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \result_d[23]_i_59 
       (.I0(sel0[7]),
        .I1(\operand_a_d_reg_n_0_[30] ),
        .I2(\operand_a_d_reg_n_0_[29] ),
        .I3(sel0[6]),
        .O(\result_d[23]_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[23]_i_6 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[23]_i_16_n_0 ),
        .O(exponent_mantissa_round_i[20]));
  LUT4 #(
    .INIT(16'h8778)) 
    \result_d[23]_i_60 
       (.I0(\operand_a_d_reg_n_0_[28] ),
        .I1(sel0[5]),
        .I2(\operand_a_d_reg_n_0_[29] ),
        .I3(sel0[6]),
        .O(\result_d[23]_i_60_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \result_d[23]_i_61 
       (.I0(\operand_a_d_reg_n_0_[27] ),
        .I1(sel0[4]),
        .I2(\operand_a_d_reg_n_0_[28] ),
        .I3(sel0[5]),
        .O(\result_d[23]_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \result_d[23]_i_62 
       (.I0(\operand_a_d_reg_n_0_[26] ),
        .I1(sel0[3]),
        .I2(\operand_a_d_reg_n_0_[27] ),
        .I3(sel0[4]),
        .O(\result_d[23]_i_62_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \result_d[23]_i_63 
       (.I0(\operand_a_d_reg_n_0_[25] ),
        .I1(sel0[2]),
        .I2(\operand_a_d_reg_n_0_[26] ),
        .I3(sel0[3]),
        .O(\result_d[23]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \result_d[23]_i_64 
       (.I0(\operand_a_d_reg_n_0_[23] ),
        .I1(\result_d[23]_i_83_n_0 ),
        .I2(sel0[1]),
        .I3(\operand_a_d_reg_n_0_[24] ),
        .I4(\operand_a_d_reg_n_0_[25] ),
        .I5(sel0[2]),
        .O(\result_d[23]_i_64_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \result_d[23]_i_65 
       (.I0(\operand_a_d_reg_n_0_[23] ),
        .I1(\result_d[23]_i_83_n_0 ),
        .I2(\result_d[23]_i_57_n_0 ),
        .I3(sel0[1]),
        .I4(\operand_a_d_reg_n_0_[24] ),
        .O(\result_d[23]_i_65_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h87787887)) 
    \result_d[23]_i_66 
       (.I0(product_ab_i_2_n_0),
        .I1(\result_d[30]_i_8_n_0 ),
        .I2(sel0[0]),
        .I3(\result_d[23]_i_83_n_0 ),
        .I4(\operand_a_d_reg_n_0_[23] ),
        .O(\result_d[23]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0FFF0FFFFFFF4)) 
    \result_d[23]_i_67 
       (.I0(\result_d[31]_i_338_n_0 ),
        .I1(\result_d[31]_i_337_n_0 ),
        .I2(\result_d[31]_i_395_n_0 ),
        .I3(\result_d[23]_i_84_n_0 ),
        .I4(\result_d[31]_i_339_n_0 ),
        .I5(\result_d[31]_i_340_n_0 ),
        .O(\result_d[23]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55551110)) 
    \result_d[23]_i_68 
       (.I0(\result_d[23]_i_85_n_0 ),
        .I1(\result_d[23]_i_86_n_0 ),
        .I2(\result_d[23]_i_87_n_0 ),
        .I3(\result_d[23]_i_88_n_0 ),
        .I4(\result_d[23]_i_89_n_0 ),
        .I5(\result_d[31]_i_622_n_0 ),
        .O(\result_d[23]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0FFF0F4)) 
    \result_d[23]_i_69 
       (.I0(\result_d[31]_i_333_n_0 ),
        .I1(\result_d[31]_i_318_n_0 ),
        .I2(\result_d[31]_i_336_n_0 ),
        .I3(\result_d[31]_i_335_n_0 ),
        .I4(\result_d[31]_i_334_n_0 ),
        .I5(\result_d[23]_i_90_n_0 ),
        .O(\result_d[23]_i_69_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[23]_i_7 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[23]_i_17_n_0 ),
        .O(exponent_mantissa_round_i[19]));
  LUT5 #(
    .INIT(32'hFFFF00F4)) 
    \result_d[23]_i_70 
       (.I0(\result_d[31]_i_543_n_0 ),
        .I1(\result_d[31]_i_396_n_0 ),
        .I2(\result_d[31]_i_544_n_0 ),
        .I3(\result_d[31]_i_556_n_0 ),
        .I4(\result_d[31]_i_557_n_0 ),
        .O(\result_d[23]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[23]_i_71 
       (.I0(\result_d_reg[31]_i_283_n_14 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[49]),
        .O(\result_d[23]_i_71_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \result_d[23]_i_72 
       (.I0(\result_d[31]_i_512_n_0 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[31]_i_505_n_0 ),
        .O(\result_d[23]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[23]_i_73 
       (.I0(\result_d_reg[31]_i_129_n_13 ),
        .I1(sum_negtive[58]),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(\result_d_reg[31]_i_129_n_12 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[59]),
        .O(\result_d[23]_i_73_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \result_d[23]_i_74 
       (.I0(\result_d[31]_i_510_n_0 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[31]_i_511_n_0 ),
        .O(\result_d[23]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \result_d[23]_i_75 
       (.I0(\result_d[23]_i_91_n_0 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[23]_i_92_n_0 ),
        .I3(\result_d[23]_i_93_n_0 ),
        .I4(\result_d[23]_i_94_n_0 ),
        .I5(\result_d[31]_i_144_n_0 ),
        .O(\result_d[23]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \result_d[23]_i_76 
       (.I0(\result_d[31]_i_387_n_0 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[31]_i_388_n_0 ),
        .I3(\result_d[31]_i_144_n_0 ),
        .I4(\result_d[31]_i_516_n_0 ),
        .I5(\result_d[31]_i_517_n_0 ),
        .O(\result_d[23]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \result_d[23]_i_77 
       (.I0(\result_d[31]_i_393_n_0 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[31]_i_394_n_0 ),
        .I3(\result_d[31]_i_385_n_0 ),
        .I4(\result_d[31]_i_386_n_0 ),
        .I5(\result_d[31]_i_144_n_0 ),
        .O(\result_d[23]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \result_d[23]_i_78 
       (.I0(\result_d[31]_i_505_n_0 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[31]_i_506_n_0 ),
        .I3(\result_d[31]_i_511_n_0 ),
        .I4(\result_d[31]_i_512_n_0 ),
        .I5(\result_d[31]_i_144_n_0 ),
        .O(\result_d[23]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \result_d[23]_i_79 
       (.I0(\result_d[31]_i_509_n_0 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[31]_i_510_n_0 ),
        .I3(\result_d[23]_i_94_n_0 ),
        .I4(\result_d[23]_i_73_n_0 ),
        .I5(\result_d[31]_i_144_n_0 ),
        .O(\result_d[23]_i_79_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[23]_i_8 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[23]_i_18_n_0 ),
        .O(exponent_mantissa_round_i[18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \result_d[23]_i_80 
       (.I0(\result_d[23]_i_95_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[23]_i_96_n_0 ),
        .I3(\result_d[31]_i_91_n_0 ),
        .I4(\result_d[15]_i_43_n_0 ),
        .O(\result_d[23]_i_80_n_0 ));
  LUT5 #(
    .INIT(32'h53FF5300)) 
    \result_d[23]_i_81 
       (.I0(\result_d[23]_i_74_n_0 ),
        .I1(\result_d[23]_i_72_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[31]_i_91_n_0 ),
        .I4(\result_d[15]_i_45_n_0 ),
        .O(\result_d[23]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[23]_i_82 
       (.I0(\result_d[23]_i_92_n_0 ),
        .I1(\result_d[23]_i_93_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[23]_i_94_n_0 ),
        .I4(\result_d[31]_i_213_n_0 ),
        .I5(\result_d[23]_i_73_n_0 ),
        .O(\result_d[23]_i_82_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[23]_i_83 
       (.I0(product_ab_i_2__0_n_0),
        .I1(\result_d[30]_i_11_n_0 ),
        .O(\result_d[23]_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[23]_i_84 
       (.I0(sum_negtive[45]),
        .I1(\result_d_reg[31]_i_519_n_10 ),
        .I2(sum_negtive[47]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_519_n_8 ),
        .O(\result_d[23]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0FFF0F4)) 
    \result_d[23]_i_85 
       (.I0(\result_d[31]_i_325_n_0 ),
        .I1(\result_d[31]_i_324_n_0 ),
        .I2(\result_d[31]_i_308_n_0 ),
        .I3(\result_d[31]_i_307_n_0 ),
        .I4(\result_d[31]_i_326_n_0 ),
        .I5(\result_d[23]_i_97_n_0 ),
        .O(\result_d[23]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0FFF0F4)) 
    \result_d[23]_i_86 
       (.I0(\result_d[31]_i_446_n_0 ),
        .I1(\result_d[31]_i_445_n_0 ),
        .I2(\result_d[31]_i_552_n_0 ),
        .I3(\result_d[31]_i_553_n_0 ),
        .I4(\result_d[31]_i_555_n_0 ),
        .I5(\result_d[23]_i_98_n_0 ),
        .O(\result_d[23]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F000F0E)) 
    \result_d[23]_i_87 
       (.I0(\result_d[23]_i_99_n_0 ),
        .I1(\result_d[31]_i_374_n_0 ),
        .I2(\result_d[31]_i_377_n_0 ),
        .I3(\result_d[31]_i_376_n_0 ),
        .I4(\result_d[31]_i_375_n_0 ),
        .I5(\result_d[23]_i_100_n_0 ),
        .O(\result_d[23]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0F4FFFFFFFF)) 
    \result_d[23]_i_88 
       (.I0(\result_d[31]_i_379_n_0 ),
        .I1(\result_d[31]_i_378_n_0 ),
        .I2(\result_d[31]_i_444_n_0 ),
        .I3(\result_d[31]_i_381_n_0 ),
        .I4(\result_d[31]_i_380_n_0 ),
        .I5(\result_d[23]_i_101_n_0 ),
        .O(\result_d[23]_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0FFF0F4)) 
    \result_d[23]_i_89 
       (.I0(\result_d[31]_i_320_n_0 ),
        .I1(\result_d[31]_i_319_n_0 ),
        .I2(\result_d[31]_i_323_n_0 ),
        .I3(\result_d[31]_i_322_n_0 ),
        .I4(\result_d[31]_i_321_n_0 ),
        .I5(\result_d[23]_i_102_n_0 ),
        .O(\result_d[23]_i_89_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[23]_i_9 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[23]_i_19_n_0 ),
        .O(exponent_mantissa_round_i[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[23]_i_90 
       (.I0(sum_negtive[40]),
        .I1(\result_d_reg[31]_i_519_n_15 ),
        .I2(sum_negtive[42]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_519_n_13 ),
        .O(\result_d[23]_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[23]_i_91 
       (.I0(\result_d_reg[31]_i_283_n_13 ),
        .I1(sum_negtive[50]),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(\result_d_reg[31]_i_283_n_12 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[51]),
        .O(\result_d[23]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[23]_i_92 
       (.I0(\result_d_reg[31]_i_283_n_11 ),
        .I1(sum_negtive[52]),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(\result_d_reg[31]_i_283_n_10 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[53]),
        .O(\result_d[23]_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[23]_i_93 
       (.I0(\result_d_reg[31]_i_283_n_9 ),
        .I1(sum_negtive[54]),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(\result_d_reg[31]_i_283_n_8 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[55]),
        .O(\result_d[23]_i_93_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[23]_i_94 
       (.I0(\result_d_reg[31]_i_129_n_15 ),
        .I1(sum_negtive[56]),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(\result_d_reg[31]_i_129_n_14 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[57]),
        .O(\result_d[23]_i_94_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[23]_i_95 
       (.I0(\result_d[31]_i_386_n_0 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[31]_i_387_n_0 ),
        .O(\result_d[23]_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[23]_i_96 
       (.I0(\result_d[31]_i_388_n_0 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[31]_i_516_n_0 ),
        .O(\result_d[23]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[23]_i_97 
       (.I0(sum_negtive[30]),
        .I1(\result_d_reg[31]_i_532_n_9 ),
        .I2(sum_negtive[32]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_539_n_15 ),
        .O(\result_d[23]_i_97_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[23]_i_98 
       (.I0(sum_negtive[20]),
        .I1(\result_d_reg[31]_i_541_n_11 ),
        .I2(sum_negtive[22]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_541_n_9 ),
        .O(\result_d[23]_i_98_n_0 ));
  LUT6 #(
    .INIT(64'h0000A808AAAAAAAA)) 
    \result_d[23]_i_99 
       (.I0(\result_d[31]_i_373_n_0 ),
        .I1(sum_negtive[1]),
        .I2(\result_d[31]_i_443_n_0 ),
        .I3(\result_d_reg[31]_i_224_n_14 ),
        .I4(\result_d[31]_i_371_n_0 ),
        .I5(\result_d[31]_i_372_n_0 ),
        .O(\result_d[23]_i_99_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \result_d[24]_i_1 
       (.I0(\result_d[30]_i_2_n_0 ),
        .I1(\result_d[30]_i_3_n_0 ),
        .I2(\result_d[30]_i_4_n_0 ),
        .I3(p_0_in[1]),
        .O(result[24]));
  LUT4 #(
    .INIT(16'h0200)) 
    \result_d[25]_i_1 
       (.I0(\result_d[30]_i_2_n_0 ),
        .I1(\result_d[30]_i_3_n_0 ),
        .I2(\result_d[30]_i_4_n_0 ),
        .I3(p_0_in[2]),
        .O(result[25]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \result_d[26]_i_1 
       (.I0(\result_d[30]_i_2_n_0 ),
        .I1(\result_d[30]_i_3_n_0 ),
        .I2(\result_d[30]_i_4_n_0 ),
        .I3(p_0_in[3]),
        .O(result[26]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \result_d[27]_i_1 
       (.I0(\result_d[30]_i_2_n_0 ),
        .I1(\result_d[30]_i_3_n_0 ),
        .I2(\result_d[30]_i_4_n_0 ),
        .I3(p_0_in[4]),
        .O(result[27]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \result_d[28]_i_1 
       (.I0(\result_d[30]_i_2_n_0 ),
        .I1(\result_d[30]_i_3_n_0 ),
        .I2(\result_d[30]_i_4_n_0 ),
        .I3(p_0_in[5]),
        .O(result[28]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \result_d[29]_i_1 
       (.I0(\result_d[30]_i_2_n_0 ),
        .I1(\result_d[30]_i_3_n_0 ),
        .I2(\result_d[30]_i_4_n_0 ),
        .I3(p_0_in[6]),
        .O(result[29]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[2]_i_1 
       (.I0(\result_d_reg[7]_i_2_n_13 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \result_d[30]_i_1 
       (.I0(\result_d[30]_i_2_n_0 ),
        .I1(\result_d[30]_i_3_n_0 ),
        .I2(\result_d[30]_i_4_n_0 ),
        .I3(p_0_in[7]),
        .O(result[30]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \result_d[30]_i_10 
       (.I0(sel0[5]),
        .I1(sel0[1]),
        .I2(sel0[4]),
        .I3(sel0[0]),
        .O(\result_d[30]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \result_d[30]_i_11 
       (.I0(\result_d[30]_i_23_n_0 ),
        .I1(A[19]),
        .I2(A[18]),
        .I3(A[21]),
        .I4(A[7]),
        .I5(\result_d[30]_i_24_n_0 ),
        .O(\result_d[30]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \result_d[30]_i_12 
       (.I0(flag_overflow_result_d_i_8_n_0),
        .I1(flag_overflow_result_d_i_3_n_0),
        .O(exponent_mantissa_round_i[30]));
  LUT6 #(
    .INIT(64'h44F8F488FFFFFFFF)) 
    \result_d[30]_i_13 
       (.I0(\result_d[30]_i_25_n_0 ),
        .I1(\result_d[30]_i_26_n_0 ),
        .I2(\result_d[31]_i_23_n_0 ),
        .I3(\result_d[30]_i_27_n_0 ),
        .I4(\result_d[30]_i_28_n_0 ),
        .I5(flag_overflow_result_d_i_3_n_0),
        .O(exponent_mantissa_round_i[29]));
  LUT2 #(
    .INIT(4'hB)) 
    \result_d[30]_i_14 
       (.I0(\result_d[30]_i_29_n_0 ),
        .I1(flag_overflow_result_d_i_3_n_0),
        .O(\result_d[30]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \result_d[30]_i_15 
       (.I0(flag_overflow_result_d_i_9_n_0),
        .I1(flag_overflow_result_d_i_3_n_0),
        .O(exponent_mantissa_round_i[27]));
  LUT2 #(
    .INIT(4'h7)) 
    \result_d[30]_i_16 
       (.I0(\result_d[30]_i_30_n_0 ),
        .I1(flag_overflow_result_d_i_3_n_0),
        .O(exponent_mantissa_round_i[26]));
  LUT2 #(
    .INIT(4'h7)) 
    \result_d[30]_i_17 
       (.I0(\result_d[30]_i_31_n_0 ),
        .I1(flag_overflow_result_d_i_3_n_0),
        .O(exponent_mantissa_round_i[25]));
  LUT2 #(
    .INIT(4'h7)) 
    \result_d[30]_i_18 
       (.I0(\result_d[30]_i_32_n_0 ),
        .I1(flag_overflow_result_d_i_3_n_0),
        .O(exponent_mantissa_round_i[24]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_d[30]_i_19 
       (.I0(\operand_c_d_reg_n_0_[19] ),
        .I1(\operand_c_d_reg_n_0_[16] ),
        .I2(\operand_c_d_reg_n_0_[21] ),
        .I3(\operand_c_d_reg_n_0_[9] ),
        .O(\result_d[30]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \result_d[30]_i_2 
       (.I0(\operand_c_d_reg_n_0_[23] ),
        .I1(\operand_c_d_reg_n_0_[24] ),
        .I2(\operand_c_d_reg_n_0_[26] ),
        .I3(\operand_c_d_reg_n_0_[25] ),
        .I4(\result_d[30]_i_6_n_0 ),
        .I5(\result_d[30]_i_7_n_0 ),
        .O(\result_d[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \result_d[30]_i_20 
       (.I0(\result_d[30]_i_33_n_0 ),
        .I1(\result_d[30]_i_34_n_0 ),
        .I2(\result_d[30]_i_35_n_0 ),
        .I3(\operand_c_d_reg_n_0_[12] ),
        .I4(\operand_c_d_reg_n_0_[13] ),
        .I5(\operand_c_d_reg_n_0_[2] ),
        .O(\result_d[30]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_d[30]_i_21 
       (.I0(\operand_a_d_reg_n_0_[11] ),
        .I1(\operand_a_d_reg_n_0_[10] ),
        .I2(\operand_a_d_reg_n_0_[13] ),
        .I3(\operand_a_d_reg_n_0_[0] ),
        .O(\result_d[30]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \result_d[30]_i_22 
       (.I0(\result_d[30]_i_36_n_0 ),
        .I1(\result_d[30]_i_37_n_0 ),
        .I2(\result_d[30]_i_38_n_0 ),
        .I3(\operand_a_d_reg_n_0_[2] ),
        .I4(\operand_a_d_reg_n_0_[5] ),
        .I5(\operand_a_d_reg_n_0_[3] ),
        .O(\result_d[30]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_d[30]_i_23 
       (.I0(A[11]),
        .I1(A[10]),
        .I2(A[13]),
        .I3(A[0]),
        .O(\result_d[30]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \result_d[30]_i_24 
       (.I0(\result_d[30]_i_39_n_0 ),
        .I1(\result_d[30]_i_40_n_0 ),
        .I2(\result_d[30]_i_41_n_0 ),
        .I3(A[2]),
        .I4(A[5]),
        .I5(A[3]),
        .O(\result_d[30]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \result_d[30]_i_25 
       (.I0(flag_overflow_result_d_i_17_n_0),
        .I1(\result_d[30]_i_42_n_0 ),
        .I2(\result_d[30]_i_43_n_0 ),
        .I3(\result_d[31]_i_40_n_0 ),
        .I4(\result_d[30]_i_44_n_0 ),
        .O(\result_d[30]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \result_d[30]_i_26 
       (.I0(\result_d[31]_i_23_n_0 ),
        .I1(\result_d[31]_i_40_n_0 ),
        .I2(\result_d[31]_i_42_n_0 ),
        .O(\result_d[30]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \result_d[30]_i_27 
       (.I0(\operand_c_d_reg_n_0_[29] ),
        .I1(\result_d[31]_i_82_n_0 ),
        .I2(exponent_norm_result1[6]),
        .I3(\result_d[31]_i_81_n_0 ),
        .O(\result_d[30]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \result_d[30]_i_28 
       (.I0(\result_d[23]_i_12_n_0 ),
        .I1(\result_d[30]_i_46_n_0 ),
        .I2(flag_overflow_result_d_i_17_n_0),
        .I3(\result_d[30]_i_47_n_0 ),
        .I4(\result_d[30]_i_43_n_0 ),
        .I5(\result_d[30]_i_44_n_0 ),
        .O(\result_d[30]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFF00CE01CE01)) 
    \result_d[30]_i_29 
       (.I0(\result_d[30]_i_48_n_0 ),
        .I1(\result_d[31]_i_40_n_0 ),
        .I2(\result_d[31]_i_42_n_0 ),
        .I3(\result_d[30]_i_44_n_0 ),
        .I4(\result_d[30]_i_49_n_0 ),
        .I5(\result_d[31]_i_23_n_0 ),
        .O(\result_d[30]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \result_d[30]_i_3 
       (.I0(\result_d[30]_i_8_n_0 ),
        .I1(\result_d[30]_i_9_n_0 ),
        .I2(\operand_a_d_reg_n_0_[27] ),
        .I3(\operand_a_d_reg_n_0_[26] ),
        .I4(\operand_a_d_reg_n_0_[25] ),
        .I5(\operand_a_d_reg_n_0_[23] ),
        .O(\result_d[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000FF45FE45FE)) 
    \result_d[30]_i_30 
       (.I0(\result_d[31]_i_40_n_0 ),
        .I1(\result_d[31]_i_42_n_0 ),
        .I2(\result_d[30]_i_42_n_0 ),
        .I3(\result_d[30]_i_43_n_0 ),
        .I4(\result_d[30]_i_50_n_0 ),
        .I5(\result_d[31]_i_23_n_0 ),
        .O(\result_d[30]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0FF05E4F4F4F)) 
    \result_d[30]_i_31 
       (.I0(\result_d[31]_i_40_n_0 ),
        .I1(\result_d[31]_i_42_n_0 ),
        .I2(\result_d[30]_i_47_n_0 ),
        .I3(\result_d[30]_i_46_n_0 ),
        .I4(\result_d[23]_i_12_n_0 ),
        .I5(\result_d[31]_i_23_n_0 ),
        .O(\result_d[30]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hCDC96766)) 
    \result_d[30]_i_32 
       (.I0(\result_d[31]_i_23_n_0 ),
        .I1(\result_d[30]_i_46_n_0 ),
        .I2(\result_d[31]_i_40_n_0 ),
        .I3(\result_d[31]_i_42_n_0 ),
        .I4(\result_d[23]_i_12_n_0 ),
        .O(\result_d[30]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_d[30]_i_33 
       (.I0(\operand_c_d_reg_n_0_[18] ),
        .I1(\operand_c_d_reg_n_0_[7] ),
        .I2(\operand_c_d_reg_n_0_[17] ),
        .I3(\operand_c_d_reg_n_0_[1] ),
        .O(\result_d[30]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_d[30]_i_34 
       (.I0(\operand_c_d_reg_n_0_[14] ),
        .I1(\operand_c_d_reg_n_0_[11] ),
        .I2(\operand_c_d_reg_n_0_[20] ),
        .I3(\operand_c_d_reg_n_0_[10] ),
        .O(\result_d[30]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_d[30]_i_35 
       (.I0(\operand_c_d_reg_n_0_[15] ),
        .I1(\operand_c_d_reg_n_0_[4] ),
        .I2(\operand_c_d_reg_n_0_[3] ),
        .I3(\operand_c_d_reg_n_0_[0] ),
        .O(\result_d[30]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_d[30]_i_36 
       (.I0(\operand_a_d_reg_n_0_[20] ),
        .I1(\operand_a_d_reg_n_0_[14] ),
        .I2(\operand_a_d_reg_n_0_[12] ),
        .I3(\operand_a_d_reg_n_0_[6] ),
        .O(\result_d[30]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_d[30]_i_37 
       (.I0(\operand_a_d_reg_n_0_[4] ),
        .I1(\operand_a_d_reg_n_0_[1] ),
        .I2(\operand_a_d_reg_n_0_[17] ),
        .I3(\operand_a_d_reg_n_0_[8] ),
        .O(\result_d[30]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_d[30]_i_38 
       (.I0(\operand_a_d_reg_n_0_[22] ),
        .I1(\operand_a_d_reg_n_0_[15] ),
        .I2(\operand_a_d_reg_n_0_[16] ),
        .I3(\operand_a_d_reg_n_0_[9] ),
        .O(\result_d[30]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_d[30]_i_39 
       (.I0(A[20]),
        .I1(A[14]),
        .I2(A[12]),
        .I3(A[6]),
        .O(\result_d[30]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \result_d[30]_i_4 
       (.I0(\result_d[30]_i_10_n_0 ),
        .I1(sel0[6]),
        .I2(sel0[3]),
        .I3(sel0[7]),
        .I4(sel0[2]),
        .I5(\result_d[30]_i_11_n_0 ),
        .O(\result_d[30]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_d[30]_i_40 
       (.I0(A[4]),
        .I1(A[1]),
        .I2(A[17]),
        .I3(A[8]),
        .O(\result_d[30]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_d[30]_i_41 
       (.I0(A[22]),
        .I1(A[15]),
        .I2(A[16]),
        .I3(A[9]),
        .O(\result_d[30]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \result_d[30]_i_42 
       (.I0(\result_d[30]_i_46_n_0 ),
        .I1(\result_d[23]_i_12_n_0 ),
        .I2(\result_d[30]_i_47_n_0 ),
        .O(\result_d[30]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \result_d[30]_i_43 
       (.I0(\operand_c_d_reg_n_0_[26] ),
        .I1(\result_d[31]_i_82_n_0 ),
        .I2(exponent_norm_result1[3]),
        .I3(\result_d[31]_i_81_n_0 ),
        .O(\result_d[30]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \result_d[30]_i_44 
       (.I0(\operand_c_d_reg_n_0_[28] ),
        .I1(\result_d[31]_i_82_n_0 ),
        .I2(exponent_norm_result1[5]),
        .I3(\result_d[31]_i_81_n_0 ),
        .O(\result_d[30]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \result_d[30]_i_46 
       (.I0(\operand_c_d_reg_n_0_[24] ),
        .I1(\result_d[31]_i_82_n_0 ),
        .I2(exponent_norm_result1[1]),
        .I3(\result_d[31]_i_81_n_0 ),
        .O(\result_d[30]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \result_d[30]_i_47 
       (.I0(\operand_c_d_reg_n_0_[25] ),
        .I1(\result_d[31]_i_82_n_0 ),
        .I2(exponent_norm_result1[2]),
        .I3(\result_d[31]_i_81_n_0 ),
        .O(\result_d[30]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \result_d[30]_i_48 
       (.I0(flag_overflow_result_d_i_17_n_0),
        .I1(\result_d[30]_i_46_n_0 ),
        .I2(\result_d[23]_i_12_n_0 ),
        .I3(\result_d[30]_i_47_n_0 ),
        .I4(\result_d[30]_i_43_n_0 ),
        .O(\result_d[30]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \result_d[30]_i_49 
       (.I0(\result_d[23]_i_12_n_0 ),
        .I1(\result_d[30]_i_46_n_0 ),
        .I2(\result_d[30]_i_43_n_0 ),
        .I3(\result_d[30]_i_47_n_0 ),
        .I4(flag_overflow_result_d_i_17_n_0),
        .O(\result_d[30]_i_49_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \result_d[30]_i_50 
       (.I0(\result_d[23]_i_12_n_0 ),
        .I1(\result_d[30]_i_46_n_0 ),
        .I2(\result_d[30]_i_47_n_0 ),
        .O(\result_d[30]_i_50_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[30]_i_51 
       (.I0(exponent_product0[6]),
        .I1(\result_d[23]_i_34_n_0 ),
        .O(\result_d[30]_i_51_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \result_d[30]_i_52 
       (.I0(exponent_product0[5]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(\result_d[31]_i_78_n_0 ),
        .O(\result_d[30]_i_52_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \result_d[30]_i_53 
       (.I0(exponent_product0[4]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(\result_d[31]_i_149_n_0 ),
        .O(\result_d[30]_i_53_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \result_d[30]_i_54 
       (.I0(exponent_product0[3]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(\result_d[31]_i_198_n_0 ),
        .O(\result_d[30]_i_54_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \result_d[30]_i_55 
       (.I0(exponent_product0[2]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(\result_d[31]_i_196_n_0 ),
        .O(\result_d[30]_i_55_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[30]_i_56 
       (.I0(p_0_out__0[1]),
        .O(leading_zero_count));
  LUT2 #(
    .INIT(4'hE)) 
    \result_d[30]_i_57 
       (.I0(exponent_product0[0]),
        .I1(\result_d[23]_i_34_n_0 ),
        .O(exponent_product_d[0]));
  LUT3 #(
    .INIT(8'h21)) 
    \result_d[30]_i_58 
       (.I0(exponent_product0[6]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(exponent_product0[7]),
        .O(\result_d[30]_i_58_n_0 ));
  LUT4 #(
    .INIT(16'hCFED)) 
    \result_d[30]_i_59 
       (.I0(exponent_product0[5]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(exponent_product0[6]),
        .I3(\result_d[31]_i_78_n_0 ),
        .O(\result_d[30]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \result_d[30]_i_6 
       (.I0(\result_d[30]_i_19_n_0 ),
        .I1(\operand_c_d_reg_n_0_[22] ),
        .I2(\operand_c_d_reg_n_0_[5] ),
        .I3(\operand_c_d_reg_n_0_[8] ),
        .I4(\operand_c_d_reg_n_0_[6] ),
        .I5(\result_d[30]_i_20_n_0 ),
        .O(\result_d[30]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h3012CFED)) 
    \result_d[30]_i_60 
       (.I0(exponent_product0[4]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(exponent_product0[5]),
        .I3(\result_d[31]_i_149_n_0 ),
        .I4(\result_d[31]_i_78_n_0 ),
        .O(\result_d[30]_i_60_n_0 ));
  LUT5 #(
    .INIT(32'h3012CFED)) 
    \result_d[30]_i_61 
       (.I0(exponent_product0[3]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(exponent_product0[4]),
        .I3(\result_d[31]_i_198_n_0 ),
        .I4(\result_d[31]_i_149_n_0 ),
        .O(\result_d[30]_i_61_n_0 ));
  LUT5 #(
    .INIT(32'h3012CFED)) 
    \result_d[30]_i_62 
       (.I0(exponent_product0[2]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(exponent_product0[3]),
        .I3(\result_d[31]_i_196_n_0 ),
        .I4(\result_d[31]_i_198_n_0 ),
        .O(\result_d[30]_i_62_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \result_d[30]_i_63 
       (.I0(exponent_product0[2]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(p_0_out__0[1]),
        .I3(\result_d[31]_i_196_n_0 ),
        .O(\result_d[30]_i_63_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \result_d[30]_i_64 
       (.I0(exponent_product0[1]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(p_0_out__0[1]),
        .O(\result_d[30]_i_64_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \result_d[30]_i_65 
       (.I0(exponent_product0[0]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(p_0_out__0[0]),
        .O(\result_d[30]_i_65_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \result_d[30]_i_7 
       (.I0(\operand_c_d_reg_n_0_[29] ),
        .I1(\operand_c_d_reg_n_0_[28] ),
        .I2(\operand_c_d_reg_n_0_[30] ),
        .I3(\operand_c_d_reg_n_0_[27] ),
        .O(\result_d[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \result_d[30]_i_8 
       (.I0(\result_d[30]_i_21_n_0 ),
        .I1(\operand_a_d_reg_n_0_[19] ),
        .I2(\operand_a_d_reg_n_0_[18] ),
        .I3(\operand_a_d_reg_n_0_[21] ),
        .I4(\operand_a_d_reg_n_0_[7] ),
        .I5(\result_d[30]_i_22_n_0 ),
        .O(\result_d[30]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \result_d[30]_i_9 
       (.I0(\operand_a_d_reg_n_0_[29] ),
        .I1(\operand_a_d_reg_n_0_[28] ),
        .I2(\operand_a_d_reg_n_0_[30] ),
        .I3(\operand_a_d_reg_n_0_[24] ),
        .O(\result_d[30]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0001)) 
    \result_d[31]_i_1 
       (.I0(\result_d[31]_i_3_n_0 ),
        .I1(\result_d[31]_i_4_n_0 ),
        .I2(\result_d[31]_i_5_n_0 ),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(\result_d[31]_i_7_n_0 ),
        .I5(\result_d[31]_i_8_n_0 ),
        .O(result[31]));
  LUT6 #(
    .INIT(64'hBBBABBBABBBABBBB)) 
    \result_d[31]_i_10 
       (.I0(\result_d[31]_i_25_n_0 ),
        .I1(\result_d[31]_i_26_n_0 ),
        .I2(\result_d[31]_i_27_n_0 ),
        .I3(\result_d[31]_i_28_n_0 ),
        .I4(\result_d[31]_i_29_n_0 ),
        .I5(\result_d[31]_i_30_n_0 ),
        .O(\result_d[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000014444444)) 
    \result_d[31]_i_100 
       (.I0(\result_d[31]_i_237_n_0 ),
        .I1(exponent_dif[5]),
        .I2(exponent_dif[2]),
        .I3(exponent_dif[4]),
        .I4(exponent_dif[3]),
        .I5(\result_d[31]_i_236_n_0 ),
        .O(\result_d[31]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \result_d[31]_i_101 
       (.I0(\result_d[31]_i_243_n_0 ),
        .I1(\result_d[31]_i_244_n_0 ),
        .I2(\result_d[31]_i_245_n_0 ),
        .I3(\result_d[31]_i_246_n_0 ),
        .I4(\result_d[31]_i_247_n_0 ),
        .I5(\result_d[31]_i_248_n_0 ),
        .O(\result_d[31]_i_101_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h2020A020)) 
    \result_d[31]_i_102 
       (.I0(\result_d[31]_i_68_n_0 ),
        .I1(\result_d[31]_i_158_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .I3(\result_d[31]_i_91_n_0 ),
        .I4(\result_d[31]_i_192_n_0 ),
        .O(\result_d[31]_i_102_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF000000000000)) 
    \result_d[31]_i_103 
       (.I0(\result_d[31]_i_92_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_90_n_0 ),
        .I3(\result_d[31]_i_108_n_0 ),
        .I4(\result_d[31]_i_57_n_0 ),
        .I5(\result_d[31]_i_68_n_0 ),
        .O(\result_d[31]_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h74777444)) 
    \result_d[31]_i_104 
       (.I0(\result_d[31]_i_249_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[31]_i_95_n_0 ),
        .I3(\result_d[31]_i_91_n_0 ),
        .I4(\result_d[31]_i_94_n_0 ),
        .O(\result_d[31]_i_104_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \result_d[31]_i_105 
       (.I0(\result_d[31]_i_250_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_251_n_0 ),
        .I3(\result_d[31]_i_252_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_105_n_0 ));
  LUT5 #(
    .INIT(32'h474700FF)) 
    \result_d[31]_i_106 
       (.I0(\result_d[31]_i_253_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_254_n_0 ),
        .I3(\result_d[31]_i_255_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_106_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_107 
       (.I0(\result_d[31]_i_90_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_92_n_0 ),
        .O(\result_d[31]_i_107_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_108 
       (.I0(\result_d[31]_i_256_n_0 ),
        .I1(\result_d[31]_i_257_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[31]_i_258_n_0 ),
        .I4(\result_d[31]_i_144_n_0 ),
        .I5(\result_d[31]_i_259_n_0 ),
        .O(\result_d[31]_i_108_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hB800FFFF)) 
    \result_d[31]_i_109 
       (.I0(\result_d[31]_i_260_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_190_n_0 ),
        .I3(\result_d[31]_i_63_n_0 ),
        .I4(\result_d[31]_i_57_n_0 ),
        .O(\result_d[31]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAEEEE)) 
    \result_d[31]_i_11 
       (.I0(\result_d[31]_i_31_n_0 ),
        .I1(\result_d[31]_i_21_n_0 ),
        .I2(\result_d[31]_i_32_n_0 ),
        .I3(\result_d[31]_i_33_n_0 ),
        .I4(\result_d[31]_i_34_n_0 ),
        .I5(\result_d[31]_i_35_n_0 ),
        .O(\result_d[31]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hE2FF)) 
    \result_d[31]_i_110 
       (.I0(\result_d[31]_i_94_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_95_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .O(\result_d[31]_i_110_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \result_d[31]_i_111 
       (.I0(\result_d[31]_i_261_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_262_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .I4(\result_d[31]_i_249_n_0 ),
        .O(\result_d[31]_i_111_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \result_d[31]_i_112 
       (.I0(\result_d[31]_i_263_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_264_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .I4(\result_d[31]_i_265_n_0 ),
        .O(\result_d[31]_i_112_n_0 ));
  LUT5 #(
    .INIT(32'h2A2A2AFF)) 
    \result_d[31]_i_113 
       (.I0(\result_d[31]_i_68_n_0 ),
        .I1(\result_d[31]_i_109_n_0 ),
        .I2(\result_d[31]_i_75_n_0 ),
        .I3(\result_d[31]_i_34_n_0 ),
        .I4(\result_d[31]_i_23_n_0 ),
        .O(\result_d[31]_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \result_d[31]_i_114 
       (.I0(\result_d[31]_i_68_n_0 ),
        .I1(\result_d[31]_i_76_n_0 ),
        .I2(\result_d[31]_i_266_n_0 ),
        .O(\result_d[31]_i_114_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000B3)) 
    \result_d[31]_i_115 
       (.I0(\result_d[31]_i_60_n_0 ),
        .I1(\result_d[31]_i_68_n_0 ),
        .I2(\result_d[31]_i_74_n_0 ),
        .I3(\result_d[31]_i_102_n_0 ),
        .I4(\result_d[31]_i_33_n_0 ),
        .I5(\result_d[31]_i_103_n_0 ),
        .O(\result_d[31]_i_115_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_116 
       (.I0(\result_d[31]_i_267_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[31]_i_268_n_0 ),
        .O(\result_d[31]_i_116_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_117 
       (.I0(\result_d[31]_i_269_n_0 ),
        .I1(\result_d[31]_i_270_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .I3(\result_d[31]_i_271_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .I5(\result_d[31]_i_154_n_0 ),
        .O(\result_d[31]_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h7707770700007707)) 
    \result_d[31]_i_118 
       (.I0(\result_d[31]_i_121_n_0 ),
        .I1(\result_d[31]_i_40_n_0 ),
        .I2(\result_d[31]_i_68_n_0 ),
        .I3(\result_d[31]_i_272_n_0 ),
        .I4(\result_d[31]_i_66_n_0 ),
        .I5(\result_d[31]_i_109_n_0 ),
        .O(\result_d[31]_i_118_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB8FF00)) 
    \result_d[31]_i_119 
       (.I0(\result_d[31]_i_74_n_0 ),
        .I1(\result_d[31]_i_59_n_0 ),
        .I2(\result_d[31]_i_116_n_0 ),
        .I3(\result_d[31]_i_29_n_0 ),
        .I4(\result_d[31]_i_128_n_0 ),
        .I5(\result_d[31]_i_77_n_0 ),
        .O(\result_d[31]_i_119_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF53F0F05050)) 
    \result_d[31]_i_12 
       (.I0(\result_d[31]_i_36_n_0 ),
        .I1(\result_d[31]_i_37_n_0 ),
        .I2(\result_d[31]_i_23_n_0 ),
        .I3(\result_d[31]_i_38_n_0 ),
        .I4(\result_d[31]_i_39_n_0 ),
        .I5(\result_d[31]_i_40_n_0 ),
        .O(\result_d[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0033BFBF8CBFBFBF)) 
    \result_d[31]_i_120 
       (.I0(\result_d[31]_i_108_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[31]_i_66_n_0 ),
        .I3(\result_d[31]_i_273_n_0 ),
        .I4(\result_d[31]_i_68_n_0 ),
        .I5(\result_d[31]_i_274_n_0 ),
        .O(\result_d[31]_i_120_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h808A)) 
    \result_d[31]_i_121 
       (.I0(\result_d[31]_i_68_n_0 ),
        .I1(\result_d[31]_i_273_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .I3(\result_d[31]_i_108_n_0 ),
        .O(\result_d[31]_i_121_n_0 ));
  LUT6 #(
    .INIT(64'h000AFF0ACC0AFF0A)) 
    \result_d[31]_i_122 
       (.I0(\result_d[31]_i_275_n_0 ),
        .I1(\result_d[31]_i_276_n_0 ),
        .I2(\result_d[31]_i_277_n_0 ),
        .I3(\result_d[31]_i_59_n_0 ),
        .I4(\result_d[31]_i_57_n_0 ),
        .I5(\result_d[31]_i_93_n_0 ),
        .O(\result_d[31]_i_122_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_d[31]_i_123 
       (.I0(\result_d[31]_i_76_n_0 ),
        .I1(\result_d[31]_i_75_n_0 ),
        .I2(\result_d[31]_i_59_n_0 ),
        .O(\result_d[31]_i_123_n_0 ));
  LUT5 #(
    .INIT(32'hFF00D1D1)) 
    \result_d[31]_i_124 
       (.I0(\result_d[31]_i_90_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_255_n_0 ),
        .I3(\result_d[31]_i_278_n_0 ),
        .I4(\result_d[31]_i_57_n_0 ),
        .O(\result_d[31]_i_124_n_0 ));
  LUT5 #(
    .INIT(32'hFF003535)) 
    \result_d[31]_i_125 
       (.I0(\result_d[31]_i_260_n_0 ),
        .I1(\result_d[31]_i_279_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[31]_i_280_n_0 ),
        .I4(\result_d[31]_i_57_n_0 ),
        .O(\result_d[31]_i_125_n_0 ));
  LUT5 #(
    .INIT(32'hFF00D1D1)) 
    \result_d[31]_i_126 
       (.I0(\result_d[31]_i_172_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_163_n_0 ),
        .I3(\result_d[31]_i_67_n_0 ),
        .I4(\result_d[31]_i_57_n_0 ),
        .O(\result_d[31]_i_126_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_d[31]_i_127 
       (.I0(\result_d[31]_i_281_n_0 ),
        .I1(\result_d[31]_i_59_n_0 ),
        .I2(\result_d[31]_i_282_n_0 ),
        .I3(\result_d[23]_i_23_n_0 ),
        .O(\result_d[31]_i_127_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \result_d[31]_i_128 
       (.I0(\result_d[31]_i_110_n_0 ),
        .I1(\result_d[31]_i_59_n_0 ),
        .I2(\result_d[31]_i_111_n_0 ),
        .O(\result_d[31]_i_128_n_0 ));
  LUT6 #(
    .INIT(64'hF1F1FFFFF1F1FFF1)) 
    \result_d[31]_i_13 
       (.I0(\result_d[31]_i_41_n_0 ),
        .I1(\result_d[31]_i_42_n_0 ),
        .I2(\result_d[31]_i_43_n_0 ),
        .I3(\result_d[31]_i_44_n_0 ),
        .I4(\result_d[31]_i_45_n_0 ),
        .I5(\result_d[31]_i_19_n_0 ),
        .O(\result_d[31]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h96699696)) 
    \result_d[31]_i_130 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_292_n_0 ),
        .I4(\result_d[31]_i_138_n_0 ),
        .O(\result_d[31]_i_130_n_0 ));
  LUT5 #(
    .INIT(32'h96699696)) 
    \result_d[31]_i_131 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_293_n_0 ),
        .I4(\result_d[31]_i_138_n_0 ),
        .O(\result_d[31]_i_131_n_0 ));
  LUT5 #(
    .INIT(32'h96699696)) 
    \result_d[31]_i_132 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_294_n_0 ),
        .I4(\result_d[31]_i_138_n_0 ),
        .O(\result_d[31]_i_132_n_0 ));
  LUT5 #(
    .INIT(32'h96699696)) 
    \result_d[31]_i_133 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_295_n_0 ),
        .I4(\result_d[31]_i_138_n_0 ),
        .O(\result_d[31]_i_133_n_0 ));
  LUT5 #(
    .INIT(32'h96699696)) 
    \result_d[31]_i_134 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_296_n_0 ),
        .I4(\result_d[31]_i_138_n_0 ),
        .O(\result_d[31]_i_134_n_0 ));
  LUT5 #(
    .INIT(32'h96699696)) 
    \result_d[31]_i_135 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_297_n_0 ),
        .I4(\result_d[31]_i_138_n_0 ),
        .O(\result_d[31]_i_135_n_0 ));
  LUT6 #(
    .INIT(64'hE11E1EE1F00F0FF0)) 
    \result_d[31]_i_136 
       (.I0(\result_d[31]_i_151_n_0 ),
        .I1(\result_d[31]_i_298_n_0 ),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(\result_d[31]_i_138_n_0 ),
        .O(\result_d[31]_i_136_n_0 ));
  LUT5 #(
    .INIT(32'h96699696)) 
    \result_d[31]_i_137 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_299_n_0 ),
        .I4(\result_d[31]_i_138_n_0 ),
        .O(\result_d[31]_i_137_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[31]_i_138 
       (.I0(\result_d[31]_i_98_n_0 ),
        .I1(\result_d[31]_i_100_n_0 ),
        .O(\result_d[31]_i_138_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \result_d[31]_i_139 
       (.I0(\result_d[31]_i_300_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\result_d[31]_i_302_n_0 ),
        .I4(\result_d[23]_i_21_n_0 ),
        .I5(\result_d[31]_i_303_n_0 ),
        .O(\result_d[31]_i_139_n_0 ));
  LUT6 #(
    .INIT(64'h5501555555015511)) 
    \result_d[31]_i_14 
       (.I0(\result_d[31]_i_29_n_0 ),
        .I1(\result_d[31]_i_46_n_0 ),
        .I2(\result_d[31]_i_42_n_0 ),
        .I3(\result_d[31]_i_47_n_0 ),
        .I4(\result_d[31]_i_26_n_0 ),
        .I5(\result_d[31]_i_48_n_0 ),
        .O(\result_d[31]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[31]_i_140 
       (.I0(\result_d[31]_i_304_n_0 ),
        .I1(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_140_n_0 ));
  LUT6 #(
    .INIT(64'hFF6A000000000000)) 
    \result_d[31]_i_141 
       (.I0(exponent_dif[4]),
        .I1(exponent_dif[2]),
        .I2(exponent_dif[3]),
        .I3(\result_d[31]_i_237_n_0 ),
        .I4(\result_d[31]_i_216_n_0 ),
        .I5(\result_d[31]_i_305_n_0 ),
        .O(\result_d[31]_i_141_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \result_d[31]_i_142 
       (.I0(\result_d[31]_i_216_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_306_n_0 ),
        .I3(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_142_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_143 
       (.I0(\result_d[31]_i_307_n_0 ),
        .I1(\result_d[31]_i_308_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_309_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_310_n_0 ),
        .O(\result_d[31]_i_143_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFB400)) 
    \result_d[31]_i_144 
       (.I0(\result_d[31]_i_311_n_0 ),
        .I1(\result_d[31]_i_312_n_0 ),
        .I2(\result_d[31]_i_196_n_0 ),
        .I3(\result_d[31]_i_81_n_0 ),
        .I4(\result_d[31]_i_313_n_0 ),
        .I5(\result_d[31]_i_314_n_0 ),
        .O(\result_d[31]_i_144_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_145 
       (.I0(\result_d[31]_i_315_n_0 ),
        .I1(\result_d[31]_i_316_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_317_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_318_n_0 ),
        .O(\result_d[31]_i_145_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_146 
       (.I0(\result_d[31]_i_319_n_0 ),
        .I1(\result_d[31]_i_320_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_321_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_322_n_0 ),
        .O(\result_d[31]_i_146_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_147 
       (.I0(\result_d[31]_i_323_n_0 ),
        .I1(\result_d[31]_i_324_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_325_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_326_n_0 ),
        .O(\result_d[31]_i_147_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hAA95)) 
    \result_d[31]_i_148 
       (.I0(exponent_dif[4]),
        .I1(exponent_dif[2]),
        .I2(exponent_dif[1]),
        .I3(exponent_dif[3]),
        .O(\result_d[31]_i_148_n_0 ));
  LUT6 #(
    .INIT(64'h0000008088888888)) 
    \result_d[31]_i_149 
       (.I0(\result_d[31]_i_327_n_0 ),
        .I1(\result_d[31]_i_328_n_0 ),
        .I2(\result_d[31]_i_329_n_0 ),
        .I3(\result_d[31]_i_330_n_0 ),
        .I4(\result_d[31]_i_331_n_0 ),
        .I5(\result_d[31]_i_332_n_0 ),
        .O(\result_d[31]_i_149_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_d[31]_i_15 
       (.I0(\result_d_reg[23]_i_2_n_13 ),
        .I1(\result_d_reg[23]_i_2_n_14 ),
        .I2(\result_d_reg[23]_i_2_n_11 ),
        .I3(\result_d_reg[15]_i_2_n_8 ),
        .O(\result_d[31]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \result_d[31]_i_150 
       (.I0(\result_d[31]_i_198_n_0 ),
        .I1(p_0_out__0[1]),
        .I2(\result_d[31]_i_196_n_0 ),
        .O(\result_d[31]_i_150_n_0 ));
  LUT5 #(
    .INIT(32'h00004111)) 
    \result_d[31]_i_151 
       (.I0(\result_d[31]_i_236_n_0 ),
        .I1(exponent_dif[4]),
        .I2(exponent_dif[2]),
        .I3(exponent_dif[3]),
        .I4(\result_d[31]_i_237_n_0 ),
        .O(\result_d[31]_i_151_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_152 
       (.I0(\result_d[31]_i_333_n_0 ),
        .I1(\result_d[31]_i_334_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_335_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_336_n_0 ),
        .O(\result_d[31]_i_152_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_153 
       (.I0(\result_d[31]_i_337_n_0 ),
        .I1(\result_d[31]_i_338_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_339_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_340_n_0 ),
        .O(\result_d[31]_i_153_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result_d[31]_i_154 
       (.I0(\result_d[31]_i_341_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_342_n_0 ),
        .I3(\result_d[31]_i_213_n_0 ),
        .I4(\result_d[31]_i_343_n_0 ),
        .O(\result_d[31]_i_154_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0007)) 
    \result_d[31]_i_155 
       (.I0(exponent_dif[2]),
        .I1(exponent_dif[1]),
        .I2(exponent_dif[3]),
        .I3(exponent_dif[4]),
        .O(\result_d[31]_i_155_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_157 
       (.I0(\result_d[31]_i_257_n_0 ),
        .I1(\result_d[31]_i_359_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[31]_i_259_n_0 ),
        .I4(\result_d[31]_i_144_n_0 ),
        .I5(\result_d[31]_i_256_n_0 ),
        .O(\result_d[31]_i_157_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \result_d[31]_i_158 
       (.I0(\result_d[31]_i_360_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_158_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \result_d[31]_i_159 
       (.I0(\result_d[31]_i_361_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_362_n_0 ),
        .I3(\result_d[31]_i_261_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_159_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \result_d[31]_i_16 
       (.I0(\result_d_reg[23]_i_2_n_15 ),
        .I1(\result_d_reg[23]_i_2_n_10 ),
        .I2(\result_d_reg[7]_i_2_n_11 ),
        .I3(\result_d_reg[23]_i_2_n_9 ),
        .I4(\result_d[31]_i_49_n_0 ),
        .O(\result_d[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_160 
       (.I0(\result_d[31]_i_254_n_0 ),
        .I1(\result_d[31]_i_250_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[31]_i_363_n_0 ),
        .I4(\result_d[31]_i_144_n_0 ),
        .I5(\result_d[31]_i_253_n_0 ),
        .O(\result_d[31]_i_160_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_161 
       (.I0(\result_d[31]_i_177_n_0 ),
        .I1(\result_d[31]_i_178_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[31]_i_174_n_0 ),
        .I4(\result_d[31]_i_144_n_0 ),
        .I5(\result_d[31]_i_175_n_0 ),
        .O(\result_d[31]_i_161_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_162 
       (.I0(\result_d[31]_i_364_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_365_n_0 ),
        .O(\result_d[31]_i_162_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \result_d[31]_i_163 
       (.I0(\result_d[31]_i_366_n_0 ),
        .I1(\result_d[31]_i_367_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[31]_i_368_n_0 ),
        .I4(\result_d[31]_i_369_n_0 ),
        .I5(\result_d[31]_i_213_n_0 ),
        .O(\result_d[31]_i_163_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \result_d[31]_i_164 
       (.I0(\result_d[31]_i_213_n_0 ),
        .I1(\result_d_reg[31]_i_224_n_15 ),
        .I2(\result_d[31]_i_223_n_0 ),
        .O(\result_d[31]_i_164_n_0 ));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \result_d[31]_i_165 
       (.I0(\result_d[31]_i_370_n_0 ),
        .I1(\result_d[31]_i_371_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_372_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_373_n_0 ),
        .O(\result_d[31]_i_165_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_166 
       (.I0(\result_d[31]_i_374_n_0 ),
        .I1(\result_d[31]_i_375_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_376_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_377_n_0 ),
        .O(\result_d[31]_i_166_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_167 
       (.I0(\result_d[31]_i_378_n_0 ),
        .I1(\result_d[31]_i_379_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_380_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_381_n_0 ),
        .O(\result_d[31]_i_167_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8BBB8BBB8BB)) 
    \result_d[31]_i_168 
       (.I0(\result_d[31]_i_382_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_383_n_0 ),
        .I3(\result_d[31]_i_213_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_384_n_0 ),
        .O(\result_d[31]_i_168_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_169 
       (.I0(\result_d[31]_i_385_n_0 ),
        .I1(\result_d[31]_i_386_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[31]_i_387_n_0 ),
        .I4(\result_d[31]_i_213_n_0 ),
        .I5(\result_d[31]_i_388_n_0 ),
        .O(\result_d[31]_i_169_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \result_d[31]_i_17 
       (.I0(\result_d[31]_i_50_n_0 ),
        .I1(\result_d_reg[15]_i_2_n_12 ),
        .I2(\result_d_reg[15]_i_2_n_13 ),
        .I3(\result_d_reg[7]_i_2_n_12 ),
        .I4(\result_d_reg[7]_i_2_n_14 ),
        .I5(flag_underflow_result),
        .O(\result_d[31]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result_d[31]_i_170 
       (.I0(\result_d[31]_i_389_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_343_n_0 ),
        .I3(\result_d[31]_i_213_n_0 ),
        .I4(\result_d[31]_i_390_n_0 ),
        .O(\result_d[31]_i_170_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_171 
       (.I0(\result_d[31]_i_391_n_0 ),
        .I1(\result_d[31]_i_392_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[31]_i_393_n_0 ),
        .I4(\result_d[31]_i_213_n_0 ),
        .I5(\result_d[31]_i_394_n_0 ),
        .O(\result_d[31]_i_171_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_172 
       (.I0(\result_d[31]_i_166_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_167_n_0 ),
        .O(\result_d[31]_i_172_n_0 ));
  LUT6 #(
    .INIT(64'h0202020202A20202)) 
    \result_d[31]_i_173 
       (.I0(\result_d[31]_i_91_n_0 ),
        .I1(\result_d[31]_i_165_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[31]_i_223_n_0 ),
        .I4(\result_d_reg[31]_i_224_n_15 ),
        .I5(\result_d[31]_i_213_n_0 ),
        .O(\result_d[31]_i_173_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \result_d[31]_i_174 
       (.I0(\result_d[31]_i_309_n_0 ),
        .I1(\result_d[31]_i_310_n_0 ),
        .I2(\result_d[31]_i_315_n_0 ),
        .I3(\result_d[31]_i_223_n_0 ),
        .I4(\result_d[31]_i_316_n_0 ),
        .I5(\result_d[31]_i_213_n_0 ),
        .O(\result_d[31]_i_174_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_175 
       (.I0(\result_d[31]_i_317_n_0 ),
        .I1(\result_d[31]_i_318_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_333_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_334_n_0 ),
        .O(\result_d[31]_i_175_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hAAA9A9A9)) 
    \result_d[31]_i_176 
       (.I0(exponent_dif[5]),
        .I1(exponent_dif[4]),
        .I2(exponent_dif[3]),
        .I3(exponent_dif[1]),
        .I4(exponent_dif[2]),
        .O(\result_d[31]_i_176_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \result_d[31]_i_177 
       (.I0(\result_d[31]_i_335_n_0 ),
        .I1(\result_d[31]_i_336_n_0 ),
        .I2(\result_d[31]_i_337_n_0 ),
        .I3(\result_d[31]_i_223_n_0 ),
        .I4(\result_d[31]_i_338_n_0 ),
        .I5(\result_d[31]_i_213_n_0 ),
        .O(\result_d[31]_i_177_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \result_d[31]_i_178 
       (.I0(\result_d[31]_i_339_n_0 ),
        .I1(\result_d[31]_i_340_n_0 ),
        .I2(\result_d[31]_i_395_n_0 ),
        .I3(\result_d[31]_i_223_n_0 ),
        .I4(\result_d[31]_i_396_n_0 ),
        .I5(\result_d[31]_i_213_n_0 ),
        .O(\result_d[31]_i_178_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA02A2000002A2)) 
    \result_d[31]_i_179 
       (.I0(\result_d[31]_i_68_n_0 ),
        .I1(\result_d[31]_i_94_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[31]_i_95_n_0 ),
        .I4(\result_d[31]_i_57_n_0 ),
        .I5(\result_d[31]_i_249_n_0 ),
        .O(\result_d[31]_i_179_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_180 
       (.I0(\result_d[31]_i_268_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[31]_i_188_n_0 ),
        .O(\result_d[31]_i_180_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_181 
       (.I0(\result_d[31]_i_215_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_397_n_0 ),
        .O(\result_d[31]_i_181_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFB8FFFF)) 
    \result_d[31]_i_182 
       (.I0(\result_d[31]_i_219_n_0 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[31]_i_220_n_0 ),
        .I3(\result_d[31]_i_144_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_182_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hC050CF50)) 
    \result_d[31]_i_183 
       (.I0(\result_d[31]_i_90_n_0 ),
        .I1(\result_d[31]_i_255_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .I3(\result_d[31]_i_91_n_0 ),
        .I4(\result_d[31]_i_92_n_0 ),
        .O(\result_d[31]_i_183_n_0 ));
  LUT6 #(
    .INIT(64'h3F30AFAF3F30A0A0)) 
    \result_d[31]_i_184 
       (.I0(\result_d[31]_i_210_n_0 ),
        .I1(\result_d[23]_i_36_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .I3(\result_d[31]_i_191_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .I5(\result_d[31]_i_192_n_0 ),
        .O(\result_d[31]_i_184_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000002A202A2)) 
    \result_d[31]_i_185 
       (.I0(\result_d[31]_i_91_n_0 ),
        .I1(\result_d[31]_i_259_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[31]_i_258_n_0 ),
        .I4(\result_d[31]_i_398_n_0 ),
        .I5(\result_d[31]_i_57_n_0 ),
        .O(\result_d[31]_i_185_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h30503F50)) 
    \result_d[31]_i_186 
       (.I0(\result_d[31]_i_260_n_0 ),
        .I1(\result_d[31]_i_279_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .I3(\result_d[31]_i_91_n_0 ),
        .I4(\result_d[31]_i_190_n_0 ),
        .O(\result_d[31]_i_186_n_0 ));
  LUT5 #(
    .INIT(32'h11DD1D1D)) 
    \result_d[31]_i_187 
       (.I0(\result_d[31]_i_193_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[31]_i_208_n_0 ),
        .I3(\result_d[31]_i_206_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_187_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAFCFAFC0)) 
    \result_d[31]_i_188 
       (.I0(\result_d[31]_i_259_n_0 ),
        .I1(\result_d[31]_i_256_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[31]_i_144_n_0 ),
        .I4(\result_d[31]_i_258_n_0 ),
        .O(\result_d[31]_i_188_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_189 
       (.I0(\result_d[31]_i_258_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_259_n_0 ),
        .O(\result_d[31]_i_189_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \result_d[31]_i_19 
       (.I0(\result_d[31]_i_23_n_0 ),
        .I1(\result_d[31]_i_42_n_0 ),
        .I2(\result_d[31]_i_40_n_0 ),
        .O(\result_d[31]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_190 
       (.I0(\result_d[31]_i_399_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_400_n_0 ),
        .O(\result_d[31]_i_190_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result_d[31]_i_191 
       (.I0(\result_d[31]_i_400_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_222_n_0 ),
        .I3(\result_d[31]_i_213_n_0 ),
        .I4(\result_d[31]_i_212_n_0 ),
        .O(\result_d[31]_i_191_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_d[31]_i_192 
       (.I0(\result_d[31]_i_144_n_0 ),
        .I1(\result_d[31]_i_399_n_0 ),
        .O(\result_d[31]_i_192_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hCCF0FFAA)) 
    \result_d[31]_i_193 
       (.I0(\result_d[31]_i_164_n_0 ),
        .I1(\result_d[31]_i_165_n_0 ),
        .I2(\result_d[31]_i_166_n_0 ),
        .I3(\result_d[31]_i_144_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_193_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_d[31]_i_194 
       (.I0(\result_d[31]_i_329_n_0 ),
        .I1(\result_d[31]_i_331_n_0 ),
        .I2(\result_d[31]_i_330_n_0 ),
        .O(\result_d[31]_i_194_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \result_d[31]_i_195 
       (.I0(\result_d[31]_i_328_n_0 ),
        .I1(\result_d[31]_i_327_n_0 ),
        .I2(\result_d[31]_i_401_n_0 ),
        .I3(\result_d[31]_i_402_n_0 ),
        .O(\result_d[31]_i_195_n_0 ));
  LUT6 #(
    .INIT(64'h0040444455555555)) 
    \result_d[31]_i_196 
       (.I0(\result_d[31]_i_403_n_0 ),
        .I1(\result_d[31]_i_404_n_0 ),
        .I2(\result_d[31]_i_405_n_0 ),
        .I3(\result_d[31]_i_406_n_0 ),
        .I4(\result_d[31]_i_407_n_0 ),
        .I5(\result_d[31]_i_408_n_0 ),
        .O(\result_d[31]_i_196_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCEEEECCCCEEFE)) 
    \result_d[31]_i_197 
       (.I0(\result_d[31]_i_409_n_0 ),
        .I1(\result_d[31]_i_410_n_0 ),
        .I2(\result_d[31]_i_411_n_0 ),
        .I3(\result_d[31]_i_412_n_0 ),
        .I4(\result_d[31]_i_413_n_0 ),
        .I5(\result_d[31]_i_414_n_0 ),
        .O(p_0_out__0[1]));
  LUT6 #(
    .INIT(64'h00088888AAAAAAAA)) 
    \result_d[31]_i_198 
       (.I0(\result_d[31]_i_327_n_0 ),
        .I1(\result_d[31]_i_401_n_0 ),
        .I2(\result_d[31]_i_329_n_0 ),
        .I3(\result_d[31]_i_330_n_0 ),
        .I4(\result_d[31]_i_402_n_0 ),
        .I5(\result_d[31]_i_328_n_0 ),
        .O(\result_d[31]_i_198_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_2 
       (.I0(rst_n_I),
        .O(\result_d[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    \result_d[31]_i_20 
       (.I0(\result_d[31]_i_29_n_0 ),
        .I1(\result_d[31]_i_56_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .I3(\result_d[31]_i_58_n_0 ),
        .I4(\result_d[31]_i_59_n_0 ),
        .I5(\result_d[31]_i_60_n_0 ),
        .O(\result_d[31]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \result_d[31]_i_201 
       (.I0(exponent_dif[8]),
        .I1(exponent_dif[7]),
        .I2(exponent_dif[6]),
        .I3(exponent_dif[5]),
        .I4(exponent_dif[4]),
        .I5(exponent_dif[3]),
        .O(\result_d[31]_i_201_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FFF0055553333)) 
    \result_d[31]_i_202 
       (.I0(\result_d[31]_i_175_n_0 ),
        .I1(\result_d[31]_i_177_n_0 ),
        .I2(\result_d[31]_i_178_n_0 ),
        .I3(\result_d[31]_i_389_n_0 ),
        .I4(\result_d[31]_i_144_n_0 ),
        .I5(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_202_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \result_d[31]_i_203 
       (.I0(\result_d[31]_i_427_n_0 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[31]_i_428_n_0 ),
        .I3(\result_d[31]_i_144_n_0 ),
        .I4(\result_d[31]_i_429_n_0 ),
        .O(\result_d[31]_i_203_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_204 
       (.I0(\result_d[31]_i_430_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_431_n_0 ),
        .O(\result_d[31]_i_204_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \result_d[31]_i_205 
       (.I0(\result_d[31]_i_174_n_0 ),
        .I1(\result_d[31]_i_365_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .O(\result_d[31]_i_205_n_0 ));
  LUT5 #(
    .INIT(32'hAC00ACFF)) 
    \result_d[31]_i_206 
       (.I0(\result_d[31]_i_368_n_0 ),
        .I1(\result_d[31]_i_369_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_144_n_0 ),
        .I4(\result_d[31]_i_364_n_0 ),
        .O(\result_d[31]_i_206_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_207 
       (.I0(\result_d[31]_i_432_n_0 ),
        .I1(\result_d[31]_i_433_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[31]_i_434_n_0 ),
        .I4(\result_d[31]_i_144_n_0 ),
        .I5(\result_d[31]_i_435_n_0 ),
        .O(\result_d[31]_i_207_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \result_d[31]_i_208 
       (.I0(\result_d[31]_i_167_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_366_n_0 ),
        .I3(\result_d[31]_i_367_n_0 ),
        .I4(\result_d[31]_i_213_n_0 ),
        .O(\result_d[31]_i_208_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \result_d[31]_i_209 
       (.I0(\result_d[31]_i_165_n_0 ),
        .I1(\result_d[31]_i_166_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .O(\result_d[31]_i_209_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_d[31]_i_21 
       (.I0(\result_d[31]_i_23_n_0 ),
        .I1(\result_d[23]_i_13_n_0 ),
        .O(\result_d[31]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3030A0AF3F3F)) 
    \result_d[31]_i_210 
       (.I0(\result_d[31]_i_214_n_0 ),
        .I1(\result_d[31]_i_436_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[31]_i_437_n_0 ),
        .I4(\result_d[31]_i_213_n_0 ),
        .I5(\result_d[31]_i_438_n_0 ),
        .O(\result_d[31]_i_210_n_0 ));
  LUT5 #(
    .INIT(32'hFFD100D1)) 
    \result_d[31]_i_211 
       (.I0(\result_d[31]_i_95_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_181_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .I4(\result_d[31]_i_160_n_0 ),
        .O(\result_d[31]_i_211_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_d[31]_i_212 
       (.I0(sum_negtive[9]),
        .I1(\result_d_reg[31]_i_440_n_14 ),
        .I2(\result_d[31]_i_441_n_0 ),
        .I3(sum_negtive[8]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_440_n_15 ),
        .O(\result_d[31]_i_212_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000B0BFB0BF)) 
    \result_d[31]_i_213 
       (.I0(\result_d[31]_i_311_n_0 ),
        .I1(\result_d[31]_i_312_n_0 ),
        .I2(\result_d[31]_i_81_n_0 ),
        .I3(exponent_dif[1]),
        .I4(\result_d[31]_i_301_n_0 ),
        .I5(\result_d[31]_i_82_n_0 ),
        .O(\result_d[31]_i_213_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_d[31]_i_214 
       (.I0(sum_negtive[10]),
        .I1(\result_d_reg[31]_i_440_n_13 ),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(sum_negtive[11]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_440_n_12 ),
        .O(\result_d[31]_i_214_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFC0C0A0AFCFCF)) 
    \result_d[31]_i_215 
       (.I0(\result_d[31]_i_444_n_0 ),
        .I1(\result_d[31]_i_381_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_445_n_0 ),
        .I4(\result_d[31]_i_441_n_0 ),
        .I5(\result_d[31]_i_446_n_0 ),
        .O(\result_d[31]_i_215_n_0 ));
  LUT4 #(
    .INIT(16'h4554)) 
    \result_d[31]_i_216 
       (.I0(\result_d[31]_i_236_n_0 ),
        .I1(\result_d[31]_i_237_n_0 ),
        .I2(exponent_dif[3]),
        .I3(exponent_dif[2]),
        .O(\result_d[31]_i_216_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000088A8)) 
    \result_d[31]_i_217 
       (.I0(\result_d[31]_i_196_n_0 ),
        .I1(\result_d[31]_i_447_n_0 ),
        .I2(\result_d[31]_i_448_n_0 ),
        .I3(\result_d[31]_i_449_n_0 ),
        .I4(\result_d[31]_i_410_n_0 ),
        .I5(\result_d[31]_i_450_n_0 ),
        .O(\result_d[31]_i_217_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \result_d[31]_i_218 
       (.I0(exponent_dif[3]),
        .I1(exponent_dif[1]),
        .I2(exponent_dif[2]),
        .O(\result_d[31]_i_218_n_0 ));
  LUT5 #(
    .INIT(32'h44477747)) 
    \result_d[31]_i_219 
       (.I0(\result_d_reg[31]_i_224_n_15 ),
        .I1(\result_d[31]_i_223_n_0 ),
        .I2(sum_negtive[1]),
        .I3(\result_d[31]_i_443_n_0 ),
        .I4(\result_d_reg[31]_i_224_n_14 ),
        .O(\result_d[31]_i_219_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \result_d[31]_i_22 
       (.I0(\result_d[31]_i_29_n_0 ),
        .I1(\result_d[31]_i_61_n_0 ),
        .O(\result_d[31]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h5050303F5F5F303F)) 
    \result_d[31]_i_220 
       (.I0(\result_d_reg[31]_i_224_n_12 ),
        .I1(sum_negtive[3]),
        .I2(\result_d[31]_i_441_n_0 ),
        .I3(sum_negtive[2]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_224_n_13 ),
        .O(\result_d[31]_i_220_n_0 ));
  LUT6 #(
    .INIT(64'h303F5050303F5F5F)) 
    \result_d[31]_i_221 
       (.I0(sum_negtive[5]),
        .I1(\result_d_reg[31]_i_224_n_10 ),
        .I2(\result_d[31]_i_441_n_0 ),
        .I3(\result_d_reg[31]_i_224_n_11 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[4]),
        .O(\result_d[31]_i_221_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_d[31]_i_222 
       (.I0(sum_negtive[6]),
        .I1(\result_d_reg[31]_i_224_n_9 ),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(sum_negtive[7]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_224_n_8 ),
        .O(\result_d[31]_i_222_n_0 ));
  LUT6 #(
    .INIT(64'h888BBBBB888B8888)) 
    \result_d[31]_i_223 
       (.I0(\result_d[31]_i_302_n_0 ),
        .I1(\result_d[31]_i_82_n_0 ),
        .I2(\result_d[31]_i_451_n_0 ),
        .I3(\result_d[31]_i_452_n_0 ),
        .I4(\result_d[31]_i_81_n_0 ),
        .I5(exponent_dif[0]),
        .O(\result_d[31]_i_223_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    \result_d[31]_i_225 
       (.I0(\result_d[31]_i_462_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_463_n_0 ),
        .I3(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_225_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    \result_d[31]_i_226 
       (.I0(\result_d[31]_i_464_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_465_n_0 ),
        .I3(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_226_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    \result_d[31]_i_227 
       (.I0(\result_d[31]_i_466_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_467_n_0 ),
        .I3(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_227_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    \result_d[31]_i_228 
       (.I0(\result_d[31]_i_468_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_469_n_0 ),
        .I3(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_228_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \result_d[31]_i_229 
       (.I0(\result_d[31]_i_470_n_0 ),
        .I1(\result_d[31]_i_471_n_0 ),
        .I2(\result_d[31]_i_472_n_0 ),
        .I3(\result_d[31]_i_473_n_0 ),
        .O(\result_d[31]_i_229_n_0 ));
  LUT6 #(
    .INIT(64'h0A300A000A3F0A0F)) 
    \result_d[31]_i_23 
       (.I0(\result_d[31]_i_62_n_0 ),
        .I1(\result_d[31]_i_63_n_0 ),
        .I2(\result_d[31]_i_29_n_0 ),
        .I3(\result_d[31]_i_59_n_0 ),
        .I4(\result_d[31]_i_57_n_0 ),
        .I5(\result_d[31]_i_64_n_0 ),
        .O(\result_d[31]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00CC4747)) 
    \result_d[31]_i_230 
       (.I0(\result_d[31]_i_474_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_468_n_0 ),
        .I3(\result_d[31]_i_469_n_0 ),
        .I4(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_230_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h33FFB8B8)) 
    \result_d[31]_i_231 
       (.I0(\result_d[31]_i_475_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_476_n_0 ),
        .I3(\result_d[31]_i_305_n_0 ),
        .I4(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_231_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00FF4747)) 
    \result_d[31]_i_232 
       (.I0(\result_d[31]_i_477_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_475_n_0 ),
        .I3(\result_d[31]_i_298_n_0 ),
        .I4(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_232_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFF33B8B8)) 
    \result_d[31]_i_233 
       (.I0(\result_d[31]_i_478_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_464_n_0 ),
        .I3(\result_d[31]_i_465_n_0 ),
        .I4(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_233_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \result_d[31]_i_234 
       (.I0(\result_d[31]_i_479_n_0 ),
        .I1(\result_d[31]_i_480_n_0 ),
        .I2(\result_d[31]_i_481_n_0 ),
        .I3(\result_d[31]_i_482_n_0 ),
        .O(\result_d[31]_i_234_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_d[31]_i_235 
       (.I0(\result_d[31]_i_483_n_0 ),
        .I1(\result_d[31]_i_484_n_0 ),
        .I2(\result_d[31]_i_485_n_0 ),
        .I3(\result_d[31]_i_486_n_0 ),
        .O(\result_d[31]_i_235_n_0 ));
  LUT6 #(
    .INIT(64'h2AAA2AAA2AAAAAAA)) 
    \result_d[31]_i_236 
       (.I0(exponent_dif[9]),
        .I1(exponent_dif[8]),
        .I2(exponent_dif[6]),
        .I3(exponent_dif[7]),
        .I4(exponent_dif[5]),
        .I5(exponent_dif[4]),
        .O(\result_d[31]_i_236_n_0 ));
  LUT6 #(
    .INIT(64'h5554545454545454)) 
    \result_d[31]_i_237 
       (.I0(exponent_dif[9]),
        .I1(exponent_dif[5]),
        .I2(\result_d[31]_i_487_n_0 ),
        .I3(exponent_dif[3]),
        .I4(exponent_dif[4]),
        .I5(\result_d[31]_i_488_n_0 ),
        .O(\result_d[31]_i_237_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \result_d[31]_i_238 
       (.I0(exponent_dif[3]),
        .I1(exponent_dif[4]),
        .I2(exponent_dif[2]),
        .O(\result_d[31]_i_238_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h5C)) 
    \result_d[31]_i_239 
       (.I0(\result_d[31]_i_142_n_0 ),
        .I1(\result_d[31]_i_489_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .O(\result_d[31]_i_239_n_0 ));
  LUT6 #(
    .INIT(64'h7707777700077777)) 
    \result_d[31]_i_24 
       (.I0(\result_d[31]_i_65_n_0 ),
        .I1(\result_d[31]_i_66_n_0 ),
        .I2(\result_d[31]_i_67_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .I4(\result_d[31]_i_68_n_0 ),
        .I5(\result_d[31]_i_69_n_0 ),
        .O(\result_d[31]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h5C)) 
    \result_d[31]_i_240 
       (.I0(\result_d[31]_i_140_n_0 ),
        .I1(\result_d[31]_i_490_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .O(\result_d[31]_i_240_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h5C)) 
    \result_d[31]_i_241 
       (.I0(\result_d[31]_i_141_n_0 ),
        .I1(\result_d[31]_i_491_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .O(\result_d[31]_i_241_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h5C)) 
    \result_d[31]_i_242 
       (.I0(\result_d[31]_i_139_n_0 ),
        .I1(\result_d[31]_i_492_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .O(\result_d[31]_i_242_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077737733)) 
    \result_d[31]_i_243 
       (.I0(\result_d[31]_i_493_n_0 ),
        .I1(\result_d[31]_i_151_n_0 ),
        .I2(\result_d[31]_i_477_n_0 ),
        .I3(\result_d[31]_i_216_n_0 ),
        .I4(\result_d[31]_i_494_n_0 ),
        .I5(\result_d[31]_i_495_n_0 ),
        .O(\result_d[31]_i_243_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[31]_i_244 
       (.I0(\result_d[31]_i_151_n_0 ),
        .I1(\result_d[31]_i_496_n_0 ),
        .O(\result_d[31]_i_244_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hD100)) 
    \result_d[31]_i_245 
       (.I0(\result_d[31]_i_497_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_498_n_0 ),
        .I3(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_245_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[31]_i_246 
       (.I0(\result_d[31]_i_151_n_0 ),
        .I1(\result_d[31]_i_499_n_0 ),
        .O(\result_d[31]_i_246_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \result_d[31]_i_247 
       (.I0(\result_d[31]_i_216_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_500_n_0 ),
        .I3(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_247_n_0 ));
  LUT6 #(
    .INIT(64'h00CC00C400C000C0)) 
    \result_d[31]_i_248 
       (.I0(\result_d[31]_i_501_n_0 ),
        .I1(\result_d[31]_i_151_n_0 ),
        .I2(\result_d[31]_i_502_n_0 ),
        .I3(\result_d[31]_i_216_n_0 ),
        .I4(\result_d[31]_i_503_n_0 ),
        .I5(\result_d[31]_i_303_n_0 ),
        .O(\result_d[31]_i_248_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_249 
       (.I0(\result_d[31]_i_363_n_0 ),
        .I1(\result_d[31]_i_253_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[31]_i_215_n_0 ),
        .I4(\result_d[31]_i_144_n_0 ),
        .I5(\result_d[31]_i_397_n_0 ),
        .O(\result_d[31]_i_249_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h01550105)) 
    \result_d[31]_i_25 
       (.I0(\result_d[31]_i_23_n_0 ),
        .I1(\result_d[31]_i_42_n_0 ),
        .I2(\result_d[31]_i_70_n_0 ),
        .I3(\result_d[23]_i_13_n_0 ),
        .I4(\result_d[31]_i_71_n_0 ),
        .O(\result_d[31]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_250 
       (.I0(\result_d[31]_i_316_n_0 ),
        .I1(\result_d[31]_i_317_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_318_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_333_n_0 ),
        .O(\result_d[31]_i_250_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_251 
       (.I0(\result_d[31]_i_334_n_0 ),
        .I1(\result_d[31]_i_335_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_336_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_337_n_0 ),
        .O(\result_d[31]_i_251_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \result_d[31]_i_252 
       (.I0(\result_d[31]_i_504_n_0 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[31]_i_427_n_0 ),
        .I3(\result_d[31]_i_144_n_0 ),
        .I4(\result_d[31]_i_361_n_0 ),
        .O(\result_d[31]_i_252_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_253 
       (.I0(\result_d[31]_i_324_n_0 ),
        .I1(\result_d[31]_i_325_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_326_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_307_n_0 ),
        .O(\result_d[31]_i_253_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_254 
       (.I0(\result_d[31]_i_308_n_0 ),
        .I1(\result_d[31]_i_309_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_310_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_315_n_0 ),
        .O(\result_d[31]_i_254_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_255 
       (.I0(\result_d[31]_i_397_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_363_n_0 ),
        .O(\result_d[31]_i_255_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_256 
       (.I0(\result_d[31]_i_376_n_0 ),
        .I1(\result_d[31]_i_377_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_378_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_379_n_0 ),
        .O(\result_d[31]_i_256_n_0 ));
  LUT6 #(
    .INIT(64'h505F3F3F505F3030)) 
    \result_d[31]_i_257 
       (.I0(\result_d[31]_i_380_n_0 ),
        .I1(\result_d[31]_i_381_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_444_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_446_n_0 ),
        .O(\result_d[31]_i_257_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \result_d[31]_i_258 
       (.I0(\result_d_reg[31]_i_224_n_15 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[31]_i_370_n_0 ),
        .I3(\result_d[31]_i_223_n_0 ),
        .I4(\result_d[31]_i_371_n_0 ),
        .O(\result_d[31]_i_258_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFC0C0A0AFCFCF)) 
    \result_d[31]_i_259 
       (.I0(\result_d[31]_i_372_n_0 ),
        .I1(\result_d[31]_i_373_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_374_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_375_n_0 ),
        .O(\result_d[31]_i_259_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_d[31]_i_26 
       (.I0(\result_d[31]_i_23_n_0 ),
        .I1(\result_d[31]_i_40_n_0 ),
        .O(\result_d[31]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0C0C0AFA0CFCF)) 
    \result_d[31]_i_260 
       (.I0(\result_d[31]_i_222_n_0 ),
        .I1(\result_d[31]_i_212_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[31]_i_214_n_0 ),
        .I4(\result_d[31]_i_213_n_0 ),
        .I5(\result_d[31]_i_436_n_0 ),
        .O(\result_d[31]_i_260_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result_d[31]_i_261 
       (.I0(\result_d[31]_i_251_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_504_n_0 ),
        .I3(\result_d[31]_i_213_n_0 ),
        .I4(\result_d[31]_i_427_n_0 ),
        .O(\result_d[31]_i_261_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_262 
       (.I0(\result_d[31]_i_254_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_250_n_0 ),
        .O(\result_d[31]_i_262_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_263 
       (.I0(\result_d[31]_i_505_n_0 ),
        .I1(\result_d[31]_i_506_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[31]_i_507_n_0 ),
        .I4(\result_d[31]_i_213_n_0 ),
        .I5(\result_d[31]_i_508_n_0 ),
        .O(\result_d[31]_i_263_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_264 
       (.I0(\result_d[31]_i_509_n_0 ),
        .I1(\result_d[31]_i_510_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[31]_i_511_n_0 ),
        .I4(\result_d[31]_i_213_n_0 ),
        .I5(\result_d[31]_i_512_n_0 ),
        .O(\result_d[31]_i_264_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_265 
       (.I0(\result_d[31]_i_513_n_0 ),
        .I1(\result_d[31]_i_514_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[31]_i_361_n_0 ),
        .I4(\result_d[31]_i_144_n_0 ),
        .I5(\result_d[31]_i_362_n_0 ),
        .O(\result_d[31]_i_265_n_0 ));
  LUT6 #(
    .INIT(64'h0404AE04FFFFFFFF)) 
    \result_d[31]_i_266 
       (.I0(\result_d[31]_i_57_n_0 ),
        .I1(\result_d[31]_i_276_n_0 ),
        .I2(\result_d[31]_i_93_n_0 ),
        .I3(\result_d[31]_i_86_n_0 ),
        .I4(\result_d[31]_i_515_n_0 ),
        .I5(\result_d[31]_i_68_n_0 ),
        .O(\result_d[31]_i_266_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_267 
       (.I0(\result_d[31]_i_152_n_0 ),
        .I1(\result_d[31]_i_153_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[31]_i_143_n_0 ),
        .I4(\result_d[31]_i_144_n_0 ),
        .I5(\result_d[31]_i_145_n_0 ),
        .O(\result_d[31]_i_267_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_268 
       (.I0(\result_d[31]_i_146_n_0 ),
        .I1(\result_d[31]_i_147_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[31]_i_257_n_0 ),
        .I4(\result_d[31]_i_144_n_0 ),
        .I5(\result_d[31]_i_359_n_0 ),
        .O(\result_d[31]_i_268_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_269 
       (.I0(\result_d[31]_i_388_n_0 ),
        .I1(\result_d[31]_i_516_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[31]_i_517_n_0 ),
        .I4(\result_d[31]_i_213_n_0 ),
        .I5(\result_d[31]_i_383_n_0 ),
        .O(\result_d[31]_i_269_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0C4C)) 
    \result_d[31]_i_27 
       (.I0(\result_d[31]_i_72_n_0 ),
        .I1(\result_d[31]_i_68_n_0 ),
        .I2(\result_d[31]_i_73_n_0 ),
        .I3(\result_d[31]_i_23_n_0 ),
        .O(\result_d[31]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_270 
       (.I0(\result_d[31]_i_394_n_0 ),
        .I1(\result_d[31]_i_385_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[31]_i_386_n_0 ),
        .I4(\result_d[31]_i_213_n_0 ),
        .I5(\result_d[31]_i_387_n_0 ),
        .O(\result_d[31]_i_270_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_271 
       (.I0(\result_d[31]_i_390_n_0 ),
        .I1(\result_d[31]_i_391_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[31]_i_392_n_0 ),
        .I4(\result_d[31]_i_213_n_0 ),
        .I5(\result_d[31]_i_393_n_0 ),
        .O(\result_d[31]_i_271_n_0 ));
  LUT6 #(
    .INIT(64'h0000000005440000)) 
    \result_d[31]_i_272 
       (.I0(\result_d[15]_i_37_n_0 ),
        .I1(\result_d[15]_i_34_n_0 ),
        .I2(\result_d[31]_i_518_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .I4(\result_d[15]_i_33_n_0 ),
        .I5(\result_d[31]_i_62_n_0 ),
        .O(\result_d[31]_i_272_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \result_d[31]_i_273 
       (.I0(\result_d[31]_i_147_n_0 ),
        .I1(\result_d[31]_i_143_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[31]_i_359_n_0 ),
        .I4(\result_d[31]_i_146_n_0 ),
        .I5(\result_d[31]_i_144_n_0 ),
        .O(\result_d[31]_i_273_n_0 ));
  LUT6 #(
    .INIT(64'h5353535300F00FFF)) 
    \result_d[31]_i_274 
       (.I0(\result_d[31]_i_153_n_0 ),
        .I1(\result_d[31]_i_341_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[31]_i_145_n_0 ),
        .I4(\result_d[31]_i_152_n_0 ),
        .I5(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_274_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00B8FFB8)) 
    \result_d[31]_i_275 
       (.I0(\result_d[31]_i_210_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_191_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .I4(\result_d[31]_i_207_n_0 ),
        .O(\result_d[31]_i_275_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \result_d[31]_i_276 
       (.I0(\result_d[31]_i_192_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_276_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF33553355)) 
    \result_d[31]_i_277 
       (.I0(\result_d[31]_i_209_n_0 ),
        .I1(\result_d[31]_i_208_n_0 ),
        .I2(\result_d[31]_i_205_n_0 ),
        .I3(\result_d[31]_i_91_n_0 ),
        .I4(\result_d[31]_i_206_n_0 ),
        .I5(\result_d[31]_i_57_n_0 ),
        .O(\result_d[31]_i_277_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \result_d[31]_i_278 
       (.I0(\result_d[31]_i_250_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_251_n_0 ),
        .I3(\result_d[31]_i_253_n_0 ),
        .I4(\result_d[31]_i_254_n_0 ),
        .I5(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_278_n_0 ));
  LUT5 #(
    .INIT(32'h470047FF)) 
    \result_d[31]_i_279 
       (.I0(\result_d[31]_i_437_n_0 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[31]_i_438_n_0 ),
        .I3(\result_d[31]_i_144_n_0 ),
        .I4(\result_d[31]_i_434_n_0 ),
        .O(\result_d[31]_i_279_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF2AAA)) 
    \result_d[31]_i_28 
       (.I0(\result_d[31]_i_68_n_0 ),
        .I1(\result_d[31]_i_74_n_0 ),
        .I2(\result_d[31]_i_75_n_0 ),
        .I3(\result_d[31]_i_76_n_0 ),
        .I4(\result_d[31]_i_20_n_0 ),
        .I5(\result_d[31]_i_77_n_0 ),
        .O(\result_d[31]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \result_d[31]_i_280 
       (.I0(\result_d[31]_i_433_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_430_n_0 ),
        .I3(\result_d[31]_i_435_n_0 ),
        .I4(\result_d[31]_i_432_n_0 ),
        .I5(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_280_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_281 
       (.I0(\result_d[7]_i_35_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[31]_i_398_n_0 ),
        .O(\result_d[31]_i_281_n_0 ));
  LUT5 #(
    .INIT(32'h88BB8B8B)) 
    \result_d[31]_i_282 
       (.I0(\result_d[7]_i_32_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[31]_i_208_n_0 ),
        .I3(\result_d[31]_i_206_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_282_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \result_d[31]_i_284 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_138_n_0 ),
        .I4(\result_d[31]_i_225_n_0 ),
        .O(\result_d[31]_i_284_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \result_d[31]_i_285 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_138_n_0 ),
        .I4(\result_d[31]_i_227_n_0 ),
        .O(\result_d[31]_i_285_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \result_d[31]_i_286 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_138_n_0 ),
        .I4(\result_d[31]_i_226_n_0 ),
        .O(\result_d[31]_i_286_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \result_d[31]_i_287 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_138_n_0 ),
        .I4(\result_d[31]_i_228_n_0 ),
        .O(\result_d[31]_i_287_n_0 ));
  LUT5 #(
    .INIT(32'h96699696)) 
    \result_d[31]_i_288 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_479_n_0 ),
        .I4(\result_d[31]_i_138_n_0 ),
        .O(\result_d[31]_i_288_n_0 ));
  LUT5 #(
    .INIT(32'h96699696)) 
    \result_d[31]_i_289 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_481_n_0 ),
        .I4(\result_d[31]_i_138_n_0 ),
        .O(\result_d[31]_i_289_n_0 ));
  LUT5 #(
    .INIT(32'h0000220F)) 
    \result_d[31]_i_29 
       (.I0(\result_d[31]_i_78_n_0 ),
        .I1(\result_d[31]_i_79_n_0 ),
        .I2(\result_d[31]_i_80_n_0 ),
        .I3(\result_d[31]_i_81_n_0 ),
        .I4(\result_d[31]_i_82_n_0 ),
        .O(\result_d[31]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h96699696)) 
    \result_d[31]_i_290 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_231_n_0 ),
        .I4(\result_d[31]_i_138_n_0 ),
        .O(\result_d[31]_i_290_n_0 ));
  LUT5 #(
    .INIT(32'h96699696)) 
    \result_d[31]_i_291 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_470_n_0 ),
        .I4(\result_d[31]_i_138_n_0 ),
        .O(\result_d[31]_i_291_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \result_d[31]_i_292 
       (.I0(\result_d[31]_i_216_n_0 ),
        .I1(\result_d[31]_i_463_n_0 ),
        .I2(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_292_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDFDDFDFDF)) 
    \result_d[31]_i_293 
       (.I0(\result_d[31]_i_216_n_0 ),
        .I1(\result_d[31]_i_467_n_0 ),
        .I2(exponent_dif[4]),
        .I3(exponent_dif[2]),
        .I4(exponent_dif[3]),
        .I5(\result_d[31]_i_237_n_0 ),
        .O(\result_d[31]_i_293_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \result_d[31]_i_294 
       (.I0(\result_d[31]_i_216_n_0 ),
        .I1(\result_d[31]_i_465_n_0 ),
        .I2(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_294_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \result_d[31]_i_295 
       (.I0(\result_d[31]_i_216_n_0 ),
        .I1(\result_d[31]_i_469_n_0 ),
        .I2(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_295_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_d[31]_i_296 
       (.I0(\result_d[31]_i_151_n_0 ),
        .I1(\result_d[31]_i_528_n_0 ),
        .O(\result_d[31]_i_296_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFFC5)) 
    \result_d[31]_i_297 
       (.I0(\result_d[31]_i_529_n_0 ),
        .I1(\result_d[31]_i_530_n_0 ),
        .I2(\result_d[31]_i_216_n_0 ),
        .I3(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_297_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \result_d[31]_i_298 
       (.I0(\result_d[31]_i_305_n_0 ),
        .I1(\result_d[31]_i_476_n_0 ),
        .I2(\result_d[31]_i_216_n_0 ),
        .O(\result_d[31]_i_298_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFFFFF0EE)) 
    \result_d[31]_i_299 
       (.I0(\result_d[31]_i_303_n_0 ),
        .I1(\result_d[31]_i_306_n_0 ),
        .I2(\result_d[31]_i_531_n_0 ),
        .I3(\result_d[31]_i_216_n_0 ),
        .I4(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_299_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \result_d[31]_i_3 
       (.I0(\result_d[31]_i_9_n_0 ),
        .I1(flag_overflow_result_d_i_3_n_0),
        .O(\result_d[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF000FFFFEEEEEEEE)) 
    \result_d[31]_i_30 
       (.I0(\result_d[31]_i_83_n_0 ),
        .I1(\result_d[31]_i_84_n_0 ),
        .I2(\result_d[31]_i_85_n_0 ),
        .I3(\result_d[31]_i_86_n_0 ),
        .I4(\result_d[31]_i_87_n_0 ),
        .I5(\result_d[31]_i_59_n_0 ),
        .O(\result_d[31]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hBFEA)) 
    \result_d[31]_i_300 
       (.I0(\result_d[31]_i_237_n_0 ),
        .I1(exponent_dif[3]),
        .I2(exponent_dif[2]),
        .I3(exponent_dif[4]),
        .O(\result_d[31]_i_300_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \result_d[31]_i_301 
       (.I0(\result_d[31]_i_237_n_0 ),
        .I1(\result_d[31]_i_236_n_0 ),
        .I2(exponent_dif[1]),
        .O(\result_d[31]_i_301_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \result_d[31]_i_302 
       (.I0(\result_d[31]_i_237_n_0 ),
        .I1(\result_d[31]_i_236_n_0 ),
        .I2(exponent_dif[0]),
        .O(\result_d[31]_i_302_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \result_d[31]_i_303 
       (.I0(\result_d[31]_i_237_n_0 ),
        .I1(\result_d[31]_i_236_n_0 ),
        .I2(exponent_dif[2]),
        .O(\result_d[31]_i_303_n_0 ));
  LUT6 #(
    .INIT(64'h0010111000000000)) 
    \result_d[31]_i_304 
       (.I0(\result_d[31]_i_303_n_0 ),
        .I1(\result_d[31]_i_301_n_0 ),
        .I2(\operand_c_d_reg_n_0_[22] ),
        .I3(\result_d[31]_i_302_n_0 ),
        .I4(\result_d[23]_i_21_n_0 ),
        .I5(\result_d[31]_i_216_n_0 ),
        .O(\result_d[31]_i_304_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E233E2)) 
    \result_d[31]_i_305 
       (.I0(\operand_c_d_reg_n_0_[21] ),
        .I1(\result_d[31]_i_302_n_0 ),
        .I2(\operand_c_d_reg_n_0_[22] ),
        .I3(\result_d[31]_i_301_n_0 ),
        .I4(\result_d[23]_i_21_n_0 ),
        .I5(\result_d[31]_i_303_n_0 ),
        .O(\result_d[31]_i_305_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3030A0AF3F3F)) 
    \result_d[31]_i_306 
       (.I0(\result_d[23]_i_21_n_0 ),
        .I1(\operand_c_d_reg_n_0_[22] ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[21] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[20] ),
        .O(\result_d[31]_i_306_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_307 
       (.I0(\result_d_reg[31]_i_532_n_12 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[27]),
        .O(\result_d[31]_i_307_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_308 
       (.I0(\result_d_reg[31]_i_532_n_11 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[28]),
        .O(\result_d[31]_i_308_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_309 
       (.I0(\result_d_reg[31]_i_532_n_10 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[29]),
        .O(\result_d[31]_i_309_n_0 ));
  LUT6 #(
    .INIT(64'h000C000C0000000D)) 
    \result_d[31]_i_31 
       (.I0(\result_d[31]_i_88_n_0 ),
        .I1(\result_d[31]_i_89_n_0 ),
        .I2(\result_d[31]_i_29_n_0 ),
        .I3(\result_d[31]_i_23_n_0 ),
        .I4(\result_d[31]_i_42_n_0 ),
        .I5(\result_d[31]_i_40_n_0 ),
        .O(\result_d[31]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_310 
       (.I0(\result_d_reg[31]_i_532_n_9 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[30]),
        .O(\result_d[31]_i_310_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAFFFFEFEAEFEA)) 
    \result_d[31]_i_311 
       (.I0(\result_d[23]_i_71_n_0 ),
        .I1(\result_d_reg[31]_i_283_n_13 ),
        .I2(\result_d[31]_i_443_n_0 ),
        .I3(sum_negtive[50]),
        .I4(\result_d[31]_i_413_n_0 ),
        .I5(\result_d[31]_i_409_n_0 ),
        .O(\result_d[31]_i_311_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFEFEFEEE)) 
    \result_d[31]_i_312 
       (.I0(\result_d[31]_i_447_n_0 ),
        .I1(\result_d[31]_i_535_n_0 ),
        .I2(\result_d[31]_i_536_n_0 ),
        .I3(\result_d[31]_i_537_n_0 ),
        .I4(\result_d[31]_i_538_n_0 ),
        .I5(\result_d[31]_i_449_n_0 ),
        .O(\result_d[31]_i_312_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFBBBFBBAAAA)) 
    \result_d[31]_i_313 
       (.I0(\result_d[31]_i_82_n_0 ),
        .I1(shift_width_norm35_in),
        .I2(\result_d[31]_i_195_n_0 ),
        .I3(\result_d[31]_i_194_n_0 ),
        .I4(exponent_dif[2]),
        .I5(exponent_dif[1]),
        .O(\result_d[31]_i_313_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[31]_i_314 
       (.I0(\result_d[31]_i_82_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .O(\result_d[31]_i_314_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_315 
       (.I0(\result_d_reg[31]_i_532_n_8 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[31]),
        .O(\result_d[31]_i_315_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_316 
       (.I0(\result_d_reg[31]_i_539_n_15 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[32]),
        .O(\result_d[31]_i_316_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_317 
       (.I0(\result_d_reg[31]_i_539_n_14 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[33]),
        .O(\result_d[31]_i_317_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_318 
       (.I0(\result_d_reg[31]_i_539_n_13 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[34]),
        .O(\result_d[31]_i_318_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_319 
       (.I0(\result_d_reg[31]_i_541_n_12 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[19]),
        .O(\result_d[31]_i_319_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h08000888)) 
    \result_d[31]_i_32 
       (.I0(\result_d[31]_i_68_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[31]_i_90_n_0 ),
        .I3(\result_d[31]_i_91_n_0 ),
        .I4(\result_d[31]_i_92_n_0 ),
        .O(\result_d[31]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_320 
       (.I0(\result_d_reg[31]_i_541_n_11 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[20]),
        .O(\result_d[31]_i_320_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_321 
       (.I0(\result_d_reg[31]_i_541_n_10 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[21]),
        .O(\result_d[31]_i_321_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_322 
       (.I0(\result_d_reg[31]_i_541_n_9 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[22]),
        .O(\result_d[31]_i_322_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_323 
       (.I0(\result_d_reg[31]_i_541_n_8 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[23]),
        .O(\result_d[31]_i_323_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_324 
       (.I0(\result_d_reg[31]_i_532_n_15 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[24]),
        .O(\result_d[31]_i_324_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_325 
       (.I0(\result_d_reg[31]_i_532_n_14 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[25]),
        .O(\result_d[31]_i_325_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_326 
       (.I0(\result_d_reg[31]_i_532_n_13 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[26]),
        .O(\result_d[31]_i_326_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \result_d[31]_i_327 
       (.I0(\result_d[31]_i_543_n_0 ),
        .I1(\result_d[31]_i_544_n_0 ),
        .I2(\result_d[31]_i_395_n_0 ),
        .I3(\result_d[31]_i_396_n_0 ),
        .I4(\result_d[31]_i_410_n_0 ),
        .I5(\result_d[31]_i_413_n_0 ),
        .O(\result_d[31]_i_327_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \result_d[31]_i_328 
       (.I0(\result_d[31]_i_335_n_0 ),
        .I1(\result_d[31]_i_336_n_0 ),
        .I2(\result_d[31]_i_545_n_0 ),
        .I3(\result_d[31]_i_546_n_0 ),
        .I4(\result_d[31]_i_337_n_0 ),
        .I5(\result_d[31]_i_338_n_0 ),
        .O(\result_d[31]_i_328_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \result_d[31]_i_329 
       (.I0(\result_d[31]_i_372_n_0 ),
        .I1(\result_d[31]_i_373_n_0 ),
        .I2(\result_d[31]_i_547_n_0 ),
        .I3(\result_d[31]_i_548_n_0 ),
        .I4(\result_d[31]_i_549_n_0 ),
        .O(\result_d[31]_i_329_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_d[31]_i_33 
       (.I0(\result_d[31]_i_68_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[31]_i_93_n_0 ),
        .O(\result_d[31]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \result_d[31]_i_330 
       (.I0(\result_d[31]_i_550_n_0 ),
        .I1(\result_d[31]_i_444_n_0 ),
        .I2(\result_d[31]_i_446_n_0 ),
        .I3(\result_d[31]_i_551_n_0 ),
        .I4(\result_d[31]_i_552_n_0 ),
        .I5(\result_d[31]_i_553_n_0 ),
        .O(\result_d[31]_i_330_n_0 ));
  LUT6 #(
    .INIT(64'h0000101000051015)) 
    \result_d[31]_i_331 
       (.I0(\result_d_reg[31]_i_224_n_15 ),
        .I1(\result_d_reg[31]_i_224_n_13 ),
        .I2(\result_d[31]_i_443_n_0 ),
        .I3(sum_negtive[2]),
        .I4(\result_d_reg[31]_i_224_n_14 ),
        .I5(sum_negtive[1]),
        .O(\result_d[31]_i_331_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result_d[31]_i_332 
       (.I0(\result_d[31]_i_402_n_0 ),
        .I1(\result_d[31]_i_401_n_0 ),
        .O(\result_d[31]_i_332_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_333 
       (.I0(\result_d_reg[31]_i_539_n_12 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[35]),
        .O(\result_d[31]_i_333_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_334 
       (.I0(\result_d_reg[31]_i_539_n_11 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[36]),
        .O(\result_d[31]_i_334_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_335 
       (.I0(\result_d_reg[31]_i_539_n_10 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[37]),
        .O(\result_d[31]_i_335_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_336 
       (.I0(\result_d_reg[31]_i_539_n_9 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[38]),
        .O(\result_d[31]_i_336_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_337 
       (.I0(\result_d_reg[31]_i_539_n_8 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[39]),
        .O(\result_d[31]_i_337_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_338 
       (.I0(\result_d_reg[31]_i_519_n_15 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[40]),
        .O(\result_d[31]_i_338_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_339 
       (.I0(\result_d_reg[31]_i_519_n_14 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[41]),
        .O(\result_d[31]_i_339_n_0 ));
  LUT5 #(
    .INIT(32'hCF4FFFFF)) 
    \result_d[31]_i_34 
       (.I0(\result_d[31]_i_91_n_0 ),
        .I1(\result_d[31]_i_94_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .I3(\result_d[31]_i_95_n_0 ),
        .I4(\result_d[31]_i_68_n_0 ),
        .O(\result_d[31]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_340 
       (.I0(\result_d_reg[31]_i_519_n_13 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[42]),
        .O(\result_d[31]_i_340_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_341 
       (.I0(\result_d[31]_i_395_n_0 ),
        .I1(\result_d[31]_i_396_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_543_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_544_n_0 ),
        .O(\result_d[31]_i_341_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_d[31]_i_342 
       (.I0(sum_negtive[47]),
        .I1(\result_d_reg[31]_i_519_n_8 ),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(sum_negtive[48]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_283_n_15 ),
        .O(\result_d[31]_i_342_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_d[31]_i_343 
       (.I0(sum_negtive[50]),
        .I1(\result_d_reg[31]_i_283_n_13 ),
        .I2(\result_d[31]_i_441_n_0 ),
        .I3(sum_negtive[49]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_283_n_14 ),
        .O(\result_d[31]_i_343_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \result_d[31]_i_344 
       (.I0(exponent_product0[6]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(\operand_c_d_reg_n_0_[29] ),
        .O(\result_d[31]_i_344_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \result_d[31]_i_345 
       (.I0(exponent_product0[5]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(\operand_c_d_reg_n_0_[28] ),
        .O(\result_d[31]_i_345_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \result_d[31]_i_346 
       (.I0(exponent_product0[4]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(\operand_c_d_reg_n_0_[27] ),
        .O(\result_d[31]_i_346_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \result_d[31]_i_347 
       (.I0(exponent_product0[3]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(\operand_c_d_reg_n_0_[26] ),
        .O(\result_d[31]_i_347_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \result_d[31]_i_348 
       (.I0(exponent_product0[2]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(\operand_c_d_reg_n_0_[25] ),
        .O(\result_d[31]_i_348_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \result_d[31]_i_349 
       (.I0(exponent_product0[1]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(\operand_c_d_reg_n_0_[24] ),
        .O(\result_d[31]_i_349_n_0 ));
  LUT6 #(
    .INIT(64'h0D0F0D0FFFFF0D0F)) 
    \result_d[31]_i_35 
       (.I0(\result_d[31]_i_96_n_0 ),
        .I1(\result_d[31]_i_97_n_0 ),
        .I2(\result_d[31]_i_98_n_0 ),
        .I3(\result_d[31]_i_99_n_0 ),
        .I4(\result_d[31]_i_100_n_0 ),
        .I5(\result_d[31]_i_101_n_0 ),
        .O(\result_d[31]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h11F1)) 
    \result_d[31]_i_350 
       (.I0(exponent_product0[0]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(\result_d[23]_i_21_n_0 ),
        .I3(\result_d[30]_i_6_n_0 ),
        .O(\result_d[31]_i_350_n_0 ));
  LUT5 #(
    .INIT(32'h33B4CC4B)) 
    \result_d[31]_i_351 
       (.I0(exponent_product0[6]),
        .I1(\operand_c_d_reg_n_0_[29] ),
        .I2(exponent_product0[7]),
        .I3(\result_d[23]_i_34_n_0 ),
        .I4(\operand_c_d_reg_n_0_[30] ),
        .O(\result_d[31]_i_351_n_0 ));
  LUT5 #(
    .INIT(32'hCCB4334B)) 
    \result_d[31]_i_352 
       (.I0(exponent_product0[5]),
        .I1(\operand_c_d_reg_n_0_[28] ),
        .I2(exponent_product0[6]),
        .I3(\result_d[23]_i_34_n_0 ),
        .I4(\operand_c_d_reg_n_0_[29] ),
        .O(\result_d[31]_i_352_n_0 ));
  LUT5 #(
    .INIT(32'hCCB4334B)) 
    \result_d[31]_i_353 
       (.I0(exponent_product0[4]),
        .I1(\operand_c_d_reg_n_0_[27] ),
        .I2(exponent_product0[5]),
        .I3(\result_d[23]_i_34_n_0 ),
        .I4(\operand_c_d_reg_n_0_[28] ),
        .O(\result_d[31]_i_353_n_0 ));
  LUT5 #(
    .INIT(32'hCCB4334B)) 
    \result_d[31]_i_354 
       (.I0(exponent_product0[3]),
        .I1(\operand_c_d_reg_n_0_[26] ),
        .I2(exponent_product0[4]),
        .I3(\result_d[23]_i_34_n_0 ),
        .I4(\operand_c_d_reg_n_0_[27] ),
        .O(\result_d[31]_i_354_n_0 ));
  LUT5 #(
    .INIT(32'hCCB4334B)) 
    \result_d[31]_i_355 
       (.I0(exponent_product0[2]),
        .I1(\operand_c_d_reg_n_0_[25] ),
        .I2(exponent_product0[3]),
        .I3(\result_d[23]_i_34_n_0 ),
        .I4(\operand_c_d_reg_n_0_[26] ),
        .O(\result_d[31]_i_355_n_0 ));
  LUT5 #(
    .INIT(32'h00D2FF2D)) 
    \result_d[31]_i_356 
       (.I0(\operand_c_d_reg_n_0_[24] ),
        .I1(exponent_product0[1]),
        .I2(exponent_product0[2]),
        .I3(\result_d[23]_i_34_n_0 ),
        .I4(\operand_c_d_reg_n_0_[25] ),
        .O(\result_d[31]_i_356_n_0 ));
  LUT6 #(
    .INIT(64'hEDED03ED1212FC12)) 
    \result_d[31]_i_357 
       (.I0(exponent_product0[0]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(exponent_product0[1]),
        .I3(\result_d[23]_i_21_n_0 ),
        .I4(\result_d[30]_i_6_n_0 ),
        .I5(\operand_c_d_reg_n_0_[24] ),
        .O(\result_d[31]_i_357_n_0 ));
  LUT5 #(
    .INIT(32'h11E1EE1E)) 
    \result_d[31]_i_358 
       (.I0(exponent_product0[0]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(\result_d[23]_i_21_n_0 ),
        .I3(\result_d[30]_i_6_n_0 ),
        .I4(\operand_c_d_reg_n_0_[23] ),
        .O(\result_d[31]_i_358_n_0 ));
  LUT6 #(
    .INIT(64'h505FC0C0505FCFCF)) 
    \result_d[31]_i_359 
       (.I0(\result_d[31]_i_555_n_0 ),
        .I1(\result_d[31]_i_445_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_552_n_0 ),
        .I4(\result_d[31]_i_441_n_0 ),
        .I5(\result_d[31]_i_553_n_0 ),
        .O(\result_d[31]_i_359_n_0 ));
  LUT6 #(
    .INIT(64'h1000101000001010)) 
    \result_d[31]_i_36 
       (.I0(\result_d[31]_i_102_n_0 ),
        .I1(\result_d[31]_i_103_n_0 ),
        .I2(\result_d[31]_i_34_n_0 ),
        .I3(\result_d[31]_i_104_n_0 ),
        .I4(\result_d[31]_i_68_n_0 ),
        .I5(\result_d[31]_i_72_n_0 ),
        .O(\result_d[31]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \result_d[31]_i_360 
       (.I0(\result_d[31]_i_144_n_0 ),
        .I1(\result_d[31]_i_371_n_0 ),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(\result_d[31]_i_370_n_0 ),
        .I4(\result_d[31]_i_213_n_0 ),
        .I5(\result_d_reg[31]_i_224_n_15 ),
        .O(\result_d[31]_i_360_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_361 
       (.I0(\result_d[31]_i_396_n_0 ),
        .I1(\result_d[31]_i_543_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_544_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_556_n_0 ),
        .O(\result_d[31]_i_361_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_362 
       (.I0(\result_d[31]_i_557_n_0 ),
        .I1(\result_d[23]_i_71_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_452_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_558_n_0 ),
        .O(\result_d[31]_i_362_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_363 
       (.I0(\result_d[31]_i_320_n_0 ),
        .I1(\result_d[31]_i_321_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_322_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_323_n_0 ),
        .O(\result_d[31]_i_363_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \result_d[31]_i_364 
       (.I0(\result_d[31]_i_321_n_0 ),
        .I1(\result_d[31]_i_322_n_0 ),
        .I2(\result_d[31]_i_323_n_0 ),
        .I3(\result_d[31]_i_223_n_0 ),
        .I4(\result_d[31]_i_324_n_0 ),
        .I5(\result_d[31]_i_213_n_0 ),
        .O(\result_d[31]_i_364_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \result_d[31]_i_365 
       (.I0(\result_d[31]_i_325_n_0 ),
        .I1(\result_d[31]_i_326_n_0 ),
        .I2(\result_d[31]_i_307_n_0 ),
        .I3(\result_d[31]_i_223_n_0 ),
        .I4(\result_d[31]_i_308_n_0 ),
        .I5(\result_d[31]_i_213_n_0 ),
        .O(\result_d[31]_i_365_n_0 ));
  LUT6 #(
    .INIT(64'h303F5050303F5F5F)) 
    \result_d[31]_i_366 
       (.I0(sum_negtive[13]),
        .I1(\result_d_reg[31]_i_440_n_10 ),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(\result_d_reg[31]_i_440_n_9 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[14]),
        .O(\result_d[31]_i_366_n_0 ));
  LUT6 #(
    .INIT(64'h303F5050303F5F5F)) 
    \result_d[31]_i_367 
       (.I0(sum_negtive[16]),
        .I1(\result_d_reg[31]_i_541_n_15 ),
        .I2(\result_d[31]_i_441_n_0 ),
        .I3(\result_d_reg[31]_i_440_n_8 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[15]),
        .O(\result_d[31]_i_367_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_d[31]_i_368 
       (.I0(sum_negtive[18]),
        .I1(\result_d_reg[31]_i_541_n_13 ),
        .I2(\result_d[31]_i_441_n_0 ),
        .I3(sum_negtive[17]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_541_n_14 ),
        .O(\result_d[31]_i_368_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_d[31]_i_369 
       (.I0(sum_negtive[19]),
        .I1(\result_d_reg[31]_i_541_n_12 ),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(sum_negtive[20]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_541_n_11 ),
        .O(\result_d[31]_i_369_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF0F4C40)) 
    \result_d[31]_i_37 
       (.I0(\result_d[31]_i_105_n_0 ),
        .I1(\result_d[31]_i_106_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .I3(\result_d[31]_i_107_n_0 ),
        .I4(\result_d[31]_i_59_n_0 ),
        .I5(\result_d[31]_i_29_n_0 ),
        .O(\result_d[31]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_370 
       (.I0(\result_d_reg[31]_i_224_n_14 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[1]),
        .O(\result_d[31]_i_370_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_371 
       (.I0(\result_d_reg[31]_i_224_n_13 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[2]),
        .O(\result_d[31]_i_371_n_0 ));
  LUT6 #(
    .INIT(64'h4554544575575775)) 
    \result_d[31]_i_372 
       (.I0(\result_d_reg[31]_i_224_n_12 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[3]),
        .O(\result_d[31]_i_372_n_0 ));
  LUT6 #(
    .INIT(64'h4554544575575775)) 
    \result_d[31]_i_373 
       (.I0(\result_d_reg[31]_i_224_n_11 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[4]),
        .O(\result_d[31]_i_373_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_374 
       (.I0(\result_d_reg[31]_i_224_n_10 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[5]),
        .O(\result_d[31]_i_374_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_375 
       (.I0(\result_d_reg[31]_i_224_n_9 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[6]),
        .O(\result_d[31]_i_375_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_376 
       (.I0(\result_d_reg[31]_i_224_n_8 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[7]),
        .O(\result_d[31]_i_376_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_377 
       (.I0(\result_d_reg[31]_i_440_n_15 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[8]),
        .O(\result_d[31]_i_377_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_378 
       (.I0(\result_d_reg[31]_i_440_n_14 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[9]),
        .O(\result_d[31]_i_378_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_379 
       (.I0(\result_d_reg[31]_i_440_n_13 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[10]),
        .O(\result_d[31]_i_379_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    \result_d[31]_i_38 
       (.I0(\result_d[31]_i_68_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[31]_i_108_n_0 ),
        .I3(\result_d[31]_i_102_n_0 ),
        .O(\result_d[31]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_380 
       (.I0(\result_d_reg[31]_i_440_n_12 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[11]),
        .O(\result_d[31]_i_380_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_381 
       (.I0(\result_d_reg[31]_i_440_n_11 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[12]),
        .O(\result_d[31]_i_381_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_382 
       (.I0(\result_d[31]_i_559_n_0 ),
        .I1(\result_d[31]_i_560_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_561_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_562_n_0 ),
        .O(\result_d[31]_i_382_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_d[31]_i_383 
       (.I0(sum_negtive[73]),
        .I1(\result_d_reg[31]_i_18_n_14 ),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(sum_negtive[74]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_18_n_13 ),
        .O(\result_d[31]_i_383_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_384 
       (.I0(\result_d_reg[31]_i_18_n_12 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[75]),
        .O(\result_d[31]_i_384_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_d[31]_i_385 
       (.I0(sum_negtive[61]),
        .I1(\result_d_reg[31]_i_129_n_10 ),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(sum_negtive[62]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_129_n_9 ),
        .O(\result_d[31]_i_385_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_d[31]_i_386 
       (.I0(sum_negtive[63]),
        .I1(\result_d_reg[31]_i_129_n_8 ),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(sum_negtive[64]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_51_n_15 ),
        .O(\result_d[31]_i_386_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_d[31]_i_387 
       (.I0(sum_negtive[65]),
        .I1(\result_d_reg[31]_i_51_n_14 ),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(sum_negtive[66]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_51_n_13 ),
        .O(\result_d[31]_i_387_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_d[31]_i_388 
       (.I0(sum_negtive[67]),
        .I1(\result_d_reg[31]_i_51_n_12 ),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(sum_negtive[68]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_51_n_11 ),
        .O(\result_d[31]_i_388_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_389 
       (.I0(\result_d[31]_i_543_n_0 ),
        .I1(\result_d[31]_i_544_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_556_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_557_n_0 ),
        .O(\result_d[31]_i_389_n_0 ));
  LUT6 #(
    .INIT(64'h70F0F0F070707070)) 
    \result_d[31]_i_39 
       (.I0(\result_d[31]_i_60_n_0 ),
        .I1(\result_d[31]_i_109_n_0 ),
        .I2(\result_d[31]_i_68_n_0 ),
        .I3(\result_d[31]_i_85_n_0 ),
        .I4(\result_d[31]_i_86_n_0 ),
        .I5(\result_d[31]_i_87_n_0 ),
        .O(\result_d[31]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_d[31]_i_390 
       (.I0(sum_negtive[51]),
        .I1(\result_d_reg[31]_i_283_n_12 ),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(sum_negtive[52]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_283_n_11 ),
        .O(\result_d[31]_i_390_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_d[31]_i_391 
       (.I0(sum_negtive[53]),
        .I1(\result_d_reg[31]_i_283_n_10 ),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(sum_negtive[54]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_283_n_9 ),
        .O(\result_d[31]_i_391_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_d[31]_i_392 
       (.I0(sum_negtive[55]),
        .I1(\result_d_reg[31]_i_283_n_8 ),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(sum_negtive[56]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_129_n_15 ),
        .O(\result_d[31]_i_392_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_d[31]_i_393 
       (.I0(sum_negtive[57]),
        .I1(\result_d_reg[31]_i_129_n_14 ),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(sum_negtive[58]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_129_n_13 ),
        .O(\result_d[31]_i_393_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_d[31]_i_394 
       (.I0(sum_negtive[59]),
        .I1(\result_d_reg[31]_i_129_n_12 ),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(sum_negtive[60]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_129_n_11 ),
        .O(\result_d[31]_i_394_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_395 
       (.I0(\result_d_reg[31]_i_519_n_12 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[43]),
        .O(\result_d[31]_i_395_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_396 
       (.I0(\result_d_reg[31]_i_519_n_11 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[44]),
        .O(\result_d[31]_i_396_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_397 
       (.I0(\result_d[31]_i_555_n_0 ),
        .I1(\result_d[31]_i_553_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_552_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_319_n_0 ),
        .O(\result_d[31]_i_397_n_0 ));
  LUT6 #(
    .INIT(64'h05F505F50303F3F3)) 
    \result_d[31]_i_398 
       (.I0(\result_d[31]_i_256_n_0 ),
        .I1(\result_d[31]_i_257_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[31]_i_359_n_0 ),
        .I4(\result_d[31]_i_146_n_0 ),
        .I5(\result_d[31]_i_144_n_0 ),
        .O(\result_d[31]_i_398_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABABFFFFFBABF)) 
    \result_d[31]_i_399 
       (.I0(\result_d[31]_i_213_n_0 ),
        .I1(\result_d_reg[31]_i_224_n_14 ),
        .I2(\result_d[31]_i_443_n_0 ),
        .I3(sum_negtive[1]),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d_reg[31]_i_224_n_15 ),
        .O(\result_d[31]_i_399_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \result_d[31]_i_4 
       (.I0(\result_d[31]_i_10_n_0 ),
        .I1(\result_d[31]_i_11_n_0 ),
        .I2(\result_d[31]_i_12_n_0 ),
        .I3(\result_d[31]_i_13_n_0 ),
        .I4(\result_d[31]_i_14_n_0 ),
        .I5(flag_overflow_result_d_i_3_n_0),
        .O(\result_d[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30773044)) 
    \result_d[31]_i_40 
       (.I0(\result_d[31]_i_110_n_0 ),
        .I1(\result_d[31]_i_29_n_0 ),
        .I2(\result_d[31]_i_111_n_0 ),
        .I3(\result_d[31]_i_59_n_0 ),
        .I4(\result_d[31]_i_112_n_0 ),
        .O(\result_d[31]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3F3FA0AF3030)) 
    \result_d[31]_i_400 
       (.I0(\result_d[31]_i_372_n_0 ),
        .I1(\result_d[31]_i_371_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_374_n_0 ),
        .I4(\result_d[31]_i_441_n_0 ),
        .I5(\result_d[31]_i_373_n_0 ),
        .O(\result_d[31]_i_400_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \result_d[31]_i_401 
       (.I0(\result_d[31]_i_566_n_0 ),
        .I1(\result_d[31]_i_307_n_0 ),
        .I2(\result_d[31]_i_308_n_0 ),
        .I3(\result_d[31]_i_317_n_0 ),
        .I4(\result_d[31]_i_318_n_0 ),
        .I5(\result_d[31]_i_567_n_0 ),
        .O(\result_d[31]_i_401_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \result_d[31]_i_402 
       (.I0(\result_d[31]_i_321_n_0 ),
        .I1(\result_d[31]_i_322_n_0 ),
        .I2(\result_d[31]_i_319_n_0 ),
        .I3(\result_d[31]_i_320_n_0 ),
        .I4(\result_d[31]_i_568_n_0 ),
        .I5(\result_d[31]_i_537_n_0 ),
        .O(\result_d[31]_i_402_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFEFFFFAEFEA)) 
    \result_d[31]_i_403 
       (.I0(\result_d[31]_i_413_n_0 ),
        .I1(\result_d_reg[31]_i_283_n_14 ),
        .I2(\result_d[31]_i_443_n_0 ),
        .I3(sum_negtive[49]),
        .I4(\result_d_reg[31]_i_283_n_13 ),
        .I5(sum_negtive[50]),
        .O(\result_d[31]_i_403_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \result_d[31]_i_404 
       (.I0(\result_d_reg[31]_i_519_n_15 ),
        .I1(\result_d[31]_i_443_n_0 ),
        .I2(sum_negtive[40]),
        .I3(\result_d_reg[31]_i_539_n_8 ),
        .I4(sum_negtive[39]),
        .I5(\result_d[31]_i_546_n_0 ),
        .O(\result_d[31]_i_404_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \result_d[31]_i_405 
       (.I0(\result_d_reg[31]_i_539_n_15 ),
        .I1(\result_d[31]_i_443_n_0 ),
        .I2(sum_negtive[32]),
        .I3(\result_d_reg[31]_i_532_n_8 ),
        .I4(sum_negtive[31]),
        .I5(\result_d[31]_i_569_n_0 ),
        .O(\result_d[31]_i_405_n_0 ));
  LUT6 #(
    .INIT(64'h88A888A8A8A888A8)) 
    \result_d[31]_i_406 
       (.I0(\result_d[31]_i_570_n_0 ),
        .I1(\result_d[31]_i_571_n_0 ),
        .I2(\result_d[31]_i_572_n_0 ),
        .I3(\result_d[31]_i_573_n_0 ),
        .I4(\result_d[31]_i_574_n_0 ),
        .I5(\result_d[31]_i_575_n_0 ),
        .O(\result_d[31]_i_406_n_0 ));
  LUT6 #(
    .INIT(64'h00002020000A202A)) 
    \result_d[31]_i_407 
       (.I0(\result_d[31]_i_545_n_0 ),
        .I1(\result_d_reg[31]_i_539_n_9 ),
        .I2(\result_d[31]_i_443_n_0 ),
        .I3(sum_negtive[38]),
        .I4(\result_d_reg[31]_i_539_n_10 ),
        .I5(sum_negtive[37]),
        .O(\result_d[31]_i_407_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \result_d[31]_i_408 
       (.I0(\result_d_reg[31]_i_519_n_11 ),
        .I1(\result_d[31]_i_443_n_0 ),
        .I2(sum_negtive[44]),
        .I3(\result_d_reg[31]_i_519_n_12 ),
        .I4(sum_negtive[43]),
        .I5(\result_d[31]_i_409_n_0 ),
        .O(\result_d[31]_i_408_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[31]_i_409 
       (.I0(sum_negtive[45]),
        .I1(\result_d_reg[31]_i_519_n_10 ),
        .I2(sum_negtive[46]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_519_n_9 ),
        .O(\result_d[31]_i_409_n_0 ));
  LUT6 #(
    .INIT(64'h0000000054545450)) 
    \result_d[31]_i_41 
       (.I0(\result_d[31]_i_113_n_0 ),
        .I1(\result_d[31]_i_114_n_0 ),
        .I2(\result_d[31]_i_40_n_0 ),
        .I3(\result_d[31]_i_23_n_0 ),
        .I4(\result_d[31]_i_115_n_0 ),
        .I5(\result_d[31]_i_27_n_0 ),
        .O(\result_d[31]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[31]_i_410 
       (.I0(sum_negtive[50]),
        .I1(\result_d_reg[31]_i_283_n_13 ),
        .I2(sum_negtive[49]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_283_n_14 ),
        .O(\result_d[31]_i_410_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFFFAB)) 
    \result_d[31]_i_411 
       (.I0(\result_d[31]_i_449_n_0 ),
        .I1(\result_d[31]_i_538_n_0 ),
        .I2(\result_d[31]_i_537_n_0 ),
        .I3(\result_d[31]_i_566_n_0 ),
        .I4(\result_d[31]_i_568_n_0 ),
        .I5(\result_d[31]_i_535_n_0 ),
        .O(\result_d[31]_i_411_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFBBFCB8)) 
    \result_d[31]_i_412 
       (.I0(\result_d_reg[31]_i_519_n_15 ),
        .I1(\result_d[31]_i_443_n_0 ),
        .I2(sum_negtive[40]),
        .I3(\result_d_reg[31]_i_539_n_8 ),
        .I4(sum_negtive[39]),
        .I5(\result_d[31]_i_546_n_0 ),
        .O(\result_d[31]_i_412_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[31]_i_413 
       (.I0(sum_negtive[47]),
        .I1(\result_d_reg[31]_i_519_n_8 ),
        .I2(sum_negtive[48]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_283_n_15 ),
        .O(\result_d[31]_i_413_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[31]_i_414 
       (.I0(sum_negtive[43]),
        .I1(\result_d_reg[31]_i_519_n_12 ),
        .I2(sum_negtive[44]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_519_n_11 ),
        .O(\result_d[31]_i_414_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_416 
       (.I0(\result_d_reg[31]_i_423_n_5 ),
        .O(shift_width_norm4[31]));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_417 
       (.I0(\result_d_reg[31]_i_423_n_5 ),
        .O(\result_d[31]_i_417_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_418 
       (.I0(\result_d_reg[31]_i_423_n_5 ),
        .O(\result_d[31]_i_418_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_419 
       (.I0(\result_d_reg[31]_i_423_n_5 ),
        .O(\result_d[31]_i_419_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \result_d[31]_i_42 
       (.I0(\result_d[31]_i_74_n_0 ),
        .I1(\result_d[31]_i_29_n_0 ),
        .I2(\result_d[31]_i_116_n_0 ),
        .I3(\result_d[31]_i_59_n_0 ),
        .I4(\result_d[31]_i_117_n_0 ),
        .O(\result_d[31]_i_42_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_420 
       (.I0(\result_d_reg[31]_i_423_n_5 ),
        .O(\result_d[31]_i_420_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_421 
       (.I0(\result_d_reg[31]_i_423_n_5 ),
        .O(\result_d[31]_i_421_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_422 
       (.I0(\result_d_reg[31]_i_423_n_5 ),
        .O(\result_d[31]_i_422_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_d[31]_i_424 
       (.I0(exponent_product0[8]),
        .I1(\result_d[23]_i_34_n_0 ),
        .O(\result_d[31]_i_424_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[31]_i_425 
       (.I0(flag_overflow_result_d_reg_i_23_n_6),
        .I1(\result_d[23]_i_34_n_0 ),
        .O(p_0_in1_in));
  LUT4 #(
    .INIT(16'h040B)) 
    \result_d[31]_i_426 
       (.I0(exponent_product0[7]),
        .I1(\operand_c_d_reg_n_0_[30] ),
        .I2(\result_d[23]_i_34_n_0 ),
        .I3(exponent_product0[8]),
        .O(\result_d[31]_i_426_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_427 
       (.I0(\result_d_reg[31]_i_519_n_12 ),
        .I1(sum_negtive[43]),
        .I2(\result_d[31]_i_441_n_0 ),
        .I3(\result_d_reg[31]_i_519_n_13 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[42]),
        .O(\result_d[31]_i_427_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_428 
       (.I0(\result_d_reg[31]_i_519_n_11 ),
        .I1(sum_negtive[44]),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(\result_d_reg[31]_i_519_n_10 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[45]),
        .O(\result_d[31]_i_428_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_429 
       (.I0(\result_d[31]_i_544_n_0 ),
        .I1(\result_d[31]_i_556_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_557_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[23]_i_71_n_0 ),
        .O(\result_d[31]_i_429_n_0 ));
  LUT6 #(
    .INIT(64'h0F0DFFFF0F0D0F0D)) 
    \result_d[31]_i_43 
       (.I0(\result_d[31]_i_42_n_0 ),
        .I1(\result_d[31]_i_40_n_0 ),
        .I2(\result_d[31]_i_118_n_0 ),
        .I3(\result_d[31]_i_23_n_0 ),
        .I4(\result_d[31]_i_119_n_0 ),
        .I5(\result_d[31]_i_19_n_0 ),
        .O(\result_d[31]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_430 
       (.I0(\result_d[31]_i_318_n_0 ),
        .I1(\result_d[31]_i_333_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_334_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_335_n_0 ),
        .O(\result_d[31]_i_430_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_431 
       (.I0(\result_d[31]_i_336_n_0 ),
        .I1(\result_d[31]_i_337_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_338_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_339_n_0 ),
        .O(\result_d[31]_i_431_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_432 
       (.I0(\result_d[31]_i_326_n_0 ),
        .I1(\result_d[31]_i_307_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_308_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_309_n_0 ),
        .O(\result_d[31]_i_432_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_433 
       (.I0(\result_d[31]_i_310_n_0 ),
        .I1(\result_d[31]_i_315_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_316_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_317_n_0 ),
        .O(\result_d[31]_i_433_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_434 
       (.I0(\result_d[31]_i_552_n_0 ),
        .I1(\result_d[31]_i_319_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_320_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_321_n_0 ),
        .O(\result_d[31]_i_434_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_435 
       (.I0(\result_d[31]_i_322_n_0 ),
        .I1(\result_d[31]_i_323_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_324_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_325_n_0 ),
        .O(\result_d[31]_i_435_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_436 
       (.I0(\result_d_reg[31]_i_440_n_10 ),
        .I1(sum_negtive[13]),
        .I2(\result_d[31]_i_441_n_0 ),
        .I3(\result_d_reg[31]_i_440_n_11 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[12]),
        .O(\result_d[31]_i_436_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFAFA0C0C0AFA0)) 
    \result_d[31]_i_437 
       (.I0(sum_negtive[15]),
        .I1(\result_d_reg[31]_i_440_n_8 ),
        .I2(\result_d[31]_i_441_n_0 ),
        .I3(sum_negtive[14]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_440_n_9 ),
        .O(\result_d[31]_i_437_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_438 
       (.I0(\result_d_reg[31]_i_541_n_15 ),
        .I1(sum_negtive[16]),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(\result_d_reg[31]_i_541_n_14 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[17]),
        .O(\result_d[31]_i_438_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \result_d[31]_i_44 
       (.I0(\result_d[31]_i_23_n_0 ),
        .I1(\result_d[31]_i_120_n_0 ),
        .I2(\result_d[31]_i_40_n_0 ),
        .O(\result_d[31]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h7774444477747777)) 
    \result_d[31]_i_441 
       (.I0(\result_d[31]_i_302_n_0 ),
        .I1(\result_d[31]_i_82_n_0 ),
        .I2(\result_d[31]_i_452_n_0 ),
        .I3(\result_d[31]_i_451_n_0 ),
        .I4(\result_d[31]_i_81_n_0 ),
        .I5(exponent_dif[0]),
        .O(\result_d[31]_i_441_n_0 ));
  LUT4 #(
    .INIT(16'hBEEB)) 
    \result_d[31]_i_443 
       (.I0(flag_sum_positive),
        .I1(sign_a),
        .I2(sign_b),
        .I3(sign_c),
        .O(\result_d[31]_i_443_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_444 
       (.I0(\result_d_reg[31]_i_440_n_10 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[13]),
        .O(\result_d[31]_i_444_n_0 ));
  LUT6 #(
    .INIT(64'h4554544575575775)) 
    \result_d[31]_i_445 
       (.I0(\result_d_reg[31]_i_440_n_8 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[15]),
        .O(\result_d[31]_i_445_n_0 ));
  LUT6 #(
    .INIT(64'h4554544575575775)) 
    \result_d[31]_i_446 
       (.I0(\result_d_reg[31]_i_440_n_9 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[14]),
        .O(\result_d[31]_i_446_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF54)) 
    \result_d[31]_i_447 
       (.I0(\result_d[31]_i_546_n_0 ),
        .I1(\result_d[31]_i_337_n_0 ),
        .I2(\result_d[31]_i_338_n_0 ),
        .I3(\result_d[31]_i_413_n_0 ),
        .I4(\result_d[31]_i_395_n_0 ),
        .I5(\result_d[31]_i_396_n_0 ),
        .O(\result_d[31]_i_447_n_0 ));
  LUT6 #(
    .INIT(64'hAABFAABFAABFAABB)) 
    \result_d[31]_i_448 
       (.I0(\result_d[31]_i_619_n_0 ),
        .I1(\result_d[31]_i_620_n_0 ),
        .I2(\result_d[31]_i_568_n_0 ),
        .I3(\result_d[31]_i_566_n_0 ),
        .I4(\result_d[31]_i_537_n_0 ),
        .I5(\result_d[31]_i_538_n_0 ),
        .O(\result_d[31]_i_448_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFA8)) 
    \result_d[31]_i_449 
       (.I0(\result_d[31]_i_545_n_0 ),
        .I1(\result_d[31]_i_317_n_0 ),
        .I2(\result_d[31]_i_318_n_0 ),
        .I3(\result_d[31]_i_546_n_0 ),
        .I4(\result_d[31]_i_335_n_0 ),
        .I5(\result_d[31]_i_336_n_0 ),
        .O(\result_d[31]_i_449_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \result_d[31]_i_45 
       (.I0(\result_d[31]_i_37_n_0 ),
        .I1(\result_d[31]_i_120_n_0 ),
        .I2(\result_d[31]_i_121_n_0 ),
        .O(\result_d[31]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFBBFCB8)) 
    \result_d[31]_i_450 
       (.I0(\result_d_reg[31]_i_519_n_9 ),
        .I1(\result_d[31]_i_443_n_0 ),
        .I2(sum_negtive[46]),
        .I3(\result_d_reg[31]_i_519_n_10 ),
        .I4(sum_negtive[45]),
        .I5(\result_d[31]_i_413_n_0 ),
        .O(\result_d[31]_i_450_n_0 ));
  LUT6 #(
    .INIT(64'h4444444454545455)) 
    \result_d[31]_i_451 
       (.I0(\result_d[23]_i_71_n_0 ),
        .I1(\result_d[23]_i_70_n_0 ),
        .I2(\result_d[23]_i_69_n_0 ),
        .I3(\result_d[31]_i_621_n_0 ),
        .I4(\result_d[31]_i_622_n_0 ),
        .I5(\result_d[23]_i_67_n_0 ),
        .O(\result_d[31]_i_451_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_452 
       (.I0(\result_d_reg[31]_i_283_n_13 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[50]),
        .O(\result_d[31]_i_452_n_0 ));
  LUT4 #(
    .INIT(16'h0096)) 
    \result_d[31]_i_453 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_35_n_0 ),
        .O(inject_carry_in));
  LUT6 #(
    .INIT(64'hA6A6A655595959AA)) 
    \result_d[31]_i_454 
       (.I0(shift_ab[7]),
        .I1(\result_d[31]_i_100_n_0 ),
        .I2(\result_d[31]_i_623_n_0 ),
        .I3(\result_d[31]_i_292_n_0 ),
        .I4(\result_d[31]_i_98_n_0 ),
        .I5(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_454_n_0 ));
  LUT6 #(
    .INIT(64'hA6A6A655595959AA)) 
    \result_d[31]_i_455 
       (.I0(shift_ab[6]),
        .I1(\result_d[31]_i_100_n_0 ),
        .I2(\result_d[31]_i_624_n_0 ),
        .I3(\result_d[31]_i_293_n_0 ),
        .I4(\result_d[31]_i_98_n_0 ),
        .I5(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_455_n_0 ));
  LUT6 #(
    .INIT(64'hA6A6A655595959AA)) 
    \result_d[31]_i_456 
       (.I0(shift_ab[5]),
        .I1(\result_d[31]_i_100_n_0 ),
        .I2(\result_d[31]_i_625_n_0 ),
        .I3(\result_d[31]_i_294_n_0 ),
        .I4(\result_d[31]_i_98_n_0 ),
        .I5(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_456_n_0 ));
  LUT6 #(
    .INIT(64'hA6A6A655595959AA)) 
    \result_d[31]_i_457 
       (.I0(shift_ab[4]),
        .I1(\result_d[31]_i_100_n_0 ),
        .I2(\result_d[31]_i_626_n_0 ),
        .I3(\result_d[31]_i_295_n_0 ),
        .I4(\result_d[31]_i_98_n_0 ),
        .I5(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_457_n_0 ));
  LUT6 #(
    .INIT(64'hA6A6A655595959AA)) 
    \result_d[31]_i_458 
       (.I0(shift_ab[3]),
        .I1(\result_d[31]_i_100_n_0 ),
        .I2(\result_d[31]_i_627_n_0 ),
        .I3(\result_d[31]_i_296_n_0 ),
        .I4(\result_d[31]_i_98_n_0 ),
        .I5(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_458_n_0 ));
  LUT6 #(
    .INIT(64'hA6A6A655595959AA)) 
    \result_d[31]_i_459 
       (.I0(shift_ab[2]),
        .I1(\result_d[31]_i_100_n_0 ),
        .I2(\result_d[31]_i_628_n_0 ),
        .I3(\result_d[31]_i_297_n_0 ),
        .I4(\result_d[31]_i_98_n_0 ),
        .I5(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_459_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888888A)) 
    \result_d[31]_i_46 
       (.I0(\result_d[31]_i_122_n_0 ),
        .I1(\result_d[31]_i_123_n_0 ),
        .I2(\result_d[31]_i_124_n_0 ),
        .I3(\result_d[31]_i_125_n_0 ),
        .I4(\result_d[31]_i_126_n_0 ),
        .I5(\result_d[31]_i_127_n_0 ),
        .O(\result_d[31]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0F1E0F1EF0F00F1E)) 
    \result_d[31]_i_460 
       (.I0(\result_d[31]_i_151_n_0 ),
        .I1(\result_d[31]_i_298_n_0 ),
        .I2(\result_d[31]_i_6_n_0 ),
        .I3(\result_d[31]_i_98_n_0 ),
        .I4(\result_d[31]_i_100_n_0 ),
        .I5(\result_d[31]_i_629_n_0 ),
        .O(\result_d[31]_i_460_n_0 ));
  LUT6 #(
    .INIT(64'hA6A6A655595959AA)) 
    \result_d[31]_i_461 
       (.I0(inject_carry_in),
        .I1(\result_d[31]_i_100_n_0 ),
        .I2(\result_d[31]_i_630_n_0 ),
        .I3(\result_d[31]_i_299_n_0 ),
        .I4(\result_d[31]_i_98_n_0 ),
        .I5(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_461_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_462 
       (.I0(\result_d[31]_i_631_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_632_n_0 ),
        .O(\result_d[31]_i_462_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFF00)) 
    \result_d[31]_i_463 
       (.I0(\result_d[23]_i_21_n_0 ),
        .I1(\result_d[31]_i_302_n_0 ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\result_d[31]_i_633_n_0 ),
        .I4(\result_d[31]_i_303_n_0 ),
        .O(\result_d[31]_i_463_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_464 
       (.I0(\result_d[31]_i_634_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_635_n_0 ),
        .O(\result_d[31]_i_464_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h5C)) 
    \result_d[31]_i_465 
       (.I0(\result_d[31]_i_636_n_0 ),
        .I1(\result_d[31]_i_637_n_0 ),
        .I2(\result_d[31]_i_303_n_0 ),
        .O(\result_d[31]_i_465_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_466 
       (.I0(\result_d[31]_i_638_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_639_n_0 ),
        .O(\result_d[31]_i_466_n_0 ));
  LUT6 #(
    .INIT(64'hFBABFBABFFFF0000)) 
    \result_d[31]_i_467 
       (.I0(\result_d[31]_i_301_n_0 ),
        .I1(\operand_c_d_reg_n_0_[22] ),
        .I2(\result_d[31]_i_302_n_0 ),
        .I3(\result_d[23]_i_21_n_0 ),
        .I4(\result_d[31]_i_640_n_0 ),
        .I5(\result_d[31]_i_303_n_0 ),
        .O(\result_d[31]_i_467_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_468 
       (.I0(\result_d[31]_i_641_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_642_n_0 ),
        .O(\result_d[31]_i_468_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_469 
       (.I0(\result_d[31]_i_306_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_643_n_0 ),
        .O(\result_d[31]_i_469_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF1F11111111)) 
    \result_d[31]_i_47 
       (.I0(\result_d[31]_i_30_n_0 ),
        .I1(\result_d[23]_i_11_n_0 ),
        .I2(\result_d[31]_i_128_n_0 ),
        .I3(\result_d[31]_i_89_n_0 ),
        .I4(\result_d[31]_i_61_n_0 ),
        .I5(\result_d[31]_i_23_n_0 ),
        .O(\result_d[31]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF33B8B8B8B8)) 
    \result_d[31]_i_470 
       (.I0(\result_d[31]_i_644_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_531_n_0 ),
        .I3(\result_d[31]_i_303_n_0 ),
        .I4(\result_d[31]_i_306_n_0 ),
        .I5(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_470_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFF33B8B8)) 
    \result_d[31]_i_471 
       (.I0(\result_d[31]_i_645_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_462_n_0 ),
        .I3(\result_d[31]_i_463_n_0 ),
        .I4(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_471_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFF33B8B8)) 
    \result_d[31]_i_472 
       (.I0(\result_d[31]_i_497_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_466_n_0 ),
        .I3(\result_d[31]_i_467_n_0 ),
        .I4(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_472_n_0 ));
  LUT6 #(
    .INIT(64'h00CC33FFD1D1D1D1)) 
    \result_d[31]_i_473 
       (.I0(\result_d[31]_i_497_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_498_n_0 ),
        .I3(\result_d[31]_i_466_n_0 ),
        .I4(\result_d[31]_i_467_n_0 ),
        .I5(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_473_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_474 
       (.I0(\result_d[31]_i_646_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_500_n_0 ),
        .O(\result_d[31]_i_474_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_475 
       (.I0(\result_d[31]_i_635_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_647_n_0 ),
        .O(\result_d[31]_i_475_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_476 
       (.I0(\result_d[31]_i_637_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_634_n_0 ),
        .O(\result_d[31]_i_476_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF0000F7FFF7FF)) 
    \result_d[31]_i_477 
       (.I0(\operand_c_d_reg_n_0_[0] ),
        .I1(\result_d[31]_i_302_n_0 ),
        .I2(exponent_dif[1]),
        .I3(\result_d[31]_i_648_n_0 ),
        .I4(\result_d[31]_i_649_n_0 ),
        .I5(\result_d[31]_i_303_n_0 ),
        .O(\result_d[31]_i_477_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_478 
       (.I0(\result_d[31]_i_647_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_649_n_0 ),
        .O(\result_d[31]_i_478_n_0 ));
  LUT5 #(
    .INIT(32'h00FFB8B8)) 
    \result_d[31]_i_479 
       (.I0(\result_d[31]_i_650_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_651_n_0 ),
        .I3(\result_d[31]_i_652_n_0 ),
        .I4(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_479_n_0 ));
  LUT4 #(
    .INIT(16'h47FF)) 
    \result_d[31]_i_48 
       (.I0(\result_d[31]_i_74_n_0 ),
        .I1(\result_d[31]_i_59_n_0 ),
        .I2(\result_d[31]_i_116_n_0 ),
        .I3(\result_d[31]_i_88_n_0 ),
        .O(\result_d[31]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h474700FF)) 
    \result_d[31]_i_480 
       (.I0(\result_d[31]_i_462_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_463_n_0 ),
        .I3(\result_d[31]_i_496_n_0 ),
        .I4(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_480_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00FFB8B8)) 
    \result_d[31]_i_481 
       (.I0(\result_d[31]_i_653_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_530_n_0 ),
        .I3(\result_d[31]_i_304_n_0 ),
        .I4(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_481_n_0 ));
  LUT6 #(
    .INIT(64'h3300FFCC47474747)) 
    \result_d[31]_i_482 
       (.I0(\result_d[31]_i_494_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_653_n_0 ),
        .I3(\result_d[31]_i_529_n_0 ),
        .I4(\result_d[31]_i_530_n_0 ),
        .I5(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_482_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h47FF4700)) 
    \result_d[31]_i_483 
       (.I0(\result_d[31]_i_468_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_469_n_0 ),
        .I3(\result_d[31]_i_151_n_0 ),
        .I4(\result_d[31]_i_493_n_0 ),
        .O(\result_d[31]_i_483_n_0 ));
  LUT6 #(
    .INIT(64'h0F110F110000FFFF)) 
    \result_d[31]_i_484 
       (.I0(\result_d[31]_i_303_n_0 ),
        .I1(\result_d[31]_i_306_n_0 ),
        .I2(\result_d[31]_i_531_n_0 ),
        .I3(\result_d[31]_i_216_n_0 ),
        .I4(\result_d[31]_i_654_n_0 ),
        .I5(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_484_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00FF4747)) 
    \result_d[31]_i_485 
       (.I0(\result_d[31]_i_655_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_650_n_0 ),
        .I3(\result_d[31]_i_528_n_0 ),
        .I4(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_485_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h474700FF)) 
    \result_d[31]_i_486 
       (.I0(\result_d[31]_i_464_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_465_n_0 ),
        .I3(\result_d[31]_i_499_n_0 ),
        .I4(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_486_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \result_d[31]_i_487 
       (.I0(exponent_dif[6]),
        .I1(exponent_dif[7]),
        .I2(exponent_dif[8]),
        .O(\result_d[31]_i_487_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \result_d[31]_i_488 
       (.I0(exponent_dif[2]),
        .I1(exponent_dif[0]),
        .I2(exponent_dif[1]),
        .O(\result_d[31]_i_488_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8CCB8FFB8FF)) 
    \result_d[31]_i_489 
       (.I0(\result_d[31]_i_644_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_531_n_0 ),
        .I3(\result_d[31]_i_151_n_0 ),
        .I4(\result_d[31]_i_500_n_0 ),
        .I5(\result_d[31]_i_303_n_0 ),
        .O(\result_d[31]_i_489_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_d[31]_i_49 
       (.I0(\result_d_reg[15]_i_2_n_11 ),
        .I1(\result_d_reg[15]_i_2_n_14 ),
        .I2(\result_d_reg[23]_i_2_n_12 ),
        .I3(\result_d_reg[7]_i_2_n_8 ),
        .O(\result_d[31]_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hB8FFB8CC)) 
    \result_d[31]_i_490 
       (.I0(\result_d[31]_i_653_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_530_n_0 ),
        .I3(\result_d[31]_i_151_n_0 ),
        .I4(\result_d[31]_i_494_n_0 ),
        .O(\result_d[31]_i_490_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hF5A0EEEE)) 
    \result_d[31]_i_491 
       (.I0(\result_d[31]_i_216_n_0 ),
        .I1(\result_d[31]_i_477_n_0 ),
        .I2(\result_d[31]_i_475_n_0 ),
        .I3(\result_d[31]_i_476_n_0 ),
        .I4(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_491_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF5A0EEEE)) 
    \result_d[31]_i_492 
       (.I0(\result_d[31]_i_216_n_0 ),
        .I1(\result_d[31]_i_655_n_0 ),
        .I2(\result_d[31]_i_650_n_0 ),
        .I3(\result_d[31]_i_651_n_0 ),
        .I4(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_492_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_d[31]_i_493 
       (.I0(\result_d[31]_i_216_n_0 ),
        .I1(\result_d[31]_i_474_n_0 ),
        .O(\result_d[31]_i_493_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8BBBBBBB8BBB)) 
    \result_d[31]_i_494 
       (.I0(\result_d[31]_i_656_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[0] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[1] ),
        .O(\result_d[31]_i_494_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \result_d[31]_i_495 
       (.I0(\result_d[31]_i_216_n_0 ),
        .I1(\result_d[31]_i_655_n_0 ),
        .I2(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_495_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hEE2E)) 
    \result_d[31]_i_496 
       (.I0(\result_d[31]_i_645_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_303_n_0 ),
        .I3(\result_d[31]_i_501_n_0 ),
        .O(\result_d[31]_i_496_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_497 
       (.I0(\result_d[31]_i_657_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_656_n_0 ),
        .O(\result_d[31]_i_497_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hB8000000)) 
    \result_d[31]_i_498 
       (.I0(\operand_c_d_reg_n_0_[1] ),
        .I1(\result_d[31]_i_302_n_0 ),
        .I2(\operand_c_d_reg_n_0_[0] ),
        .I3(\result_d[31]_i_301_n_0 ),
        .I4(\result_d[31]_i_303_n_0 ),
        .O(\result_d[31]_i_498_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEE2EEEEEE)) 
    \result_d[31]_i_499 
       (.I0(\result_d[31]_i_478_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(exponent_dif[1]),
        .I3(\result_d[31]_i_302_n_0 ),
        .I4(\operand_c_d_reg_n_0_[0] ),
        .I5(\result_d[31]_i_648_n_0 ),
        .O(\result_d[31]_i_499_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \result_d[31]_i_5 
       (.I0(\result_d_reg[7]_i_2_n_10 ),
        .I1(\result_d_reg[15]_i_2_n_10 ),
        .I2(\result_d_reg[15]_i_2_n_15 ),
        .I3(\result_d[31]_i_15_n_0 ),
        .I4(\result_d[31]_i_16_n_0 ),
        .I5(\result_d[31]_i_17_n_0 ),
        .O(\result_d[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_d[31]_i_50 
       (.I0(\result_d_reg[7]_i_2_n_9 ),
        .I1(\result_d_reg[7]_i_2_n_13 ),
        .I2(\result_d_reg[15]_i_2_n_9 ),
        .I3(\result_d_reg[7]_i_2_n_15 ),
        .O(\result_d[31]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_500 
       (.I0(\operand_c_d_reg_n_0_[3] ),
        .I1(\operand_c_d_reg_n_0_[2] ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[1] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[0] ),
        .O(\result_d[31]_i_500_n_0 ));
  LUT6 #(
    .INIT(64'h070007FF77FF77FF)) 
    \result_d[31]_i_501 
       (.I0(exponent_dif[1]),
        .I1(\operand_c_d_reg_n_0_[0] ),
        .I2(\operand_c_d_reg_n_0_[2] ),
        .I3(\result_d[31]_i_302_n_0 ),
        .I4(\operand_c_d_reg_n_0_[1] ),
        .I5(\result_d[31]_i_301_n_0 ),
        .O(\result_d[31]_i_501_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h40404000)) 
    \result_d[31]_i_502 
       (.I0(exponent_dif[1]),
        .I1(\result_d[31]_i_302_n_0 ),
        .I2(\operand_c_d_reg_n_0_[0] ),
        .I3(\result_d[31]_i_236_n_0 ),
        .I4(exponent_dif[2]),
        .O(\result_d[31]_i_502_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \result_d[31]_i_503 
       (.I0(\result_d[31]_i_301_n_0 ),
        .I1(\operand_c_d_reg_n_0_[0] ),
        .I2(\result_d[31]_i_302_n_0 ),
        .I3(\operand_c_d_reg_n_0_[1] ),
        .O(\result_d[31]_i_503_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_504 
       (.I0(\result_d_reg[31]_i_519_n_15 ),
        .I1(sum_negtive[40]),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(\result_d_reg[31]_i_519_n_14 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[41]),
        .O(\result_d[31]_i_504_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_505 
       (.I0(\result_d_reg[31]_i_51_n_11 ),
        .I1(sum_negtive[68]),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(\result_d_reg[31]_i_51_n_10 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[69]),
        .O(\result_d[31]_i_505_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_506 
       (.I0(\result_d_reg[31]_i_51_n_9 ),
        .I1(sum_negtive[70]),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(\result_d_reg[31]_i_51_n_8 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[71]),
        .O(\result_d[31]_i_506_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_507 
       (.I0(\result_d_reg[31]_i_18_n_15 ),
        .I1(sum_negtive[72]),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(\result_d_reg[31]_i_18_n_14 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[73]),
        .O(\result_d[31]_i_507_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_508 
       (.I0(\result_d_reg[31]_i_18_n_13 ),
        .I1(sum_negtive[74]),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(\result_d_reg[31]_i_18_n_12 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[75]),
        .O(\result_d[31]_i_508_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_509 
       (.I0(\result_d_reg[31]_i_129_n_10 ),
        .I1(sum_negtive[61]),
        .I2(\result_d[31]_i_441_n_0 ),
        .I3(\result_d_reg[31]_i_129_n_11 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[60]),
        .O(\result_d[31]_i_509_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_510 
       (.I0(\result_d_reg[31]_i_129_n_9 ),
        .I1(sum_negtive[62]),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(\result_d_reg[31]_i_129_n_8 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[63]),
        .O(\result_d[31]_i_510_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_511 
       (.I0(\result_d_reg[31]_i_51_n_15 ),
        .I1(sum_negtive[64]),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(\result_d_reg[31]_i_51_n_14 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[65]),
        .O(\result_d[31]_i_511_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_512 
       (.I0(\result_d_reg[31]_i_51_n_13 ),
        .I1(sum_negtive[66]),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(\result_d_reg[31]_i_51_n_12 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[67]),
        .O(\result_d[31]_i_512_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_513 
       (.I0(\result_d[31]_i_658_n_0 ),
        .I1(\result_d[31]_i_659_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_660_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_661_n_0 ),
        .O(\result_d[31]_i_513_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_514 
       (.I0(\result_d[31]_i_662_n_0 ),
        .I1(\result_d[31]_i_663_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_664_n_0 ),
        .I4(\result_d[31]_i_223_n_0 ),
        .I5(\result_d[31]_i_665_n_0 ),
        .O(\result_d[31]_i_514_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \result_d[31]_i_515 
       (.I0(\result_d[31]_i_209_n_0 ),
        .I1(\result_d[31]_i_208_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_515_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_d[31]_i_516 
       (.I0(sum_negtive[69]),
        .I1(\result_d_reg[31]_i_51_n_10 ),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(sum_negtive[70]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_51_n_9 ),
        .O(\result_d[31]_i_516_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_d[31]_i_517 
       (.I0(sum_negtive[71]),
        .I1(\result_d_reg[31]_i_51_n_8 ),
        .I2(\result_d[31]_i_223_n_0 ),
        .I3(sum_negtive[72]),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(\result_d_reg[31]_i_18_n_15 ),
        .O(\result_d[31]_i_517_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \result_d[31]_i_518 
       (.I0(\result_d[31]_i_433_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_430_n_0 ),
        .I3(\result_d[7]_i_38_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_518_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \result_d[31]_i_52 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_138_n_0 ),
        .I4(\result_d[31]_i_139_n_0 ),
        .O(\result_d[31]_i_52_n_0 ));
  LUT5 #(
    .INIT(32'h96699696)) 
    \result_d[31]_i_520 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_471_n_0 ),
        .I4(\result_d[31]_i_138_n_0 ),
        .O(\result_d[31]_i_520_n_0 ));
  LUT5 #(
    .INIT(32'h96699696)) 
    \result_d[31]_i_521 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_472_n_0 ),
        .I4(\result_d[31]_i_138_n_0 ),
        .O(\result_d[31]_i_521_n_0 ));
  LUT5 #(
    .INIT(32'h96699696)) 
    \result_d[31]_i_522 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_233_n_0 ),
        .I4(\result_d[31]_i_138_n_0 ),
        .O(\result_d[31]_i_522_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \result_d[31]_i_523 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_138_n_0 ),
        .I4(\result_d[31]_i_230_n_0 ),
        .O(\result_d[31]_i_523_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \result_d[31]_i_524 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_138_n_0 ),
        .I4(\result_d[31]_i_485_n_0 ),
        .O(\result_d[31]_i_524_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \result_d[31]_i_525 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_138_n_0 ),
        .I4(\result_d[31]_i_482_n_0 ),
        .O(\result_d[31]_i_525_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \result_d[31]_i_526 
       (.I0(shift_ab[49]),
        .I1(\result_d[31]_i_232_n_0 ),
        .I2(\result_d[31]_i_138_n_0 ),
        .I3(sign_c),
        .I4(sign_b),
        .I5(sign_a),
        .O(\result_d[31]_i_526_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \result_d[31]_i_527 
       (.I0(shift_ab[48]),
        .I1(\result_d[31]_i_484_n_0 ),
        .I2(\result_d[31]_i_138_n_0 ),
        .I3(sign_c),
        .I4(sign_b),
        .I5(sign_a),
        .O(\result_d[31]_i_527_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFEFFFE)) 
    \result_d[31]_i_528 
       (.I0(\result_d[31]_i_301_n_0 ),
        .I1(\result_d[31]_i_302_n_0 ),
        .I2(\result_d[23]_i_21_n_0 ),
        .I3(\result_d[31]_i_303_n_0 ),
        .I4(\result_d[31]_i_651_n_0 ),
        .I5(\result_d[31]_i_216_n_0 ),
        .O(\result_d[31]_i_528_n_0 ));
  LUT5 #(
    .INIT(32'h00000074)) 
    \result_d[31]_i_529 
       (.I0(\result_d[23]_i_21_n_0 ),
        .I1(\result_d[31]_i_302_n_0 ),
        .I2(\operand_c_d_reg_n_0_[22] ),
        .I3(\result_d[31]_i_301_n_0 ),
        .I4(\result_d[31]_i_303_n_0 ),
        .O(\result_d[31]_i_529_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \result_d[31]_i_53 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_138_n_0 ),
        .I4(\result_d[31]_i_140_n_0 ),
        .O(\result_d[31]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_530 
       (.I0(\result_d[31]_i_640_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_638_n_0 ),
        .O(\result_d[31]_i_530_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_531 
       (.I0(\result_d[31]_i_643_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_641_n_0 ),
        .O(\result_d[31]_i_531_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF54FF)) 
    \result_d[31]_i_535 
       (.I0(\result_d[31]_i_566_n_0 ),
        .I1(\result_d[31]_i_307_n_0 ),
        .I2(\result_d[31]_i_308_n_0 ),
        .I3(\result_d[31]_i_545_n_0 ),
        .I4(\result_d[31]_i_315_n_0 ),
        .I5(\result_d[31]_i_316_n_0 ),
        .O(\result_d[31]_i_535_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \result_d[31]_i_536 
       (.I0(\result_d_reg[31]_i_532_n_13 ),
        .I1(\result_d[31]_i_443_n_0 ),
        .I2(sum_negtive[26]),
        .I3(\result_d_reg[31]_i_532_n_14 ),
        .I4(sum_negtive[25]),
        .I5(\result_d[31]_i_566_n_0 ),
        .O(\result_d[31]_i_536_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[31]_i_537 
       (.I0(sum_negtive[23]),
        .I1(\result_d_reg[31]_i_541_n_8 ),
        .I2(sum_negtive[24]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_532_n_15 ),
        .O(\result_d[31]_i_537_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022A2FFFF)) 
    \result_d[31]_i_538 
       (.I0(\result_d[31]_i_698_n_0 ),
        .I1(\result_d[31]_i_551_n_0 ),
        .I2(\result_d[31]_i_699_n_0 ),
        .I3(\result_d[31]_i_700_n_0 ),
        .I4(\result_d[31]_i_701_n_0 ),
        .I5(\result_d[31]_i_702_n_0 ),
        .O(\result_d[31]_i_538_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \result_d[31]_i_54 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_138_n_0 ),
        .I4(\result_d[31]_i_141_n_0 ),
        .O(\result_d[31]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_543 
       (.I0(\result_d_reg[31]_i_519_n_10 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[45]),
        .O(\result_d[31]_i_543_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_544 
       (.I0(\result_d_reg[31]_i_519_n_9 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[46]),
        .O(\result_d[31]_i_544_n_0 ));
  LUT6 #(
    .INIT(64'h0000000533333305)) 
    \result_d[31]_i_545 
       (.I0(sum_negtive[35]),
        .I1(\result_d_reg[31]_i_539_n_12 ),
        .I2(sum_negtive[36]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_539_n_11 ),
        .O(\result_d[31]_i_545_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[31]_i_546 
       (.I0(sum_negtive[41]),
        .I1(\result_d_reg[31]_i_519_n_14 ),
        .I2(sum_negtive[42]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_519_n_13 ),
        .O(\result_d[31]_i_546_n_0 ));
  LUT6 #(
    .INIT(64'h0000000533333305)) 
    \result_d[31]_i_547 
       (.I0(sum_negtive[5]),
        .I1(\result_d_reg[31]_i_224_n_10 ),
        .I2(sum_negtive[6]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_224_n_9 ),
        .O(\result_d[31]_i_547_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[31]_i_548 
       (.I0(sum_negtive[7]),
        .I1(\result_d_reg[31]_i_224_n_8 ),
        .I2(sum_negtive[8]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_440_n_15 ),
        .O(\result_d[31]_i_548_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[31]_i_549 
       (.I0(sum_negtive[9]),
        .I1(\result_d_reg[31]_i_440_n_14 ),
        .I2(sum_negtive[10]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_440_n_13 ),
        .O(\result_d[31]_i_549_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \result_d[31]_i_55 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(sign_c),
        .I3(\result_d[31]_i_138_n_0 ),
        .I4(\result_d[31]_i_142_n_0 ),
        .O(\result_d[31]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[31]_i_550 
       (.I0(sum_negtive[11]),
        .I1(\result_d_reg[31]_i_440_n_12 ),
        .I2(sum_negtive[12]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_440_n_11 ),
        .O(\result_d[31]_i_550_n_0 ));
  LUT6 #(
    .INIT(64'h0000000533333305)) 
    \result_d[31]_i_551 
       (.I0(sum_negtive[15]),
        .I1(\result_d_reg[31]_i_440_n_8 ),
        .I2(sum_negtive[16]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_541_n_15 ),
        .O(\result_d[31]_i_551_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_552 
       (.I0(\result_d_reg[31]_i_541_n_13 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[18]),
        .O(\result_d[31]_i_552_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_553 
       (.I0(\result_d_reg[31]_i_541_n_14 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[17]),
        .O(\result_d[31]_i_553_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_555 
       (.I0(\result_d_reg[31]_i_541_n_15 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[16]),
        .O(\result_d[31]_i_555_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_556 
       (.I0(\result_d_reg[31]_i_519_n_8 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[47]),
        .O(\result_d[31]_i_556_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_557 
       (.I0(\result_d_reg[31]_i_283_n_15 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[48]),
        .O(\result_d[31]_i_557_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_558 
       (.I0(\result_d_reg[31]_i_283_n_12 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[51]),
        .O(\result_d[31]_i_558_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_559 
       (.I0(\result_d_reg[31]_i_51_n_10 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[69]),
        .O(\result_d[31]_i_559_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \result_d[31]_i_56 
       (.I0(\result_d[31]_i_143_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_145_n_0 ),
        .I3(\result_d[31]_i_146_n_0 ),
        .I4(\result_d[31]_i_147_n_0 ),
        .I5(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_560 
       (.I0(\result_d_reg[31]_i_51_n_9 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[70]),
        .O(\result_d[31]_i_560_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_561 
       (.I0(\result_d_reg[31]_i_51_n_8 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[71]),
        .O(\result_d[31]_i_561_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_562 
       (.I0(\result_d_reg[31]_i_18_n_15 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[72]),
        .O(\result_d[31]_i_562_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[31]_i_566 
       (.I0(sum_negtive[29]),
        .I1(\result_d_reg[31]_i_532_n_10 ),
        .I2(sum_negtive[30]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_532_n_9 ),
        .O(\result_d[31]_i_566_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[31]_i_567 
       (.I0(sum_negtive[31]),
        .I1(\result_d_reg[31]_i_532_n_8 ),
        .I2(sum_negtive[32]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_539_n_15 ),
        .O(\result_d[31]_i_567_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[31]_i_568 
       (.I0(sum_negtive[25]),
        .I1(\result_d_reg[31]_i_532_n_14 ),
        .I2(sum_negtive[26]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_532_n_13 ),
        .O(\result_d[31]_i_568_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[31]_i_569 
       (.I0(sum_negtive[33]),
        .I1(\result_d_reg[31]_i_539_n_14 ),
        .I2(sum_negtive[34]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_539_n_13 ),
        .O(\result_d[31]_i_569_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFD11DD11D)) 
    \result_d[31]_i_57 
       (.I0(\result_d[31]_i_148_n_0 ),
        .I1(\result_d[31]_i_81_n_0 ),
        .I2(\result_d[31]_i_149_n_0 ),
        .I3(\result_d[31]_i_150_n_0 ),
        .I4(\result_d[31]_i_151_n_0 ),
        .I5(\result_d[31]_i_82_n_0 ),
        .O(\result_d[31]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \result_d[31]_i_570 
       (.I0(\result_d_reg[31]_i_532_n_11 ),
        .I1(\result_d[31]_i_443_n_0 ),
        .I2(sum_negtive[28]),
        .I3(\result_d_reg[31]_i_532_n_12 ),
        .I4(sum_negtive[27]),
        .I5(\result_d[31]_i_566_n_0 ),
        .O(\result_d[31]_i_570_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \result_d[31]_i_571 
       (.I0(\result_d_reg[31]_i_532_n_15 ),
        .I1(\result_d[31]_i_443_n_0 ),
        .I2(sum_negtive[24]),
        .I3(\result_d_reg[31]_i_541_n_8 ),
        .I4(sum_negtive[23]),
        .I5(\result_d[31]_i_568_n_0 ),
        .O(\result_d[31]_i_571_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \result_d[31]_i_572 
       (.I0(\result_d_reg[31]_i_541_n_11 ),
        .I1(\result_d[31]_i_443_n_0 ),
        .I2(sum_negtive[20]),
        .I3(\result_d_reg[31]_i_541_n_12 ),
        .I4(sum_negtive[19]),
        .I5(\result_d[31]_i_702_n_0 ),
        .O(\result_d[31]_i_572_n_0 ));
  LUT6 #(
    .INIT(64'h0044034700000000)) 
    \result_d[31]_i_573 
       (.I0(\result_d_reg[31]_i_541_n_14 ),
        .I1(\result_d[31]_i_443_n_0 ),
        .I2(sum_negtive[17]),
        .I3(\result_d_reg[31]_i_541_n_13 ),
        .I4(sum_negtive[18]),
        .I5(\result_d[31]_i_551_n_0 ),
        .O(\result_d[31]_i_573_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \result_d[31]_i_574 
       (.I0(\result_d[31]_i_372_n_0 ),
        .I1(\result_d[31]_i_373_n_0 ),
        .I2(\result_d[31]_i_547_n_0 ),
        .I3(\result_d[31]_i_548_n_0 ),
        .I4(\result_d[31]_i_549_n_0 ),
        .O(\result_d[31]_i_574_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBBFCB8)) 
    \result_d[31]_i_575 
       (.I0(\result_d_reg[31]_i_440_n_9 ),
        .I1(\result_d[31]_i_443_n_0 ),
        .I2(sum_negtive[14]),
        .I3(\result_d_reg[31]_i_440_n_10 ),
        .I4(sum_negtive[13]),
        .I5(\result_d[31]_i_550_n_0 ),
        .O(\result_d[31]_i_575_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_576 
       (.I0(\result_d_reg[31]_i_423_n_5 ),
        .O(\result_d[31]_i_576_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_577 
       (.I0(\result_d_reg[31]_i_423_n_5 ),
        .O(\result_d[31]_i_577_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_578 
       (.I0(\result_d_reg[31]_i_423_n_5 ),
        .O(\result_d[31]_i_578_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_d[31]_i_579 
       (.I0(shift_width_norm4[9]),
        .I1(shift_width_norm4[8]),
        .O(\result_d[31]_i_579_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \result_d[31]_i_58 
       (.I0(\result_d[31]_i_152_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_153_n_0 ),
        .I3(\result_d[31]_i_154_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_d[31]_i_580 
       (.I0(shift_width_norm4[7]),
        .I1(shift_width_norm4[6]),
        .O(\result_d[31]_i_580_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_d[31]_i_581 
       (.I0(shift_width_norm4[5]),
        .I1(shift_width_norm4[4]),
        .O(\result_d[31]_i_581_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_d[31]_i_582 
       (.I0(shift_width_norm4[3]),
        .I1(shift_width_norm4[2]),
        .O(\result_d[31]_i_582_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_d[31]_i_583 
       (.I0(shift_width_norm4[1]),
        .I1(shift_width_norm4[0]),
        .O(\result_d[31]_i_583_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_d[31]_i_584 
       (.I0(shift_width_norm4[8]),
        .I1(shift_width_norm4[9]),
        .O(\result_d[31]_i_584_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_d[31]_i_585 
       (.I0(shift_width_norm4[6]),
        .I1(shift_width_norm4[7]),
        .O(\result_d[31]_i_585_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_d[31]_i_586 
       (.I0(shift_width_norm4[4]),
        .I1(shift_width_norm4[5]),
        .O(\result_d[31]_i_586_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_d[31]_i_587 
       (.I0(shift_width_norm4[2]),
        .I1(shift_width_norm4[3]),
        .O(\result_d[31]_i_587_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_d[31]_i_588 
       (.I0(shift_width_norm4[0]),
        .I1(shift_width_norm4[1]),
        .O(\result_d[31]_i_588_n_0 ));
  LUT6 #(
    .INIT(64'h5541004100415541)) 
    \result_d[31]_i_59 
       (.I0(\result_d[31]_i_82_n_0 ),
        .I1(\result_d[31]_i_155_n_0 ),
        .I2(exponent_dif[5]),
        .I3(\result_d[31]_i_81_n_0 ),
        .I4(\result_d[31]_i_79_n_0 ),
        .I5(\result_d[31]_i_78_n_0 ),
        .O(\result_d[31]_i_59_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_d[31]_i_590 
       (.I0(exponent_product0[8]),
        .I1(\result_d[23]_i_34_n_0 ),
        .O(exponent_product_d[8]));
  LUT2 #(
    .INIT(4'h1)) 
    \result_d[31]_i_591 
       (.I0(exponent_product0[8]),
        .I1(\result_d[23]_i_34_n_0 ),
        .O(\result_d[31]_i_591_n_0 ));
  LUT3 #(
    .INIT(8'hDE)) 
    \result_d[31]_i_592 
       (.I0(exponent_product0[8]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(flag_overflow_result_d_reg_i_23_n_6),
        .O(\result_d[31]_i_592_n_0 ));
  LUT3 #(
    .INIT(8'hED)) 
    \result_d[31]_i_593 
       (.I0(exponent_product0[7]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(exponent_product0[8]),
        .O(\result_d[31]_i_593_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_594 
       (.I0(\result_d_reg[31]_i_541_n_15 ),
        .O(\result_d[31]_i_594_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_595 
       (.I0(\result_d_reg[31]_i_440_n_8 ),
        .O(\result_d[31]_i_595_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_596 
       (.I0(\result_d_reg[31]_i_440_n_9 ),
        .O(\result_d[31]_i_596_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_597 
       (.I0(\result_d_reg[31]_i_440_n_10 ),
        .O(\result_d[31]_i_597_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_598 
       (.I0(\result_d_reg[31]_i_440_n_11 ),
        .O(\result_d[31]_i_598_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_599 
       (.I0(\result_d_reg[31]_i_440_n_12 ),
        .O(\result_d[31]_i_599_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \result_d[31]_i_6 
       (.I0(sign_c),
        .I1(sign_b),
        .I2(sign_a),
        .O(\result_d[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_60 
       (.I0(\result_d[31]_i_157_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[31]_i_158_n_0 ),
        .O(\result_d[31]_i_60_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_600 
       (.I0(\result_d_reg[31]_i_440_n_13 ),
        .O(\result_d[31]_i_600_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_601 
       (.I0(\result_d_reg[31]_i_440_n_14 ),
        .O(\result_d[31]_i_601_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \result_d[31]_i_602 
       (.I0(shift_ab[15]),
        .I1(\result_d[31]_i_480_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(sign_c),
        .I4(sign_b),
        .I5(sign_a),
        .O(\result_d[31]_i_602_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \result_d[31]_i_603 
       (.I0(shift_ab[14]),
        .I1(\result_d[31]_i_473_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(sign_c),
        .I4(sign_b),
        .I5(sign_a),
        .O(\result_d[31]_i_603_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \result_d[31]_i_604 
       (.I0(shift_ab[13]),
        .I1(\result_d[31]_i_486_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(sign_c),
        .I4(sign_b),
        .I5(sign_a),
        .O(\result_d[31]_i_604_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \result_d[31]_i_605 
       (.I0(shift_ab[12]),
        .I1(\result_d[31]_i_483_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(sign_c),
        .I4(sign_b),
        .I5(sign_a),
        .O(\result_d[31]_i_605_n_0 ));
  LUT6 #(
    .INIT(64'hA655A6A659AA5959)) 
    \result_d[31]_i_606 
       (.I0(shift_ab[11]),
        .I1(\result_d[31]_i_100_n_0 ),
        .I2(\result_d[31]_i_492_n_0 ),
        .I3(\result_d[31]_i_98_n_0 ),
        .I4(\result_d[31]_i_139_n_0 ),
        .I5(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_606_n_0 ));
  LUT6 #(
    .INIT(64'hA655A6A659AA5959)) 
    \result_d[31]_i_607 
       (.I0(shift_ab[10]),
        .I1(\result_d[31]_i_100_n_0 ),
        .I2(\result_d[31]_i_490_n_0 ),
        .I3(\result_d[31]_i_98_n_0 ),
        .I4(\result_d[31]_i_140_n_0 ),
        .I5(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_607_n_0 ));
  LUT6 #(
    .INIT(64'hA655A6A659AA5959)) 
    \result_d[31]_i_608 
       (.I0(shift_ab[9]),
        .I1(\result_d[31]_i_100_n_0 ),
        .I2(\result_d[31]_i_491_n_0 ),
        .I3(\result_d[31]_i_98_n_0 ),
        .I4(\result_d[31]_i_141_n_0 ),
        .I5(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_608_n_0 ));
  LUT6 #(
    .INIT(64'hA655A6A659AA5959)) 
    \result_d[31]_i_609 
       (.I0(shift_ab[8]),
        .I1(\result_d[31]_i_100_n_0 ),
        .I2(\result_d[31]_i_489_n_0 ),
        .I3(\result_d[31]_i_98_n_0 ),
        .I4(\result_d[31]_i_142_n_0 ),
        .I5(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_609_n_0 ));
  LUT5 #(
    .INIT(32'h5555CFC0)) 
    \result_d[31]_i_61 
       (.I0(\result_d[31]_i_72_n_0 ),
        .I1(\result_d[31]_i_159_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .I3(\result_d[31]_i_160_n_0 ),
        .I4(\result_d[31]_i_59_n_0 ),
        .O(\result_d[31]_i_61_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_610 
       (.I0(\result_d_reg[31]_i_224_n_15 ),
        .O(\result_d[31]_i_610_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_611 
       (.I0(\result_d_reg[31]_i_440_n_15 ),
        .O(\result_d[31]_i_611_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_612 
       (.I0(\result_d_reg[31]_i_224_n_8 ),
        .O(\result_d[31]_i_612_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_613 
       (.I0(\result_d_reg[31]_i_224_n_9 ),
        .O(\result_d[31]_i_613_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_614 
       (.I0(\result_d_reg[31]_i_224_n_10 ),
        .O(\result_d[31]_i_614_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_615 
       (.I0(\result_d_reg[31]_i_224_n_11 ),
        .O(\result_d[31]_i_615_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_616 
       (.I0(\result_d_reg[31]_i_224_n_12 ),
        .O(\result_d[31]_i_616_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_617 
       (.I0(\result_d_reg[31]_i_224_n_13 ),
        .O(\result_d[31]_i_617_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_618 
       (.I0(\result_d_reg[31]_i_224_n_14 ),
        .O(\result_d[31]_i_618_n_0 ));
  LUT6 #(
    .INIT(64'hFFBBFCB8FFFFFFFF)) 
    \result_d[31]_i_619 
       (.I0(\result_d_reg[31]_i_539_n_15 ),
        .I1(\result_d[31]_i_443_n_0 ),
        .I2(sum_negtive[32]),
        .I3(\result_d_reg[31]_i_532_n_8 ),
        .I4(sum_negtive[31]),
        .I5(\result_d[31]_i_545_n_0 ),
        .O(\result_d[31]_i_619_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \result_d[31]_i_62 
       (.I0(\result_d[31]_i_161_n_0 ),
        .I1(\result_d[31]_i_162_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[31]_i_163_n_0 ),
        .I4(\result_d[31]_i_57_n_0 ),
        .O(\result_d[31]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h0000000533333305)) 
    \result_d[31]_i_620 
       (.I0(sum_negtive[27]),
        .I1(\result_d_reg[31]_i_532_n_12 ),
        .I2(sum_negtive[28]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_532_n_11 ),
        .O(\result_d[31]_i_620_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEEFE)) 
    \result_d[31]_i_621 
       (.I0(\result_d[23]_i_89_n_0 ),
        .I1(\result_d[23]_i_88_n_0 ),
        .I2(\result_d[31]_i_777_n_0 ),
        .I3(\result_d[31]_i_778_n_0 ),
        .I4(\result_d[23]_i_86_n_0 ),
        .I5(\result_d[23]_i_85_n_0 ),
        .O(\result_d[31]_i_621_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0FFF0F4)) 
    \result_d[31]_i_622 
       (.I0(\result_d[31]_i_310_n_0 ),
        .I1(\result_d[31]_i_309_n_0 ),
        .I2(\result_d[31]_i_317_n_0 ),
        .I3(\result_d[31]_i_316_n_0 ),
        .I4(\result_d[31]_i_315_n_0 ),
        .I5(\result_d[31]_i_779_n_0 ),
        .O(\result_d[31]_i_622_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8CCB8FFB8FF)) 
    \result_d[31]_i_623 
       (.I0(\result_d[31]_i_645_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_462_n_0 ),
        .I3(\result_d[31]_i_151_n_0 ),
        .I4(\result_d[31]_i_501_n_0 ),
        .I5(\result_d[31]_i_303_n_0 ),
        .O(\result_d[31]_i_623_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \result_d[31]_i_624 
       (.I0(\result_d[31]_i_497_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_466_n_0 ),
        .I3(\result_d[31]_i_151_n_0 ),
        .I4(\result_d[31]_i_780_n_0 ),
        .O(\result_d[31]_i_624_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \result_d[31]_i_625 
       (.I0(\result_d[31]_i_478_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_464_n_0 ),
        .I3(\result_d[31]_i_151_n_0 ),
        .I4(\result_d[31]_i_781_n_0 ),
        .O(\result_d[31]_i_625_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hB8FF)) 
    \result_d[31]_i_626 
       (.I0(\result_d[31]_i_474_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_468_n_0 ),
        .I3(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_626_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB8FF)) 
    \result_d[31]_i_627 
       (.I0(\result_d[31]_i_655_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_650_n_0 ),
        .I3(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_627_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hB8FF)) 
    \result_d[31]_i_628 
       (.I0(\result_d[31]_i_494_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_653_n_0 ),
        .I3(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_628_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hB8FF)) 
    \result_d[31]_i_629 
       (.I0(\result_d[31]_i_477_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_475_n_0 ),
        .I3(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_629_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \result_d[31]_i_63 
       (.I0(\result_d[31]_i_164_n_0 ),
        .I1(\result_d[31]_i_165_n_0 ),
        .I2(\result_d[31]_i_166_n_0 ),
        .I3(\result_d[31]_i_144_n_0 ),
        .I4(\result_d[31]_i_167_n_0 ),
        .I5(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_63_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \result_d[31]_i_630 
       (.I0(\result_d[31]_i_654_n_0 ),
        .I1(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_630_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_631 
       (.I0(\operand_c_d_reg_n_0_[18] ),
        .I1(\operand_c_d_reg_n_0_[17] ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[16] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[15] ),
        .O(\result_d[31]_i_631_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_632 
       (.I0(\operand_c_d_reg_n_0_[14] ),
        .I1(\operand_c_d_reg_n_0_[13] ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[12] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[11] ),
        .O(\result_d[31]_i_632_n_0 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \result_d[31]_i_633 
       (.I0(\operand_c_d_reg_n_0_[22] ),
        .I1(\operand_c_d_reg_n_0_[21] ),
        .I2(\operand_c_d_reg_n_0_[20] ),
        .I3(\result_d[31]_i_302_n_0 ),
        .I4(\operand_c_d_reg_n_0_[19] ),
        .I5(\result_d[31]_i_301_n_0 ),
        .O(\result_d[31]_i_633_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_634 
       (.I0(\operand_c_d_reg_n_0_[16] ),
        .I1(\operand_c_d_reg_n_0_[15] ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[14] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[13] ),
        .O(\result_d[31]_i_634_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_635 
       (.I0(\operand_c_d_reg_n_0_[12] ),
        .I1(\operand_c_d_reg_n_0_[11] ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[10] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[9] ),
        .O(\result_d[31]_i_635_n_0 ));
  LUT5 #(
    .INIT(32'h30773044)) 
    \result_d[31]_i_636 
       (.I0(\result_d[23]_i_21_n_0 ),
        .I1(\result_d[31]_i_301_n_0 ),
        .I2(\operand_c_d_reg_n_0_[22] ),
        .I3(\result_d[31]_i_302_n_0 ),
        .I4(\operand_c_d_reg_n_0_[21] ),
        .O(\result_d[31]_i_636_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_637 
       (.I0(\operand_c_d_reg_n_0_[20] ),
        .I1(\operand_c_d_reg_n_0_[19] ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[18] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[17] ),
        .O(\result_d[31]_i_637_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_638 
       (.I0(\operand_c_d_reg_n_0_[17] ),
        .I1(\operand_c_d_reg_n_0_[16] ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[15] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[14] ),
        .O(\result_d[31]_i_638_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_639 
       (.I0(\operand_c_d_reg_n_0_[13] ),
        .I1(\operand_c_d_reg_n_0_[12] ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[11] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[10] ),
        .O(\result_d[31]_i_639_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFA0A0CFC0CFC0)) 
    \result_d[31]_i_64 
       (.I0(\result_d[31]_i_168_n_0 ),
        .I1(\result_d[31]_i_169_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .I3(\result_d[31]_i_170_n_0 ),
        .I4(\result_d[31]_i_171_n_0 ),
        .I5(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_640 
       (.I0(\operand_c_d_reg_n_0_[21] ),
        .I1(\operand_c_d_reg_n_0_[20] ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[19] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[18] ),
        .O(\result_d[31]_i_640_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_641 
       (.I0(\operand_c_d_reg_n_0_[15] ),
        .I1(\operand_c_d_reg_n_0_[14] ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[13] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[12] ),
        .O(\result_d[31]_i_641_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_642 
       (.I0(\operand_c_d_reg_n_0_[11] ),
        .I1(\operand_c_d_reg_n_0_[10] ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[9] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[8] ),
        .O(\result_d[31]_i_642_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_643 
       (.I0(\operand_c_d_reg_n_0_[19] ),
        .I1(\operand_c_d_reg_n_0_[18] ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[17] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[16] ),
        .O(\result_d[31]_i_643_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_644 
       (.I0(\result_d[31]_i_642_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_646_n_0 ),
        .O(\result_d[31]_i_644_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_645 
       (.I0(\result_d[31]_i_782_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_783_n_0 ),
        .O(\result_d[31]_i_645_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_646 
       (.I0(\operand_c_d_reg_n_0_[7] ),
        .I1(\operand_c_d_reg_n_0_[6] ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[5] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[4] ),
        .O(\result_d[31]_i_646_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_647 
       (.I0(\operand_c_d_reg_n_0_[8] ),
        .I1(\operand_c_d_reg_n_0_[7] ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[6] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[5] ),
        .O(\result_d[31]_i_647_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_d[31]_i_648 
       (.I0(exponent_dif[2]),
        .I1(\result_d[31]_i_236_n_0 ),
        .O(\result_d[31]_i_648_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_649 
       (.I0(\operand_c_d_reg_n_0_[4] ),
        .I1(\operand_c_d_reg_n_0_[3] ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[2] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[1] ),
        .O(\result_d[31]_i_649_n_0 ));
  LUT5 #(
    .INIT(32'hD1FFD100)) 
    \result_d[31]_i_65 
       (.I0(\result_d[31]_i_172_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_163_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .I4(\result_d[31]_i_173_n_0 ),
        .O(\result_d[31]_i_65_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_650 
       (.I0(\result_d[31]_i_632_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_782_n_0 ),
        .O(\result_d[31]_i_650_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_651 
       (.I0(\result_d[31]_i_633_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_631_n_0 ),
        .O(\result_d[31]_i_651_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \result_d[31]_i_652 
       (.I0(\result_d[31]_i_303_n_0 ),
        .I1(\result_d[23]_i_21_n_0 ),
        .I2(\result_d[31]_i_302_n_0 ),
        .I3(\result_d[31]_i_301_n_0 ),
        .I4(\result_d[31]_i_216_n_0 ),
        .O(\result_d[31]_i_652_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_653 
       (.I0(\result_d[31]_i_639_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_657_n_0 ),
        .O(\result_d[31]_i_653_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hEE2E)) 
    \result_d[31]_i_654 
       (.I0(\result_d[31]_i_644_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_303_n_0 ),
        .I3(\result_d[31]_i_500_n_0 ),
        .O(\result_d[31]_i_654_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_655 
       (.I0(\result_d[31]_i_783_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_501_n_0 ),
        .O(\result_d[31]_i_655_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_656 
       (.I0(\operand_c_d_reg_n_0_[5] ),
        .I1(\operand_c_d_reg_n_0_[4] ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[3] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[2] ),
        .O(\result_d[31]_i_656_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_657 
       (.I0(\operand_c_d_reg_n_0_[9] ),
        .I1(\operand_c_d_reg_n_0_[8] ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[7] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[6] ),
        .O(\result_d[31]_i_657_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_658 
       (.I0(\result_d_reg[31]_i_283_n_11 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[52]),
        .O(\result_d[31]_i_658_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_659 
       (.I0(\result_d_reg[31]_i_283_n_10 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[53]),
        .O(\result_d[31]_i_659_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[31]_i_66 
       (.I0(\result_d[31]_i_59_n_0 ),
        .I1(\result_d[31]_i_29_n_0 ),
        .O(\result_d[31]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_660 
       (.I0(\result_d_reg[31]_i_283_n_9 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[54]),
        .O(\result_d[31]_i_660_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_661 
       (.I0(\result_d_reg[31]_i_283_n_8 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[55]),
        .O(\result_d[31]_i_661_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_662 
       (.I0(\result_d_reg[31]_i_129_n_15 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[56]),
        .O(\result_d[31]_i_662_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_663 
       (.I0(\result_d_reg[31]_i_129_n_14 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[57]),
        .O(\result_d[31]_i_663_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_664 
       (.I0(\result_d_reg[31]_i_129_n_13 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[58]),
        .O(\result_d[31]_i_664_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBA8AA8A88A)) 
    \result_d[31]_i_665 
       (.I0(\result_d_reg[31]_i_129_n_12 ),
        .I1(flag_sum_positive),
        .I2(sign_a),
        .I3(sign_b),
        .I4(sign_c),
        .I5(sum_negtive[59]),
        .O(\result_d[31]_i_665_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \result_d[31]_i_666 
       (.I0(shift_ab[47]),
        .I1(\result_d[31]_i_480_n_0 ),
        .I2(\result_d[31]_i_138_n_0 ),
        .I3(sign_c),
        .I4(sign_b),
        .I5(sign_a),
        .O(\result_d[31]_i_666_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \result_d[31]_i_667 
       (.I0(shift_ab[46]),
        .I1(\result_d[31]_i_473_n_0 ),
        .I2(\result_d[31]_i_138_n_0 ),
        .I3(sign_c),
        .I4(sign_b),
        .I5(sign_a),
        .O(\result_d[31]_i_667_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \result_d[31]_i_668 
       (.I0(shift_ab[45]),
        .I1(\result_d[31]_i_486_n_0 ),
        .I2(\result_d[31]_i_138_n_0 ),
        .I3(sign_c),
        .I4(sign_b),
        .I5(sign_a),
        .O(\result_d[31]_i_668_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \result_d[31]_i_669 
       (.I0(shift_ab[44]),
        .I1(\result_d[31]_i_483_n_0 ),
        .I2(\result_d[31]_i_138_n_0 ),
        .I3(sign_c),
        .I4(sign_b),
        .I5(sign_a),
        .O(\result_d[31]_i_669_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \result_d[31]_i_67 
       (.I0(\result_d[31]_i_174_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_175_n_0 ),
        .I3(\result_d[31]_i_91_n_0 ),
        .I4(\result_d[31]_i_162_n_0 ),
        .O(\result_d[31]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h59A6A659A65959A6)) 
    \result_d[31]_i_670 
       (.I0(shift_ab[43]),
        .I1(\result_d[31]_i_98_n_0 ),
        .I2(\result_d[31]_i_242_n_0 ),
        .I3(sign_c),
        .I4(sign_b),
        .I5(sign_a),
        .O(\result_d[31]_i_670_n_0 ));
  LUT6 #(
    .INIT(64'h59A6A659A65959A6)) 
    \result_d[31]_i_671 
       (.I0(shift_ab[42]),
        .I1(\result_d[31]_i_98_n_0 ),
        .I2(\result_d[31]_i_240_n_0 ),
        .I3(sign_c),
        .I4(sign_b),
        .I5(sign_a),
        .O(\result_d[31]_i_671_n_0 ));
  LUT6 #(
    .INIT(64'h59A6A659A65959A6)) 
    \result_d[31]_i_672 
       (.I0(shift_ab[41]),
        .I1(\result_d[31]_i_98_n_0 ),
        .I2(\result_d[31]_i_241_n_0 ),
        .I3(sign_c),
        .I4(sign_b),
        .I5(sign_a),
        .O(\result_d[31]_i_672_n_0 ));
  LUT6 #(
    .INIT(64'h59A6A659A65959A6)) 
    \result_d[31]_i_673 
       (.I0(shift_ab[40]),
        .I1(\result_d[31]_i_98_n_0 ),
        .I2(\result_d[31]_i_239_n_0 ),
        .I3(sign_c),
        .I4(sign_b),
        .I5(sign_a),
        .O(\result_d[31]_i_673_n_0 ));
  LUT5 #(
    .INIT(32'h656A9A95)) 
    \result_d[31]_i_674 
       (.I0(shift_ab[31]),
        .I1(\result_d[31]_i_225_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(\result_d[31]_i_244_n_0 ),
        .I4(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_674_n_0 ));
  LUT5 #(
    .INIT(32'h656A9A95)) 
    \result_d[31]_i_675 
       (.I0(shift_ab[30]),
        .I1(\result_d[31]_i_227_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(\result_d[31]_i_245_n_0 ),
        .I4(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_675_n_0 ));
  LUT5 #(
    .INIT(32'h656A9A95)) 
    \result_d[31]_i_676 
       (.I0(shift_ab[29]),
        .I1(\result_d[31]_i_226_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(\result_d[31]_i_246_n_0 ),
        .I4(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_676_n_0 ));
  LUT6 #(
    .INIT(64'h0FF07878F00F8787)) 
    \result_d[31]_i_677 
       (.I0(\result_d[31]_i_493_n_0 ),
        .I1(\result_d[31]_i_151_n_0 ),
        .I2(shift_ab[28]),
        .I3(\result_d[31]_i_228_n_0 ),
        .I4(\result_d[31]_i_100_n_0 ),
        .I5(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_677_n_0 ));
  LUT6 #(
    .INIT(64'h6A556A6A95AA9595)) 
    \result_d[31]_i_678 
       (.I0(shift_ab[27]),
        .I1(\result_d[31]_i_138_n_0 ),
        .I2(\result_d[31]_i_495_n_0 ),
        .I3(\result_d[31]_i_479_n_0 ),
        .I4(\result_d[31]_i_100_n_0 ),
        .I5(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_678_n_0 ));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \result_d[31]_i_679 
       (.I0(shift_ab[26]),
        .I1(\result_d[31]_i_481_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(\result_d[31]_i_784_n_0 ),
        .I4(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_679_n_0 ));
  LUT6 #(
    .INIT(64'hCECCCECCFEFCCECC)) 
    \result_d[31]_i_68 
       (.I0(\result_d[31]_i_176_n_0 ),
        .I1(\result_d[31]_i_82_n_0 ),
        .I2(\result_d[31]_i_81_n_0 ),
        .I3(\result_d[31]_i_80_n_0 ),
        .I4(\result_d[31]_i_79_n_0 ),
        .I5(\result_d[31]_i_78_n_0 ),
        .O(\result_d[31]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h6A556A6A95AA9595)) 
    \result_d[31]_i_680 
       (.I0(shift_ab[25]),
        .I1(\result_d[31]_i_138_n_0 ),
        .I2(\result_d[31]_i_785_n_0 ),
        .I3(\result_d[31]_i_231_n_0 ),
        .I4(\result_d[31]_i_100_n_0 ),
        .I5(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_680_n_0 ));
  LUT6 #(
    .INIT(64'h6A556A6A95AA9595)) 
    \result_d[31]_i_681 
       (.I0(shift_ab[24]),
        .I1(\result_d[31]_i_138_n_0 ),
        .I2(\result_d[31]_i_247_n_0 ),
        .I3(\result_d[31]_i_470_n_0 ),
        .I4(\result_d[31]_i_100_n_0 ),
        .I5(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_681_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_682 
       (.I0(\result_d_reg[31]_i_539_n_15 ),
        .O(\result_d[31]_i_682_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_683 
       (.I0(\result_d_reg[31]_i_532_n_8 ),
        .O(\result_d[31]_i_683_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_684 
       (.I0(\result_d_reg[31]_i_532_n_9 ),
        .O(\result_d[31]_i_684_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_685 
       (.I0(\result_d_reg[31]_i_532_n_10 ),
        .O(\result_d[31]_i_685_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_686 
       (.I0(\result_d_reg[31]_i_532_n_11 ),
        .O(\result_d[31]_i_686_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_687 
       (.I0(\result_d_reg[31]_i_532_n_12 ),
        .O(\result_d[31]_i_687_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_688 
       (.I0(\result_d_reg[31]_i_532_n_13 ),
        .O(\result_d[31]_i_688_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_689 
       (.I0(\result_d_reg[31]_i_532_n_14 ),
        .O(\result_d[31]_i_689_n_0 ));
  LUT5 #(
    .INIT(32'hFF004747)) 
    \result_d[31]_i_69 
       (.I0(\result_d[31]_i_177_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_178_n_0 ),
        .I3(\result_d[31]_i_170_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_69_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_690 
       (.I0(\result_d_reg[31]_i_129_n_15 ),
        .O(\result_d[31]_i_690_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_691 
       (.I0(\result_d_reg[31]_i_283_n_8 ),
        .O(\result_d[31]_i_691_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_692 
       (.I0(\result_d_reg[31]_i_283_n_9 ),
        .O(\result_d[31]_i_692_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_693 
       (.I0(\result_d_reg[31]_i_283_n_10 ),
        .O(\result_d[31]_i_693_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_694 
       (.I0(\result_d_reg[31]_i_283_n_11 ),
        .O(\result_d[31]_i_694_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_695 
       (.I0(\result_d_reg[31]_i_283_n_12 ),
        .O(\result_d[31]_i_695_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_696 
       (.I0(\result_d_reg[31]_i_283_n_13 ),
        .O(\result_d[31]_i_696_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_697 
       (.I0(\result_d_reg[31]_i_283_n_14 ),
        .O(\result_d[31]_i_697_n_0 ));
  LUT6 #(
    .INIT(64'h0000000533333305)) 
    \result_d[31]_i_698 
       (.I0(sum_negtive[18]),
        .I1(\result_d_reg[31]_i_541_n_13 ),
        .I2(sum_negtive[17]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_541_n_14 ),
        .O(\result_d[31]_i_698_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFEFEFEEEEEEEE)) 
    \result_d[31]_i_699 
       (.I0(\result_d[31]_i_550_n_0 ),
        .I1(\result_d[31]_i_548_n_0 ),
        .I2(\result_d[31]_i_786_n_0 ),
        .I3(\result_d[31]_i_787_n_0 ),
        .I4(\result_d_reg[31]_i_224_n_15 ),
        .I5(\result_d[31]_i_547_n_0 ),
        .O(\result_d[31]_i_699_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \result_d[31]_i_7 
       (.I0(sign_a),
        .I1(sign_b),
        .I2(flag_sum_positive),
        .I3(sign_c),
        .O(\result_d[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \result_d[31]_i_70 
       (.I0(\result_d[31]_i_179_n_0 ),
        .I1(\result_d[31]_i_180_n_0 ),
        .I2(\result_d[31]_i_121_n_0 ),
        .O(\result_d[31]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hDFD5FFFFDFD5DFD5)) 
    \result_d[31]_i_700 
       (.I0(\result_d[31]_i_446_n_0 ),
        .I1(\result_d_reg[31]_i_440_n_10 ),
        .I2(\result_d[31]_i_443_n_0 ),
        .I3(sum_negtive[13]),
        .I4(\result_d[31]_i_550_n_0 ),
        .I5(\result_d[31]_i_549_n_0 ),
        .O(\result_d[31]_i_700_n_0 ));
  LUT6 #(
    .INIT(64'h0000000533333305)) 
    \result_d[31]_i_701 
       (.I0(sum_negtive[19]),
        .I1(\result_d_reg[31]_i_541_n_12 ),
        .I2(sum_negtive[20]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_541_n_11 ),
        .O(\result_d[31]_i_701_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[31]_i_702 
       (.I0(sum_negtive[21]),
        .I1(\result_d_reg[31]_i_541_n_10 ),
        .I2(sum_negtive[22]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_541_n_9 ),
        .O(\result_d[31]_i_702_n_0 ));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \result_d[31]_i_703 
       (.I0(shift_ab[39]),
        .I1(\result_d[31]_i_292_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(\result_d[31]_i_623_n_0 ),
        .I4(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_703_n_0 ));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \result_d[31]_i_704 
       (.I0(shift_ab[38]),
        .I1(\result_d[31]_i_293_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(\result_d[31]_i_624_n_0 ),
        .I4(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_704_n_0 ));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \result_d[31]_i_705 
       (.I0(shift_ab[37]),
        .I1(\result_d[31]_i_294_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(\result_d[31]_i_625_n_0 ),
        .I4(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_705_n_0 ));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \result_d[31]_i_706 
       (.I0(shift_ab[36]),
        .I1(\result_d[31]_i_295_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(\result_d[31]_i_626_n_0 ),
        .I4(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_706_n_0 ));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \result_d[31]_i_707 
       (.I0(shift_ab[35]),
        .I1(\result_d[31]_i_296_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(\result_d[31]_i_627_n_0 ),
        .I4(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_707_n_0 ));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \result_d[31]_i_708 
       (.I0(shift_ab[34]),
        .I1(\result_d[31]_i_297_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(\result_d[31]_i_628_n_0 ),
        .I4(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_708_n_0 ));
  LUT6 #(
    .INIT(64'hE1F0E10F1E0F1EF0)) 
    \result_d[31]_i_709 
       (.I0(\result_d[31]_i_151_n_0 ),
        .I1(\result_d[31]_i_298_n_0 ),
        .I2(shift_ab[33]),
        .I3(\result_d[31]_i_100_n_0 ),
        .I4(\result_d[31]_i_629_n_0 ),
        .I5(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_709_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0454)) 
    \result_d[31]_i_71 
       (.I0(\result_d[31]_i_29_n_0 ),
        .I1(\result_d[31]_i_111_n_0 ),
        .I2(\result_d[31]_i_59_n_0 ),
        .I3(\result_d[31]_i_110_n_0 ),
        .O(\result_d[31]_i_71_n_0 ));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \result_d[31]_i_710 
       (.I0(shift_ab[32]),
        .I1(\result_d[31]_i_299_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(\result_d[31]_i_630_n_0 ),
        .I4(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_710_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_711 
       (.I0(\result_d_reg[31]_i_519_n_15 ),
        .O(\result_d[31]_i_711_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_712 
       (.I0(\result_d_reg[31]_i_539_n_8 ),
        .O(\result_d[31]_i_712_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_713 
       (.I0(\result_d_reg[31]_i_539_n_9 ),
        .O(\result_d[31]_i_713_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_714 
       (.I0(\result_d_reg[31]_i_539_n_10 ),
        .O(\result_d[31]_i_714_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_715 
       (.I0(\result_d_reg[31]_i_539_n_11 ),
        .O(\result_d[31]_i_715_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_716 
       (.I0(\result_d_reg[31]_i_539_n_12 ),
        .O(\result_d[31]_i_716_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_717 
       (.I0(\result_d_reg[31]_i_539_n_13 ),
        .O(\result_d[31]_i_717_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_718 
       (.I0(\result_d_reg[31]_i_539_n_14 ),
        .O(\result_d[31]_i_718_n_0 ));
  LUT6 #(
    .INIT(64'h559A9A9AAA656565)) 
    \result_d[31]_i_719 
       (.I0(shift_ab[23]),
        .I1(\result_d[31]_i_471_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(\result_d[31]_i_138_n_0 ),
        .I4(\result_d[31]_i_788_n_0 ),
        .I5(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_719_n_0 ));
  LUT5 #(
    .INIT(32'h2EFF2E00)) 
    \result_d[31]_i_72 
       (.I0(\result_d[31]_i_95_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_181_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .I4(\result_d[31]_i_182_n_0 ),
        .O(\result_d[31]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h6A556A6A95AA9595)) 
    \result_d[31]_i_720 
       (.I0(shift_ab[22]),
        .I1(\result_d[31]_i_138_n_0 ),
        .I2(\result_d[31]_i_789_n_0 ),
        .I3(\result_d[31]_i_472_n_0 ),
        .I4(\result_d[31]_i_100_n_0 ),
        .I5(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_720_n_0 ));
  LUT6 #(
    .INIT(64'h6A556A6A95AA9595)) 
    \result_d[31]_i_721 
       (.I0(shift_ab[21]),
        .I1(\result_d[31]_i_138_n_0 ),
        .I2(\result_d[31]_i_790_n_0 ),
        .I3(\result_d[31]_i_233_n_0 ),
        .I4(\result_d[31]_i_100_n_0 ),
        .I5(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_721_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \result_d[31]_i_722 
       (.I0(shift_ab[20]),
        .I1(\result_d[31]_i_230_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(sign_c),
        .I4(sign_b),
        .I5(sign_a),
        .O(\result_d[31]_i_722_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \result_d[31]_i_723 
       (.I0(shift_ab[19]),
        .I1(\result_d[31]_i_485_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(sign_c),
        .I4(sign_b),
        .I5(sign_a),
        .O(\result_d[31]_i_723_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \result_d[31]_i_724 
       (.I0(shift_ab[18]),
        .I1(\result_d[31]_i_482_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(sign_c),
        .I4(sign_b),
        .I5(sign_a),
        .O(\result_d[31]_i_724_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \result_d[31]_i_725 
       (.I0(shift_ab[17]),
        .I1(\result_d[31]_i_232_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(sign_c),
        .I4(sign_b),
        .I5(sign_a),
        .O(\result_d[31]_i_725_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \result_d[31]_i_726 
       (.I0(shift_ab[16]),
        .I1(\result_d[31]_i_484_n_0 ),
        .I2(\result_d[31]_i_100_n_0 ),
        .I3(sign_c),
        .I4(sign_b),
        .I5(sign_a),
        .O(\result_d[31]_i_726_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_727 
       (.I0(\result_d_reg[31]_i_532_n_15 ),
        .O(\result_d[31]_i_727_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_728 
       (.I0(\result_d_reg[31]_i_541_n_8 ),
        .O(\result_d[31]_i_728_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_729 
       (.I0(\result_d_reg[31]_i_541_n_9 ),
        .O(\result_d[31]_i_729_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \result_d[31]_i_73 
       (.I0(\result_d[31]_i_183_n_0 ),
        .I1(\result_d[31]_i_184_n_0 ),
        .I2(\result_d[31]_i_185_n_0 ),
        .I3(\result_d[31]_i_186_n_0 ),
        .I4(\result_d[31]_i_65_n_0 ),
        .I5(\result_d[31]_i_187_n_0 ),
        .O(\result_d[31]_i_73_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_730 
       (.I0(\result_d_reg[31]_i_541_n_10 ),
        .O(\result_d[31]_i_730_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_731 
       (.I0(\result_d_reg[31]_i_541_n_11 ),
        .O(\result_d[31]_i_731_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_732 
       (.I0(\result_d_reg[31]_i_541_n_12 ),
        .O(\result_d[31]_i_732_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_733 
       (.I0(\result_d_reg[31]_i_541_n_13 ),
        .O(\result_d[31]_i_733_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_734 
       (.I0(\result_d_reg[31]_i_541_n_14 ),
        .O(\result_d[31]_i_734_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_735 
       (.I0(\result_d_reg[31]_i_283_n_15 ),
        .O(\result_d[31]_i_735_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_736 
       (.I0(\result_d_reg[31]_i_519_n_8 ),
        .O(\result_d[31]_i_736_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_737 
       (.I0(\result_d_reg[31]_i_519_n_9 ),
        .O(\result_d[31]_i_737_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_738 
       (.I0(\result_d_reg[31]_i_519_n_10 ),
        .O(\result_d[31]_i_738_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_739 
       (.I0(\result_d_reg[31]_i_519_n_11 ),
        .O(\result_d[31]_i_739_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \result_d[31]_i_74 
       (.I0(\result_d[31]_i_188_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .O(\result_d[31]_i_74_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_740 
       (.I0(\result_d_reg[31]_i_519_n_12 ),
        .O(\result_d[31]_i_740_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_741 
       (.I0(\result_d_reg[31]_i_519_n_13 ),
        .O(\result_d[31]_i_741_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_742 
       (.I0(\result_d_reg[31]_i_519_n_14 ),
        .O(\result_d[31]_i_742_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_743 
       (.I0(\result_d_reg[31]_i_18_n_12 ),
        .O(\result_d[31]_i_743_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_744 
       (.I0(\result_d_reg[31]_i_18_n_13 ),
        .O(\result_d[31]_i_744_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_745 
       (.I0(\result_d_reg[31]_i_18_n_14 ),
        .O(\result_d[31]_i_745_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_746 
       (.I0(\result_d_reg[31]_i_51_n_15 ),
        .O(\result_d[31]_i_746_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_747 
       (.I0(\result_d_reg[31]_i_129_n_8 ),
        .O(\result_d[31]_i_747_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_748 
       (.I0(\result_d_reg[31]_i_129_n_9 ),
        .O(\result_d[31]_i_748_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_749 
       (.I0(\result_d_reg[31]_i_129_n_10 ),
        .O(\result_d[31]_i_749_n_0 ));
  LUT6 #(
    .INIT(64'h08FF00FF0FFF0FFF)) 
    \result_d[31]_i_75 
       (.I0(\result_d[31]_i_189_n_0 ),
        .I1(\result_d[31]_i_92_n_0 ),
        .I2(\result_d[31]_i_173_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .I4(\result_d[31]_i_190_n_0 ),
        .I5(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_75_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_750 
       (.I0(\result_d_reg[31]_i_129_n_11 ),
        .O(\result_d[31]_i_750_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_751 
       (.I0(\result_d_reg[31]_i_129_n_12 ),
        .O(\result_d[31]_i_751_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_752 
       (.I0(\result_d_reg[31]_i_129_n_13 ),
        .O(\result_d[31]_i_752_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_753 
       (.I0(\result_d_reg[31]_i_129_n_14 ),
        .O(\result_d[31]_i_753_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_754 
       (.I0(\result_d_reg[31]_i_18_n_15 ),
        .O(\result_d[31]_i_754_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_755 
       (.I0(\result_d_reg[31]_i_51_n_8 ),
        .O(\result_d[31]_i_755_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_756 
       (.I0(\result_d_reg[31]_i_51_n_9 ),
        .O(\result_d[31]_i_756_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_757 
       (.I0(\result_d_reg[31]_i_51_n_10 ),
        .O(\result_d[31]_i_757_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_758 
       (.I0(\result_d_reg[31]_i_51_n_11 ),
        .O(\result_d[31]_i_758_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_759 
       (.I0(\result_d_reg[31]_i_51_n_12 ),
        .O(\result_d[31]_i_759_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hB800FFFF)) 
    \result_d[31]_i_76 
       (.I0(\result_d[31]_i_191_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_192_n_0 ),
        .I3(\result_d[31]_i_193_n_0 ),
        .I4(\result_d[31]_i_57_n_0 ),
        .O(\result_d[31]_i_76_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_760 
       (.I0(\result_d_reg[31]_i_51_n_13 ),
        .O(\result_d[31]_i_760_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_761 
       (.I0(\result_d_reg[31]_i_51_n_14 ),
        .O(\result_d[31]_i_761_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[31]_i_762 
       (.I0(exponent_product0[6]),
        .I1(\result_d[23]_i_34_n_0 ),
        .O(\result_d[31]_i_762_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \result_d[31]_i_763 
       (.I0(exponent_product0[5]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(\result_d[31]_i_78_n_0 ),
        .O(\result_d[31]_i_763_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \result_d[31]_i_764 
       (.I0(exponent_product0[4]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(\result_d[31]_i_149_n_0 ),
        .O(\result_d[31]_i_764_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \result_d[31]_i_765 
       (.I0(exponent_product0[3]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(\result_d[31]_i_198_n_0 ),
        .O(\result_d[31]_i_765_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \result_d[31]_i_766 
       (.I0(exponent_product0[2]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(\result_d[31]_i_196_n_0 ),
        .O(\result_d[31]_i_766_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \result_d[31]_i_767 
       (.I0(p_0_out__0[1]),
        .O(\result_d[31]_i_767_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_d[31]_i_768 
       (.I0(exponent_product0[0]),
        .I1(\result_d[23]_i_34_n_0 ),
        .O(\result_d[31]_i_768_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \result_d[31]_i_769 
       (.I0(exponent_product0[6]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(exponent_product0[7]),
        .O(\result_d[31]_i_769_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[31]_i_77 
       (.I0(\result_d[31]_i_68_n_0 ),
        .I1(\result_d[31]_i_180_n_0 ),
        .O(\result_d[31]_i_77_n_0 ));
  LUT4 #(
    .INIT(16'hCFED)) 
    \result_d[31]_i_770 
       (.I0(exponent_product0[5]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(exponent_product0[6]),
        .I3(\result_d[31]_i_78_n_0 ),
        .O(\result_d[31]_i_770_n_0 ));
  LUT5 #(
    .INIT(32'h3012CFED)) 
    \result_d[31]_i_771 
       (.I0(exponent_product0[4]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(exponent_product0[5]),
        .I3(\result_d[31]_i_149_n_0 ),
        .I4(\result_d[31]_i_78_n_0 ),
        .O(\result_d[31]_i_771_n_0 ));
  LUT5 #(
    .INIT(32'h3012CFED)) 
    \result_d[31]_i_772 
       (.I0(exponent_product0[3]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(exponent_product0[4]),
        .I3(\result_d[31]_i_198_n_0 ),
        .I4(\result_d[31]_i_149_n_0 ),
        .O(\result_d[31]_i_772_n_0 ));
  LUT5 #(
    .INIT(32'h3012CFED)) 
    \result_d[31]_i_773 
       (.I0(exponent_product0[2]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(exponent_product0[3]),
        .I3(\result_d[31]_i_196_n_0 ),
        .I4(\result_d[31]_i_198_n_0 ),
        .O(\result_d[31]_i_773_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \result_d[31]_i_774 
       (.I0(exponent_product0[2]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(p_0_out__0[1]),
        .I3(\result_d[31]_i_196_n_0 ),
        .O(\result_d[31]_i_774_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \result_d[31]_i_775 
       (.I0(exponent_product0[1]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(p_0_out__0[1]),
        .O(\result_d[31]_i_775_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \result_d[31]_i_776 
       (.I0(exponent_product0[0]),
        .I1(\result_d[23]_i_34_n_0 ),
        .I2(p_0_out__0[0]),
        .O(\result_d[31]_i_776_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2FFF2F2F2F2)) 
    \result_d[31]_i_777 
       (.I0(\result_d[31]_i_374_n_0 ),
        .I1(\result_d[31]_i_375_n_0 ),
        .I2(\result_d[31]_i_376_n_0 ),
        .I3(\result_d[31]_i_372_n_0 ),
        .I4(\result_d[31]_i_791_n_0 ),
        .I5(\result_d[31]_i_373_n_0 ),
        .O(\result_d[31]_i_777_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFFFFFAEAEAE)) 
    \result_d[31]_i_778 
       (.I0(\result_d[23]_i_100_n_0 ),
        .I1(\result_d[31]_i_375_n_0 ),
        .I2(\result_d[31]_i_376_n_0 ),
        .I3(\result_d_reg[31]_i_440_n_15 ),
        .I4(\result_d[31]_i_443_n_0 ),
        .I5(sum_negtive[8]),
        .O(\result_d[31]_i_778_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[31]_i_779 
       (.I0(sum_negtive[35]),
        .I1(\result_d_reg[31]_i_539_n_12 ),
        .I2(sum_negtive[37]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_539_n_10 ),
        .O(\result_d[31]_i_779_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_d[31]_i_78 
       (.I0(\result_d[31]_i_194_n_0 ),
        .I1(\result_d[31]_i_195_n_0 ),
        .O(\result_d[31]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFFFFFFFBFFF)) 
    \result_d[31]_i_780 
       (.I0(\result_d[31]_i_216_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[0] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[1] ),
        .O(\result_d[31]_i_780_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFABFFFFFF)) 
    \result_d[31]_i_781 
       (.I0(\result_d[31]_i_216_n_0 ),
        .I1(exponent_dif[2]),
        .I2(\result_d[31]_i_236_n_0 ),
        .I3(\operand_c_d_reg_n_0_[0] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(exponent_dif[1]),
        .O(\result_d[31]_i_781_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_782 
       (.I0(\operand_c_d_reg_n_0_[10] ),
        .I1(\operand_c_d_reg_n_0_[9] ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[8] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[7] ),
        .O(\result_d[31]_i_782_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_d[31]_i_783 
       (.I0(\operand_c_d_reg_n_0_[6] ),
        .I1(\operand_c_d_reg_n_0_[5] ),
        .I2(\result_d[31]_i_301_n_0 ),
        .I3(\operand_c_d_reg_n_0_[4] ),
        .I4(\result_d[31]_i_302_n_0 ),
        .I5(\operand_c_d_reg_n_0_[3] ),
        .O(\result_d[31]_i_783_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \result_d[31]_i_784 
       (.I0(\result_d[31]_i_494_n_0 ),
        .I1(\result_d[31]_i_216_n_0 ),
        .I2(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_784_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \result_d[31]_i_785 
       (.I0(\result_d[31]_i_216_n_0 ),
        .I1(\result_d[31]_i_477_n_0 ),
        .I2(\result_d[31]_i_151_n_0 ),
        .O(\result_d[31]_i_785_n_0 ));
  LUT6 #(
    .INIT(64'h0000000533333305)) 
    \result_d[31]_i_786 
       (.I0(sum_negtive[3]),
        .I1(\result_d_reg[31]_i_224_n_12 ),
        .I2(sum_negtive[4]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_224_n_11 ),
        .O(\result_d[31]_i_786_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    \result_d[31]_i_787 
       (.I0(sum_negtive[1]),
        .I1(\result_d_reg[31]_i_224_n_14 ),
        .I2(sum_negtive[2]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_224_n_13 ),
        .O(\result_d[31]_i_787_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \result_d[31]_i_788 
       (.I0(\result_d[31]_i_151_n_0 ),
        .I1(\result_d[31]_i_303_n_0 ),
        .I2(\result_d[31]_i_501_n_0 ),
        .I3(\result_d[31]_i_216_n_0 ),
        .O(\result_d[31]_i_788_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[31]_i_789 
       (.I0(\result_d[31]_i_151_n_0 ),
        .I1(\result_d[31]_i_780_n_0 ),
        .O(\result_d[31]_i_789_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    \result_d[31]_i_79 
       (.I0(\result_d[31]_i_196_n_0 ),
        .I1(p_0_out__0[1]),
        .I2(\result_d[31]_i_198_n_0 ),
        .I3(\result_d[31]_i_149_n_0 ),
        .O(\result_d[31]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \result_d[31]_i_790 
       (.I0(\result_d[31]_i_151_n_0 ),
        .I1(exponent_dif[1]),
        .I2(\result_d[31]_i_302_n_0 ),
        .I3(\operand_c_d_reg_n_0_[0] ),
        .I4(\result_d[31]_i_648_n_0 ),
        .I5(\result_d[31]_i_216_n_0 ),
        .O(\result_d[31]_i_790_n_0 ));
  LUT6 #(
    .INIT(64'h0000000ACCCCCC0A)) 
    \result_d[31]_i_791 
       (.I0(sum_negtive[1]),
        .I1(\result_d_reg[31]_i_224_n_14 ),
        .I2(sum_negtive[2]),
        .I3(\result_d[31]_i_6_n_0 ),
        .I4(flag_sum_positive),
        .I5(\result_d_reg[31]_i_224_n_13 ),
        .O(\result_d[31]_i_791_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \result_d[31]_i_8 
       (.I0(\result_d[30]_i_2_n_0 ),
        .I1(\result_d[30]_i_3_n_0 ),
        .I2(\result_d[30]_i_4_n_0 ),
        .I3(flag_underflow_result),
        .O(\result_d[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999555)) 
    \result_d[31]_i_80 
       (.I0(exponent_dif[6]),
        .I1(exponent_dif[5]),
        .I2(exponent_dif[2]),
        .I3(exponent_dif[1]),
        .I4(exponent_dif[3]),
        .I5(exponent_dif[4]),
        .O(\result_d[31]_i_80_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \result_d[31]_i_81 
       (.I0(shift_width_norm35_in),
        .I1(\result_d[31]_i_195_n_0 ),
        .I2(\result_d[31]_i_194_n_0 ),
        .O(\result_d[31]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h5555555455555540)) 
    \result_d[31]_i_82 
       (.I0(exponent_dif[9]),
        .I1(exponent_dif[1]),
        .I2(exponent_dif[0]),
        .I3(exponent_dif[2]),
        .I4(\result_d[31]_i_201_n_0 ),
        .I5(\result_d[31]_i_6_n_0 ),
        .O(\result_d[31]_i_82_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h08000888)) 
    \result_d[31]_i_83 
       (.I0(\result_d[31]_i_202_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[31]_i_203_n_0 ),
        .I3(\result_d[31]_i_91_n_0 ),
        .I4(\result_d[31]_i_204_n_0 ),
        .O(\result_d[31]_i_83_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \result_d[31]_i_84 
       (.I0(\result_d[31]_i_57_n_0 ),
        .I1(\result_d[31]_i_205_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[31]_i_206_n_0 ),
        .I4(\result_d[31]_i_207_n_0 ),
        .O(\result_d[31]_i_84_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hA280)) 
    \result_d[31]_i_85 
       (.I0(\result_d[31]_i_57_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_208_n_0 ),
        .I3(\result_d[31]_i_209_n_0 ),
        .O(\result_d[31]_i_85_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[31]_i_86 
       (.I0(\result_d[31]_i_210_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_191_n_0 ),
        .O(\result_d[31]_i_86_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFFBA)) 
    \result_d[31]_i_87 
       (.I0(\result_d[31]_i_57_n_0 ),
        .I1(\result_d[31]_i_192_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[31]_i_93_n_0 ),
        .O(\result_d[31]_i_87_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hB8FFB8CC)) 
    \result_d[31]_i_88 
       (.I0(\result_d[31]_i_158_n_0 ),
        .I1(\result_d[31]_i_59_n_0 ),
        .I2(\result_d[31]_i_56_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .I4(\result_d[31]_i_157_n_0 ),
        .O(\result_d[31]_i_88_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \result_d[31]_i_89 
       (.I0(\result_d[31]_i_182_n_0 ),
        .I1(\result_d[31]_i_57_n_0 ),
        .I2(\result_d[31]_i_59_n_0 ),
        .I3(\result_d[31]_i_211_n_0 ),
        .O(\result_d[31]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h88F888F8FFFF88F8)) 
    \result_d[31]_i_9 
       (.I0(\result_d[31]_i_19_n_0 ),
        .I1(\result_d[31]_i_20_n_0 ),
        .I2(\result_d[31]_i_21_n_0 ),
        .I3(\result_d[31]_i_22_n_0 ),
        .I4(\result_d[31]_i_23_n_0 ),
        .I5(\result_d[31]_i_24_n_0 ),
        .O(\result_d[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    \result_d[31]_i_90 
       (.I0(\result_d[31]_i_212_n_0 ),
        .I1(\result_d[31]_i_213_n_0 ),
        .I2(\result_d[31]_i_214_n_0 ),
        .I3(\result_d[31]_i_144_n_0 ),
        .I4(\result_d[31]_i_215_n_0 ),
        .O(\result_d[31]_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA3CFF3C00)) 
    \result_d[31]_i_91 
       (.I0(\result_d[31]_i_216_n_0 ),
        .I1(\result_d[31]_i_198_n_0 ),
        .I2(\result_d[31]_i_217_n_0 ),
        .I3(\result_d[31]_i_81_n_0 ),
        .I4(\result_d[31]_i_218_n_0 ),
        .I5(\result_d[31]_i_82_n_0 ),
        .O(\result_d[31]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_92 
       (.I0(\result_d[31]_i_219_n_0 ),
        .I1(\result_d[31]_i_220_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[31]_i_221_n_0 ),
        .I4(\result_d[31]_i_213_n_0 ),
        .I5(\result_d[31]_i_222_n_0 ),
        .O(\result_d[31]_i_92_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \result_d[31]_i_93 
       (.I0(\result_d[31]_i_144_n_0 ),
        .I1(\result_d[31]_i_223_n_0 ),
        .I2(\result_d_reg[31]_i_224_n_15 ),
        .I3(\result_d[31]_i_213_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .O(\result_d[31]_i_93_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \result_d[31]_i_94 
       (.I0(\result_d[31]_i_144_n_0 ),
        .I1(\result_d[31]_i_220_n_0 ),
        .I2(\result_d[31]_i_213_n_0 ),
        .I3(\result_d[31]_i_219_n_0 ),
        .O(\result_d[31]_i_94_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_d[31]_i_95 
       (.I0(\result_d[31]_i_221_n_0 ),
        .I1(\result_d[31]_i_222_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[31]_i_212_n_0 ),
        .I4(\result_d[31]_i_213_n_0 ),
        .I5(\result_d[31]_i_214_n_0 ),
        .O(\result_d[31]_i_95_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \result_d[31]_i_96 
       (.I0(\result_d[31]_i_225_n_0 ),
        .I1(\result_d[31]_i_226_n_0 ),
        .I2(\result_d[31]_i_227_n_0 ),
        .I3(\result_d[31]_i_228_n_0 ),
        .I4(\result_d[31]_i_229_n_0 ),
        .O(\result_d[31]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \result_d[31]_i_97 
       (.I0(\result_d[31]_i_230_n_0 ),
        .I1(\result_d[31]_i_231_n_0 ),
        .I2(\result_d[31]_i_232_n_0 ),
        .I3(\result_d[31]_i_233_n_0 ),
        .I4(\result_d[31]_i_234_n_0 ),
        .I5(\result_d[31]_i_235_n_0 ),
        .O(\result_d[31]_i_97_n_0 ));
  LUT5 #(
    .INIT(32'h54545445)) 
    \result_d[31]_i_98 
       (.I0(\result_d[31]_i_236_n_0 ),
        .I1(\result_d[31]_i_237_n_0 ),
        .I2(exponent_dif[6]),
        .I3(\result_d[31]_i_238_n_0 ),
        .I4(exponent_dif[5]),
        .O(\result_d[31]_i_98_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \result_d[31]_i_99 
       (.I0(\result_d[31]_i_239_n_0 ),
        .I1(\result_d[31]_i_240_n_0 ),
        .I2(\result_d[31]_i_241_n_0 ),
        .I3(\result_d[31]_i_242_n_0 ),
        .O(\result_d[31]_i_99_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[3]_i_1 
       (.I0(\result_d_reg[7]_i_2_n_12 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[3]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[4]_i_1 
       (.I0(\result_d_reg[7]_i_2_n_11 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[4]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[5]_i_1 
       (.I0(\result_d_reg[7]_i_2_n_10 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[5]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[6]_i_1 
       (.I0(\result_d_reg[7]_i_2_n_9 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[6]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[7]_i_1 
       (.I0(\result_d_reg[7]_i_2_n_8 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[7]_i_10 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[7]_i_19_n_0 ),
        .O(exponent_mantissa_round_i[1]));
  LUT6 #(
    .INIT(64'h55556A6666666A66)) 
    \result_d[7]_i_11 
       (.I0(exponent_mantissa_round_i[0]),
        .I1(\result_d[31]_i_3_n_0 ),
        .I2(rnd_mode_d[2]),
        .I3(\result_d[7]_i_20_n_0 ),
        .I4(\result_d[7]_i_21_n_0 ),
        .I5(\result_d[31]_i_4_n_0 ),
        .O(\result_d[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hBB0BBB0B0000BB0B)) 
    \result_d[7]_i_12 
       (.I0(\result_d[31]_i_22_n_0 ),
        .I1(\result_d[31]_i_19_n_0 ),
        .I2(\result_d[31]_i_21_n_0 ),
        .I3(\result_d[31]_i_24_n_0 ),
        .I4(\result_d[31]_i_23_n_0 ),
        .I5(\result_d[7]_i_22_n_0 ),
        .O(\result_d[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \result_d[7]_i_13 
       (.I0(\result_d[15]_i_25_n_0 ),
        .I1(\result_d[31]_i_23_n_0 ),
        .I2(\result_d[15]_i_26_n_0 ),
        .I3(\result_d[31]_i_40_n_0 ),
        .I4(\result_d[31]_i_42_n_0 ),
        .I5(\result_d[7]_i_23_n_0 ),
        .O(\result_d[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \result_d[7]_i_14 
       (.I0(\result_d[15]_i_26_n_0 ),
        .I1(\result_d[31]_i_23_n_0 ),
        .I2(\result_d[7]_i_23_n_0 ),
        .I3(\result_d[31]_i_40_n_0 ),
        .I4(\result_d[31]_i_42_n_0 ),
        .I5(\result_d[7]_i_24_n_0 ),
        .O(\result_d[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hBBB88888BBB8BBB8)) 
    \result_d[7]_i_15 
       (.I0(\result_d[7]_i_23_n_0 ),
        .I1(\result_d[31]_i_23_n_0 ),
        .I2(\result_d[7]_i_25_n_0 ),
        .I3(\result_d[23]_i_11_n_0 ),
        .I4(\result_d[7]_i_24_n_0 ),
        .I5(\result_d[31]_i_40_n_0 ),
        .O(\result_d[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBBB88888BBB8BBB8)) 
    \result_d[7]_i_16 
       (.I0(\result_d[7]_i_24_n_0 ),
        .I1(\result_d[31]_i_23_n_0 ),
        .I2(\result_d[7]_i_26_n_0 ),
        .I3(\result_d[23]_i_11_n_0 ),
        .I4(\result_d[7]_i_25_n_0 ),
        .I5(\result_d[31]_i_40_n_0 ),
        .O(\result_d[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \result_d[7]_i_17 
       (.I0(\result_d[7]_i_25_n_0 ),
        .I1(\result_d[31]_i_23_n_0 ),
        .I2(\result_d[7]_i_26_n_0 ),
        .I3(\result_d[31]_i_40_n_0 ),
        .I4(\result_d[31]_i_42_n_0 ),
        .I5(\result_d[7]_i_27_n_0 ),
        .O(\result_d[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBBB88888BBB8BBB8)) 
    \result_d[7]_i_18 
       (.I0(\result_d[7]_i_26_n_0 ),
        .I1(\result_d[31]_i_23_n_0 ),
        .I2(\result_d[7]_i_22_n_0 ),
        .I3(\result_d[23]_i_11_n_0 ),
        .I4(\result_d[7]_i_27_n_0 ),
        .I5(\result_d[31]_i_40_n_0 ),
        .O(\result_d[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \result_d[7]_i_19 
       (.I0(\result_d[7]_i_27_n_0 ),
        .I1(\result_d[31]_i_23_n_0 ),
        .I2(\result_d[7]_i_22_n_0 ),
        .I3(\result_d[31]_i_40_n_0 ),
        .I4(\result_d[31]_i_42_n_0 ),
        .I5(\result_d[31]_i_24_n_0 ),
        .O(\result_d[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAA)) 
    \result_d[7]_i_20 
       (.I0(\result_d[7]_i_28_n_0 ),
        .I1(\result_d[7]_i_12_n_0 ),
        .I2(\result_d[7]_i_29_n_0 ),
        .I3(\result_d[31]_i_13_n_0 ),
        .I4(\result_d[31]_i_14_n_0 ),
        .I5(flag_overflow_result_d_i_3_n_0),
        .O(\result_d[7]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0600)) 
    \result_d[7]_i_21 
       (.I0(rnd_mode_d[0]),
        .I1(\result_d[31]_i_7_n_0 ),
        .I2(rnd_mode_d[2]),
        .I3(rnd_mode_d[1]),
        .O(\result_d[7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \result_d[7]_i_22 
       (.I0(\result_d[31]_i_29_n_0 ),
        .I1(\result_d[31]_i_280_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .I3(\result_d[7]_i_30_n_0 ),
        .I4(\result_d[31]_i_59_n_0 ),
        .I5(\result_d[31]_i_186_n_0 ),
        .O(\result_d[7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEAEAAAAFEAE)) 
    \result_d[7]_i_23 
       (.I0(\result_d[31]_i_29_n_0 ),
        .I1(\result_d[31]_i_267_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .I3(\result_d[7]_i_31_n_0 ),
        .I4(\result_d[31]_i_59_n_0 ),
        .I5(\result_d[31]_i_180_n_0 ),
        .O(\result_d[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h000DDDDDDD0DDDDD)) 
    \result_d[7]_i_24 
       (.I0(\result_d[31]_i_66_n_0 ),
        .I1(\result_d[31]_i_184_n_0 ),
        .I2(\result_d[23]_i_37_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .I4(\result_d[31]_i_68_n_0 ),
        .I5(\result_d[23]_i_40_n_0 ),
        .O(\result_d[7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h7707777700077777)) 
    \result_d[7]_i_25 
       (.I0(\result_d[31]_i_187_n_0 ),
        .I1(\result_d[31]_i_66_n_0 ),
        .I2(\result_d[7]_i_32_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .I4(\result_d[31]_i_68_n_0 ),
        .I5(\result_d[7]_i_33_n_0 ),
        .O(\result_d[7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \result_d[7]_i_26 
       (.I0(\result_d[31]_i_29_n_0 ),
        .I1(\result_d[31]_i_278_n_0 ),
        .I2(\result_d[31]_i_57_n_0 ),
        .I3(\result_d[7]_i_34_n_0 ),
        .I4(\result_d[31]_i_59_n_0 ),
        .I5(\result_d[31]_i_183_n_0 ),
        .O(\result_d[7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h7707777700077777)) 
    \result_d[7]_i_27 
       (.I0(\result_d[31]_i_185_n_0 ),
        .I1(\result_d[31]_i_66_n_0 ),
        .I2(\result_d[7]_i_35_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .I4(\result_d[31]_i_68_n_0 ),
        .I5(\result_d[7]_i_36_n_0 ),
        .O(\result_d[7]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \result_d[7]_i_28 
       (.I0(rnd_mode_d[1]),
        .I1(rnd_mode_d[0]),
        .O(\result_d[7]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \result_d[7]_i_29 
       (.I0(\result_d[31]_i_12_n_0 ),
        .I1(\result_d[31]_i_31_n_0 ),
        .I2(\result_d[7]_i_37_n_0 ),
        .I3(\result_d[31]_i_35_n_0 ),
        .I4(\result_d[31]_i_10_n_0 ),
        .O(\result_d[7]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[7]_i_3 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[7]_i_12_n_0 ),
        .O(exponent_mantissa_round_i[0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[7]_i_30 
       (.I0(\result_d[15]_i_44_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[7]_i_38_n_0 ),
        .O(\result_d[7]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[7]_i_31 
       (.I0(\result_d[31]_i_271_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_154_n_0 ),
        .O(\result_d[7]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_d[7]_i_32 
       (.I0(\result_d[31]_i_174_n_0 ),
        .I1(\result_d[31]_i_365_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[31]_i_175_n_0 ),
        .I4(\result_d[31]_i_144_n_0 ),
        .I5(\result_d[31]_i_177_n_0 ),
        .O(\result_d[7]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'hFF005C5C)) 
    \result_d[7]_i_33 
       (.I0(\result_d[31]_i_178_n_0 ),
        .I1(\result_d[31]_i_389_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[15]_i_40_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .O(\result_d[7]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_d[7]_i_34 
       (.I0(\result_d[15]_i_41_n_0 ),
        .I1(\result_d[31]_i_91_n_0 ),
        .I2(\result_d[31]_i_252_n_0 ),
        .O(\result_d[7]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \result_d[7]_i_35 
       (.I0(\result_d[31]_i_145_n_0 ),
        .I1(\result_d[31]_i_152_n_0 ),
        .I2(\result_d[31]_i_91_n_0 ),
        .I3(\result_d[31]_i_147_n_0 ),
        .I4(\result_d[31]_i_143_n_0 ),
        .I5(\result_d[31]_i_144_n_0 ),
        .O(\result_d[7]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'hFF00ACAC)) 
    \result_d[7]_i_36 
       (.I0(\result_d[31]_i_153_n_0 ),
        .I1(\result_d[31]_i_341_n_0 ),
        .I2(\result_d[31]_i_144_n_0 ),
        .I3(\result_d[15]_i_42_n_0 ),
        .I4(\result_d[31]_i_91_n_0 ),
        .O(\result_d[7]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hA2000000AAAAAAAA)) 
    \result_d[7]_i_37 
       (.I0(\result_d[31]_i_21_n_0 ),
        .I1(\result_d[31]_i_107_n_0 ),
        .I2(\result_d[31]_i_93_n_0 ),
        .I3(\result_d[31]_i_57_n_0 ),
        .I4(\result_d[31]_i_68_n_0 ),
        .I5(\result_d[31]_i_34_n_0 ),
        .O(\result_d[7]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result_d[7]_i_38 
       (.I0(\result_d[31]_i_431_n_0 ),
        .I1(\result_d[31]_i_144_n_0 ),
        .I2(\result_d[31]_i_427_n_0 ),
        .I3(\result_d[31]_i_213_n_0 ),
        .I4(\result_d[31]_i_428_n_0 ),
        .O(\result_d[7]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[7]_i_4 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[7]_i_13_n_0 ),
        .O(exponent_mantissa_round_i[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[7]_i_5 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[7]_i_14_n_0 ),
        .O(exponent_mantissa_round_i[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[7]_i_6 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[7]_i_15_n_0 ),
        .O(exponent_mantissa_round_i[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[7]_i_7 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[7]_i_16_n_0 ),
        .O(exponent_mantissa_round_i[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[7]_i_8 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[7]_i_17_n_0 ),
        .O(exponent_mantissa_round_i[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[7]_i_9 
       (.I0(flag_overflow_result_d_i_3_n_0),
        .I1(\result_d[7]_i_18_n_0 ),
        .O(exponent_mantissa_round_i[2]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[8]_i_1 
       (.I0(\result_d_reg[15]_i_2_n_15 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[8]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_d[9]_i_1 
       (.I0(\result_d_reg[15]_i_2_n_14 ),
        .I1(\result_d[31]_i_8_n_0 ),
        .O(result[9]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[0] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[0]),
        .Q(result_O[0]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[10] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[10]),
        .Q(result_O[10]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[11] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[11]),
        .Q(result_O[11]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[12] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[12]),
        .Q(result_O[12]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[13] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[13]),
        .Q(result_O[13]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[14] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[14]),
        .Q(result_O[14]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[15] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[15]),
        .Q(result_O[15]));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[15]_i_2 
       (.CI(\result_d_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[15]_i_2_n_0 ,\result_d_reg[15]_i_2_n_1 ,\result_d_reg[15]_i_2_n_2 ,\result_d_reg[15]_i_2_n_3 ,\result_d_reg[15]_i_2_n_4 ,\result_d_reg[15]_i_2_n_5 ,\result_d_reg[15]_i_2_n_6 ,\result_d_reg[15]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\result_d_reg[15]_i_2_n_8 ,\result_d_reg[15]_i_2_n_9 ,\result_d_reg[15]_i_2_n_10 ,\result_d_reg[15]_i_2_n_11 ,\result_d_reg[15]_i_2_n_12 ,\result_d_reg[15]_i_2_n_13 ,\result_d_reg[15]_i_2_n_14 ,\result_d_reg[15]_i_2_n_15 }),
        .S(exponent_mantissa_round_i[15:8]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[16] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[16]),
        .Q(result_O[16]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[17] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[17]),
        .Q(result_O[17]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[18] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[18]),
        .Q(result_O[18]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[19] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[19]),
        .Q(result_O[19]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[1] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[1]),
        .Q(result_O[1]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[20] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[20]),
        .Q(result_O[20]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[21] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[21]),
        .Q(result_O[21]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[22] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[22]),
        .Q(result_O[22]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[23] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[23]),
        .Q(result_O[23]));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[23]_i_2 
       (.CI(\result_d_reg[15]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[23]_i_2_n_0 ,\result_d_reg[23]_i_2_n_1 ,\result_d_reg[23]_i_2_n_2 ,\result_d_reg[23]_i_2_n_3 ,\result_d_reg[23]_i_2_n_4 ,\result_d_reg[23]_i_2_n_5 ,\result_d_reg[23]_i_2_n_6 ,\result_d_reg[23]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({p_0_in[0],\result_d_reg[23]_i_2_n_9 ,\result_d_reg[23]_i_2_n_10 ,\result_d_reg[23]_i_2_n_11 ,\result_d_reg[23]_i_2_n_12 ,\result_d_reg[23]_i_2_n_13 ,\result_d_reg[23]_i_2_n_14 ,\result_d_reg[23]_i_2_n_15 }),
        .S(exponent_mantissa_round_i[23:16]));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[23]_i_33 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[23]_i_33_n_0 ,\result_d_reg[23]_i_33_n_1 ,\result_d_reg[23]_i_33_n_2 ,\result_d_reg[23]_i_33_n_3 ,\result_d_reg[23]_i_33_n_4 ,\result_d_reg[23]_i_33_n_5 ,\result_d_reg[23]_i_33_n_6 ,\result_d_reg[23]_i_33_n_7 }),
        .DI({\result_d[23]_i_51_n_0 ,\result_d[23]_i_52_n_0 ,\result_d[23]_i_53_n_0 ,\result_d[23]_i_54_n_0 ,\result_d[23]_i_55_n_0 ,\result_d[23]_i_56_n_0 ,\result_d[23]_i_57_n_0 ,\result_d[23]_i_58_n_0 }),
        .O(exponent_product0[7:0]),
        .S({\result_d[23]_i_59_n_0 ,\result_d[23]_i_60_n_0 ,\result_d[23]_i_61_n_0 ,\result_d[23]_i_62_n_0 ,\result_d[23]_i_63_n_0 ,\result_d[23]_i_64_n_0 ,\result_d[23]_i_65_n_0 ,\result_d[23]_i_66_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[24] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[24]),
        .Q(result_O[24]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[25] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[25]),
        .Q(result_O[25]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[26] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[26]),
        .Q(result_O[26]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[27] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[27]),
        .Q(result_O[27]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[28] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[28]),
        .Q(result_O[28]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[29] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[29]),
        .Q(result_O[29]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[2] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[2]),
        .Q(result_O[2]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[30] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[30]),
        .Q(result_O[30]));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[30]_i_45 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[30]_i_45_n_0 ,\result_d_reg[30]_i_45_n_1 ,\result_d_reg[30]_i_45_n_2 ,\result_d_reg[30]_i_45_n_3 ,\result_d_reg[30]_i_45_n_4 ,\result_d_reg[30]_i_45_n_5 ,\result_d_reg[30]_i_45_n_6 ,\result_d_reg[30]_i_45_n_7 }),
        .DI({\result_d[30]_i_51_n_0 ,\result_d[30]_i_52_n_0 ,\result_d[30]_i_53_n_0 ,\result_d[30]_i_54_n_0 ,\result_d[30]_i_55_n_0 ,p_0_out__0[1],leading_zero_count,exponent_product_d[0]}),
        .O({exponent_norm_result1[7:1],\NLW_result_d_reg[30]_i_45_O_UNCONNECTED [0]}),
        .S({\result_d[30]_i_58_n_0 ,\result_d[30]_i_59_n_0 ,\result_d[30]_i_60_n_0 ,\result_d[30]_i_61_n_0 ,\result_d[30]_i_62_n_0 ,\result_d[30]_i_63_n_0 ,\result_d[30]_i_64_n_0 ,\result_d[30]_i_65_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[30]_i_5 
       (.CI(\result_d_reg[23]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_result_d_reg[30]_i_5_CO_UNCONNECTED [7:6],\result_d_reg[30]_i_5_n_2 ,\result_d_reg[30]_i_5_n_3 ,\result_d_reg[30]_i_5_n_4 ,\result_d_reg[30]_i_5_n_5 ,\result_d_reg[30]_i_5_n_6 ,\result_d_reg[30]_i_5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_result_d_reg[30]_i_5_O_UNCONNECTED [7],p_0_in[7:1]}),
        .S({1'b0,exponent_mantissa_round_i[30:29],\result_d[30]_i_14_n_0 ,exponent_mantissa_round_i[27:24]}));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[31] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[31]),
        .Q(result_O[31]));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_129 
       (.CI(\result_d_reg[31]_i_283_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_129_n_0 ,\result_d_reg[31]_i_129_n_1 ,\result_d_reg[31]_i_129_n_2 ,\result_d_reg[31]_i_129_n_3 ,\result_d_reg[31]_i_129_n_4 ,\result_d_reg[31]_i_129_n_5 ,\result_d_reg[31]_i_129_n_6 ,\result_d_reg[31]_i_129_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\result_d_reg[31]_i_129_n_8 ,\result_d_reg[31]_i_129_n_9 ,\result_d_reg[31]_i_129_n_10 ,\result_d_reg[31]_i_129_n_11 ,\result_d_reg[31]_i_129_n_12 ,\result_d_reg[31]_i_129_n_13 ,\result_d_reg[31]_i_129_n_14 ,\result_d_reg[31]_i_129_n_15 }),
        .S({\result_d[31]_i_284_n_0 ,\result_d[31]_i_285_n_0 ,\result_d[31]_i_286_n_0 ,\result_d[31]_i_287_n_0 ,\result_d[31]_i_288_n_0 ,\result_d[31]_i_289_n_0 ,\result_d[31]_i_290_n_0 ,\result_d[31]_i_291_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_156 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_156_n_0 ,\result_d_reg[31]_i_156_n_1 ,\result_d_reg[31]_i_156_n_2 ,\result_d_reg[31]_i_156_n_3 ,\result_d_reg[31]_i_156_n_4 ,\result_d_reg[31]_i_156_n_5 ,\result_d_reg[31]_i_156_n_6 ,\result_d_reg[31]_i_156_n_7 }),
        .DI({\result_d[31]_i_344_n_0 ,\result_d[31]_i_345_n_0 ,\result_d[31]_i_346_n_0 ,\result_d[31]_i_347_n_0 ,\result_d[31]_i_348_n_0 ,\result_d[31]_i_349_n_0 ,\result_d[31]_i_350_n_0 ,\operand_c_d_reg_n_0_[23] }),
        .O(exponent_dif[7:0]),
        .S({\result_d[31]_i_351_n_0 ,\result_d[31]_i_352_n_0 ,\result_d[31]_i_353_n_0 ,\result_d[31]_i_354_n_0 ,\result_d[31]_i_355_n_0 ,\result_d[31]_i_356_n_0 ,\result_d[31]_i_357_n_0 ,\result_d[31]_i_358_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_18 
       (.CI(\result_d_reg[31]_i_51_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_result_d_reg[31]_i_18_CO_UNCONNECTED [7:5],flag_sum_positive,\NLW_result_d_reg[31]_i_18_CO_UNCONNECTED [3],\result_d_reg[31]_i_18_n_5 ,\result_d_reg[31]_i_18_n_6 ,\result_d_reg[31]_i_18_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_result_d_reg[31]_i_18_O_UNCONNECTED [7:4],\result_d_reg[31]_i_18_n_12 ,\result_d_reg[31]_i_18_n_13 ,\result_d_reg[31]_i_18_n_14 ,\result_d_reg[31]_i_18_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b1,\result_d[31]_i_52_n_0 ,\result_d[31]_i_53_n_0 ,\result_d[31]_i_54_n_0 ,\result_d[31]_i_55_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_199 
       (.CI(\result_d_reg[31]_i_415_n_0 ),
        .CI_TOP(1'b0),
        .CO({shift_width_norm35_in,\result_d_reg[31]_i_199_n_1 ,\result_d_reg[31]_i_199_n_2 ,\result_d_reg[31]_i_199_n_3 ,\result_d_reg[31]_i_199_n_4 ,\result_d_reg[31]_i_199_n_5 ,\result_d_reg[31]_i_199_n_6 ,\result_d_reg[31]_i_199_n_7 }),
        .DI({1'b0,shift_width_norm4[31],\result_d[31]_i_417_n_0 ,\result_d[31]_i_418_n_0 ,\result_d[31]_i_419_n_0 ,\result_d[31]_i_420_n_0 ,\result_d[31]_i_421_n_0 ,\result_d[31]_i_422_n_0 }),
        .O(\NLW_result_d_reg[31]_i_199_O_UNCONNECTED [7:0]),
        .S({\result_d_reg[31]_i_423_n_5 ,\result_d_reg[31]_i_423_n_5 ,\result_d_reg[31]_i_423_n_5 ,\result_d_reg[31]_i_423_n_5 ,\result_d_reg[31]_i_423_n_5 ,\result_d_reg[31]_i_423_n_5 ,\result_d_reg[31]_i_423_n_5 ,\result_d_reg[31]_i_423_n_5 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_200 
       (.CI(\result_d_reg[31]_i_156_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_result_d_reg[31]_i_200_CO_UNCONNECTED [7:1],\result_d_reg[31]_i_200_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\result_d[31]_i_424_n_0 }),
        .O({\NLW_result_d_reg[31]_i_200_O_UNCONNECTED [7:2],exponent_dif[9:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_0_in1_in,\result_d[31]_i_426_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_224 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_224_n_0 ,\result_d_reg[31]_i_224_n_1 ,\result_d_reg[31]_i_224_n_2 ,\result_d_reg[31]_i_224_n_3 ,\result_d_reg[31]_i_224_n_4 ,\result_d_reg[31]_i_224_n_5 ,\result_d_reg[31]_i_224_n_6 ,\result_d_reg[31]_i_224_n_7 }),
        .DI({shift_ab[7:2],1'b0,inject_carry_in}),
        .O({\result_d_reg[31]_i_224_n_8 ,\result_d_reg[31]_i_224_n_9 ,\result_d_reg[31]_i_224_n_10 ,\result_d_reg[31]_i_224_n_11 ,\result_d_reg[31]_i_224_n_12 ,\result_d_reg[31]_i_224_n_13 ,\result_d_reg[31]_i_224_n_14 ,\result_d_reg[31]_i_224_n_15 }),
        .S({\result_d[31]_i_454_n_0 ,\result_d[31]_i_455_n_0 ,\result_d[31]_i_456_n_0 ,\result_d[31]_i_457_n_0 ,\result_d[31]_i_458_n_0 ,\result_d[31]_i_459_n_0 ,\result_d[31]_i_460_n_0 ,\result_d[31]_i_461_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_283 
       (.CI(\result_d_reg[31]_i_519_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_283_n_0 ,\result_d_reg[31]_i_283_n_1 ,\result_d_reg[31]_i_283_n_2 ,\result_d_reg[31]_i_283_n_3 ,\result_d_reg[31]_i_283_n_4 ,\result_d_reg[31]_i_283_n_5 ,\result_d_reg[31]_i_283_n_6 ,\result_d_reg[31]_i_283_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,shift_ab[49:48]}),
        .O({\result_d_reg[31]_i_283_n_8 ,\result_d_reg[31]_i_283_n_9 ,\result_d_reg[31]_i_283_n_10 ,\result_d_reg[31]_i_283_n_11 ,\result_d_reg[31]_i_283_n_12 ,\result_d_reg[31]_i_283_n_13 ,\result_d_reg[31]_i_283_n_14 ,\result_d_reg[31]_i_283_n_15 }),
        .S({\result_d[31]_i_520_n_0 ,\result_d[31]_i_521_n_0 ,\result_d[31]_i_522_n_0 ,\result_d[31]_i_523_n_0 ,\result_d[31]_i_524_n_0 ,\result_d[31]_i_525_n_0 ,\result_d[31]_i_526_n_0 ,\result_d[31]_i_527_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_415 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_415_n_0 ,\result_d_reg[31]_i_415_n_1 ,\result_d_reg[31]_i_415_n_2 ,\result_d_reg[31]_i_415_n_3 ,\result_d_reg[31]_i_415_n_4 ,\result_d_reg[31]_i_415_n_5 ,\result_d_reg[31]_i_415_n_6 ,\result_d_reg[31]_i_415_n_7 }),
        .DI({\result_d[31]_i_576_n_0 ,\result_d[31]_i_577_n_0 ,\result_d[31]_i_578_n_0 ,\result_d[31]_i_579_n_0 ,\result_d[31]_i_580_n_0 ,\result_d[31]_i_581_n_0 ,\result_d[31]_i_582_n_0 ,\result_d[31]_i_583_n_0 }),
        .O(\NLW_result_d_reg[31]_i_415_O_UNCONNECTED [7:0]),
        .S({\result_d_reg[31]_i_423_n_5 ,\result_d_reg[31]_i_423_n_5 ,\result_d_reg[31]_i_423_n_5 ,\result_d[31]_i_584_n_0 ,\result_d[31]_i_585_n_0 ,\result_d[31]_i_586_n_0 ,\result_d[31]_i_587_n_0 ,\result_d[31]_i_588_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_423 
       (.CI(\result_d_reg[31]_i_589_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_result_d_reg[31]_i_423_CO_UNCONNECTED [7:3],\result_d_reg[31]_i_423_n_5 ,\NLW_result_d_reg[31]_i_423_CO_UNCONNECTED [1],\result_d_reg[31]_i_423_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,exponent_product_d[8],\result_d[31]_i_591_n_0 }),
        .O({\NLW_result_d_reg[31]_i_423_O_UNCONNECTED [7:2],shift_width_norm4[9:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,\result_d[31]_i_592_n_0 ,\result_d[31]_i_593_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_439 
       (.CI(\result_d_reg[31]_i_442_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_439_n_0 ,\result_d_reg[31]_i_439_n_1 ,\result_d_reg[31]_i_439_n_2 ,\result_d_reg[31]_i_439_n_3 ,\result_d_reg[31]_i_439_n_4 ,\result_d_reg[31]_i_439_n_5 ,\result_d_reg[31]_i_439_n_6 ,\result_d_reg[31]_i_439_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(sum_negtive[16:9]),
        .S({\result_d[31]_i_594_n_0 ,\result_d[31]_i_595_n_0 ,\result_d[31]_i_596_n_0 ,\result_d[31]_i_597_n_0 ,\result_d[31]_i_598_n_0 ,\result_d[31]_i_599_n_0 ,\result_d[31]_i_600_n_0 ,\result_d[31]_i_601_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_440 
       (.CI(\result_d_reg[31]_i_224_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_440_n_0 ,\result_d_reg[31]_i_440_n_1 ,\result_d_reg[31]_i_440_n_2 ,\result_d_reg[31]_i_440_n_3 ,\result_d_reg[31]_i_440_n_4 ,\result_d_reg[31]_i_440_n_5 ,\result_d_reg[31]_i_440_n_6 ,\result_d_reg[31]_i_440_n_7 }),
        .DI(shift_ab[15:8]),
        .O({\result_d_reg[31]_i_440_n_8 ,\result_d_reg[31]_i_440_n_9 ,\result_d_reg[31]_i_440_n_10 ,\result_d_reg[31]_i_440_n_11 ,\result_d_reg[31]_i_440_n_12 ,\result_d_reg[31]_i_440_n_13 ,\result_d_reg[31]_i_440_n_14 ,\result_d_reg[31]_i_440_n_15 }),
        .S({\result_d[31]_i_602_n_0 ,\result_d[31]_i_603_n_0 ,\result_d[31]_i_604_n_0 ,\result_d[31]_i_605_n_0 ,\result_d[31]_i_606_n_0 ,\result_d[31]_i_607_n_0 ,\result_d[31]_i_608_n_0 ,\result_d[31]_i_609_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_442 
       (.CI(\result_d[31]_i_610_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_442_n_0 ,\result_d_reg[31]_i_442_n_1 ,\result_d_reg[31]_i_442_n_2 ,\result_d_reg[31]_i_442_n_3 ,\result_d_reg[31]_i_442_n_4 ,\result_d_reg[31]_i_442_n_5 ,\result_d_reg[31]_i_442_n_6 ,\result_d_reg[31]_i_442_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(sum_negtive[8:1]),
        .S({\result_d[31]_i_611_n_0 ,\result_d[31]_i_612_n_0 ,\result_d[31]_i_613_n_0 ,\result_d[31]_i_614_n_0 ,\result_d[31]_i_615_n_0 ,\result_d[31]_i_616_n_0 ,\result_d[31]_i_617_n_0 ,\result_d[31]_i_618_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_51 
       (.CI(\result_d_reg[31]_i_129_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_51_n_0 ,\result_d_reg[31]_i_51_n_1 ,\result_d_reg[31]_i_51_n_2 ,\result_d_reg[31]_i_51_n_3 ,\result_d_reg[31]_i_51_n_4 ,\result_d_reg[31]_i_51_n_5 ,\result_d_reg[31]_i_51_n_6 ,\result_d_reg[31]_i_51_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\result_d_reg[31]_i_51_n_8 ,\result_d_reg[31]_i_51_n_9 ,\result_d_reg[31]_i_51_n_10 ,\result_d_reg[31]_i_51_n_11 ,\result_d_reg[31]_i_51_n_12 ,\result_d_reg[31]_i_51_n_13 ,\result_d_reg[31]_i_51_n_14 ,\result_d_reg[31]_i_51_n_15 }),
        .S({\result_d[31]_i_130_n_0 ,\result_d[31]_i_131_n_0 ,\result_d[31]_i_132_n_0 ,\result_d[31]_i_133_n_0 ,\result_d[31]_i_134_n_0 ,\result_d[31]_i_135_n_0 ,\result_d[31]_i_136_n_0 ,\result_d[31]_i_137_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_519 
       (.CI(\result_d_reg[31]_i_539_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_519_n_0 ,\result_d_reg[31]_i_519_n_1 ,\result_d_reg[31]_i_519_n_2 ,\result_d_reg[31]_i_519_n_3 ,\result_d_reg[31]_i_519_n_4 ,\result_d_reg[31]_i_519_n_5 ,\result_d_reg[31]_i_519_n_6 ,\result_d_reg[31]_i_519_n_7 }),
        .DI(shift_ab[47:40]),
        .O({\result_d_reg[31]_i_519_n_8 ,\result_d_reg[31]_i_519_n_9 ,\result_d_reg[31]_i_519_n_10 ,\result_d_reg[31]_i_519_n_11 ,\result_d_reg[31]_i_519_n_12 ,\result_d_reg[31]_i_519_n_13 ,\result_d_reg[31]_i_519_n_14 ,\result_d_reg[31]_i_519_n_15 }),
        .S({\result_d[31]_i_666_n_0 ,\result_d[31]_i_667_n_0 ,\result_d[31]_i_668_n_0 ,\result_d[31]_i_669_n_0 ,\result_d[31]_i_670_n_0 ,\result_d[31]_i_671_n_0 ,\result_d[31]_i_672_n_0 ,\result_d[31]_i_673_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_532 
       (.CI(\result_d_reg[31]_i_541_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_532_n_0 ,\result_d_reg[31]_i_532_n_1 ,\result_d_reg[31]_i_532_n_2 ,\result_d_reg[31]_i_532_n_3 ,\result_d_reg[31]_i_532_n_4 ,\result_d_reg[31]_i_532_n_5 ,\result_d_reg[31]_i_532_n_6 ,\result_d_reg[31]_i_532_n_7 }),
        .DI(shift_ab[31:24]),
        .O({\result_d_reg[31]_i_532_n_8 ,\result_d_reg[31]_i_532_n_9 ,\result_d_reg[31]_i_532_n_10 ,\result_d_reg[31]_i_532_n_11 ,\result_d_reg[31]_i_532_n_12 ,\result_d_reg[31]_i_532_n_13 ,\result_d_reg[31]_i_532_n_14 ,\result_d_reg[31]_i_532_n_15 }),
        .S({\result_d[31]_i_674_n_0 ,\result_d[31]_i_675_n_0 ,\result_d[31]_i_676_n_0 ,\result_d[31]_i_677_n_0 ,\result_d[31]_i_678_n_0 ,\result_d[31]_i_679_n_0 ,\result_d[31]_i_680_n_0 ,\result_d[31]_i_681_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_533 
       (.CI(\result_d_reg[31]_i_542_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_533_n_0 ,\result_d_reg[31]_i_533_n_1 ,\result_d_reg[31]_i_533_n_2 ,\result_d_reg[31]_i_533_n_3 ,\result_d_reg[31]_i_533_n_4 ,\result_d_reg[31]_i_533_n_5 ,\result_d_reg[31]_i_533_n_6 ,\result_d_reg[31]_i_533_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(sum_negtive[32:25]),
        .S({\result_d[31]_i_682_n_0 ,\result_d[31]_i_683_n_0 ,\result_d[31]_i_684_n_0 ,\result_d[31]_i_685_n_0 ,\result_d[31]_i_686_n_0 ,\result_d[31]_i_687_n_0 ,\result_d[31]_i_688_n_0 ,\result_d[31]_i_689_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_534 
       (.CI(\result_d_reg[31]_i_554_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_534_n_0 ,\result_d_reg[31]_i_534_n_1 ,\result_d_reg[31]_i_534_n_2 ,\result_d_reg[31]_i_534_n_3 ,\result_d_reg[31]_i_534_n_4 ,\result_d_reg[31]_i_534_n_5 ,\result_d_reg[31]_i_534_n_6 ,\result_d_reg[31]_i_534_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(sum_negtive[56:49]),
        .S({\result_d[31]_i_690_n_0 ,\result_d[31]_i_691_n_0 ,\result_d[31]_i_692_n_0 ,\result_d[31]_i_693_n_0 ,\result_d[31]_i_694_n_0 ,\result_d[31]_i_695_n_0 ,\result_d[31]_i_696_n_0 ,\result_d[31]_i_697_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_539 
       (.CI(\result_d_reg[31]_i_532_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_539_n_0 ,\result_d_reg[31]_i_539_n_1 ,\result_d_reg[31]_i_539_n_2 ,\result_d_reg[31]_i_539_n_3 ,\result_d_reg[31]_i_539_n_4 ,\result_d_reg[31]_i_539_n_5 ,\result_d_reg[31]_i_539_n_6 ,\result_d_reg[31]_i_539_n_7 }),
        .DI(shift_ab[39:32]),
        .O({\result_d_reg[31]_i_539_n_8 ,\result_d_reg[31]_i_539_n_9 ,\result_d_reg[31]_i_539_n_10 ,\result_d_reg[31]_i_539_n_11 ,\result_d_reg[31]_i_539_n_12 ,\result_d_reg[31]_i_539_n_13 ,\result_d_reg[31]_i_539_n_14 ,\result_d_reg[31]_i_539_n_15 }),
        .S({\result_d[31]_i_703_n_0 ,\result_d[31]_i_704_n_0 ,\result_d[31]_i_705_n_0 ,\result_d[31]_i_706_n_0 ,\result_d[31]_i_707_n_0 ,\result_d[31]_i_708_n_0 ,\result_d[31]_i_709_n_0 ,\result_d[31]_i_710_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_540 
       (.CI(\result_d_reg[31]_i_533_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_540_n_0 ,\result_d_reg[31]_i_540_n_1 ,\result_d_reg[31]_i_540_n_2 ,\result_d_reg[31]_i_540_n_3 ,\result_d_reg[31]_i_540_n_4 ,\result_d_reg[31]_i_540_n_5 ,\result_d_reg[31]_i_540_n_6 ,\result_d_reg[31]_i_540_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(sum_negtive[40:33]),
        .S({\result_d[31]_i_711_n_0 ,\result_d[31]_i_712_n_0 ,\result_d[31]_i_713_n_0 ,\result_d[31]_i_714_n_0 ,\result_d[31]_i_715_n_0 ,\result_d[31]_i_716_n_0 ,\result_d[31]_i_717_n_0 ,\result_d[31]_i_718_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_541 
       (.CI(\result_d_reg[31]_i_440_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_541_n_0 ,\result_d_reg[31]_i_541_n_1 ,\result_d_reg[31]_i_541_n_2 ,\result_d_reg[31]_i_541_n_3 ,\result_d_reg[31]_i_541_n_4 ,\result_d_reg[31]_i_541_n_5 ,\result_d_reg[31]_i_541_n_6 ,\result_d_reg[31]_i_541_n_7 }),
        .DI(shift_ab[23:16]),
        .O({\result_d_reg[31]_i_541_n_8 ,\result_d_reg[31]_i_541_n_9 ,\result_d_reg[31]_i_541_n_10 ,\result_d_reg[31]_i_541_n_11 ,\result_d_reg[31]_i_541_n_12 ,\result_d_reg[31]_i_541_n_13 ,\result_d_reg[31]_i_541_n_14 ,\result_d_reg[31]_i_541_n_15 }),
        .S({\result_d[31]_i_719_n_0 ,\result_d[31]_i_720_n_0 ,\result_d[31]_i_721_n_0 ,\result_d[31]_i_722_n_0 ,\result_d[31]_i_723_n_0 ,\result_d[31]_i_724_n_0 ,\result_d[31]_i_725_n_0 ,\result_d[31]_i_726_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_542 
       (.CI(\result_d_reg[31]_i_439_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_542_n_0 ,\result_d_reg[31]_i_542_n_1 ,\result_d_reg[31]_i_542_n_2 ,\result_d_reg[31]_i_542_n_3 ,\result_d_reg[31]_i_542_n_4 ,\result_d_reg[31]_i_542_n_5 ,\result_d_reg[31]_i_542_n_6 ,\result_d_reg[31]_i_542_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(sum_negtive[24:17]),
        .S({\result_d[31]_i_727_n_0 ,\result_d[31]_i_728_n_0 ,\result_d[31]_i_729_n_0 ,\result_d[31]_i_730_n_0 ,\result_d[31]_i_731_n_0 ,\result_d[31]_i_732_n_0 ,\result_d[31]_i_733_n_0 ,\result_d[31]_i_734_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_554 
       (.CI(\result_d_reg[31]_i_540_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_554_n_0 ,\result_d_reg[31]_i_554_n_1 ,\result_d_reg[31]_i_554_n_2 ,\result_d_reg[31]_i_554_n_3 ,\result_d_reg[31]_i_554_n_4 ,\result_d_reg[31]_i_554_n_5 ,\result_d_reg[31]_i_554_n_6 ,\result_d_reg[31]_i_554_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(sum_negtive[48:41]),
        .S({\result_d[31]_i_735_n_0 ,\result_d[31]_i_736_n_0 ,\result_d[31]_i_737_n_0 ,\result_d[31]_i_738_n_0 ,\result_d[31]_i_739_n_0 ,\result_d[31]_i_740_n_0 ,\result_d[31]_i_741_n_0 ,\result_d[31]_i_742_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_563 
       (.CI(\result_d_reg[31]_i_565_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_result_d_reg[31]_i_563_CO_UNCONNECTED [7:2],\result_d_reg[31]_i_563_n_6 ,\result_d_reg[31]_i_563_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_result_d_reg[31]_i_563_O_UNCONNECTED [7:3],sum_negtive[75:73]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\result_d[31]_i_743_n_0 ,\result_d[31]_i_744_n_0 ,\result_d[31]_i_745_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_564 
       (.CI(\result_d_reg[31]_i_534_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_564_n_0 ,\result_d_reg[31]_i_564_n_1 ,\result_d_reg[31]_i_564_n_2 ,\result_d_reg[31]_i_564_n_3 ,\result_d_reg[31]_i_564_n_4 ,\result_d_reg[31]_i_564_n_5 ,\result_d_reg[31]_i_564_n_6 ,\result_d_reg[31]_i_564_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(sum_negtive[64:57]),
        .S({\result_d[31]_i_746_n_0 ,\result_d[31]_i_747_n_0 ,\result_d[31]_i_748_n_0 ,\result_d[31]_i_749_n_0 ,\result_d[31]_i_750_n_0 ,\result_d[31]_i_751_n_0 ,\result_d[31]_i_752_n_0 ,\result_d[31]_i_753_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_565 
       (.CI(\result_d_reg[31]_i_564_n_0 ),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_565_n_0 ,\result_d_reg[31]_i_565_n_1 ,\result_d_reg[31]_i_565_n_2 ,\result_d_reg[31]_i_565_n_3 ,\result_d_reg[31]_i_565_n_4 ,\result_d_reg[31]_i_565_n_5 ,\result_d_reg[31]_i_565_n_6 ,\result_d_reg[31]_i_565_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(sum_negtive[72:65]),
        .S({\result_d[31]_i_754_n_0 ,\result_d[31]_i_755_n_0 ,\result_d[31]_i_756_n_0 ,\result_d[31]_i_757_n_0 ,\result_d[31]_i_758_n_0 ,\result_d[31]_i_759_n_0 ,\result_d[31]_i_760_n_0 ,\result_d[31]_i_761_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[31]_i_589 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[31]_i_589_n_0 ,\result_d_reg[31]_i_589_n_1 ,\result_d_reg[31]_i_589_n_2 ,\result_d_reg[31]_i_589_n_3 ,\result_d_reg[31]_i_589_n_4 ,\result_d_reg[31]_i_589_n_5 ,\result_d_reg[31]_i_589_n_6 ,\result_d_reg[31]_i_589_n_7 }),
        .DI({\result_d[31]_i_762_n_0 ,\result_d[31]_i_763_n_0 ,\result_d[31]_i_764_n_0 ,\result_d[31]_i_765_n_0 ,\result_d[31]_i_766_n_0 ,p_0_out__0[1],\result_d[31]_i_767_n_0 ,\result_d[31]_i_768_n_0 }),
        .O(shift_width_norm4[7:0]),
        .S({\result_d[31]_i_769_n_0 ,\result_d[31]_i_770_n_0 ,\result_d[31]_i_771_n_0 ,\result_d[31]_i_772_n_0 ,\result_d[31]_i_773_n_0 ,\result_d[31]_i_774_n_0 ,\result_d[31]_i_775_n_0 ,\result_d[31]_i_776_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[3] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[3]),
        .Q(result_O[3]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[4] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[4]),
        .Q(result_O[4]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[5] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[5]),
        .Q(result_O[5]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[6] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[6]),
        .Q(result_O[6]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[7] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[7]),
        .Q(result_O[7]));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \result_d_reg[7]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\result_d_reg[7]_i_2_n_0 ,\result_d_reg[7]_i_2_n_1 ,\result_d_reg[7]_i_2_n_2 ,\result_d_reg[7]_i_2_n_3 ,\result_d_reg[7]_i_2_n_4 ,\result_d_reg[7]_i_2_n_5 ,\result_d_reg[7]_i_2_n_6 ,\result_d_reg[7]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,exponent_mantissa_round_i[0]}),
        .O({\result_d_reg[7]_i_2_n_8 ,\result_d_reg[7]_i_2_n_9 ,\result_d_reg[7]_i_2_n_10 ,\result_d_reg[7]_i_2_n_11 ,\result_d_reg[7]_i_2_n_12 ,\result_d_reg[7]_i_2_n_13 ,\result_d_reg[7]_i_2_n_14 ,\result_d_reg[7]_i_2_n_15 }),
        .S({exponent_mantissa_round_i[7:1],\result_d[7]_i_11_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[8] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[8]),
        .Q(result_O[8]));
  FDCE #(
    .INIT(1'b0)) 
    \result_d_reg[9] 
       (.C(clk_I),
        .CE(1'b1),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(result[9]),
        .Q(result_O[9]));
  FDCE #(
    .INIT(1'b0)) 
    \rnd_mode_d_reg[0] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(rnd_mode[0]),
        .Q(rnd_mode_d[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rnd_mode_d_reg[1] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(rnd_mode[1]),
        .Q(rnd_mode_d[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rnd_mode_d_reg[2] 
       (.C(clk_I),
        .CE(\operand_b_d[31]_i_1_n_0 ),
        .CLR(\result_d[31]_i_2_n_0 ),
        .D(rnd_mode[2]),
        .Q(rnd_mode_d[2]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
