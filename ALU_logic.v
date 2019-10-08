module logic_block(A, B, sel, C);
  input[15:0] A, B;
  input[2:0] sel;
  output reg[15:0] C;
  
  always @(A or B or sel)
    begin
      case(sel)
        3'b000: C = A & B;
        3'b001: C = A | B;
        3'b010: C = A ^ B; 
        3'b100: C = ~A;
        default: 
          begin
          	C = 16'b0;
            $display("Default behavior error")
          end
      endcase
    end
endmodule
