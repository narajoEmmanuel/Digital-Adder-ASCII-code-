`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2021 03:20:32 PM
// Design Name: 
// Module Name: convertidor
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module convertidor(
   input [6:0] S,
   input carry,
   output [9:0] Y
    );
    wire [3:0] O1,O2,O3,O4,O5,O6,O7;
    Bloque_convertidor bl1(0,carry,S[6],S[5],O1[3],O1[2],O1[1],O1[0]);
    Bloque_convertidor bl2(O1[2],O1[1],O1[0],S[4],O2[3],O2[2],O2[1],O2[0]);
    Bloque_convertidor bl3(O2[2],O2[1],O2[0],S[3],O3[3],O3[2],O3[1],O3[0]);
    Bloque_convertidor bl4(0,O1[3],O2[3],O3[3],O4[3],O4[2],O4[1],O4[0]);
    Bloque_convertidor bl5(O3[2],O3[1],O3[0],S[2],O5[3],O5[2],O5[1],O5[0]);
    Bloque_convertidor bl6(O4[2],O4[1],O4[0],O5[3],O6[3],O6[2],O6[1],O6[0]);
    Bloque_convertidor bl7(O5[2],O5[1],O5[0],S[1],O7[3],O7[2],O7[1],O7[0]);
    assign Y={O4[3],O6[3],O6[2],O6[1],O6[0],O7[3],O7[2],O7[1],O7[0],S[0]};
endmodule