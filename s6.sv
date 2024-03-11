module s6 #(parameter DATA_WIDTH = 6, parameter OUT_WIDTH = 4) (
  input logic [DATA_WIDTH-1:0] stage1_input,
  output logic [OUT_WIDTH-1:0] stage1_output
);

  logic [OUT_WIDTH-1:0] stage1_output_reg;

  always_comb begin
    case (stage1_input)
      0: stage1_output_reg = 12;
      1: stage1_output_reg = 10;
      2: stage1_output_reg = 1;
      3: stage1_output_reg = 15;
      4: stage1_output_reg = 10;
      5: stage1_output_reg = 4;
      6: stage1_output_reg = 15;
      7: stage1_output_reg = 2;
      8: stage1_output_reg = 9;
      9: stage1_output_reg = 7;
      10: stage1_output_reg = 2;
      11: stage1_output_reg = 12;
      12: stage1_output_reg = 6;
      13: stage1_output_reg = 9;
      14: stage1_output_reg = 8;
      15: stage1_output_reg = 5;
      16: stage1_output_reg = 0;
      17: stage1_output_reg = 6;
      18: stage1_output_reg = 13;
      19: stage1_output_reg = 1;
      20: stage1_output_reg = 3;
      21: stage1_output_reg = 13;
      22: stage1_output_reg = 4;
      23: stage1_output_reg = 14;
      24: stage1_output_reg = 14;
      25: stage1_output_reg = 0;
      26: stage1_output_reg = 7;
      27: stage1_output_reg = 11;
      28: stage1_output_reg = 5;
      29: stage1_output_reg = 3;
      30: stage1_output_reg = 11;
      31: stage1_output_reg = 8;
      32: stage1_output_reg = 9;
      33: stage1_output_reg = 4;
      34: stage1_output_reg = 14;
      35: stage1_output_reg = 3;
      36: stage1_output_reg = 15;
      37: stage1_output_reg = 2;
      38: stage1_output_reg = 5;
      39: stage1_output_reg = 12;
      40: stage1_output_reg = 2;
      41: stage1_output_reg = 9;
      42: stage1_output_reg = 8;
      43: stage1_output_reg = 5;
      44: stage1_output_reg = 12;
      45: stage1_output_reg = 15;
      46: stage1_output_reg = 3;
      47: stage1_output_reg = 10;
      48: stage1_output_reg = 7;
      49: stage1_output_reg = 11;
      50: stage1_output_reg = 0;
      51: stage1_output_reg = 14;
      52: stage1_output_reg = 4;
      53: stage1_output_reg = 1;
      54: stage1_output_reg = 10;
      55: stage1_output_reg = 7;
      56: stage1_output_reg = 1;
      57: stage1_output_reg = 6;
      58: stage1_output_reg = 13;
      59: stage1_output_reg = 8;
      60: stage1_output_reg = 11;
      61: stage1_output_reg = 8;
      62: stage1_output_reg = 6;
      63: stage1_output_reg = 13;
    endcase
  end

  always @(posedge clk) begin
    stage1_output <= stage1_output_reg;
  end

endmodule


