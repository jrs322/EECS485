//
// Verilog description for cell adder_block, 
// Tue Oct 15 13:56:04 2019
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module adder_block ( A, B, SEL, C, co, ov ) ;

    input [15:0]A ;
    input [15:0]B ;
    input [2:0]SEL ;
    output [15:0]C ;
    output co ;
    output ov ;

    wire cout, sum, b_in_15, b_in_14, b_in_13, b_in_12, b_in_11, b_in_10, b_in_9, 
         b_in_8, b_in_7, b_in_6, b_in_5, b_in_4, b_in_3, b_in_2, b_in_1, b_in_0, 
         a_in_15, a_in_14, a_in_13, a_in_12, a_in_11, a_in_10, a_in_9, a_in_8, 
         a_in_7, a_in_6, a_in_5, a_in_4, a_in_3, a_in_2, a_in_1, a_in_0, nx556, 
         nx596, nx598, nx600, nx602, nx604, nx606, adder_nx2, adder_nx6, 
         adder_nx10, adder_nx14, adder_nx18, adder_nx22, adder_nx26, adder_nx28, 
         adder_nx36, adder_nx44, adder_nx48, adder_nx56, adder_nx60, adder_nx68, 
         adder_nx72, adder_nx80, adder_nx84, adder_nx92, adder_nx96, adder_nx104, 
         adder_nx108, adder_nx116, adder_nx139, adder_nx141, adder_nx146, 
         adder_nx148, adder_nx153, adder_nx155, adder_nx160, adder_nx162, 
         adder_nx167, adder_nx169, adder_nx174, adder_nx176, adder_nx181, 
         adder_nx183;



    assign C[14] = C[15] ;
    assign C[13] = C[15] ;
    assign C[12] = C[15] ;
    assign C[11] = C[15] ;
    assign C[10] = C[15] ;
    assign C[9] = C[15] ;
    assign C[8] = C[15] ;
    assign C[7] = C[15] ;
    assign C[6] = C[15] ;
    assign C[5] = C[15] ;
    assign C[4] = C[15] ;
    assign C[3] = C[15] ;
    assign C[2] = C[15] ;
    assign C[1] = C[15] ;
    assign ov = C[15] ;
    fake_gnd ix476 (.Y (C[15])) ;
    latch lat_a_in_0 (.Q (a_in_0), .D (A[0]), .CLK (nx598)) ;
    inv02 ix557 (.Y (nx556), .A (SEL[0])) ;
    latch lat_a_in_1 (.Q (a_in_1), .D (A[1]), .CLK (nx598)) ;
    latch lat_a_in_2 (.Q (a_in_2), .D (A[2]), .CLK (nx598)) ;
    latch lat_a_in_3 (.Q (a_in_3), .D (A[3]), .CLK (nx598)) ;
    latch lat_a_in_4 (.Q (a_in_4), .D (A[4]), .CLK (nx598)) ;
    latch lat_a_in_5 (.Q (a_in_5), .D (A[5]), .CLK (nx598)) ;
    latch lat_a_in_6 (.Q (a_in_6), .D (A[6]), .CLK (nx598)) ;
    latch lat_a_in_7 (.Q (a_in_7), .D (A[7]), .CLK (nx600)) ;
    latch lat_a_in_8 (.Q (a_in_8), .D (A[8]), .CLK (nx600)) ;
    latch lat_a_in_9 (.Q (a_in_9), .D (A[9]), .CLK (nx600)) ;
    latch lat_a_in_10 (.Q (a_in_10), .D (A[10]), .CLK (nx600)) ;
    latch lat_a_in_11 (.Q (a_in_11), .D (A[11]), .CLK (nx600)) ;
    latch lat_a_in_12 (.Q (a_in_12), .D (A[12]), .CLK (nx600)) ;
    latch lat_a_in_13 (.Q (a_in_13), .D (A[13]), .CLK (nx600)) ;
    latch lat_a_in_14 (.Q (a_in_14), .D (A[14]), .CLK (nx602)) ;
    latch lat_a_in_15 (.Q (a_in_15), .D (A[15]), .CLK (nx602)) ;
    latch lat_b_in_0 (.Q (b_in_0), .D (B[0]), .CLK (nx602)) ;
    latch lat_b_in_1 (.Q (b_in_1), .D (B[1]), .CLK (nx602)) ;
    latch lat_b_in_2 (.Q (b_in_2), .D (B[2]), .CLK (nx602)) ;
    latch lat_b_in_3 (.Q (b_in_3), .D (B[3]), .CLK (nx602)) ;
    latch lat_b_in_4 (.Q (b_in_4), .D (B[4]), .CLK (nx602)) ;
    latch lat_b_in_5 (.Q (b_in_5), .D (B[5]), .CLK (nx604)) ;
    latch lat_b_in_6 (.Q (b_in_6), .D (B[6]), .CLK (nx604)) ;
    latch lat_b_in_7 (.Q (b_in_7), .D (B[7]), .CLK (nx604)) ;
    latch lat_b_in_8 (.Q (b_in_8), .D (B[8]), .CLK (nx604)) ;
    latch lat_b_in_9 (.Q (b_in_9), .D (B[9]), .CLK (nx604)) ;
    latch lat_b_in_10 (.Q (b_in_10), .D (B[10]), .CLK (nx604)) ;
    latch lat_b_in_11 (.Q (b_in_11), .D (B[11]), .CLK (nx604)) ;
    latch lat_b_in_12 (.Q (b_in_12), .D (B[12]), .CLK (nx606)) ;
    latch lat_b_in_13 (.Q (b_in_13), .D (B[13]), .CLK (nx606)) ;
    latch lat_b_in_14 (.Q (b_in_14), .D (B[14]), .CLK (nx606)) ;
    latch lat_b_in_15 (.Q (b_in_15), .D (B[15]), .CLK (nx606)) ;
    latch lat_COUT (.Q (co), .D (cout), .CLK (nx606)) ;
    latch lat_SUM_0 (.Q (C[0]), .D (sum), .CLK (nx606)) ;
    inv02 ix597 (.Y (nx598), .A (nx596)) ;
    inv02 ix599 (.Y (nx600), .A (nx596)) ;
    inv02 ix601 (.Y (nx602), .A (nx596)) ;
    inv02 ix603 (.Y (nx604), .A (nx596)) ;
    inv02 ix605 (.Y (nx606), .A (nx596)) ;
    or03 ix7 (.Y (nx596), .A0 (SEL[1]), .A1 (nx556), .A2 (SEL[2])) ;
    ao21 adder_ix121 (.Y (cout), .A0 (b_in_15), .A1 (a_in_15), .B0 (adder_nx116)
         ) ;
    nor02_2x adder_ix117 (.Y (adder_nx116), .A0 (adder_nx139), .A1 (adder_nx141)
             ) ;
    xnor2 adder_ix140 (.Y (adder_nx139), .A0 (a_in_15), .A1 (b_in_15)) ;
    aoi22 adder_ix142 (.Y (adder_nx141), .A0 (b_in_14), .A1 (a_in_14), .B0 (
          adder_nx2), .B1 (adder_nx108)) ;
    xor2 adder_ix3 (.Y (adder_nx2), .A0 (a_in_14), .A1 (b_in_14)) ;
    ao21 adder_ix109 (.Y (adder_nx108), .A0 (b_in_13), .A1 (a_in_13), .B0 (
         adder_nx104)) ;
    nor02_2x adder_ix105 (.Y (adder_nx104), .A0 (adder_nx146), .A1 (adder_nx148)
             ) ;
    xnor2 adder_ix147 (.Y (adder_nx146), .A0 (a_in_13), .A1 (b_in_13)) ;
    aoi22 adder_ix149 (.Y (adder_nx148), .A0 (b_in_12), .A1 (a_in_12), .B0 (
          adder_nx6), .B1 (adder_nx96)) ;
    xor2 adder_ix7 (.Y (adder_nx6), .A0 (a_in_12), .A1 (b_in_12)) ;
    ao21 adder_ix98 (.Y (adder_nx96), .A0 (b_in_11), .A1 (a_in_11), .B0 (
         adder_nx92)) ;
    nor02_2x adder_ix96 (.Y (adder_nx92), .A0 (adder_nx153), .A1 (adder_nx155)
             ) ;
    xnor2 adder_ix154 (.Y (adder_nx153), .A0 (a_in_11), .A1 (b_in_11)) ;
    aoi22 adder_ix156 (.Y (adder_nx155), .A0 (b_in_10), .A1 (a_in_10), .B0 (
          adder_nx10), .B1 (adder_nx84)) ;
    xor2 adder_ix11 (.Y (adder_nx10), .A0 (a_in_10), .A1 (b_in_10)) ;
    ao21 adder_ix85 (.Y (adder_nx84), .A0 (b_in_9), .A1 (a_in_9), .B0 (
         adder_nx80)) ;
    nor02_2x adder_ix81 (.Y (adder_nx80), .A0 (adder_nx160), .A1 (adder_nx162)
             ) ;
    xnor2 adder_ix161 (.Y (adder_nx160), .A0 (a_in_9), .A1 (b_in_9)) ;
    aoi22 adder_ix163 (.Y (adder_nx162), .A0 (b_in_8), .A1 (a_in_8), .B0 (
          adder_nx14), .B1 (adder_nx72)) ;
    xor2 adder_ix15 (.Y (adder_nx14), .A0 (a_in_8), .A1 (b_in_8)) ;
    ao21 adder_ix73 (.Y (adder_nx72), .A0 (b_in_7), .A1 (a_in_7), .B0 (
         adder_nx68)) ;
    nor02_2x adder_ix69 (.Y (adder_nx68), .A0 (adder_nx167), .A1 (adder_nx169)
             ) ;
    xnor2 adder_ix168 (.Y (adder_nx167), .A0 (a_in_7), .A1 (b_in_7)) ;
    aoi22 adder_ix170 (.Y (adder_nx169), .A0 (b_in_6), .A1 (a_in_6), .B0 (
          adder_nx18), .B1 (adder_nx60)) ;
    xor2 adder_ix19 (.Y (adder_nx18), .A0 (a_in_6), .A1 (b_in_6)) ;
    ao21 adder_ix61 (.Y (adder_nx60), .A0 (b_in_5), .A1 (a_in_5), .B0 (
         adder_nx56)) ;
    nor02_2x adder_ix57 (.Y (adder_nx56), .A0 (adder_nx174), .A1 (adder_nx176)
             ) ;
    xnor2 adder_ix175 (.Y (adder_nx174), .A0 (a_in_5), .A1 (b_in_5)) ;
    aoi22 adder_ix177 (.Y (adder_nx176), .A0 (b_in_4), .A1 (a_in_4), .B0 (
          adder_nx22), .B1 (adder_nx48)) ;
    xor2 adder_ix23 (.Y (adder_nx22), .A0 (a_in_4), .A1 (b_in_4)) ;
    ao21 adder_ix49 (.Y (adder_nx48), .A0 (b_in_3), .A1 (a_in_3), .B0 (
         adder_nx44)) ;
    nor02_2x adder_ix45 (.Y (adder_nx44), .A0 (adder_nx181), .A1 (adder_nx183)
             ) ;
    xnor2 adder_ix182 (.Y (adder_nx181), .A0 (a_in_3), .A1 (b_in_3)) ;
    aoi22 adder_ix184 (.Y (adder_nx183), .A0 (b_in_2), .A1 (a_in_2), .B0 (
          adder_nx26), .B1 (adder_nx36)) ;
    xor2 adder_ix27 (.Y (adder_nx26), .A0 (a_in_2), .A1 (b_in_2)) ;
    ao32 adder_ix37 (.Y (adder_nx36), .A0 (adder_nx28), .A1 (b_in_0), .A2 (
         a_in_0), .B0 (b_in_1), .B1 (a_in_1)) ;
    xor2 adder_ix29 (.Y (adder_nx28), .A0 (a_in_1), .A1 (b_in_1)) ;
    xor2 adder_ix123 (.Y (sum), .A0 (a_in_0), .A1 (b_in_0)) ;
endmodule

