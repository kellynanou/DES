module s5 #(parameter DATA_WIDTH = 6, parameter OUT_WIDTH = 4) (
  input logic [DATA_WIDTH-1:0] stage1_input,
  output logic [OUT_WIDTH-1:0] stage1_output
);

  logic [OUT_WIDTH-1:0] stage1_output_reg;

  always_comb begin
    case (stage1_input)
      0: stage1_output_reg = 2;
      1: stage1_output_reg = 14;
      2: stage1_output_reg = 12;
      3: stage1_output_reg = 11;
      4: stage1_output_reg = 4;
      5: stage1_output_reg = 2;
      6: stage1_output_reg = 1;
      7: stage1_output_reg = 12;
      8: stage1_output_reg = 7;
      9: stage1_output_reg = 4;
      10: stage1_output_reg = 10;
      11: stage1_output_reg = 7;
      12: stage1_output_reg = 11;
      13: stage1_output_reg = 13;
      14: stage1_output_reg = 6;
      15: stage1_output_reg = 1;
      16: stage1_output_reg = 8;
      17: stage1_output_reg = 5;
      18: stage1_output_reg = 5;
      19: stage1_output_reg = 0;
      20: stage1_output_reg = 3;
      21: stage1_output_reg = 15;
      22: stage1_output_reg = 15;
      23: stage1_output_reg = 10;
      24: stage1_output_reg = 13;
      25: stage1_output_reg = 3;
      26: stage1_output_reg = 0;
      27: stage1_output_reg = 9;
      28: stage1_output_reg = 14;
      29: stage1_output_reg = 8;
      30: stage1_output_reg = 9;
      31: stage1_output_reg = 6;
      32: stage1_output_reg = 4;
      33: stage1_output_reg = 11;
      34: stage1_output_reg = 2;
      35: stage1_output_reg = 8;
      36: stage1_output_reg = 1;
      37: stage1_output_reg = 12;
      38: stage1_output_reg = 11;
      39: stage1_output_reg = 7;
      40: stage1_output_reg = 10;
      41: stage1_output_reg = 1;
      42: stage1_output_reg = 13;
      43: stage1_output_reg = 14;
      44: stage1_output_reg = 7;
      45: stage1_output_reg = 2;
      46: stage1_output_reg = 8;
      47: stage1_output_reg = 13;
      48: stage1_output_reg = 15;
      49: stage1_output_reg = 6;
      50: stage1_output_reg = 9;
      51: stage1_output_reg = 15;
      52: stage1_output_reg = 12;
      53: stage1_output_reg = 0;
      54: stage1_output_reg = 5;
      55: stage1_output_reg = 9;
      56: stage1_output_reg = 6;
      57: stage1_output_reg = 10;
      58: stage1_output_reg = 3;
      59: stage1_output_reg =4;
      60: stage1_output_reg = 0;
      61: stage1_output_reg = 5;
      62: stage1_output_reg = 14;
      63: stage1_output_reg = 3;
    endcase
  end

  always @(posedge clk) begin
    stage1_output <= stage1_output_reg;
  end

endmodule

