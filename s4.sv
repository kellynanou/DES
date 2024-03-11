module s4 #(parameter DATA_WIDTH = 6, parameter OUT_WIDTH = 4) (
  input logic [DATA_WIDTH-1:0] stage1_input,
  output logic [OUT_WIDTH-1:0] stage1_output
);

  logic [OUT_WIDTH-1:0] stage1_output_reg;

  always_comb begin
    case (stage1_input)
      0: stage1_output_reg = 7;
      1: stage1_output_reg = 13;
      2: stage1_output_reg = 13;
      3: stage1_output_reg = 8;
      4: stage1_output_reg = 14;
      5: stage1_output_reg = 11;
      6: stage1_output_reg = 3;
      7: stage1_output_reg = 5;
      8: stage1_output_reg = 0;
      9: stage1_output_reg = 6;
      10: stage1_output_reg = 6;
      11: stage1_output_reg = 15;
      12: stage1_output_reg = 9;
      13: stage1_output_reg = 0;
      14: stage1_output_reg = 10;
      15: stage1_output_reg = 3;
      16: stage1_output_reg = 1;
      17: stage1_output_reg = 4;
      18: stage1_output_reg = 2;
      19: stage1_output_reg = 7;
      20: stage1_output_reg = 8;
      21: stage1_output_reg = 2;
      22: stage1_output_reg = 5;
      23: stage1_output_reg = 12;
      24: stage1_output_reg = 11;
      25: stage1_output_reg = 1;
      26: stage1_output_reg = 12;
      27: stage1_output_reg = 10;
      28: stage1_output_reg = 4;
      29: stage1_output_reg = 14;
      30: stage1_output_reg = 15;
      31: stage1_output_reg = 9;
      32: stage1_output_reg = 10;
      33: stage1_output_reg = 3;
      34: stage1_output_reg = 6;
      35: stage1_output_reg = 15;
      36: stage1_output_reg = 9;
      37: stage1_output_reg = 0;
      38: stage1_output_reg = 0;
      39: stage1_output_reg = 6;
      40: stage1_output_reg = 12;
      41: stage1_output_reg = 10;
      42: stage1_output_reg = 11;
      43: stage1_output_reg = 1;
      44: stage1_output_reg = 7;
      45: stage1_output_reg = 13;
      46: stage1_output_reg = 13;
      47: stage1_output_reg = 8;
      48: stage1_output_reg = 15;
      49: stage1_output_reg = 9;
      50: stage1_output_reg = 1;
      51: stage1_output_reg = 4;
      52: stage1_output_reg = 3;
      53: stage1_output_reg = 5;
      54: stage1_output_reg = 14;
      55: stage1_output_reg = 11;
      56: stage1_output_reg = 5;
      57: stage1_output_reg = 12;
      58: stage1_output_reg = 2;
      59: stage1_output_reg = 7;
      60: stage1_output_reg = 8;
      61: stage1_output_reg = 2;
      62: stage1_output_reg = 4;
      63: stage1_output_reg = 14;
    endcase
  end

  always @(posedge clk) begin
    stage1_output <= stage1_output_reg;
  end

endmodule

