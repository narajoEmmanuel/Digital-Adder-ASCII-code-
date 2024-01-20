`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2021 03:20:32 PM
// Design Name: 
// Module Name: Bloque_convertidor
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

module Bloque_convertidor(
   input A,B,C,D,
   output F3,F2,F1,F0
    );
    assign F3=(B&&C)||(A)||(B&&D);
    assign F2=(A&&D)||(B&&~C&&~D);
    assign F1=(~B&&C)||(C&&D)||(A&&~D);
    assign F0=(A&&~D)||(~A&&~B&&D)||(B&&C&&~D);
    
endmodule