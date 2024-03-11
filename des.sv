module des(input clk, reset, load_i, decrypt_i,
           input [63:0] data_i, key_i,
           output [63:0] data_o,
           output ready_o);

  logic [63:0] data_o;
  logic ready_o;

  logic [3:0] stage1_iter;

  logic [3:0] next_stage1_iter;

  logic next_ready_o;

  logic [63:0] next_data_o;

  logic data_ready;

  logic next_data_ready;

  logic [31:0] stage1_L_i;

  logic [31:0] stage1_R_i;

  logic [55:0] stage1_round_key_i;

  logic [3:0] stage1_iteration_i;

  wire [31:0] stage1_R_o;
  wire [31:0] stage1_L_o;
  wire [55:0] stage1_round_key_o;

  wire [5:0] s1_stag1_i, s2_stag1_i, s3_stag1_i, s4_stag1_i,
             s5_stag1_i, s6_stag1_i, s7_stag1_i, s8_stag1_i;
  wire [3:0] s1_stag1_o, s2_stag1_o, s3_stag1_o, s4_stag1_o,
             s5_stag1_o, s6_stag1_o, s7_stag1_o, s8_stag1_o;

  logic [31:0] L_i_var, R_i_var;
  logic [63:0] data_i_var, data_o_var, data_o_var_t, key_i_var;
  logic [55:0] key_var_perm;

  desround rd1 (.clk(clk), .reset(reset), .iteration_i(stage1_iteration_i),
                .decrypt_i(decrypt_i), .R_i(stage1_R_i), .L_i(stage1_L_i),
                .Key_i(stage1_round_key_i), .R_o(stage1_R_o), .L_o(stage1_L_o),
                .Key_o(stage1_round_key_o), .s1_o(s1_stag1_i),
                .s2_o(s2_stag1_i), .s3_o(s3_stag1_i), .s4_o(s4_stag1_i),
                .s5_o(s5_stag1_i), .s6_o(s6_stag1_i), .s7_o(s7_stag1_i),
                .s8_o(s8_stag1_i), .s1_i(s1_stag1_o), .s2_i(s2_stag1_o),
                .s3_i(s3_stag1_o), .s4_i(s4_stag1_o), .s5_i(s5_stag1_o),
                .s6_i(s6_stag1_o), .s7_i(s7_stag1_o), .s8_i(s8_stag1_o));

  s1 sbox1 (.stage1_input(s1_stag1_i), .stage1_output(s1_stag1_o));
  s2 sbox2 (.stage1_input(s2_stag1_i), .stage1_output(s2_stag1_o));
  s3 sbox3 (.stage1_input(s3_stag1_i), .stage1_output(s3_stag1_o));
  s4 sbox4 (.stage1_input(s4_stag1_i), .stage1_output(s4_stag1_o));
  s5 sbox5 (.stage1_input(s5_stag1_i), .stage1_output(s5_stag1_o));
  s6 sbox6 (.stage1_input(s6_stag1_i), .stage1_output(s6_stag1_o));
  s7 sbox7 (.stage1_input(s7_stag1_i), .stage1_output(s7_stag1_o));
  s8 sbox8 (.stage1_input(s8_stag1_i), .stage1_output(s8_stag1_o));

  always_comb begin
    stage1_iteration_i = stage1_iter;
  end

  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      stage1_iter <= 0;
      data_ready <= 0;
    end else begin
      stage1_iter <= next_stage1_iter;
      data_ready <= next_data_ready;
    end
  end

  always_comb begin
    next_stage1_iter = stage1_iter + 1;
    next_data_ready = 1'b0;

    if (load_i && data_ready) begin
      next_stage1_iter = 0;
      data_i_var <= data_i;
      key_i_var <= key_i;
      next_data_ready = 1'b1;
    end

    if (stage1_iter == 15) begin
      next_ready_o = 1'b1;
    end else begin
      next_ready_o = 1'b0;
    end
  end

  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      data_o <= 0;
      ready_o <= 0;
    end else begin
      data_o <= next_data_o;
      ready_o <= next_ready_o;
    end
  end

  always_comb begin
    next_data_o = data_o_var_t;

    if (decrypt_i) begin
      next_data_o = data_o_var;
    end else begin
      next_data_o = data_o_var_t;
    end
  end

  always_ff @(posedge clk) begin
    if (data_ready) begin
      L_i_var <= data_i_var[63:32];
      R_i_var <= data_i_var[31:0];
    end
  end

  always_comb begin
    stage1_L_i = L_i_var;
    stage1_R_i = R_i_var;
    key_var_perm = key_i_var[55:0];
    data_o_var = {R_i_var, L_i_var};
    data_o_var_t = {L_i_var, R_i_var};
  end

endmodule


