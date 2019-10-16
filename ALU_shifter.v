module alu_shifter(A, shift_amt, ctrl, out);
  input[15:0] A;
  input[3:0] shift_amt;
  input[2:0] ctrl;
  output[15:0] out;
  reg[15:0] temp2, temp1, temp;
  integer i;
  assign out = temp;
  always@(A or shift_amt or ctrl) begin
    case(ctrl)
      3'b000: temp = A << shift_amt;
      3'b001: temp = A >> shift_amt;
      3'b010: temp = A <<< shift_amt;
      3'b011:
        begin
	  temp1 = A;
	  for(i = 0; i < 16; i = i + 1)begin
            if(i < shift_amt) begin
	      temp2[15] = temp1[0];
	      temp2[14:0] = temp1[15:1];
	    end
	    temp1 = temp2;
	  end
	  temp = temp2;
        end
      default: $display("Invalid shift ctrl logic");
    endcase
  end
endmodule
