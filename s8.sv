module s8 #(parameter DATA_WIDTH = 6, parameter OUT_WIDTH = 4) (
  input logic [DATA_WIDTH-1:0] stage1_input,
  output logic [OUT_WIDTH-1:0] stage1_output
);

  logic [OUT_WIDTH-1:0] stage1_output_reg;

  always_comb begin
    case (stage1_input)
      0: stage1_output_reg = 13;
      1: stage1_output_reg = 1;
      2: stage1_output_reg = 2;
      3: stage1_output_reg = 15;
      4: stage1_output_reg = 8;
      5: stage1_output_reg = 13;
      6: stage1_output_reg = 4;
      7: stage1_output_reg = 8;
      8: stage1_output_reg = 6;
      9: stage1_output_reg = 10;
      10: stage1_output_reg = 15;
      11: stage1_output_reg = 3;
      12: stage1_output_reg = 11;
      13: stage1_output_reg = 7;
      14: stage1_output_reg = 1;
      15: stage1_output_reg = 4;
      16: stage1_output_reg = 10;
      17: stage1_output_reg = 12;
      18: stage1_output_reg = 9;
      19: stage1_output_reg = 5;
      20: stage1_output_reg = 3;
      21: stage1_output_reg = 6;
      22: stage1_output_reg = 14;
      23: stage1_output_reg = 11;
      24: stage1_output_reg = 5;
      25: stage1_output_reg = 0;
      26: stage1_output_reg = 0;
      27: stage1_output_reg = 14;
      28: stage1_output_reg = 12;
      29: stage1_output_reg = 9;
      30: stage1_output_reg = 7;
      31: stage1_output_reg = 2;
      32: stage1_output_reg = 7;
      33: stage1_output_reg = 2;
      34: stage1_output_reg = 11;
      35: stage1_output_reg = 1;
      36: stage1_output_reg = 4;
      37: stage1_output_reg = 14;
      38: stage1_output_reg = 1;
      39: stage1_output_reg = 7;
      40: stage1_output_reg = 9;
      41: stage1_output_reg = 4;
      42: stage1_output_reg = 12;
      43: stage1_output_reg = 10;
      44: stage1_output_reg = 14;
      45: stage1_output_reg = 8;
      46: stage1_output_reg = 2;
      47: stage1_output_reg = 13;
      48: stage1_output_reg = 0;
      49: stage1_output_reg = 15;
      50: stage1_output_reg = 6;
      51: stage1_output_reg = 12;
      52: stage1_output_reg = 10;
      53: stage1_output_reg = 9;
      54: stage1_output_reg = 13;
      55: stage1_output_reg = 0;
      56: stage1_output_reg = 15;
      57: stage1_output_reg = 3;
      58: stage1_output_reg = 3;
      59: stage1_output_reg = 5;
      60: stage1_output_reg = 5;
      61: stage1_output_reg = 6;
      62: stage1_output_reg = 8;
      63: stage1_output_reg = 11;
    endcase
  end

  always @(posedge clk) begin
    stage1_output <= stage1_output_reg;
  end

endmodule


