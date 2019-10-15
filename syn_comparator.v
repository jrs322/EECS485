//
// Verilog description for cell comparator, 
// Tue Oct 15 14:07:43 2019
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module comparator ( A, B, sel, OUT ) ;

    input [15:0]A ;
    input [15:0]B ;
    input [2:0]sel ;
    output [15:0]OUT ;

    wire nx32, nx38, nx42, nx46, nx50, nx54, nx62, nx70, nx78, nx82, nx84, nx86, 
         nx88, nx108, nx118, nx130, nx140, nx178, nx194, nx212, nx222, nx234, 
         nx244, nx282, nx298, nx300, nx306, nx243, nx247, nx249, nx251, nx253, 
         nx257, nx259, nx263, nx265, nx269, nx271, nx275, nx277, nx281, nx283, 
         nx287, nx289, nx293, nx295, nx297, nx299, nx303, nx305, nx309, nx311, 
         nx315, nx317, nx319, nx321, nx324, nx326, nx329, nx332, nx334, nx336, 
         nx339, nx341, nx344, nx347, nx349, nx351, nx358, nx360, nx362, nx365, 
         nx369, nx371, nx373, nx376, nx378, nx380, nx382, nx384, nx386, nx388, 
         nx390, nx392, nx395, nx397, nx400, nx402, nx405, nx407, nx410, nx412, 
         nx415, nx419, nx421, nx423, nx430, nx432, nx434, nx436, nx438, nx440, 
         nx442, nx444;



    assign OUT[14] = OUT[15] ;
    assign OUT[13] = OUT[15] ;
    assign OUT[12] = OUT[15] ;
    assign OUT[11] = OUT[15] ;
    assign OUT[10] = OUT[15] ;
    assign OUT[9] = OUT[15] ;
    assign OUT[8] = OUT[15] ;
    assign OUT[7] = OUT[15] ;
    assign OUT[6] = OUT[15] ;
    assign OUT[5] = OUT[15] ;
    assign OUT[4] = OUT[15] ;
    assign OUT[3] = OUT[15] ;
    assign OUT[2] = OUT[15] ;
    assign OUT[1] = OUT[15] ;
    fake_gnd ix193 (.Y (OUT[15])) ;
    oai21 ix317 (.Y (OUT[0]), .A0 (sel[2]), .A1 (nx243), .B0 (nx415)) ;
    aoi32 ix244 (.Y (nx243), .A0 (nx194), .A1 (sel[1]), .A2 (sel[0]), .B0 (nx300
          ), .B1 (nx306)) ;
    nand04 ix196 (.Y (nx194), .A0 (nx247), .A1 (nx271), .A2 (nx289), .A3 (nx305)
           ) ;
    aoi321 ix248 (.Y (nx247), .A0 (nx249), .A1 (A[14]), .A2 (nx251), .B0 (A[15])
           , .B1 (nx253), .C0 (nx178)) ;
    xnor2 ix250 (.Y (nx249), .A0 (A[15]), .A1 (B[15])) ;
    inv02 ix252 (.Y (nx251), .A (B[14])) ;
    inv02 ix254 (.Y (nx253), .A (B[15])) ;
    oai33 ix179 (.Y (nx178), .A0 (nx257), .A1 (nx265), .A2 (B[12]), .B0 (nx32), 
          .B1 (nx269), .B2 (B[13])) ;
    xnor2 ix260 (.Y (nx259), .A0 (A[13]), .A1 (B[13])) ;
    xnor2 ix264 (.Y (nx263), .A0 (A[14]), .A1 (B[14])) ;
    inv02 ix266 (.Y (nx265), .A (A[12])) ;
    nand02_2x ix33 (.Y (nx32), .A0 (nx249), .A1 (nx263)) ;
    inv02 ix270 (.Y (nx269), .A (A[13])) ;
    aoi33 ix272 (.Y (nx271), .A0 (nx46), .A1 (A[10]), .A2 (nx283), .B0 (nx42), .B1 (
          A[11]), .B2 (nx287)) ;
    nor02ii ix47 (.Y (nx46), .A0 (nx275), .A1 (nx281)) ;
    nand02_2x ix276 (.Y (nx275), .A0 (nx277), .A1 (nx38)) ;
    xnor2 ix278 (.Y (nx277), .A0 (A[12]), .A1 (B[12])) ;
    nor02ii ix39 (.Y (nx38), .A0 (nx32), .A1 (nx259)) ;
    xnor2 ix282 (.Y (nx281), .A0 (A[11]), .A1 (B[11])) ;
    inv02 ix284 (.Y (nx283), .A (B[10])) ;
    inv02 ix288 (.Y (nx287), .A (B[11])) ;
    aoi33 ix290 (.Y (nx289), .A0 (nx54), .A1 (A[8]), .A2 (nx299), .B0 (nx50), .B1 (
          A[9]), .B2 (nx303)) ;
    nor02ii ix55 (.Y (nx54), .A0 (nx293), .A1 (nx297)) ;
    nand02_2x ix294 (.Y (nx293), .A0 (nx295), .A1 (nx46)) ;
    xnor2 ix296 (.Y (nx295), .A0 (A[10]), .A1 (B[10])) ;
    xnor2 ix298 (.Y (nx297), .A0 (A[9]), .A1 (B[9])) ;
    inv02 ix300 (.Y (nx299), .A (B[8])) ;
    inv02 ix304 (.Y (nx303), .A (B[9])) ;
    nor04 ix306 (.Y (nx305), .A0 (nx436), .A1 (nx434), .A2 (nx432), .A3 (nx430)
          ) ;
    oai33 ix141 (.Y (nx140), .A0 (nx309), .A1 (nx317), .A2 (B[6]), .B0 (nx319), 
          .B1 (nx321), .B2 (B[7])) ;
    xnor2 ix312 (.Y (nx311), .A0 (A[7]), .A1 (B[7])) ;
    xnor2 ix316 (.Y (nx315), .A0 (A[8]), .A1 (B[8])) ;
    inv02 ix318 (.Y (nx317), .A (A[6])) ;
    nand02_2x ix320 (.Y (nx319), .A0 (nx315), .A1 (nx54)) ;
    inv02 ix322 (.Y (nx321), .A (A[7])) ;
    oai33 ix131 (.Y (nx130), .A0 (nx324), .A1 (nx332), .A2 (B[4]), .B0 (nx334), 
          .B1 (nx336), .B2 (B[5])) ;
    xnor2 ix327 (.Y (nx326), .A0 (A[5]), .A1 (B[5])) ;
    xnor2 ix330 (.Y (nx329), .A0 (A[6]), .A1 (B[6])) ;
    nor02ii ix63 (.Y (nx62), .A0 (nx319), .A1 (nx311)) ;
    inv02 ix333 (.Y (nx332), .A (A[4])) ;
    nand02_2x ix335 (.Y (nx334), .A0 (nx329), .A1 (nx62)) ;
    inv02 ix337 (.Y (nx336), .A (A[5])) ;
    oai33 ix119 (.Y (nx118), .A0 (nx339), .A1 (nx347), .A2 (B[2]), .B0 (nx349), 
          .B1 (nx351), .B2 (B[3])) ;
    xnor2 ix342 (.Y (nx341), .A0 (A[3]), .A1 (B[3])) ;
    xnor2 ix345 (.Y (nx344), .A0 (A[4]), .A1 (B[4])) ;
    nor02ii ix71 (.Y (nx70), .A0 (nx334), .A1 (nx326)) ;
    inv02 ix348 (.Y (nx347), .A (A[2])) ;
    nand02_2x ix350 (.Y (nx349), .A0 (nx344), .A1 (nx70)) ;
    inv02 ix352 (.Y (nx351), .A (A[3])) ;
    oai33 ix109 (.Y (nx108), .A0 (nx84), .A1 (nx362), .A2 (B[0]), .B0 (nx82), .B1 (
          nx365), .B2 (B[1])) ;
    nor02ii ix79 (.Y (nx78), .A0 (nx349), .A1 (nx341)) ;
    xnor2 ix359 (.Y (nx358), .A0 (A[2]), .A1 (B[2])) ;
    xnor2 ix361 (.Y (nx360), .A0 (A[1]), .A1 (B[1])) ;
    inv02 ix363 (.Y (nx362), .A (A[0])) ;
    nand02_2x ix83 (.Y (nx82), .A0 (nx78), .A1 (nx358)) ;
    inv02 ix366 (.Y (nx365), .A (A[1])) ;
    xnor2 ix301 (.Y (nx300), .A0 (nx298), .A1 (sel[0])) ;
    nand04 ix299 (.Y (nx298), .A0 (nx369), .A1 (nx380), .A2 (nx386), .A3 (nx392)
           ) ;
    aoi321 ix370 (.Y (nx369), .A0 (nx249), .A1 (B[14]), .A2 (nx371), .B0 (B[15])
           , .B1 (nx373), .C0 (nx282)) ;
    inv02 ix372 (.Y (nx371), .A (A[14])) ;
    inv02 ix374 (.Y (nx373), .A (A[15])) ;
    oai33 ix283 (.Y (nx282), .A0 (nx257), .A1 (nx376), .A2 (A[12]), .B0 (nx32), 
          .B1 (nx378), .B2 (A[13])) ;
    inv02 ix377 (.Y (nx376), .A (B[12])) ;
    inv02 ix379 (.Y (nx378), .A (B[13])) ;
    aoi33 ix381 (.Y (nx380), .A0 (nx46), .A1 (B[10]), .A2 (nx382), .B0 (nx42), .B1 (
          B[11]), .B2 (nx384)) ;
    inv02 ix383 (.Y (nx382), .A (A[10])) ;
    inv02 ix385 (.Y (nx384), .A (A[11])) ;
    aoi33 ix387 (.Y (nx386), .A0 (nx54), .A1 (B[8]), .A2 (nx388), .B0 (nx50), .B1 (
          B[9]), .B2 (nx390)) ;
    inv02 ix389 (.Y (nx388), .A (A[8])) ;
    inv02 ix391 (.Y (nx390), .A (A[9])) ;
    nor04 ix393 (.Y (nx392), .A0 (nx444), .A1 (nx442), .A2 (nx440), .A3 (nx438)
          ) ;
    oai33 ix245 (.Y (nx244), .A0 (nx309), .A1 (nx395), .A2 (A[6]), .B0 (nx319), 
          .B1 (nx397), .B2 (A[7])) ;
    inv02 ix396 (.Y (nx395), .A (B[6])) ;
    inv02 ix398 (.Y (nx397), .A (B[7])) ;
    oai33 ix235 (.Y (nx234), .A0 (nx324), .A1 (nx400), .A2 (A[4]), .B0 (nx334), 
          .B1 (nx402), .B2 (A[5])) ;
    inv02 ix401 (.Y (nx400), .A (B[4])) ;
    inv02 ix403 (.Y (nx402), .A (B[5])) ;
    oai33 ix223 (.Y (nx222), .A0 (nx339), .A1 (nx405), .A2 (A[2]), .B0 (nx349), 
          .B1 (nx407), .B2 (A[3])) ;
    inv02 ix406 (.Y (nx405), .A (B[2])) ;
    inv02 ix408 (.Y (nx407), .A (B[3])) ;
    oai33 ix213 (.Y (nx212), .A0 (nx84), .A1 (nx410), .A2 (A[0]), .B0 (nx82), .B1 (
          nx412), .B2 (A[1])) ;
    inv02 ix411 (.Y (nx410), .A (B[0])) ;
    inv02 ix413 (.Y (nx412), .A (B[1])) ;
    nand02_2x ix307 (.Y (nx306), .A0 (nx298), .A1 (sel[1])) ;
    nand03 ix416 (.Y (nx415), .A0 (nx88), .A1 (sel[2]), .A2 (nx423)) ;
    xnor2 ix89 (.Y (nx88), .A0 (nx86), .A1 (sel[0])) ;
    nand02_2x ix87 (.Y (nx86), .A0 (nx419), .A1 (nx421)) ;
    nor02ii ix420 (.Y (nx419), .A0 (nx82), .A1 (nx360)) ;
    xnor2 ix422 (.Y (nx421), .A0 (A[0]), .A1 (B[0])) ;
    inv02 ix424 (.Y (nx423), .A (sel[1])) ;
    inv02 ix85 (.Y (nx84), .A (nx419)) ;
    inv02 ix340 (.Y (nx339), .A (nx78)) ;
    inv02 ix325 (.Y (nx324), .A (nx70)) ;
    inv02 ix310 (.Y (nx309), .A (nx62)) ;
    inv02 ix51 (.Y (nx50), .A (nx293)) ;
    inv02 ix43 (.Y (nx42), .A (nx275)) ;
    inv02 ix258 (.Y (nx257), .A (nx38)) ;
    buf02 ix429 (.Y (nx430), .A (nx108)) ;
    buf02 ix431 (.Y (nx432), .A (nx118)) ;
    buf02 ix433 (.Y (nx434), .A (nx130)) ;
    buf02 ix435 (.Y (nx436), .A (nx140)) ;
    buf02 ix437 (.Y (nx438), .A (nx212)) ;
    buf02 ix439 (.Y (nx440), .A (nx222)) ;
    buf02 ix441 (.Y (nx442), .A (nx234)) ;
    buf02 ix443 (.Y (nx444), .A (nx244)) ;
endmodule

