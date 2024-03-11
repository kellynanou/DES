module s7 #(parameter DATA_WIDTH = 6, parameter OUT_WIDTH = 4) (
  input logic [DATA_WIDTH-1:0] stage1_input,
  output logic [OUT_WIDTH-1:0] stage1_output
);

  logic [OUT_WIDTH-1:0] stage1_output_reg;

  always_comb begin
    case (stage1_input)
      0: stage1_output_reg = 4;
      1: stage1_output_reg = 13;
      2: stage1_output_reg = 11;
      3: stage1_output_reg = 0;
      4: stage1_output_reg = 2;
      5: stage1_output_reg = 11;
      6: stage1_output_reg = 14;
      7: stage1_output_reg = 7;
      8: stage1_output_reg = 15;
      9: stage1_output_reg = 4;
      10: stage1_output_reg = 0;
      11: stage1_output_reg = 9;
      12: stage1_output_reg = 8;
      13: stage1_output_reg = 1;
      14: stage1_output_reg = 13;
      15: stage1_output_reg = 10;
      16: stage1_output_reg = 3;
      17: stage1_output_reg = 14;
      18: stage1_output_reg = 12;
      19: stage1_output_reg = 3;
      20: stage1_output_reg = 9;
      21: stage1_output_reg = 5;
      22: stage1_output_reg = 7;
      23: stage1_output_reg = 12;
      24: stage1_output_reg = 5;
      25: stage1_output_reg = 2;
      26: stage1_output_reg = 10;
      27: stage1_output_reg = 15;
      28: stage1_output_reg = 6;
      29: stage1_output_reg = 8;
      30: stage1_output_reg = 1;
      31: stage1_output_reg = 6;
      32: stage1_output_reg = 1;
      33: stage1_output_reg = 6;
      34: stage1_output_reg = 4;
      35: stage1_output_reg = 11;
      36: stage1_output_reg = 11;
      37: stage1_output_reg = 13;
      38: stage1_output_reg = 13;
      39: stage1_output_reg = 8;
      40: stage1_output_reg = 12;
      41: stage1_output_reg = 1;
      42: stage1_output_reg = 3;
      43: stage1_output_reg = 4;
      44: stage1_output_reg = 7;
      45: stage1_output_reg = 10;
      46: stage1_output_reg = 14;
      47: stage1_output_reg = 7;
      48: stage1_output_reg = 10;
      49: stage1_output_reg = 9;
      50: stage1_output_reg = 15;
      51: stage1_output_reg = 5;
      52: stage1_output_reg = 6;
      53: stage1_output_reg = 0;
      54: stage1_output_reg = 8;
      55: stage1_output_reg = 15;
      56: stage1_output_reg = 0;
      57: stage1_output_reg = 14;
      58: stage1_output_reg = 5;
      59: stage1_output_reg =2;
      60: stage1_output_reg = 9:
      61: stage1_output_reg = 3;
      62: stage1_output_reg = 2;
      63: stage1_output_reg = 12;
    endcase
  end

  always @(posedge clk) begin
    stage1_output <= stage1_output_reg;
  end

endmodule


