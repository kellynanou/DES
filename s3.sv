module s3 #(parameter DATA_WIDTH = 6, parameter OUT_WIDTH = 4) (
  input logic [DATA_WIDTH-1:0] stage1_input,
  output logic [OUT_WIDTH-1:0] stage1_output
);

  logic [OUT_WIDTH-1:0] stage1_output_reg;

  always_comb begin
    case (stage1_input)
      0: stage1_output_reg = 10;
      1: stage1_output_reg = 13;
      2: stage1_output_reg = 0;
      3: stage1_output_reg = 7;
      4: stage1_output_reg = 9;
      5: stage1_output_reg = 0;
      6: stage1_output_reg = 14;
      7: stage1_output_reg = 9;
      8: stage1_output_reg = 6;
      9: stage1_output_reg = 3;
      10: stage1_output_reg = 3;
      11: stage1_output_reg = 4;
      12: stage1_output_reg = 15;
      13: stage1_output_reg = 6;
      14: stage1_output_reg = 5;
      15: stage1_output_reg = 10;
      16: stage1_output_reg = 1;
      17: stage1_output_reg = 2;
      18: stage1_output_reg = 13;
      19: stage1_output_reg = 8;
      20: stage1_output_reg = 12;
      21: stage1_output_reg = 5;
      22: stage1_output_reg = 7;
      23: stage1_output_reg = 14;
      24: stage1_output_reg = 11;
      25: stage1_output_reg = 12;
      26: stage1_output_reg = 4;
      27: stage1_output_reg = 11;
      28: stage1_output_reg = 2;
      29: stage1_output_reg = 15;
      30: stage1_output_reg = 8;
      31: stage1_output_reg = 1;
      32: stage1_output_reg = 13;
      33: stage1_output_reg = 1;
      34: stage1_output_reg = 6;
      35: stage1_output_reg = 10;
      36: stage1_output_reg = 4;
      37: stage1_output_reg = 13;
      38: stage1_output_reg = 9;
      39: stage1_output_reg = 0;
      40: stage1_output_reg = 8;
      41: stage1_output_reg = 6;
      42: stage1_output_reg = 15;
      43: stage1_output_reg = 9;
      44: stage1_output_reg = 3;
      45: stage1_output_reg = 8;
      46: stage1_output_reg = 0;
      47: stage1_output_reg = 7;
      48: stage1_output_reg = 11;
      49: stage1_output_reg = 4;
      50: stage1_output_reg = 1;
      51: stage1_output_reg = 15;
      52: stage1_output_reg = 2;
      53: stage1_output_reg = 14;
      54: stage1_output_reg = 12;
      55: stage1_output_reg = 3;
      56: stage1_output_reg = 5;
      57: stage1_output_reg = 11;
      58: stage1_output_reg = 10;
      59: stage1_output_reg = 5
      60: stage1_output_reg = 14,
      61: stage1_output_reg = 2,
      62: stage1_output_reg = 7,
      63: stage1_output_reg = 12
    endcase
  end

  always @(posedge clk) begin
    stage1_output <= stage1_output_reg;
  end

endmodule

