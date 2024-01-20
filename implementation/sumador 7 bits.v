`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2021 04:08:52 PM
// Design Name: 
// Module Name: sumador 7 bits
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


module sumador_7_bits(
    input [6:0] A,B,
    output [6:0]salida,
    output carry
    );
    assign {carry,salida}=A+B;
endmodule
