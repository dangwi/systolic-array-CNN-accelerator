`timescale 1ns/1ns  
/**********************************************************
// Copyright 
// Contact with 
================ runoob.v ======================
>> Author       : 
>> Date         : 
>> Description  : Welcome
>> note         : (1)To 
>>              : (2)My
>> V180121      : World.
************************************************************/

module fma #(
    parameter       WORDWIDTH = 32,
    parameter       EXPONENTWIDTH = 8,
    parameter       MANTISSAWIDTH = 23

)(
    //normal signals
    input wire                   clk_I,
    input wire                   rst_n_I,

    //operands
    input wire [WORDWIDTH-1:0]           operand_a_I,
    input wire [WORDWIDTH-1:0]           operand_b_I,
    input wire [WORDWIDTH-1:0]           operand_c_I,

    ////////////////////////
    //     RNE = 0;       //
    //     RTZ = 1;       //
    //     RD  = 2;       //
    //     RU  = 3;       //
    //     RNM = 4;       //
    ////////////////////////
    input wire [2:0]                     rnd_mode,
    input                       gate,   
    
    

    //output
    output wire [WORDWIDTH-1:0]         result_O,
    output wire                         flag_overflow_O,
    output wire                         flag_underflow_O,

    output wire                         done_valid_O


);

localparam     BIAS = 2**(EXPONENTWIDTH-1)-1;
localparam     PRECISION = MANTISSAWIDTH+1;
//wire flag_done;
localparam     SHIFT_WIDTH = $clog2(3*PRECISION+3);
localparam     EXPWIDTH = (EXPONENTWIDTH+2);

localparam     EXPONENT_MAX = 2**EXPONENTWIDTH-1;
localparam     EXPONENT_MIN = 0;

localparam     RNE = 0;
localparam     RTZ = 1;
localparam     RD  = 2;
localparam     RU  = 3;
localparam     RNM = 4;


///////////////////////////////////////////////////
//pipeline 1
///////////////////////////////////////////////////

reg [WORDWIDTH-1:0]   operand_a_d;
reg [WORDWIDTH-1:0]   operand_b_d;
reg [WORDWIDTH-1:0]   operand_c_d;
reg [2:0]             rnd_mode_d;
reg                   in_valid_d;

//pipeline 1 with aoto-gate signal
always @(posedge clk_I or negedge rst_n_I)begin
  if(~rst_n_I)begin
    operand_a_d <= 32'b0_00000000_00000000000000000000000;
    operand_b_d <= 32'b0_00000000_00000000000000000000000;
    operand_c_d <= 32'b0_00000000_00000000000000000000000;
    rnd_mode_d  <= 3'd0;
//    vld_d       <= 1'b0;
  end else if(~gate) begin 
    operand_a_d <= operand_a_I;
    operand_b_d <= operand_b_I;
    operand_c_d <= operand_c_I;
    rnd_mode_d  <= rnd_mode;
//    vld_d       <= ~gate;
  end
end

always@(posedge clk_I or negedge rst_n_I)begin
  if(~rst_n_I)
    in_valid_d <= 1'b0;
  else if(~gate)
    in_valid_d <= 1'b1;
  else
    in_valid_d <= 1'b0;
end

/*
///////////////////////////////
//  hidden pipe1
///////////////////////////////

reg [WORDWIDTH-1:0]   operand_a_d;
reg [WORDWIDTH-1:0]   operand_b_d;
reg [WORDWIDTH-1:0]   operand_c_d;
reg [2:0]             rnd_mode_d;

//pipeline 1 with aoto-gate signal
always @(*)begin
  if(~rst_n_I)begin
    operand_a_d = 32'b0_00000000_00000000000000000000000;
    operand_b_d = 32'b0_00000000_00000000000000000000000;
    operand_c_d = 32'b0_00000000_00000000000000000000000;
    rnd_mode_d  = 3'd0;
  end else if(~gate) begin 
    operand_a_d = operand_a_I;
    operand_b_d = operand_b_I;
    operand_c_d = operand_c_I;
    rnd_mode_d  = rnd_mode;
  end
end
*/



///////////////////////////////////////////////////
//preprocess
///////////////////////////////////////////////////
// wire                               is_normal_a;
// wire                               is_normal_b;
// wire                               is_normal_c;

wire                               sign_a;
wire                               sign_b;
wire                               sign_c;
wire         [EXPONENTWIDTH-1:0]   exponent_bias_a;
wire         [EXPONENTWIDTH-1:0]   exponent_bias_b;
wire         [EXPONENTWIDTH-1:0]   exponent_bias_c;
//wire signed  [EXPONENTWIDTH  :0]   exponent_a;
//wire signed  [EXPONENTWIDTH  :0]   exponent_b;
//wire signed  [EXPONENTWIDTH  :0]   exponent_c;
wire         [MANTISSAWIDTH-1:0]   mantissa_a;
wire         [MANTISSAWIDTH-1:0]   mantissa_b;
wire         [MANTISSAWIDTH-1:0]   mantissa_c;

//wire signed  [EXPONENTWIDTH+1:0]   exponent_dif;

wire                               flag_normal_a;
wire                               flag_normal_b;
wire                               flag_normal_c;
wire                               hidBit_a;
wire                               hidBit_b;  
wire                               hidBit_c;    

wire         [MANTISSAWIDTH:0]     significand_a;
wire         [MANTISSAWIDTH:0]     significand_b;
wire         [MANTISSAWIDTH:0]     significand_c;  


assign sign_a = operand_a_d[WORDWIDTH-1];
assign sign_b = operand_b_d[WORDWIDTH-1];
assign sign_c = operand_c_d[WORDWIDTH-1];

assign exponent_bias_a = operand_a_d[WORDWIDTH-2:MANTISSAWIDTH];
assign exponent_bias_b = operand_b_d[WORDWIDTH-2:MANTISSAWIDTH];
assign exponent_bias_c = operand_c_d[WORDWIDTH-2:MANTISSAWIDTH];

//assign exponent_a = signed'($signed({1'd0,exponent_bias_a}) - signed'(BIAS) + 1'd1 - $signed({1'd0,flag_normal_a}));
//assign exponent_b = signed'($signed({1'd0,exponent_bias_b}) - signed'(BIAS) + 1'd1 - $signed({1'd0,flag_normal_b}));
//assign exponent_c = signed'($signed({1'd0,exponent_bias_c}) - signed'(BIAS) + 1'd1 - $signed({1'd0,flag_normal_c}));

assign mantissa_a = operand_a_d[MANTISSAWIDTH-1:0];
assign mantissa_b = operand_b_d[MANTISSAWIDTH-1:0];
assign mantissa_c = operand_c_d[MANTISSAWIDTH-1:0];

assign flag_normal_a =  ((&exponent_bias_a) == 1'd1)
                        ? 1'd0
                        : (((|exponent_bias_a) == 1'd0)
                          ? 1'd0
                          : 1'd1);
assign flag_normal_b =  ((&exponent_bias_b) == 1'd1)
                        ? 1'd0
                        : (((|exponent_bias_b) == 1'd0)
                          ? 1'd0
                          : 1'd1);
assign flag_normal_c =  ((&exponent_bias_c) == 1'd1)
                        ? 1'd0
                        : (((|exponent_bias_c) == 1'd0)
                          ? 1'd0
                          : 1'd1);

//assign exponent_dif = exponent_c - exponent_a - exponent_b;

assign hidBit_a = |exponent_bias_a;
assign hidBit_b = |exponent_bias_b;
assign hidBit_c = |exponent_bias_c;

assign significand_a = {hidBit_a,mantissa_a};
assign significand_b = {hidBit_b,mantissa_b};
assign significand_c = {hidBit_c,mantissa_c};


///////////////////////////////////////////////////////////////////////////////////////////////////////
//flags for NAN/Infinite/subnormal/zero 
///////////////////////////////////////////////////////////////////////////////////////////////////////
wire   flag_NAN_a;
wire   flag_NAN_b;
wire   flag_NAN_c;

wire   flag_INF_a;
wire   flag_INF_b;
wire   flag_INF_c;

wire   flag_subnormal_a;
wire   flag_subnormal_b;
wire   flag_subnormal_c;

wire   flag_zero_a;
wire   flag_zero_b;
wire   flag_zero_c;

assign flag_NAN_a = exponent_bias_a == {EXPONENTWIDTH{1'd1}}
                    ? ((mantissa_a == {MANTISSAWIDTH{1'd0}})
                        ? 0
                        : 1)
                    : 0;
assign flag_NAN_b = exponent_bias_b == {EXPONENTWIDTH{1'd1}}
                    ? ( mantissa_b == {MANTISSAWIDTH{1'd0}}
                        ? 0
                        : 1)
                    : 0;
assign flag_NAN_c = exponent_bias_c == {EXPONENTWIDTH{1'd1}}
                    ? ( mantissa_c == {MANTISSAWIDTH{1'd0}}
                        ? 0
                        : 1)
                    : 0;

assign flag_INF_a = exponent_bias_a == {EXPONENTWIDTH{1'd1}}
                    ? ( mantissa_a == {MANTISSAWIDTH{1'd0}}
                        ? 1
                        : 0)
                    : 0;
assign flag_INF_b = exponent_bias_b == {EXPONENTWIDTH{1'd1}}
                    ? ( mantissa_b == {MANTISSAWIDTH{1'd0}}
                        ? 1
                        : 0)
                    : 0;
assign flag_INF_c = exponent_bias_c == {EXPONENTWIDTH{1'd1}}
                    ? ( mantissa_c == {MANTISSAWIDTH{1'd0}}
                        ? 1
                        : 0)
                    : 0;

assign flag_subnormal_a = exponent_bias_a == {EXPONENTWIDTH{1'd0}}
                          ? (mantissa_a == {MANTISSAWIDTH{1'd0}}
                            ? 0
                            : 1)
                          : 0;
assign flag_subnormal_b = exponent_bias_b == {EXPONENTWIDTH{1'd0}}
                          ? (mantissa_b == {MANTISSAWIDTH{1'd0}}
                            ? 0
                            : 1)
                          : 0;
assign flag_subnormal_c = exponent_bias_c == {EXPONENTWIDTH{1'd0}}
                          ? (mantissa_c == {MANTISSAWIDTH{1'd0}}
                            ? 0
                            : 1)
                          : 0;

assign flag_zero_a = exponent_bias_a == {EXPONENTWIDTH{1'd0}}
                     ? (mantissa_a == {EXPONENTWIDTH{1'd0}}
                       ? 1
                       : 0)
                     : 0;
assign flag_zero_b = exponent_bias_b == {EXPONENTWIDTH{1'd0}}
                     ? (mantissa_b == {EXPONENTWIDTH{1'd0}}
                       ? 1
                       : 0)
                     : 0;
assign flag_zero_c = exponent_bias_c == {EXPONENTWIDTH{1'd0}}
                     ? (mantissa_c == {EXPONENTWIDTH{1'd0}}
                       ? 1
                       : 0)
                     : 0;


////////////////////////////////////////////////////////////////////////////////
//alignment
////////////////////////////////////////////////////////////////////////////////

wire signed [EXPWIDTH-1:0]  exponent_addend;
wire signed [EXPWIDTH-1:0]  exponent_product;
wire signed [EXPWIDTH-1:0]  exponent_dif;

//wire signed [EXPWIDTH-1:0]  exponent_shift_result;
wire signed [EXPWIDTH-1:0]  exponent_alignment_result;

wire        [SHIFT_WIDTH-1:0]    shift_width_c;
wire        [3*PRECISION+3:0]    shift_c;           //3p+4 bits shift_c
wire        [PRECISION-1  :0]    shift_c_appendix;  //p bits sticky
wire                             sticky_alignment;

//with the bias
//assign exponent_addend = exponent_c;
//assign exponent_product = exponent_a + exponent_b;
assign exponent_addend = $signed({1'd0,exponent_bias_c})  +  $signed({1'd0,flag_subnormal_c});

assign exponent_product = (flag_zero_a || flag_zero_b)
                          ? (2 - $signed(BIAS))
                          : (   $signed({1'd0,exponent_bias_a}) + $signed({1'd0,flag_subnormal_a})
                                     + $signed({1'd0,exponent_bias_b}) + $signed({1'd0,flag_subnormal_b})
                                     - $signed(BIAS));

assign exponent_dif = exponent_addend - exponent_product;

assign exponent_alignment_result = (exponent_dif > 0)
                               ? exponent_addend
                               : exponent_product;

assign shift_width_c = (exponent_dif <= $signed(-2*PRECISION - 1))
                 ? 3*PRECISION + 4
                 : (exponent_dif <= $signed(PRECISION + 2)
                   ? $unsigned($signed(PRECISION) + 3 - exponent_dif)
                   : 0
                   );

assign {shift_c , shift_c_appendix} = (significand_c << (3*PRECISION + 4)) >> shift_width_c;

assign sticky_alignment = (| shift_c_appendix);


/////////////////////////////////////////////////////////////////////////////////
//product
/////////////////////////////////////////////////////////////////////////////////
wire        [2*PRECISION-1:0]   product_ab;

assign product_ab = significand_a * significand_b;


/////////////////////////////////////////////////////////////////////////////////
//ab shift
/////////////////////////////////////////////////////////////////////////////////
wire        [3*PRECISION+3:0]   shift_ab;  //3p+4 bits shift_ab

assign shift_ab = product_ab << 2; //aotomatically add 0s to teh left


/////////////////////////////////////////////////////////////////////////////////
//Adder
/////////////////////////////////////////////////////////////////////////////////
wire                     flag_effective_subtraction;
wire                     inject_carry_in;  // inject carry for subtractions if needed

//wire [3*PRECISION+3:0]   addend_c;
wire [3*PRECISION+3:0]   addend_temp_c;

wire [3*PRECISION+3:0]   sum; //no overflow can happen actually,if effevtive subtraction doesn't happen, it will be the absolute value of sum 
wire [3*PRECISION+4:0]   sum_temp;  //3p+5 bits sum_temp
wire signed              flag_sum_positive;

wire                     sign_result;

assign flag_effective_subtraction = sign_a ^ sign_b ^ sign_c;
assign inject_carry_in = flag_effective_subtraction & (~sticky_alignment);

assign addend_temp_c = (flag_effective_subtraction) ? ~shift_c : shift_c;
//assign addend_c = addend_temp_c + inject_carry_in; 

assign sum_temp = shift_ab + addend_temp_c + inject_carry_in;
assign flag_sum_positive = sum_temp[3*PRECISION+4];

wire [3*PRECISION+4:0]   sum_negtive;
assign sum_negtive = -sum_temp;
assign sum = (flag_effective_subtraction && (~flag_sum_positive)) 
             ? sum_negtive[3*PRECISION+3:0]
             : sum_temp[3*PRECISION+3:0];

wire                    sign_product;
assign sign_product = sign_a ^ sign_b;
//assign sign_result = (flag_effective_subtraction == 1'b0)
//                     ? sign_c
//                     : ((flag_sum_positive == 1'b1)
//                        ? sign_product
//                        : sign_c
//                       );

assign sign_result = (flag_effective_subtraction && (flag_sum_positive == sign_product) )
                     ? 1'b1
                     : (flag_effective_subtraction 
                        ? 1'b0
                        : sign_product
                       );





///////////////////////////////////////////////////
//pipeline 2
///////////////////////////////////////////////////

// reg        [3*PRECISION+3:0]     sum_d;
// reg signed [EXPWIDTH-1:0]   exponent_dif_d;
// reg                              flag_effective_subtraction_d;
// reg signed [EXPWIDTH-1:0]   exponent_product_d;
// reg        [SHIFT_WIDTH-1:0]     shift_width_c_d;
// reg signed [EXPWIDTH-1:0]   exponent_alignment_result_d;
// reg                              sticky_alignment_d;
// reg        [2:0]                 rnd_mode_d_d;
// reg                              flag_NAN_a_d;
// reg                              flag_NAN_b_d;
// reg                              flag_NAN_c_d;
// reg                              sign_result_d;
// reg                              in_valid_d_d;


// always @(posedge clk_I or negedge rst_n_I)begin
//   if(~rst_n_I)begin
//     sum_d <= 0;
//     exponent_dif_d <= 0;
//     flag_effective_subtraction_d <= 0;
//     exponent_product_d <= 0;
//     shift_width_c_d <= 0;
//     exponent_alignment_result_d <= 0;
//     sticky_alignment_d <= 0;
//     rnd_mode_d_d <= 0;
//     flag_NAN_a_d <= 0;
//     flag_NAN_b_d <= 0;
//     flag_NAN_c_d <= 0;
//     sign_result_d <= 0;
//     in_valid_d_d <= 1'b0;
//   end
//   else begin
//     sum_d <= sum;
//     exponent_dif_d <= exponent_dif;
//     flag_effective_subtraction_d <= flag_effective_subtraction;
//     exponent_product_d <= exponent_product;
//     shift_width_c_d <= shift_width_c;
//     exponent_alignment_result_d <= exponent_alignment_result;
//     sticky_alignment_d <= sticky_alignment;
//     rnd_mode_d_d <= rnd_mode_d;
//     flag_NAN_a_d <= flag_NAN_a;
//     flag_NAN_b_d <= flag_NAN_b;
//     flag_NAN_c_d <= flag_NAN_c;  
//     sign_result_d <= sign_result;
//     in_valid_d_d <= in_valid_d;
//   end
// end




//////////////////////////
//  hidden pipe2
//////////////////////////
reg        [3*PRECISION+3:0]     sum_d;
reg signed [EXPWIDTH-1:0]   exponent_dif_d;
reg                              flag_effective_subtraction_d;
reg signed [EXPWIDTH-1:0]   exponent_product_d;
reg        [SHIFT_WIDTH-1:0]     shift_width_c_d;
reg signed [EXPWIDTH-1:0]   exponent_alignment_result_d;
reg                              sticky_alignment_d;
reg        [2:0]                 rnd_mode_d_d;
reg                              flag_NAN_a_d;
reg                              flag_NAN_b_d;
reg                              flag_NAN_c_d;
reg                              sign_result_d;
reg                              in_valid_d_d;


always @(*)begin
    sum_d = sum;
    exponent_dif_d = exponent_dif;
    flag_effective_subtraction_d = flag_effective_subtraction;
    exponent_product_d = exponent_product;
    shift_width_c_d = shift_width_c;
    exponent_alignment_result_d = exponent_alignment_result;
    sticky_alignment_d = sticky_alignment;
    rnd_mode_d_d = rnd_mode_d;
    flag_NAN_a_d = flag_NAN_a;
    flag_NAN_b_d = flag_NAN_b;
    flag_NAN_c_d = flag_NAN_c;  
    sign_result_d = sign_result;
    in_valid_d_d = in_valid_d;

end


/////////////////////////////////////////////////////////////////////////////////
//Normalization
/////////////////////////////////////////////////////////////////////////////////
parameter LEADONE_WIDTH = $clog2(2*PRECISION + 3);


wire        [LEADONE_WIDTH-1:0]   leading_zero_count;
wire                              flag_no_one;

wire        [SHIFT_WIDTH-1:0]     shift_width_norm;
wire signed [EXPWIDTH   -1:0]   exponent_norm_result;

wire        [PRECISION    :0]         significand_norm;    //p+1 bits significand
wire        [2*PRECISION+2:0]     sticky_norm;     //2p+3 bits sticky

wire signed [EXPWIDTH   -1:0]   exponent_norm_norm_result;

wire                              sticky_result;


VAR_LZC #(
  .C_WIDTH                (2*PRECISION + 3),
  .C_LEADONE_WIDTH        (LEADONE_WIDTH)
  ) LZC_U0(
   .data_I                (sum_d[2*PRECISION+2:0]),
   .leading_one_O         (leading_zero_count  ),
   .no_one_O              (flag_no_one         ) 
   );


// assign shift_width_norm = exponent_dif > 2
//                           ? shift_width_c
//                           : (((exponent_product-$signed({1'd0,leading_zero_count})+2) >= (signed'(EXPONENT_MIN)-signed'(BIAS)))
//                             ? (PRECISION+2+leading_zero_count)
//                             : unsigned'(signed'(PRECISION)+4-signed'(EXPONENT_MIN)+exponent_product)
//                             );

assign shift_width_norm = ((exponent_dif_d <= 0)||(flag_effective_subtraction_d && (exponent_dif_d <= 2)))
                          ? ( (((exponent_product_d - $signed({1'd0,leading_zero_count}) +1)>= 0 )&&(!flag_no_one))
                              ? PRECISION+2+leading_zero_count
                              : $unsigned($signed(PRECISION)+2+exponent_dif_d)    //subnormal
                          )
                          : shift_width_c_d;




// assign exponent_norm_result =  exponent_dif > 2
//                                ? exponent_c
//                                : (((exponent_product-$signed({1'd0,leading_zero_count})+2) >= (signed'(EXPONENT_MIN)-signed'(BIAS)))
//                                   ? (exponent_product-$signed({1'd0,leading_zero_count})+2)
//                                   : (signed'(EXPONENT_MIN)-signed'(BIAS))
//                                   );

assign exponent_norm_result = ((exponent_dif_d <= 0)||(flag_effective_subtraction_d && (exponent_dif_d <= 2)))
                              ? ( (((exponent_product_d - $signed({1'd0,leading_zero_count}) +1)>=0 )&&(!flag_no_one))
                                  ? exponent_product_d - $signed({1'd0,leading_zero_count}) +1
                                  : EXPONENT_MIN
                              )
                              : exponent_alignment_result_d;




wire [3*PRECISION+4:0]   sum_norm;   //3p+4+1=3p+5 bits with 1 bit carry
assign sum_norm = sum_d << shift_width_norm;

assign {significand_norm,sticky_norm} = (sum_norm[3*PRECISION+4] == 1'd1)
                                        ? (sum_norm >> 1)
                                        : ((sum_norm[3*PRECISION+3] == 1'd1)
                                          ? sum_norm
                                          : ((sum_norm[3*PRECISION+2] == 1'd1)
                                            ? sum_norm << 1
                                            : 0
                                            )
                                        );    

assign exponent_norm_norm_result = (sum_norm[3*PRECISION+4] == 1'd1)
                                   ? (exponent_norm_result + 1)
                                   : ((sum_norm[3*PRECISION+3] == 1'd1)
                                    ? exponent_norm_result
                                    : ((sum_norm[3*PRECISION+2] == 1'd1)
                                      ? (exponent_norm_result - 1)
                                       : 0
                                       )
                                   );   

assign sticky_result = (|sticky_norm) | sticky_alignment_d;



/////////////////////////////////////////////////////////////////////////////////
//Rounding RNE
/////////////////////////////////////////////////////////////////////////////////
// wire                                            sign_round;
// wire signed [EXPONENTWIDTH-1:0]                 exponent_round;
// wire        [PRECISION-1:0]                     significand_round;
// wire                                            sticky;
wire        [EXPONENTWIDTH-1:0]                 exponent_bias_preround;
wire        [MANTISSAWIDTH-1:0]                 mantissa_preround;
//wire        [EXPONENTWIDTH-1:0]                 exponent_bias_norm;
wire        [EXPONENTWIDTH+MANTISSAWIDTH-1:0]   exponent_mantissa_round_i;
wire        [EXPONENTWIDTH+MANTISSAWIDTH-1:0]   exponent_mantissa_round_o;
wire        [1:0]                               round_sticky_bit;
wire                                            sign_round;

wire                                            flag_round_overflow_i;
wire                                            flag_round_underflow_i;
wire                                            flag_round_overflow_o;
wire                                            flag_round_underflow_o;
wire                                            flag_round_zero;

reg                                             round_success;
wire                                            round_odd;

assign flag_round_overflow_i = exponent_norm_norm_result >= EXPONENT_MAX;
assign flag_round_underflow_i= exponent_norm_norm_result == EXPONENT_MIN;

assign exponent_bias_preround =   flag_round_overflow_i
                                ? (EXPONENT_MAX-1)
                                : $unsigned(exponent_norm_norm_result[EXPONENTWIDTH-1:0] );
assign mantissa_preround      =   flag_round_overflow_i
                                ? 0  //reserved
                                : significand_norm[PRECISION-1:1];


assign exponent_mantissa_round_i = {exponent_bias_preround,mantissa_preround};
assign round_sticky_bit = flag_round_overflow_i? 2'b11 : {significand_norm[0],sticky_result};
assign round_odd = significand_norm[1];

always @(*)begin :round
  case(rnd_mode_d_d)
    RNE:     round_success = (round_sticky_bit[1] == 1'd0)? 0 : ((round_sticky_bit[0]==1'd0)? round_odd : 1'b1);
    RTZ:     round_success = 1'b0;
    RD:      round_success = (|round_sticky_bit)? sign_result: 1'b0;
    RU:      round_success = (|round_sticky_bit)? (~sign_result): 1'b0;
    RNM:     round_success = round_sticky_bit[1];
    default: round_success = 1'bx;
  endcase  
end



assign exponent_mantissa_round_o = exponent_mantissa_round_i + round_success;
assign flag_round_zero = (exponent_mantissa_round_o == 0) && (round_sticky_bit == 0);

assign sign_round = (flag_round_zero && flag_effective_subtraction_d)
                    ? (rnd_mode_d_d == RD)
                    : sign_result_d;
                    

assign flag_round_overflow_o  = exponent_mantissa_round_o[EXPONENTWIDTH+MANTISSAWIDTH-1:MANTISSAWIDTH] == EXPONENT_MAX;
assign flag_round_underflow_o = exponent_mantissa_round_o[EXPONENTWIDTH+MANTISSAWIDTH-1:MANTISSAWIDTH] == EXPONENT_MIN;



/////////////////////////////////////////////////////////////////////////////////
//Result calculation
////////////////////////////////////////////////////////////////////////////////
// wire   flag_overflow_final;
// wire   flag_underflow_final;
//wire [WORDWIDTH-1:0]   result_final;
wire                   flag_overflow_result;
wire                   flag_underflow_result;
wire [WORDWIDTH-1:0]   result;
//wire                   done_valid_result; 

assign flag_overflow_result  = (flag_round_overflow_i | flag_round_overflow_o);
assign flag_underflow_result = flag_round_underflow_o;

assign result = (flag_NAN_a_d | flag_NAN_b_d | flag_NAN_c_d) 
                  ? 0
                  : (   flag_round_underflow_o 
                        ? 0
                        : {sign_round,exponent_mantissa_round_o});

//assign done_valid_result = 1'd1;


///////////////////////////////////////////////////
//pipeline 3
///////////////////////////////////////////////////
reg                   flag_overflow_result_d;
reg                   flag_underflow_result_d;
reg [WORDWIDTH-1:0]   result_d;
//reg                   done_valid_result_d; 
reg                   in_valid_d_d_d;


always@(posedge clk_I or negedge rst_n_I)begin
  if(~rst_n_I)begin
    flag_overflow_result_d <= 0;
    flag_underflow_result_d <= 0;
    result_d <= 0;
//    done_valid_result_d <= 0;
    in_valid_d_d_d <= 1'b0;
  end
  else begin
    flag_overflow_result_d <= flag_overflow_result;
    flag_underflow_result_d <= flag_underflow_result;
    result_d <= result;
//    done_valid_result_d <= done_valid_result;
    in_valid_d_d_d <= in_valid_d_d; 
  end
end

///////////////////////////////////////////////////////
assign result_O = result_d;
assign flag_overflow_O = flag_overflow_result_d;
assign flag_underflow_O = flag_underflow_result_d;
assign done_valid_O = in_valid_d_d_d;




endmodule
