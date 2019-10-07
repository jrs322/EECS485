module alu_shifter(A, shift_amt, ctrl, out);
  input[15:0] A;
  input[3:0] shift_amt;
  input[2:0] ctrl;
  output reg[15:0] out;
  
  always(A or shift_amt or ctrl) begin
    case(ctrl)
      3'b000: out = out << shift_amt;
      3'b001: out = out >> shift_amt;
      3'b010: out = out <<< shift_amt;
      3'b011: out = out >>> shift_amt;
      default: $display("Invalid shift ctrl logic)
    endcase
  end
endmodule
