//
// Verilog description for cell logic_block, 
// Tue Oct 15 14:13:52 2019
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module logic_block ( A, B, sel, OUT ) ;

    input [15:0]A ;
    input [15:0]B ;
    input [2:0]sel ;
    output [15:0]OUT ;

    wire nx16, nx500, nx502, nx504, nx508, nx510, nx514, nx516, nx519, nx521, 
         nx524, nx526, nx529, nx531, nx534, nx536, nx539, nx541, nx544, nx546, 
         nx549, nx551, nx554, nx556, nx559, nx561, nx564, nx566, nx569, nx571, 
         nx574, nx576, nx579, nx581, nx584, nx586, nx593, nx595, nx597, nx599, 
         nx601, nx603, nx605, nx607, nx609, nx611, nx613, nx615;



    oai221 ix37 (.Y (OUT[0]), .A0 (nx500), .A1 (nx603), .B0 (A[0]), .B1 (nx611)
           , .C0 (nx510)) ;
    xnor2 ix501 (.Y (nx500), .A0 (A[0]), .A1 (B[0])) ;
    or02 ix503 (.Y (nx502), .A0 (sel[2]), .A1 (nx504)) ;
    xnor2 ix505 (.Y (nx504), .A0 (sel[1]), .A1 (sel[0])) ;
    inv02 ix509 (.Y (nx508), .A (sel[2])) ;
    nand03 ix511 (.Y (nx510), .A0 (nx595), .A1 (A[0]), .A2 (B[0])) ;
    nor02_2x ix17 (.Y (nx16), .A0 (sel[2]), .A1 (sel[1])) ;
    oai221 ix55 (.Y (OUT[1]), .A0 (nx514), .A1 (nx603), .B0 (A[1]), .B1 (nx611)
           , .C0 (nx516)) ;
    xnor2 ix515 (.Y (nx514), .A0 (A[1]), .A1 (B[1])) ;
    nand03 ix517 (.Y (nx516), .A0 (nx595), .A1 (A[1]), .A2 (B[1])) ;
    oai221 ix73 (.Y (OUT[2]), .A0 (nx519), .A1 (nx603), .B0 (A[2]), .B1 (nx611)
           , .C0 (nx521)) ;
    xnor2 ix520 (.Y (nx519), .A0 (A[2]), .A1 (B[2])) ;
    nand03 ix522 (.Y (nx521), .A0 (nx595), .A1 (A[2]), .A2 (B[2])) ;
    oai221 ix91 (.Y (OUT[3]), .A0 (nx524), .A1 (nx603), .B0 (A[3]), .B1 (nx611)
           , .C0 (nx526)) ;
    xnor2 ix525 (.Y (nx524), .A0 (A[3]), .A1 (B[3])) ;
    nand03 ix527 (.Y (nx526), .A0 (nx595), .A1 (A[3]), .A2 (B[3])) ;
    oai221 ix109 (.Y (OUT[4]), .A0 (nx529), .A1 (nx603), .B0 (A[4]), .B1 (nx611)
           , .C0 (nx531)) ;
    xnor2 ix530 (.Y (nx529), .A0 (A[4]), .A1 (B[4])) ;
    nand03 ix532 (.Y (nx531), .A0 (nx595), .A1 (A[4]), .A2 (B[4])) ;
    oai221 ix127 (.Y (OUT[5]), .A0 (nx534), .A1 (nx603), .B0 (A[5]), .B1 (nx611)
           , .C0 (nx536)) ;
    xnor2 ix535 (.Y (nx534), .A0 (A[5]), .A1 (B[5])) ;
    nand03 ix537 (.Y (nx536), .A0 (nx595), .A1 (A[5]), .A2 (B[5])) ;
    oai221 ix145 (.Y (OUT[6]), .A0 (nx539), .A1 (nx603), .B0 (A[6]), .B1 (nx611)
           , .C0 (nx541)) ;
    xnor2 ix540 (.Y (nx539), .A0 (A[6]), .A1 (B[6])) ;
    nand03 ix542 (.Y (nx541), .A0 (nx595), .A1 (A[6]), .A2 (B[6])) ;
    oai221 ix163 (.Y (OUT[7]), .A0 (nx544), .A1 (nx605), .B0 (A[7]), .B1 (nx613)
           , .C0 (nx546)) ;
    xnor2 ix545 (.Y (nx544), .A0 (A[7]), .A1 (B[7])) ;
    nand03 ix547 (.Y (nx546), .A0 (nx597), .A1 (A[7]), .A2 (B[7])) ;
    oai221 ix181 (.Y (OUT[8]), .A0 (nx549), .A1 (nx605), .B0 (A[8]), .B1 (nx613)
           , .C0 (nx551)) ;
    xnor2 ix550 (.Y (nx549), .A0 (A[8]), .A1 (B[8])) ;
    nand03 ix552 (.Y (nx551), .A0 (nx597), .A1 (A[8]), .A2 (B[8])) ;
    oai221 ix199 (.Y (OUT[9]), .A0 (nx554), .A1 (nx605), .B0 (A[9]), .B1 (nx613)
           , .C0 (nx556)) ;
    xnor2 ix555 (.Y (nx554), .A0 (A[9]), .A1 (B[9])) ;
    nand03 ix557 (.Y (nx556), .A0 (nx597), .A1 (A[9]), .A2 (B[9])) ;
    oai221 ix217 (.Y (OUT[10]), .A0 (nx559), .A1 (nx605), .B0 (A[10]), .B1 (
           nx613), .C0 (nx561)) ;
    xnor2 ix560 (.Y (nx559), .A0 (A[10]), .A1 (B[10])) ;
    nand03 ix562 (.Y (nx561), .A0 (nx597), .A1 (A[10]), .A2 (B[10])) ;
    oai221 ix235 (.Y (OUT[11]), .A0 (nx564), .A1 (nx605), .B0 (A[11]), .B1 (
           nx613), .C0 (nx566)) ;
    xnor2 ix565 (.Y (nx564), .A0 (A[11]), .A1 (B[11])) ;
    nand03 ix567 (.Y (nx566), .A0 (nx597), .A1 (A[11]), .A2 (B[11])) ;
    oai221 ix253 (.Y (OUT[12]), .A0 (nx569), .A1 (nx605), .B0 (A[12]), .B1 (
           nx613), .C0 (nx571)) ;
    xnor2 ix570 (.Y (nx569), .A0 (A[12]), .A1 (B[12])) ;
    nand03 ix572 (.Y (nx571), .A0 (nx597), .A1 (A[12]), .A2 (B[12])) ;
    oai221 ix271 (.Y (OUT[13]), .A0 (nx574), .A1 (nx605), .B0 (A[13]), .B1 (
           nx613), .C0 (nx576)) ;
    xnor2 ix575 (.Y (nx574), .A0 (A[13]), .A1 (B[13])) ;
    nand03 ix577 (.Y (nx576), .A0 (nx597), .A1 (A[13]), .A2 (B[13])) ;
    oai221 ix289 (.Y (OUT[14]), .A0 (nx579), .A1 (nx607), .B0 (A[14]), .B1 (
           nx615), .C0 (nx581)) ;
    xnor2 ix580 (.Y (nx579), .A0 (A[14]), .A1 (B[14])) ;
    nand03 ix582 (.Y (nx581), .A0 (nx599), .A1 (A[14]), .A2 (B[14])) ;
    oai221 ix307 (.Y (OUT[15]), .A0 (nx584), .A1 (nx607), .B0 (A[15]), .B1 (
           nx615), .C0 (nx586)) ;
    xnor2 ix585 (.Y (nx584), .A0 (A[15]), .A1 (B[15])) ;
    nand03 ix587 (.Y (nx586), .A0 (nx599), .A1 (A[15]), .A2 (B[15])) ;
    inv02 ix592 (.Y (nx593), .A (nx16)) ;
    inv02 ix594 (.Y (nx595), .A (nx593)) ;
    inv02 ix596 (.Y (nx597), .A (nx593)) ;
    inv02 ix598 (.Y (nx599), .A (nx593)) ;
    inv02 ix600 (.Y (nx601), .A (nx502)) ;
    inv02 ix602 (.Y (nx603), .A (nx601)) ;
    inv02 ix604 (.Y (nx605), .A (nx601)) ;
    inv02 ix606 (.Y (nx607), .A (nx601)) ;
    inv02 ix610 (.Y (nx611), .A (nx609)) ;
    inv02 ix612 (.Y (nx613), .A (nx609)) ;
    inv02 ix614 (.Y (nx615), .A (nx609)) ;
    nor03_2x ix507 (.Y (nx609), .A0 (sel[0]), .A1 (nx508), .A2 (sel[1])) ;
endmodule

