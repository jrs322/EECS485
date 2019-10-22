//
// Verilog description for cell adder_block, 
// Tue Oct 22 18:56:49 2019
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module adder_block ( A, B, SEL, SUM, COUT, OVRFLOW ) ;

    input [15:0]A ;
    input [15:0]B ;
    input [2:0]SEL ;
    output [15:0]SUM ;
    output COUT ;
    output OVRFLOW ;

    wire cout, sum_w_15, sum_w_14, sum_w_13, sum_w_12, sum_w_11, sum_w_10, 
         sum_w_9, sum_w_8, sum_w_7, sum_w_6, sum_w_5, sum_w_4, sum_w_3, sum_w_2, 
         sum_w_1, sum_w_0, cin, b_in_15, b_in_14, b_in_13, b_in_12, b_in_11, 
         b_in_10, b_in_9, b_in_8, b_in_7, b_in_6, b_in_5, b_in_4, b_in_3, b_in_2, 
         b_in_1, b_in_0, a_in_15, a_in_14, a_in_13, a_in_12, a_in_11, a_in_10, 
         a_in_9, a_in_8, a_in_7, a_in_6, a_in_5, a_in_4, a_in_3, a_in_2, a_in_1, 
         a_in_0, nx4, nx104, nx122, nx132, nx142, nx152, nx162, nx172, nx182, 
         nx192, nx202, nx212, nx222, nx232, nx242, nx252, nx262, nx368, nx384, 
         nx390, nx392, nx396, nx408, nx830, nx832, nx835, nx839, nx843, nx847, 
         nx851, nx855, nx859, nx863, nx867, nx871, nx875, nx879, nx883, nx887, 
         nx891, nx895, nx905, nx931, nx933, nx935, nx937, nx939, nx941, nx943, 
         nx945, nx947, nx949, nx951, nx953, adder_nx2, adder_nx6, adder_nx10, 
         adder_nx14, adder_nx18, adder_nx22, adder_nx26, adder_nx30, adder_nx38, 
         adder_nx42, adder_nx50, adder_nx54, adder_nx62, adder_nx66, adder_nx74, 
         adder_nx78, adder_nx86, adder_nx90, adder_nx98, adder_nx102, 
         adder_nx110, adder_nx114, adder_nx122, adder_nx342, adder_nx344, 
         adder_nx349, adder_nx351, adder_nx356, adder_nx358, adder_nx363, 
         adder_nx365, adder_nx370, adder_nx372, adder_nx377, adder_nx379, 
         adder_nx384, adder_nx386, adder_nx391, adder_nx393, adder_nx397, 
         adder_nx401, adder_nx405, adder_nx409, adder_nx413, adder_nx417, 
         adder_nx421, adder_nx425;



    latch lat_a_in_0 (.Q (a_in_0), .D (A[0]), .CLK (nx933)) ;
    nand02_2x ix5 (.Y (nx4), .A0 (SEL[2]), .A1 (SEL[1])) ;
    latch lat_a_in_1 (.Q (a_in_1), .D (A[1]), .CLK (nx933)) ;
    latch lat_a_in_2 (.Q (a_in_2), .D (A[2]), .CLK (nx933)) ;
    latch lat_a_in_3 (.Q (a_in_3), .D (A[3]), .CLK (nx933)) ;
    latch lat_a_in_4 (.Q (a_in_4), .D (A[4]), .CLK (nx933)) ;
    latch lat_a_in_5 (.Q (a_in_5), .D (A[5]), .CLK (nx933)) ;
    latch lat_a_in_6 (.Q (a_in_6), .D (A[6]), .CLK (nx933)) ;
    latch lat_a_in_7 (.Q (a_in_7), .D (A[7]), .CLK (nx935)) ;
    latch lat_a_in_8 (.Q (a_in_8), .D (A[8]), .CLK (nx935)) ;
    latch lat_a_in_9 (.Q (a_in_9), .D (A[9]), .CLK (nx935)) ;
    latch lat_a_in_10 (.Q (a_in_10), .D (A[10]), .CLK (nx935)) ;
    latch lat_a_in_11 (.Q (a_in_11), .D (A[11]), .CLK (nx935)) ;
    latch lat_a_in_12 (.Q (a_in_12), .D (A[12]), .CLK (nx935)) ;
    latch lat_a_in_13 (.Q (a_in_13), .D (A[13]), .CLK (nx935)) ;
    latch lat_a_in_14 (.Q (a_in_14), .D (A[14]), .CLK (nx937)) ;
    latch lat_a_in_15 (.Q (a_in_15), .D (A[15]), .CLK (nx937)) ;
    latch lat_b_in_0 (.Q (b_in_0), .D (nx104), .CLK (nx945)) ;
    nand02_2x ix105 (.Y (nx104), .A0 (nx830), .A1 (nx951)) ;
    xnor2 ix831 (.Y (nx830), .A0 (B[0]), .A1 (SEL[1])) ;
    inv02 ix833 (.Y (nx832), .A (SEL[2])) ;
    inv02 ix836 (.Y (nx835), .A (SEL[1])) ;
    latch lat_b_in_1 (.Q (b_in_1), .D (nx122), .CLK (nx945)) ;
    nand02_2x ix123 (.Y (nx122), .A0 (nx839), .A1 (nx951)) ;
    xnor2 ix840 (.Y (nx839), .A0 (B[1]), .A1 (SEL[1])) ;
    latch lat_b_in_2 (.Q (b_in_2), .D (nx132), .CLK (nx945)) ;
    nand02_2x ix133 (.Y (nx132), .A0 (nx843), .A1 (nx951)) ;
    xnor2 ix844 (.Y (nx843), .A0 (B[2]), .A1 (SEL[1])) ;
    latch lat_b_in_3 (.Q (b_in_3), .D (nx142), .CLK (nx945)) ;
    nand02_2x ix143 (.Y (nx142), .A0 (nx847), .A1 (nx951)) ;
    xnor2 ix848 (.Y (nx847), .A0 (B[3]), .A1 (SEL[1])) ;
    latch lat_b_in_4 (.Q (b_in_4), .D (nx152), .CLK (nx945)) ;
    nand02_2x ix153 (.Y (nx152), .A0 (nx851), .A1 (nx951)) ;
    xnor2 ix852 (.Y (nx851), .A0 (B[4]), .A1 (SEL[1])) ;
    latch lat_b_in_5 (.Q (b_in_5), .D (nx162), .CLK (nx945)) ;
    nand02_2x ix163 (.Y (nx162), .A0 (nx855), .A1 (nx951)) ;
    xnor2 ix856 (.Y (nx855), .A0 (B[5]), .A1 (SEL[1])) ;
    latch lat_b_in_6 (.Q (b_in_6), .D (nx172), .CLK (nx945)) ;
    nand02_2x ix173 (.Y (nx172), .A0 (nx859), .A1 (nx953)) ;
    xnor2 ix860 (.Y (nx859), .A0 (B[6]), .A1 (SEL[1])) ;
    latch lat_b_in_7 (.Q (b_in_7), .D (nx182), .CLK (nx947)) ;
    nand02_2x ix183 (.Y (nx182), .A0 (nx863), .A1 (nx953)) ;
    xnor2 ix864 (.Y (nx863), .A0 (B[7]), .A1 (SEL[1])) ;
    latch lat_b_in_8 (.Q (b_in_8), .D (nx192), .CLK (nx947)) ;
    nand02_2x ix193 (.Y (nx192), .A0 (nx867), .A1 (nx953)) ;
    xnor2 ix868 (.Y (nx867), .A0 (B[8]), .A1 (SEL[1])) ;
    latch lat_b_in_9 (.Q (b_in_9), .D (nx202), .CLK (nx947)) ;
    nand02_2x ix203 (.Y (nx202), .A0 (nx871), .A1 (nx953)) ;
    xnor2 ix872 (.Y (nx871), .A0 (B[9]), .A1 (SEL[1])) ;
    latch lat_b_in_10 (.Q (b_in_10), .D (nx212), .CLK (nx947)) ;
    nand02_2x ix213 (.Y (nx212), .A0 (nx875), .A1 (nx953)) ;
    xnor2 ix876 (.Y (nx875), .A0 (B[10]), .A1 (SEL[1])) ;
    latch lat_b_in_11 (.Q (b_in_11), .D (nx222), .CLK (nx947)) ;
    nand02_2x ix223 (.Y (nx222), .A0 (nx879), .A1 (nx953)) ;
    xnor2 ix880 (.Y (nx879), .A0 (B[11]), .A1 (SEL[1])) ;
    latch lat_b_in_12 (.Q (b_in_12), .D (nx232), .CLK (nx947)) ;
    nand02_2x ix233 (.Y (nx232), .A0 (nx883), .A1 (nx953)) ;
    xnor2 ix884 (.Y (nx883), .A0 (B[12]), .A1 (SEL[1])) ;
    latch lat_b_in_13 (.Q (b_in_13), .D (nx242), .CLK (nx947)) ;
    nand02_2x ix243 (.Y (nx242), .A0 (nx887), .A1 (nx832)) ;
    xnor2 ix888 (.Y (nx887), .A0 (B[13]), .A1 (SEL[1])) ;
    latch lat_b_in_14 (.Q (b_in_14), .D (nx252), .CLK (nx949)) ;
    nand02_2x ix253 (.Y (nx252), .A0 (nx891), .A1 (nx832)) ;
    xnor2 ix892 (.Y (nx891), .A0 (B[14]), .A1 (SEL[1])) ;
    latch lat_b_in_15 (.Q (b_in_15), .D (nx262), .CLK (nx949)) ;
    nand02_2x ix263 (.Y (nx262), .A0 (nx895), .A1 (nx832)) ;
    xnor2 ix896 (.Y (nx895), .A0 (B[15]), .A1 (SEL[1])) ;
    latch lat_cin (.Q (cin), .D (nx368), .CLK (nx937)) ;
    latch lat_ovr (.Q (OVRFLOW), .D (nx396), .CLK (nx937)) ;
    ao21 ix397 (.Y (nx396), .A0 (SEL[2]), .A1 (nx392), .B0 (nx390)) ;
    nor04 ix391 (.Y (nx390), .A0 (SEL[0]), .A1 (SEL[2]), .A2 (nx905), .A3 (nx384
          )) ;
    xor2 ix906 (.Y (nx905), .A0 (A[15]), .A1 (B[15])) ;
    xnor2 ix385 (.Y (nx384), .A0 (sum_w_15), .A1 (A[15])) ;
    latch ix411 (.Q (COUT), .D (nx408), .CLK (nx937)) ;
    and03 ix409 (.Y (nx408), .A0 (nx832), .A1 (cout), .A2 (SEL[0])) ;
    latch lat_sum_0 (.Q (SUM[0]), .D (sum_w_0), .CLK (nx937)) ;
    latch lat_sum_1 (.Q (SUM[1]), .D (sum_w_1), .CLK (nx937)) ;
    latch lat_sum_2 (.Q (SUM[2]), .D (sum_w_2), .CLK (nx939)) ;
    latch lat_sum_3 (.Q (SUM[3]), .D (sum_w_3), .CLK (nx939)) ;
    latch lat_sum_4 (.Q (SUM[4]), .D (sum_w_4), .CLK (nx939)) ;
    latch lat_sum_5 (.Q (SUM[5]), .D (sum_w_5), .CLK (nx939)) ;
    latch lat_sum_6 (.Q (SUM[6]), .D (sum_w_6), .CLK (nx939)) ;
    latch lat_sum_7 (.Q (SUM[7]), .D (sum_w_7), .CLK (nx939)) ;
    latch lat_sum_8 (.Q (SUM[8]), .D (sum_w_8), .CLK (nx939)) ;
    latch lat_sum_9 (.Q (SUM[9]), .D (sum_w_9), .CLK (nx941)) ;
    latch lat_sum_10 (.Q (SUM[10]), .D (sum_w_10), .CLK (nx941)) ;
    latch lat_sum_11 (.Q (SUM[11]), .D (sum_w_11), .CLK (nx941)) ;
    latch lat_sum_12 (.Q (SUM[12]), .D (sum_w_12), .CLK (nx941)) ;
    latch lat_sum_13 (.Q (SUM[13]), .D (sum_w_13), .CLK (nx941)) ;
    latch lat_sum_14 (.Q (SUM[14]), .D (sum_w_14), .CLK (nx941)) ;
    latch lat_sum_15 (.Q (SUM[15]), .D (sum_w_15), .CLK (nx941)) ;
    inv02 ix930 (.Y (nx931), .A (nx4)) ;
    inv02 ix932 (.Y (nx933), .A (nx931)) ;
    inv02 ix934 (.Y (nx935), .A (nx931)) ;
    inv02 ix936 (.Y (nx937), .A (nx931)) ;
    inv02 ix938 (.Y (nx939), .A (nx931)) ;
    inv02 ix940 (.Y (nx941), .A (nx931)) ;
    inv02 ix944 (.Y (nx945), .A (nx943)) ;
    inv02 ix946 (.Y (nx947), .A (nx943)) ;
    inv02 ix948 (.Y (nx949), .A (nx943)) ;
    inv02 ix950 (.Y (nx951), .A (SEL[2])) ;
    inv02 ix952 (.Y (nx953), .A (SEL[2])) ;
    aoi21 ix113 (.Y (nx943), .A0 (nx835), .A1 (SEL[0]), .B0 (nx951)) ;
    or02 ix369 (.Y (nx368), .A0 (nx943), .A1 (SEL[1])) ;
    xor2 ix393 (.Y (nx392), .A0 (sum_w_15), .A1 (SEL[0])) ;
    ao21 adder_ix127 (.Y (cout), .A0 (b_in_15), .A1 (a_in_15), .B0 (adder_nx122)
         ) ;
    nor02_2x adder_ix123 (.Y (adder_nx122), .A0 (adder_nx342), .A1 (adder_nx344)
             ) ;
    xnor2 adder_ix343 (.Y (adder_nx342), .A0 (a_in_15), .A1 (b_in_15)) ;
    aoi22 adder_ix345 (.Y (adder_nx344), .A0 (b_in_14), .A1 (a_in_14), .B0 (
          adder_nx2), .B1 (adder_nx114)) ;
    ao21 adder_ix115 (.Y (adder_nx114), .A0 (b_in_13), .A1 (a_in_13), .B0 (
         adder_nx110)) ;
    nor02_2x adder_ix111 (.Y (adder_nx110), .A0 (adder_nx349), .A1 (adder_nx351)
             ) ;
    xnor2 adder_ix350 (.Y (adder_nx349), .A0 (a_in_13), .A1 (b_in_13)) ;
    aoi22 adder_ix352 (.Y (adder_nx351), .A0 (b_in_12), .A1 (a_in_12), .B0 (
          adder_nx6), .B1 (adder_nx102)) ;
    ao21 adder_ix103 (.Y (adder_nx102), .A0 (b_in_11), .A1 (a_in_11), .B0 (
         adder_nx98)) ;
    nor02_2x adder_ix99 (.Y (adder_nx98), .A0 (adder_nx356), .A1 (adder_nx358)
             ) ;
    xnor2 adder_ix357 (.Y (adder_nx356), .A0 (a_in_11), .A1 (b_in_11)) ;
    aoi22 adder_ix359 (.Y (adder_nx358), .A0 (b_in_10), .A1 (a_in_10), .B0 (
          adder_nx10), .B1 (adder_nx90)) ;
    ao21 adder_ix91 (.Y (adder_nx90), .A0 (b_in_9), .A1 (a_in_9), .B0 (
         adder_nx86)) ;
    nor02_2x adder_ix87 (.Y (adder_nx86), .A0 (adder_nx363), .A1 (adder_nx365)
             ) ;
    xnor2 adder_ix364 (.Y (adder_nx363), .A0 (a_in_9), .A1 (b_in_9)) ;
    aoi22 adder_ix366 (.Y (adder_nx365), .A0 (b_in_8), .A1 (a_in_8), .B0 (
          adder_nx14), .B1 (adder_nx78)) ;
    ao21 adder_ix79 (.Y (adder_nx78), .A0 (b_in_7), .A1 (a_in_7), .B0 (
         adder_nx74)) ;
    nor02_2x adder_ix75 (.Y (adder_nx74), .A0 (adder_nx370), .A1 (adder_nx372)
             ) ;
    xnor2 adder_ix371 (.Y (adder_nx370), .A0 (a_in_7), .A1 (b_in_7)) ;
    aoi22 adder_ix373 (.Y (adder_nx372), .A0 (b_in_6), .A1 (a_in_6), .B0 (
          adder_nx18), .B1 (adder_nx66)) ;
    ao21 adder_ix67 (.Y (adder_nx66), .A0 (b_in_5), .A1 (a_in_5), .B0 (
         adder_nx62)) ;
    nor02_2x adder_ix63 (.Y (adder_nx62), .A0 (adder_nx377), .A1 (adder_nx379)
             ) ;
    xnor2 adder_ix378 (.Y (adder_nx377), .A0 (a_in_5), .A1 (b_in_5)) ;
    aoi22 adder_ix380 (.Y (adder_nx379), .A0 (b_in_4), .A1 (a_in_4), .B0 (
          adder_nx22), .B1 (adder_nx54)) ;
    ao21 adder_ix55 (.Y (adder_nx54), .A0 (b_in_3), .A1 (a_in_3), .B0 (
         adder_nx50)) ;
    nor02_2x adder_ix51 (.Y (adder_nx50), .A0 (adder_nx384), .A1 (adder_nx386)
             ) ;
    xnor2 adder_ix385 (.Y (adder_nx384), .A0 (a_in_3), .A1 (b_in_3)) ;
    aoi22 adder_ix387 (.Y (adder_nx386), .A0 (b_in_2), .A1 (a_in_2), .B0 (
          adder_nx26), .B1 (adder_nx42)) ;
    ao21 adder_ix43 (.Y (adder_nx42), .A0 (b_in_1), .A1 (a_in_1), .B0 (
         adder_nx38)) ;
    nor02_2x adder_ix39 (.Y (adder_nx38), .A0 (adder_nx391), .A1 (adder_nx393)
             ) ;
    xnor2 adder_ix392 (.Y (adder_nx391), .A0 (a_in_1), .A1 (b_in_1)) ;
    aoi22 adder_ix394 (.Y (adder_nx393), .A0 (b_in_0), .A1 (a_in_0), .B0 (cin), 
          .B1 (adder_nx30)) ;
    xnor2 adder_ix153 (.Y (sum_w_0), .A0 (cin), .A1 (adder_nx397)) ;
    xnor2 adder_ix398 (.Y (adder_nx397), .A0 (a_in_0), .A1 (b_in_0)) ;
    xor2 adder_ix155 (.Y (sum_w_1), .A0 (adder_nx391), .A1 (adder_nx393)) ;
    xnor2 adder_ix157 (.Y (sum_w_2), .A0 (adder_nx42), .A1 (adder_nx401)) ;
    xnor2 adder_ix402 (.Y (adder_nx401), .A0 (a_in_2), .A1 (b_in_2)) ;
    xor2 adder_ix159 (.Y (sum_w_3), .A0 (adder_nx386), .A1 (adder_nx384)) ;
    xnor2 adder_ix145 (.Y (sum_w_4), .A0 (adder_nx54), .A1 (adder_nx405)) ;
    xnor2 adder_ix406 (.Y (adder_nx405), .A0 (a_in_4), .A1 (b_in_4)) ;
    xor2 adder_ix147 (.Y (sum_w_5), .A0 (adder_nx377), .A1 (adder_nx379)) ;
    xnor2 adder_ix149 (.Y (sum_w_6), .A0 (adder_nx66), .A1 (adder_nx409)) ;
    xnor2 adder_ix410 (.Y (adder_nx409), .A0 (a_in_6), .A1 (b_in_6)) ;
    xor2 adder_ix151 (.Y (sum_w_7), .A0 (adder_nx372), .A1 (adder_nx370)) ;
    xnor2 adder_ix137 (.Y (sum_w_8), .A0 (adder_nx78), .A1 (adder_nx413)) ;
    xnor2 adder_ix414 (.Y (adder_nx413), .A0 (a_in_8), .A1 (b_in_8)) ;
    xor2 adder_ix139 (.Y (sum_w_9), .A0 (adder_nx363), .A1 (adder_nx365)) ;
    xnor2 adder_ix141 (.Y (sum_w_10), .A0 (adder_nx90), .A1 (adder_nx417)) ;
    xnor2 adder_ix418 (.Y (adder_nx417), .A0 (a_in_10), .A1 (b_in_10)) ;
    xor2 adder_ix143 (.Y (sum_w_11), .A0 (adder_nx358), .A1 (adder_nx356)) ;
    xnor2 adder_ix129 (.Y (sum_w_12), .A0 (adder_nx102), .A1 (adder_nx421)) ;
    xnor2 adder_ix422 (.Y (adder_nx421), .A0 (a_in_12), .A1 (b_in_12)) ;
    xor2 adder_ix131 (.Y (sum_w_13), .A0 (adder_nx349), .A1 (adder_nx351)) ;
    xnor2 adder_ix133 (.Y (sum_w_14), .A0 (adder_nx114), .A1 (adder_nx425)) ;
    xnor2 adder_ix426 (.Y (adder_nx425), .A0 (a_in_14), .A1 (b_in_14)) ;
    xor2 adder_ix135 (.Y (sum_w_15), .A0 (adder_nx344), .A1 (adder_nx342)) ;
    inv02 adder_ix31 (.Y (adder_nx30), .A (adder_nx397)) ;
    inv02 adder_ix27 (.Y (adder_nx26), .A (adder_nx401)) ;
    inv02 adder_ix23 (.Y (adder_nx22), .A (adder_nx405)) ;
    inv02 adder_ix19 (.Y (adder_nx18), .A (adder_nx409)) ;
    inv02 adder_ix15 (.Y (adder_nx14), .A (adder_nx413)) ;
    inv02 adder_ix11 (.Y (adder_nx10), .A (adder_nx417)) ;
    inv02 adder_ix7 (.Y (adder_nx6), .A (adder_nx421)) ;
    inv02 adder_ix3 (.Y (adder_nx2), .A (adder_nx425)) ;
endmodule

