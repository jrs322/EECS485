// Code your testbench here
// or browse Examples
module TestBench();
  reg[15:0] A, B; 
  reg cin; 
  wire[15:0] sum; 
  wire cout;
  integer i;
  integer j;
  CLA_16b_Block adder(A, B, cin, sum, cout);
  initial begin
    A = 16'b0;
    B = 16'b0;
    cin = 1'b0;
    for(i = 0; i < 255; i = i + 1) 
      begin
      #5 A = A + 1;
        for(j = 0; j < 255; j = j + 1)
        begin
          #5 B = B + 1;
        end
    end
  end
  always @(A or B or cin) begin
    #10
    if ((A + B + cin) != {cout, sum})begin
      $display("Error in summation A = %b, %d B = %b, %d cin = %d\n", A, A, B, B, cin);
    end
  end

  
endmodule
