module s1 #(parameter DATA_WIDTH = 6, parameter OUT_WIDTH = 4) (
  input logic [DATA_WIDTH-1:0] stage1_input,
  output logic [OUT_WIDTH-1:0] stage1_output
);

  logic [OUT_WIDTH-1:0] stage1_output_reg;

  always_comb begin
    case (stage1_input)
      0: stage1_output_reg = 14;
      1: stage1_output_reg = 0;
      2: stage1_output_reg = 4;
      3: stage1_output_reg = 15;
      4: stage1_output_reg = 13;
      5: stage1_output_reg = 7;
      6: stage1_output_reg = 1;
      7: stage1_output_reg = 4;
      8: stage1_output_reg = 2;
      9: stage1_output_reg = 14;
      10: stage1_output_reg = 15;
      11: stage1_output_reg = 2;
      12: stage1_output_reg = 11;
      13: stage1_output_reg = 13;
      14: stage1_output_reg = 8;
      15: stage1_output_reg = 1;
      16: stage1_output_reg = 3;
      17: stage1_output_reg = 10;
      18: stage1_output_reg = 10;
      19: stage1_output_reg = 6;
      20: stage1_output_reg = 6;
      21: stage1_output_reg = 12;
      22: stage1_output_reg = 12;
      23: stage1_output_reg = 11;
      24: stage1_output_reg = 5;
      25: stage1_output_reg = 9;
      26: stage1_output_reg = 9;
      27: stage1_output_reg = 5;
      28: stage1_output_reg = 0;
      29: stage1_output_reg = 3;
      30: stage1_output_reg = 7;
      31: stage1_output_reg = 8;
      32: stage1_output_reg = 4;
      33: stage1_output_reg = 15;
      34: stage1_output_reg = 1;
      35: stage1_output_reg = 12;
      36: stage1_output_reg = 14;
      37: stage1_output_reg = 8;
      38: stage1_output_reg = 8;
      39: stage1_output_reg = 2;
      40: stage1_output_reg = 13;
      41: stage1_output_reg = 4;
      42: stage1_output_reg = 6;
      43: stage1_output_reg = 9;
      44: stage1_output_reg = 2;
      45: stage1_output_reg = 1;
      46: stage1_output_reg = 11;
      47: stage1_output_reg = 7;
      48: stage1_output_reg = 15;
      49: stage1_output_reg = 5;
      50: stage1_output_reg = 12;
      51: stage1_output_reg = 11;
      52: stage1_output_reg = 9;
      53: stage1_output_reg = 3;
      54: stage1_output_reg = 7;
      55: stage1_output_reg = 14;
      56: stage1_output_reg = 3;
      57: stage1_output_reg = 10;
      58: stage1_output_reg = 10;
      59: stage1_output_reg
      60: stage1_output_reg = 5,
      61: stage1_output_reg = 6,
      62: stage1_output_reg = 0,
      63: stage1_output_reg = 13
    endcase
  end

  always @(posedge clk) begin
    stage1_output <= stage1_output_reg;
  end

endmodule

