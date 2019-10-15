//
// Verilog description for cell big_mux, 
// Tue Oct 15 15:38:34 2019
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module big_mux ( A, B, C, D, sel, OUT ) ;

    input [15:0]A ;
    input [15:0]B ;
    input [15:0]C ;
    input [15:0]D ;
    input [1:0]sel ;
    output [15:0]OUT ;

    wire nx18, nx22, nx280, nx284, nx290, nx293, nx295, nx298, nx300, nx303, 
         nx305, nx308, nx310, nx313, nx315, nx318, nx320, nx323, nx325, nx328, 
         nx330, nx333, nx335, nx338, nx340, nx343, nx345, nx348, nx350, nx353, 
         nx355, nx358, nx360, nx363, nx365, nx372, nx374, nx376, nx378, nx380, 
         nx382, nx384, nx386, nx388, nx390, nx392, nx394, nx396, nx398, nx400, 
         nx402;



    nand02_2x ix29 (.Y (OUT[0]), .A0 (nx280), .A1 (nx284)) ;
    aoi22 ix281 (.Y (nx280), .A0 (A[0]), .A1 (nx390), .B0 (D[0]), .B1 (nx398)) ;
    nor02_2x ix19 (.Y (nx18), .A0 (sel[1]), .A1 (sel[0])) ;
    and02 ix23 (.Y (nx22), .A0 (sel[1]), .A1 (sel[0])) ;
    aoi22 ix285 (.Y (nx284), .A0 (B[0]), .A1 (nx382), .B0 (C[0]), .B1 (nx374)) ;
    inv02 ix291 (.Y (nx290), .A (sel[1])) ;
    nand02_2x ix43 (.Y (OUT[1]), .A0 (nx293), .A1 (nx295)) ;
    aoi22 ix294 (.Y (nx293), .A0 (A[1]), .A1 (nx390), .B0 (D[1]), .B1 (nx398)) ;
    aoi22 ix296 (.Y (nx295), .A0 (B[1]), .A1 (nx382), .B0 (C[1]), .B1 (nx374)) ;
    nand02_2x ix57 (.Y (OUT[2]), .A0 (nx298), .A1 (nx300)) ;
    aoi22 ix299 (.Y (nx298), .A0 (A[2]), .A1 (nx390), .B0 (D[2]), .B1 (nx398)) ;
    aoi22 ix301 (.Y (nx300), .A0 (B[2]), .A1 (nx382), .B0 (C[2]), .B1 (nx374)) ;
    nand02_2x ix71 (.Y (OUT[3]), .A0 (nx303), .A1 (nx305)) ;
    aoi22 ix304 (.Y (nx303), .A0 (A[3]), .A1 (nx390), .B0 (D[3]), .B1 (nx398)) ;
    aoi22 ix306 (.Y (nx305), .A0 (B[3]), .A1 (nx382), .B0 (C[3]), .B1 (nx374)) ;
    nand02_2x ix85 (.Y (OUT[4]), .A0 (nx308), .A1 (nx310)) ;
    aoi22 ix309 (.Y (nx308), .A0 (A[4]), .A1 (nx390), .B0 (D[4]), .B1 (nx398)) ;
    aoi22 ix311 (.Y (nx310), .A0 (B[4]), .A1 (nx382), .B0 (C[4]), .B1 (nx374)) ;
    nand02_2x ix99 (.Y (OUT[5]), .A0 (nx313), .A1 (nx315)) ;
    aoi22 ix314 (.Y (nx313), .A0 (A[5]), .A1 (nx390), .B0 (D[5]), .B1 (nx398)) ;
    aoi22 ix316 (.Y (nx315), .A0 (B[5]), .A1 (nx382), .B0 (C[5]), .B1 (nx374)) ;
    nand02_2x ix113 (.Y (OUT[6]), .A0 (nx318), .A1 (nx320)) ;
    aoi22 ix319 (.Y (nx318), .A0 (A[6]), .A1 (nx390), .B0 (D[6]), .B1 (nx398)) ;
    aoi22 ix321 (.Y (nx320), .A0 (B[6]), .A1 (nx382), .B0 (C[6]), .B1 (nx374)) ;
    nand02_2x ix127 (.Y (OUT[7]), .A0 (nx323), .A1 (nx325)) ;
    aoi22 ix324 (.Y (nx323), .A0 (A[7]), .A1 (nx392), .B0 (D[7]), .B1 (nx400)) ;
    aoi22 ix326 (.Y (nx325), .A0 (B[7]), .A1 (nx384), .B0 (C[7]), .B1 (nx376)) ;
    nand02_2x ix141 (.Y (OUT[8]), .A0 (nx328), .A1 (nx330)) ;
    aoi22 ix329 (.Y (nx328), .A0 (A[8]), .A1 (nx392), .B0 (D[8]), .B1 (nx400)) ;
    aoi22 ix331 (.Y (nx330), .A0 (B[8]), .A1 (nx384), .B0 (C[8]), .B1 (nx376)) ;
    nand02_2x ix155 (.Y (OUT[9]), .A0 (nx333), .A1 (nx335)) ;
    aoi22 ix334 (.Y (nx333), .A0 (A[9]), .A1 (nx392), .B0 (D[9]), .B1 (nx400)) ;
    aoi22 ix336 (.Y (nx335), .A0 (B[9]), .A1 (nx384), .B0 (C[9]), .B1 (nx376)) ;
    nand02_2x ix169 (.Y (OUT[10]), .A0 (nx338), .A1 (nx340)) ;
    aoi22 ix339 (.Y (nx338), .A0 (A[10]), .A1 (nx392), .B0 (D[10]), .B1 (nx400)
          ) ;
    aoi22 ix341 (.Y (nx340), .A0 (B[10]), .A1 (nx384), .B0 (C[10]), .B1 (nx376)
          ) ;
    nand02_2x ix183 (.Y (OUT[11]), .A0 (nx343), .A1 (nx345)) ;
    aoi22 ix344 (.Y (nx343), .A0 (A[11]), .A1 (nx392), .B0 (D[11]), .B1 (nx400)
          ) ;
    aoi22 ix346 (.Y (nx345), .A0 (B[11]), .A1 (nx384), .B0 (C[11]), .B1 (nx376)
          ) ;
    nand02_2x ix197 (.Y (OUT[12]), .A0 (nx348), .A1 (nx350)) ;
    aoi22 ix349 (.Y (nx348), .A0 (A[12]), .A1 (nx392), .B0 (D[12]), .B1 (nx400)
          ) ;
    aoi22 ix351 (.Y (nx350), .A0 (B[12]), .A1 (nx384), .B0 (C[12]), .B1 (nx376)
          ) ;
    nand02_2x ix211 (.Y (OUT[13]), .A0 (nx353), .A1 (nx355)) ;
    aoi22 ix354 (.Y (nx353), .A0 (A[13]), .A1 (nx392), .B0 (D[13]), .B1 (nx400)
          ) ;
    aoi22 ix356 (.Y (nx355), .A0 (B[13]), .A1 (nx384), .B0 (C[13]), .B1 (nx376)
          ) ;
    nand02_2x ix225 (.Y (OUT[14]), .A0 (nx358), .A1 (nx360)) ;
    aoi22 ix359 (.Y (nx358), .A0 (A[14]), .A1 (nx394), .B0 (D[14]), .B1 (nx402)
          ) ;
    aoi22 ix361 (.Y (nx360), .A0 (B[14]), .A1 (nx386), .B0 (C[14]), .B1 (nx378)
          ) ;
    nand02_2x ix239 (.Y (OUT[15]), .A0 (nx363), .A1 (nx365)) ;
    aoi22 ix364 (.Y (nx363), .A0 (A[15]), .A1 (nx394), .B0 (D[15]), .B1 (nx402)
          ) ;
    aoi22 ix366 (.Y (nx365), .A0 (B[15]), .A1 (nx386), .B0 (C[15]), .B1 (nx378)
          ) ;
    inv02 ix373 (.Y (nx374), .A (nx372)) ;
    inv02 ix375 (.Y (nx376), .A (nx372)) ;
    inv02 ix377 (.Y (nx378), .A (nx372)) ;
    inv02 ix381 (.Y (nx382), .A (nx380)) ;
    inv02 ix383 (.Y (nx384), .A (nx380)) ;
    inv02 ix385 (.Y (nx386), .A (nx380)) ;
    inv02 ix387 (.Y (nx388), .A (nx18)) ;
    inv02 ix389 (.Y (nx390), .A (nx388)) ;
    inv02 ix391 (.Y (nx392), .A (nx388)) ;
    inv02 ix393 (.Y (nx394), .A (nx388)) ;
    inv02 ix395 (.Y (nx396), .A (nx22)) ;
    inv02 ix397 (.Y (nx398), .A (nx396)) ;
    inv02 ix399 (.Y (nx400), .A (nx396)) ;
    inv02 ix401 (.Y (nx402), .A (nx396)) ;
    nand02_2x ix9 (.Y (nx380), .A0 (nx290), .A1 (sel[0])) ;
    or02 ix3 (.Y (nx372), .A0 (nx290), .A1 (sel[0])) ;
endmodule

