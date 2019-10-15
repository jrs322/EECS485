//
// Verilog description for cell alu_shifter, 
// Tue Oct 15 15:23:49 2019
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module alu_shifter ( A, shift_amt, ctrl, C ) ;

    input [15:0]A ;
    input [3:0]shift_amt ;
    input [2:0]ctrl ;
    output [15:0]C ;

    wire nx8, nx20, nx26, nx36, nx40, nx54, nx66, nx70, nx82, nx94, nx98, nx102, 
         nx112, nx126, nx138, nx142, nx146, nx150, nx152, temp_0, nx186, nx190, 
         nx194, nx204, nx208, nx218, nx228, nx238, temp_1, nx262, nx274, nx278, 
         nx288, nx296, nx302, nx306, nx308, nx318, nx330, nx334, nx336, nx358, 
         nx366, nx370, nx380, temp_2, nx404, nx412, nx418, nx442, nx450, nx454, 
         nx464, temp_3, nx490, nx498, nx512, nx522, nx530, nx538, nx542, temp_4, 
         nx582, nx590, nx598, temp_5, nx638, nx646, nx654, temp_6, nx694, nx702, 
         nx710, temp_7, nx742, nx746, nx752, nx758, temp_8, nx784, nx792, temp_9, 
         nx832, nx840, temp_10, nx880, nx888, temp_11, nx928, nx936, nx954, 
         nx958, temp_12, nx1004, temp_13, nx1054, temp_14, temp_15, nx2133, 
         nx2137, nx2139, nx2143, nx2147, nx2149, nx2151, nx2167, nx2169, nx2173, 
         nx2175, nx2178, nx2181, nx2186, nx2193, nx2197, nx2205, nx2210, nx2213, 
         nx2219, nx2224, nx2227, nx2234, nx2240, nx2244, nx2247, nx2253, nx2256, 
         nx2259, nx2261, nx2264, nx2271, nx2274, nx2276, nx2282, nx2285, nx2287, 
         nx2293, nx2296, nx2298, nx2304, nx2308, nx2312, nx2317, nx2321, nx2324, 
         nx2327, nx2331, nx2334, nx2337, nx2341, nx2344, nx2347, nx2349, nx2352, 
         nx2354, nx2359, nx2361, nx2364, nx2366, nx2370, nx2373, nx2375, nx2378, 
         nx2381, nx2385, nx2388, nx2390, nx2392, nx2399, nx2401, nx2403, nx2405, 
         nx2407, nx2409, nx2411, nx2413, nx2415, nx2417, nx2419, nx2421, nx2423, 
         nx2425, nx2427, nx2429, nx2431, nx2433, nx2439;



    nand03 ix183 (.Y (C[0]), .A0 (nx2133), .A1 (nx2151), .A2 (nx2175)) ;
    aoi22 ix2134 (.Y (nx2133), .A0 (ctrl[2]), .A1 (A[0]), .B0 (temp_0), .B1 (
          nx2411)) ;
    latch lat_temp_0 (.Q (temp_0), .D (A[1]), .CLK (nx2399)) ;
    nand02 ix2138 (.Y (nx2137), .A0 (ctrl[0]), .A1 (nx2139)) ;
    inv02 ix2140 (.Y (nx2139), .A (ctrl[2])) ;
    nor04_2x ix2144 (.Y (nx2143), .A0 (shift_amt[0]), .A1 (shift_amt[1]), .A2 (
             shift_amt[2]), .A3 (shift_amt[3])) ;
    nor02_2x ix2148 (.Y (nx2147), .A0 (shift_amt[0]), .A1 (shift_amt[1])) ;
    nor02_2x ix2150 (.Y (nx2149), .A0 (shift_amt[2]), .A1 (shift_amt[3])) ;
    aoi43 ix2152 (.Y (nx2151), .A0 (nx152), .A1 (ctrl[0]), .A2 (nx2139), .A3 (
          nx2169), .B0 (nx36), .B1 (nx2433), .B2 (nx40)) ;
    ao21 ix153 (.Y (nx152), .A0 (shift_amt[3]), .A1 (nx102), .B0 (nx150)) ;
    mux21_ni ix103 (.Y (nx102), .A0 (nx70), .A1 (nx98), .S0 (shift_amt[2])) ;
    mux21_ni ix71 (.Y (nx70), .A0 (nx54), .A1 (nx66), .S0 (shift_amt[1])) ;
    mux21_ni ix55 (.Y (nx54), .A0 (A[8]), .A1 (A[9]), .S0 (shift_amt[0])) ;
    mux21_ni ix67 (.Y (nx66), .A0 (A[10]), .A1 (A[11]), .S0 (shift_amt[0])) ;
    mux21_ni ix99 (.Y (nx98), .A0 (nx82), .A1 (nx94), .S0 (shift_amt[1])) ;
    mux21_ni ix83 (.Y (nx82), .A0 (A[12]), .A1 (A[13]), .S0 (shift_amt[0])) ;
    mux21_ni ix95 (.Y (nx94), .A0 (A[14]), .A1 (A[15]), .S0 (shift_amt[0])) ;
    ao32 ix151 (.Y (nx150), .A0 (nx2149), .A1 (shift_amt[1]), .A2 (nx112), .B0 (
         nx142), .B1 (nx146)) ;
    mux21_ni ix113 (.Y (nx112), .A0 (A[2]), .A1 (A[3]), .S0 (shift_amt[0])) ;
    mux21_ni ix143 (.Y (nx142), .A0 (nx126), .A1 (nx138), .S0 (shift_amt[1])) ;
    mux21_ni ix127 (.Y (nx126), .A0 (A[4]), .A1 (A[5]), .S0 (shift_amt[0])) ;
    mux21_ni ix139 (.Y (nx138), .A0 (A[6]), .A1 (A[7]), .S0 (shift_amt[0])) ;
    inv02 ix2168 (.Y (nx2167), .A (shift_amt[2])) ;
    nand02_2x ix37 (.Y (nx36), .A0 (ctrl[0]), .A1 (ctrl[1])) ;
    nor03_2x ix41 (.Y (nx40), .A0 (nx2173), .A1 (shift_amt[0]), .A2 (
             shift_amt[1])) ;
    inv02 ix2174 (.Y (nx2173), .A (A[0])) ;
    oai21 ix2176 (.Y (nx2175), .A0 (nx26), .A1 (nx2399), .B0 (A[1])) ;
    inv02 ix2179 (.Y (nx2178), .A (shift_amt[0])) ;
    inv02 ix2182 (.Y (nx2181), .A (shift_amt[3])) ;
    nand03 ix345 (.Y (C[1]), .A0 (nx2186), .A1 (nx2205), .A2 (nx2210)) ;
    aoi322 ix2187 (.Y (nx2186), .A0 (nx306), .A1 (shift_amt[3]), .A2 (nx20), .B0 (
           nx334), .B1 (nx2425), .C0 (temp_1), .C1 (nx2411)) ;
    mux21_ni ix307 (.Y (nx306), .A0 (nx278), .A1 (nx302), .S0 (shift_amt[2])) ;
    mux21_ni ix279 (.Y (nx278), .A0 (nx262), .A1 (nx274), .S0 (shift_amt[1])) ;
    mux21_ni ix263 (.Y (nx262), .A0 (A[9]), .A1 (A[10]), .S0 (shift_amt[0])) ;
    mux21_ni ix275 (.Y (nx274), .A0 (A[11]), .A1 (A[12]), .S0 (shift_amt[0])) ;
    ao21 ix303 (.Y (nx302), .A0 (nx2193), .A1 (nx296), .B0 (nx288)) ;
    inv02 ix2194 (.Y (nx2193), .A (shift_amt[1])) ;
    mux21_ni ix297 (.Y (nx296), .A0 (A[13]), .A1 (A[14]), .S0 (shift_amt[0])) ;
    nor03 ix289 (.Y (nx288), .A0 (nx2197), .A1 (nx2193), .A2 (shift_amt[0])) ;
    inv02 ix2198 (.Y (nx2197), .A (A[15])) ;
    nor02_2x ix21 (.Y (nx20), .A0 (ctrl[1]), .A1 (nx2137)) ;
    mux21_ni ix335 (.Y (nx334), .A0 (nx318), .A1 (nx330), .S0 (shift_amt[1])) ;
    mux21_ni ix319 (.Y (nx318), .A0 (A[5]), .A1 (A[6]), .S0 (shift_amt[0])) ;
    mux21_ni ix331 (.Y (nx330), .A0 (A[7]), .A1 (A[8]), .S0 (shift_amt[0])) ;
    nor04 ix337 (.Y (nx336), .A0 (ctrl[1]), .A1 (nx2137), .A2 (shift_amt[3]), .A3 (
          nx2167)) ;
    latch lat_temp_1 (.Q (temp_1), .D (A[2]), .CLK (nx2399)) ;
    aoi32 ix2206 (.Y (nx2205), .A0 (nx238), .A1 (shift_amt[1]), .A2 (nx2417), .B0 (
          A[1]), .B1 (nx228)) ;
    mux21_ni ix239 (.Y (nx238), .A0 (A[3]), .A1 (A[4]), .S0 (shift_amt[0])) ;
    nor04 ix187 (.Y (nx186), .A0 (shift_amt[2]), .A1 (shift_amt[3]), .A2 (
          ctrl[1]), .A3 (nx2137)) ;
    ao21 ix229 (.Y (nx228), .A0 (nx2417), .A1 (nx2147), .B0 (ctrl[2])) ;
    aoi22 ix2211 (.Y (nx2210), .A0 (A[2]), .A1 (nx194), .B0 (nx208), .B1 (nx2421
          )) ;
    oai21 ix195 (.Y (nx194), .A0 (nx2178), .A1 (nx2213), .B0 (nx2169)) ;
    nand02_2x ix2214 (.Y (nx2213), .A0 (nx2193), .A1 (nx2417)) ;
    nor02ii ix209 (.Y (nx208), .A0 (shift_amt[1]), .A1 (nx204)) ;
    mux21_ni ix205 (.Y (nx204), .A0 (A[1]), .A1 (A[0]), .S0 (shift_amt[0])) ;
    nor04 ix219 (.Y (nx218), .A0 (ctrl[0]), .A1 (ctrl[2]), .A2 (shift_amt[2]), .A3 (
          shift_amt[3])) ;
    nand04 ix429 (.Y (C[2]), .A0 (nx2219), .A1 (nx2224), .A2 (nx2227), .A3 (
           nx2234)) ;
    aoi22 ix2220 (.Y (nx2219), .A0 (ctrl[2]), .A1 (A[2]), .B0 (nx418), .B1 (
          nx2421)) ;
    ao21 ix419 (.Y (nx418), .A0 (nx2193), .A1 (nx412), .B0 (nx404)) ;
    mux21_ni ix413 (.Y (nx412), .A0 (A[2]), .A1 (A[1]), .S0 (shift_amt[0])) ;
    nor03 ix405 (.Y (nx404), .A0 (nx2173), .A1 (nx2193), .A2 (shift_amt[0])) ;
    aoi22 ix2225 (.Y (nx2224), .A0 (A[3]), .A1 (nx2399), .B0 (temp_2), .B1 (
          nx2411)) ;
    latch lat_temp_2 (.Q (temp_2), .D (A[3]), .CLK (nx2399)) ;
    aoi22 ix2228 (.Y (nx2227), .A0 (nx380), .A1 (nx2425), .B0 (nx370), .B1 (
          nx308)) ;
    mux21_ni ix381 (.Y (nx380), .A0 (nx138), .A1 (nx54), .S0 (shift_amt[1])) ;
    mux21_ni ix371 (.Y (nx370), .A0 (nx358), .A1 (nx366), .S0 (shift_amt[2])) ;
    mux21_ni ix359 (.Y (nx358), .A0 (nx66), .A1 (nx82), .S0 (shift_amt[1])) ;
    nor02ii ix367 (.Y (nx366), .A0 (shift_amt[1]), .A1 (nx94)) ;
    aoi32 ix2235 (.Y (nx2234), .A0 (nx126), .A1 (shift_amt[1]), .A2 (nx2417), .B0 (
          nx112), .B1 (nx190)) ;
    nand04 ix509 (.Y (C[3]), .A0 (nx2240), .A1 (nx2244), .A2 (nx2247), .A3 (
           nx2253)) ;
    aoi22 ix2241 (.Y (nx2240), .A0 (ctrl[2]), .A1 (A[3]), .B0 (nx498), .B1 (
          nx2421)) ;
    mux21_ni ix499 (.Y (nx498), .A0 (nx490), .A1 (nx204), .S0 (shift_amt[1])) ;
    mux21_ni ix491 (.Y (nx490), .A0 (A[3]), .A1 (A[2]), .S0 (shift_amt[0])) ;
    aoi22 ix2245 (.Y (nx2244), .A0 (A[4]), .A1 (nx2399), .B0 (temp_3), .B1 (
          nx2411)) ;
    latch lat_temp_3 (.Q (temp_3), .D (A[4]), .CLK (nx2399)) ;
    aoi22 ix2248 (.Y (nx2247), .A0 (nx464), .A1 (nx2425), .B0 (nx454), .B1 (
          nx308)) ;
    mux21_ni ix465 (.Y (nx464), .A0 (nx330), .A1 (nx262), .S0 (shift_amt[1])) ;
    mux21_ni ix455 (.Y (nx454), .A0 (nx442), .A1 (nx450), .S0 (shift_amt[2])) ;
    mux21_ni ix443 (.Y (nx442), .A0 (nx274), .A1 (nx296), .S0 (shift_amt[1])) ;
    nor03_2x ix451 (.Y (nx450), .A0 (nx2197), .A1 (shift_amt[0]), .A2 (
             shift_amt[1])) ;
    aoi32 ix2254 (.Y (nx2253), .A0 (nx318), .A1 (shift_amt[1]), .A2 (nx2417), .B0 (
          nx238), .B1 (nx190)) ;
    nand03 ix573 (.Y (C[4]), .A0 (nx2256), .A1 (nx2259), .A2 (nx2261)) ;
    aoi222 ix2257 (.Y (nx2256), .A0 (ctrl[2]), .A1 (A[4]), .B0 (A[5]), .B1 (
           nx2401), .C0 (temp_4), .C1 (nx2411)) ;
    latch lat_temp_4 (.Q (temp_4), .D (A[5]), .CLK (nx2401)) ;
    aoi22 ix2260 (.Y (nx2259), .A0 (nx142), .A1 (nx2417), .B0 (nx70), .B1 (
          nx2425)) ;
    aoi22 ix2262 (.Y (nx2261), .A0 (nx98), .A1 (nx512), .B0 (nx538), .B1 (nx542)
          ) ;
    nor02_2x ix513 (.Y (nx512), .A0 (shift_amt[2]), .A1 (nx2264)) ;
    nand02_2x ix2265 (.Y (nx2264), .A0 (shift_amt[3]), .A1 (nx20)) ;
    mux21_ni ix539 (.Y (nx538), .A0 (nx530), .A1 (nx40), .S0 (shift_amt[2])) ;
    mux21_ni ix531 (.Y (nx530), .A0 (nx522), .A1 (nx412), .S0 (shift_amt[1])) ;
    mux21_ni ix523 (.Y (nx522), .A0 (A[4]), .A1 (A[3]), .S0 (shift_amt[0])) ;
    nor03_2x ix543 (.Y (nx542), .A0 (shift_amt[3]), .A1 (ctrl[0]), .A2 (ctrl[2])
             ) ;
    nand03 ix629 (.Y (C[5]), .A0 (nx2271), .A1 (nx2274), .A2 (nx2276)) ;
    aoi222 ix2272 (.Y (nx2271), .A0 (ctrl[2]), .A1 (A[5]), .B0 (A[6]), .B1 (
           nx2401), .C0 (temp_5), .C1 (nx2411)) ;
    latch lat_temp_5 (.Q (temp_5), .D (A[6]), .CLK (nx2401)) ;
    aoi22 ix2275 (.Y (nx2274), .A0 (nx334), .A1 (nx2417), .B0 (nx278), .B1 (
          nx2425)) ;
    aoi22 ix2277 (.Y (nx2276), .A0 (nx302), .A1 (nx512), .B0 (nx598), .B1 (nx542
          )) ;
    mux21_ni ix599 (.Y (nx598), .A0 (nx590), .A1 (nx208), .S0 (shift_amt[2])) ;
    mux21_ni ix591 (.Y (nx590), .A0 (nx582), .A1 (nx490), .S0 (shift_amt[1])) ;
    mux21_ni ix583 (.Y (nx582), .A0 (A[5]), .A1 (A[4]), .S0 (shift_amt[0])) ;
    nand03 ix685 (.Y (C[6]), .A0 (nx2282), .A1 (nx2285), .A2 (nx2287)) ;
    aoi222 ix2283 (.Y (nx2282), .A0 (ctrl[2]), .A1 (A[6]), .B0 (A[7]), .B1 (
           nx2401), .C0 (temp_6), .C1 (nx2411)) ;
    latch lat_temp_6 (.Q (temp_6), .D (A[7]), .CLK (nx2401)) ;
    aoi22 ix2286 (.Y (nx2285), .A0 (nx380), .A1 (nx2419), .B0 (nx358), .B1 (
          nx2425)) ;
    aoi22 ix2288 (.Y (nx2287), .A0 (nx366), .A1 (nx512), .B0 (nx654), .B1 (nx542
          )) ;
    mux21_ni ix655 (.Y (nx654), .A0 (nx646), .A1 (nx418), .S0 (shift_amt[2])) ;
    mux21_ni ix647 (.Y (nx646), .A0 (nx638), .A1 (nx522), .S0 (shift_amt[1])) ;
    mux21_ni ix639 (.Y (nx638), .A0 (A[6]), .A1 (A[5]), .S0 (shift_amt[0])) ;
    nand03 ix741 (.Y (C[7]), .A0 (nx2293), .A1 (nx2296), .A2 (nx2298)) ;
    aoi222 ix2294 (.Y (nx2293), .A0 (ctrl[2]), .A1 (A[7]), .B0 (A[8]), .B1 (
           nx2401), .C0 (temp_7), .C1 (nx2413)) ;
    latch lat_temp_7 (.Q (temp_7), .D (A[8]), .CLK (nx2403)) ;
    aoi22 ix2297 (.Y (nx2296), .A0 (nx464), .A1 (nx2419), .B0 (nx442), .B1 (
          nx2425)) ;
    aoi22 ix2299 (.Y (nx2298), .A0 (nx450), .A1 (nx512), .B0 (nx710), .B1 (nx542
          )) ;
    mux21_ni ix711 (.Y (nx710), .A0 (nx702), .A1 (nx498), .S0 (shift_amt[2])) ;
    mux21_ni ix703 (.Y (nx702), .A0 (nx694), .A1 (nx582), .S0 (shift_amt[1])) ;
    mux21_ni ix695 (.Y (nx694), .A0 (A[7]), .A1 (A[6]), .S0 (shift_amt[0])) ;
    nand03 ix801 (.Y (C[8]), .A0 (nx2304), .A1 (nx2308), .A2 (nx2312)) ;
    aoi222 ix2305 (.Y (nx2304), .A0 (A[9]), .A1 (nx2403), .B0 (ctrl[2]), .B1 (
           A[8]), .C0 (nx792), .C1 (nx2421)) ;
    mux21_ni ix793 (.Y (nx792), .A0 (nx784), .A1 (nx638), .S0 (shift_amt[1])) ;
    mux21_ni ix785 (.Y (nx784), .A0 (A[8]), .A1 (A[7]), .S0 (shift_amt[0])) ;
    aoi22 ix2309 (.Y (nx2308), .A0 (temp_8), .A1 (nx2413), .B0 (nx530), .B1 (
          nx2429)) ;
    latch lat_temp_8 (.Q (temp_8), .D (A[9]), .CLK (nx2403)) ;
    nor04 ix759 (.Y (nx758), .A0 (ctrl[0]), .A1 (ctrl[2]), .A2 (shift_amt[3]), .A3 (
          nx2167)) ;
    aoi22 ix2313 (.Y (nx2312), .A0 (nx40), .A1 (nx2427), .B0 (nx102), .B1 (nx752
          )) ;
    nor04 ix747 (.Y (nx746), .A0 (shift_amt[2]), .A1 (nx2181), .A2 (ctrl[0]), .A3 (
          ctrl[2])) ;
    nor03_2x ix753 (.Y (nx752), .A0 (shift_amt[3]), .A1 (ctrl[1]), .A2 (nx2137)
             ) ;
    nand03 ix849 (.Y (C[9]), .A0 (nx2317), .A1 (nx2321), .A2 (nx2324)) ;
    aoi222 ix2318 (.Y (nx2317), .A0 (A[10]), .A1 (nx2403), .B0 (ctrl[2]), .B1 (
           A[9]), .C0 (nx840), .C1 (nx2421)) ;
    mux21_ni ix841 (.Y (nx840), .A0 (nx832), .A1 (nx694), .S0 (shift_amt[1])) ;
    mux21_ni ix833 (.Y (nx832), .A0 (A[9]), .A1 (A[8]), .S0 (shift_amt[0])) ;
    aoi22 ix2322 (.Y (nx2321), .A0 (temp_9), .A1 (nx2413), .B0 (nx590), .B1 (
          nx2429)) ;
    latch lat_temp_9 (.Q (temp_9), .D (A[10]), .CLK (nx2403)) ;
    aoi22 ix2325 (.Y (nx2324), .A0 (nx208), .A1 (nx2427), .B0 (nx306), .B1 (
          nx752)) ;
    nand03 ix897 (.Y (C[10]), .A0 (nx2327), .A1 (nx2331), .A2 (nx2334)) ;
    aoi222 ix2328 (.Y (nx2327), .A0 (A[11]), .A1 (nx2403), .B0 (ctrl[2]), .B1 (
           A[10]), .C0 (nx888), .C1 (nx2421)) ;
    mux21_ni ix889 (.Y (nx888), .A0 (nx880), .A1 (nx784), .S0 (shift_amt[1])) ;
    mux21_ni ix881 (.Y (nx880), .A0 (A[10]), .A1 (A[9]), .S0 (shift_amt[0])) ;
    aoi22 ix2332 (.Y (nx2331), .A0 (temp_10), .A1 (nx2413), .B0 (nx646), .B1 (
          nx2429)) ;
    latch lat_temp_10 (.Q (temp_10), .D (A[11]), .CLK (nx2403)) ;
    aoi22 ix2335 (.Y (nx2334), .A0 (nx418), .A1 (nx2427), .B0 (nx370), .B1 (
          nx752)) ;
    nand03 ix945 (.Y (C[11]), .A0 (nx2337), .A1 (nx2341), .A2 (nx2344)) ;
    aoi222 ix2338 (.Y (nx2337), .A0 (A[12]), .A1 (nx2405), .B0 (ctrl[2]), .B1 (
           A[11]), .C0 (nx936), .C1 (nx2421)) ;
    mux21_ni ix937 (.Y (nx936), .A0 (nx928), .A1 (nx832), .S0 (shift_amt[1])) ;
    mux21_ni ix929 (.Y (nx928), .A0 (A[11]), .A1 (A[10]), .S0 (shift_amt[0])) ;
    aoi22 ix2342 (.Y (nx2341), .A0 (temp_11), .A1 (nx2413), .B0 (nx702), .B1 (
          nx2429)) ;
    latch lat_temp_11 (.Q (temp_11), .D (A[12]), .CLK (nx2405)) ;
    aoi22 ix2345 (.Y (nx2344), .A0 (nx498), .A1 (nx2427), .B0 (nx454), .B1 (
          nx752)) ;
    nand04 ix995 (.Y (C[12]), .A0 (nx2347), .A1 (nx2349), .A2 (nx2352), .A3 (
           nx2354)) ;
    aoi22 ix2348 (.Y (nx2347), .A0 (ctrl[2]), .A1 (A[12]), .B0 (A[13]), .B1 (
          nx2405)) ;
    aoi22 ix2350 (.Y (nx2349), .A0 (temp_12), .A1 (nx2413), .B0 (nx98), .B1 (
          nx2419)) ;
    latch lat_temp_12 (.Q (temp_12), .D (A[13]), .CLK (nx2405)) ;
    aoi32 ix2353 (.Y (nx2352), .A0 (nx880), .A1 (shift_amt[1]), .A2 (nx2423), .B0 (
          nx792), .B1 (nx2429)) ;
    aoi32 ix2355 (.Y (nx2354), .A0 (nx954), .A1 (nx2193), .A2 (nx2423), .B0 (
          nx538), .B1 (nx742)) ;
    mux21_ni ix955 (.Y (nx954), .A0 (A[12]), .A1 (A[11]), .S0 (shift_amt[0])) ;
    nor03_2x ix743 (.Y (nx742), .A0 (nx2181), .A1 (ctrl[0]), .A2 (ctrl[2])) ;
    nand04 ix1039 (.Y (C[13]), .A0 (nx2359), .A1 (nx2361), .A2 (nx2364), .A3 (
           nx2366)) ;
    aoi22 ix2360 (.Y (nx2359), .A0 (ctrl[2]), .A1 (A[13]), .B0 (A[14]), .B1 (
          nx2405)) ;
    aoi22 ix2362 (.Y (nx2361), .A0 (temp_13), .A1 (nx2413), .B0 (nx302), .B1 (
          nx2419)) ;
    latch lat_temp_13 (.Q (temp_13), .D (A[14]), .CLK (nx2405)) ;
    aoi32 ix2365 (.Y (nx2364), .A0 (nx928), .A1 (shift_amt[1]), .A2 (nx2423), .B0 (
          nx840), .B1 (nx2429)) ;
    aoi32 ix2367 (.Y (nx2366), .A0 (nx1004), .A1 (nx2193), .A2 (nx2423), .B0 (
          nx598), .B1 (nx742)) ;
    mux21_ni ix1005 (.Y (nx1004), .A0 (A[13]), .A1 (A[12]), .S0 (shift_amt[0])
             ) ;
    nand04 ix1083 (.Y (C[14]), .A0 (nx2370), .A1 (nx2373), .A2 (nx2375), .A3 (
           nx2378)) ;
    aoi22 ix2371 (.Y (nx2370), .A0 (A[15]), .A1 (nx2405), .B0 (temp_14), .B1 (
          nx2415)) ;
    latch lat_temp_14 (.Q (temp_14), .D (A[15]), .CLK (nx2407)) ;
    aoi22 ix2374 (.Y (nx2373), .A0 (nx366), .A1 (nx2419), .B0 (nx888), .B1 (
          nx2429)) ;
    aoi32 ix2376 (.Y (nx2375), .A0 (nx954), .A1 (shift_amt[1]), .A2 (nx2423), .B0 (
          A[14]), .B1 (nx1054)) ;
    ao21 ix1055 (.Y (nx1054), .A0 (nx2423), .A1 (nx2147), .B0 (ctrl[2])) ;
    aoi32 ix2379 (.Y (nx2378), .A0 (nx958), .A1 (shift_amt[0]), .A2 (A[13]), .B0 (
          nx654), .B1 (nx742)) ;
    nand04 ix1121 (.Y (C[15]), .A0 (nx2385), .A1 (nx2388), .A2 (nx2390), .A3 (
           nx2392)) ;
    aoi22 ix2386 (.Y (nx2385), .A0 (A[0]), .A1 (nx2407), .B0 (temp_15), .B1 (
          nx2415)) ;
    latch lat_temp_15 (.Q (temp_15), .D (A[0]), .CLK (nx2407)) ;
    aoi22 ix2389 (.Y (nx2388), .A0 (nx450), .A1 (nx2419), .B0 (nx936), .B1 (
          nx2431)) ;
    aoi32 ix2391 (.Y (nx2390), .A0 (nx1004), .A1 (shift_amt[1]), .A2 (nx2423), .B0 (
          A[15]), .B1 (nx1054)) ;
    aoi32 ix2393 (.Y (nx2392), .A0 (nx958), .A1 (shift_amt[0]), .A2 (A[14]), .B0 (
          nx710), .B1 (nx742)) ;
    inv02 ix309 (.Y (nx308), .A (nx2264)) ;
    inv02 ix2382 (.Y (nx2381), .A (nx218)) ;
    inv02 ix191 (.Y (nx190), .A (nx2213)) ;
    inv02 ix9 (.Y (nx8), .A (nx2143)) ;
    inv02 ix2398 (.Y (nx2399), .A (nx2169)) ;
    inv02 ix2400 (.Y (nx2401), .A (nx2169)) ;
    inv02 ix2402 (.Y (nx2403), .A (nx2169)) ;
    inv02 ix2404 (.Y (nx2405), .A (nx2169)) ;
    inv02 ix2406 (.Y (nx2407), .A (nx2169)) ;
    inv02 ix2410 (.Y (nx2411), .A (nx2409)) ;
    inv02 ix2412 (.Y (nx2413), .A (nx2409)) ;
    inv02 ix2414 (.Y (nx2415), .A (nx2409)) ;
    buf02 ix2416 (.Y (nx2417), .A (nx186)) ;
    buf02 ix2418 (.Y (nx2419), .A (nx186)) ;
    inv02 ix2420 (.Y (nx2421), .A (nx2381)) ;
    inv02 ix2422 (.Y (nx2423), .A (nx2381)) ;
    buf02 ix2424 (.Y (nx2425), .A (nx336)) ;
    buf02 ix2426 (.Y (nx2427), .A (nx746)) ;
    buf02 ix2428 (.Y (nx2429), .A (nx758)) ;
    buf02 ix2430 (.Y (nx2431), .A (nx758)) ;
    inv02 ix2432 (.Y (nx2433), .A (nx8)) ;
    nand03 ix13 (.Y (nx2169), .A0 (nx2439), .A1 (ctrl[1]), .A2 (nx8)) ;
    inv02 ix2438 (.Y (nx2439), .A (nx2137)) ;
    nand03 ix175 (.Y (nx2409), .A0 (nx2439), .A1 (ctrl[1]), .A2 (nx2143)) ;
    nor02ii ix147 (.Y (nx146), .A0 (shift_amt[3]), .A1 (shift_amt[2])) ;
    and04 ix27 (.Y (nx26), .A0 (nx2193), .A1 (shift_amt[0]), .A2 (nx2149), .A3 (
          nx20)) ;
    nor02ii ix959 (.Y (nx958), .A0 (shift_amt[1]), .A1 (nx218)) ;
endmodule

