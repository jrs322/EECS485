module comparator(A, B, sel, C);
  input[15:0] A, B;
  input [2:0] sel;
  output reg[15:0] C;
  always @(A, B, sel) begin
    case(sel)
      3'b000: 
        begin
          if(A >= B)
            C = 16'b01;
          else
            C = 16'b0;
      	end
      3'b001:
        begin
          if(A < B)
            C = 16'b01;
          else
            C = 16'b0;
        end
      3'b010:
        begin
          if(A >= B)
            C = 16'b01;
          else
            C = 16'b0;
        end
      3'b011:
        begin
          if(A > B)
            C = 16'b01;
          else
            C = 16'b0;
        end
      3'b100:
        begin
          if(A == B)
            C = 16'b01;
          else
            C = 16'b0;
      	end
      3'b101:
        begin
          if(A != B)
            C = 16'b01;
          else
            C = 16'b0;
        end
      default: begin
        $display("Default behavior");
        C = 16'b0;
      end
    endcase
  end
endmodule
