module s2 #(parameter DATA_WIDTH = 6, parameter OUT_WIDTH = 4) (
  input logic [DATA_WIDTH-1:0] stage1_input,
  output logic [OUT_WIDTH-1:0] stage1_output
);

  logic [OUT_WIDTH-1:0] stage1_output_reg;

  always_comb begin
    case (stage1_input)
      0: stage1_output_reg = 15;
      1: stage1_output_reg = 3;
      2: stage1_output_reg = 1;
      3: stage1_output_reg = 13;
      4: stage1_output_reg = 8;
      5: stage1_output_reg = 4;
      6: stage1_output_reg = 14;
      7: stage1_output_reg = 7;
      8: stage1_output_reg = 6;
      9: stage1_output_reg = 15;
      10: stage1_output_reg = 11;
      11: stage1_output_reg = 2;
      12: stage1_output_reg = 3;
      13: stage1_output_reg = 8;
      14: stage1_output_reg = 4;
      15: stage1_output_reg = 14;
      16: stage1_output_reg = 9;
      17: stage1_output_reg = 12;
      18: stage1_output_reg = 7;
      19: stage1_output_reg = 0;
      20: stage1_output_reg = 2;
      21: stage1_output_reg = 1;
      22: stage1_output_reg = 13;
      23: stage1_output_reg = 10;
      24: stage1_output_reg = 12;
      25: stage1_output_reg = 6;
      26: stage1_output_reg = 0;
      27: stage1_output_reg = 9;
      28: stage1_output_reg = 5;
      29: stage1_output_reg = 11;
      30: stage1_output_reg = 10;
      31: stage1_output_reg = 5;
      32: stage1_output_reg = 0;
      33: stage1_output_reg = 13;
      34: stage1_output_reg = 14;
      35: stage1_output_reg = 8;
      36: stage1_output_reg = 7;
      37: stage1_output_reg = 10;
      38: stage1_output_reg = 11;
      39: stage1_output_reg = 1;
      40: stage1_output_reg = 10;
      41: stage1_output_reg = 3;
      42: stage1_output_reg = 4;
      43: stage1_output_reg = 15;
      44: stage1_output_reg = 13;
      45: stage1_output_reg = 4;
      46: stage1_output_reg = 1;
      47: stage1_output_reg = 2;
      48: stage1_output_reg = 5;
      49: stage1_output_reg = 11;
      50: stage1_output_reg = 8;
      51: stage1_output_reg = 6;
      52: stage1_output_reg = 12;
      53: stage1_output_reg = 7;
      54: stage1_output_reg = 6;
      55: stage1_output_reg = 12;
      56: stage1_output_reg = 9;
      57: stage1_output_reg = 0;
      58: stage1_output_reg = 3;
      59: stage1_output_reg = 5
      60: stage1_output_reg = 2; 
      61: stage1_output_reg = 14; 
      62: stage1_output_reg = 15; 
      63: stage1_output_reg = 9; 
    endcase
  end

  always @(posedge clk) begin
    stage1_output <= stage1_output_reg;
  end

endmodule
