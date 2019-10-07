module logic_block(A, B, sel, C, error);
  input[15:0] A, B;
  input[2:0] sel;
  output reg[15:0] C;
  output reg error;
  always @(A or B or sel)
    begin
      case(sel)
        3'b000: //and
          begin
            error <= 0; 
            C <= A & B;
          end
        3'b001: //or
          begin
            error <= 0;
            C <= A | B;
          end
        3'b010: //xor
          begin
            error <= 0;
            C <= A ^ B;
          end
        3'b011: //not
          begin
            error <= 0;
            C <= ~A;
          end
        default:
          begin
            error = 1;
            $display("Error, not correct sel signal");
          end
      endcase
    end
endmodule
