module adder_block(A, B, SEL, SUM, COUT, OVRFLOW);
  input[15:0] A, B;
  input[2:0] SEL;
  output reg[15:0] C;
  output OVRFLOW, COUT;
  CLA_16b_Block adder(a_in, b_in, cin, sum, cout);
  always @(A or B or SEL)
    begin
      if(SEL == 3'b001)
      case(SEL)
        3'b000: //signed addition
          begin
            b_in <= B;
            a_in <= A;
            cin <= 0;
            #5 C<= sum;
            COUT <= 0;
            if(~(A[15] ^ B[15]) and B[15] ~= cout)
              OVRFLOW = 1'b1;
            else
              OVRFLOW = 1'b0;
          end
        3'b001: //unsigned addition
          begin
            b_in <= B;
            a_in <= A;
            cin <= 1'b0;
            #5 C <= sum;
            COUT <= cout;
            OVRFLOW <= 0;
          end
        3'b010: //signed subtraction
          begin
            b_in <= ~B;
            a_in <= A;
            cin <= 1'b1;
            #5 C<= sum;
            COUT <= 0;
            if(~(A[15] ^ b_in[15]) and b_in[15] ~= cout)
              OVRFLOW = 1'b1;
            else
              OVRFLOW = 1'b0;
          end
        3'b011: //unsigned subtraction
          begin
            b_in <= ~B;
            a_in <= A;
            cin <= 1'b1;
            #5 C <= sum;
            COUT <= cout;
            OVRFLOW <= 0;
          end
        3'b100: //signed inscrement
          begin
            a_in <= A;
            b_in <= 0;
            cin <= 1'b1;
            #5 C <= sum;
            COUT <= 0;
            if(~(A[15] ^ B[15]) and B[15] ~= cout)
              OVRFLOW = 1'b1;
            else
              OVRFLOW = 1'b0;
          end
        3'b101: //signed decrement
          begin
            a_in <= A;
            b_in <= -1;
            cin <= 1'b0;
            #5 C <= sum;
            COUT <= 0;
            if(~(A[15] ^ B[15]) and B[15] ~= cout)
              OVRFLOW = 1'b1;
            else
              OVRFLOW = 1'b0;
          end
      endcase
    end
endmodule
