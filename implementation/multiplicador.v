`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2021 03:20:32 PM
// Design Name: 
// Module Name: multiplicador
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


module multiplicador(
   input [6:0] In,
   output [6:0] Out
    );
    wire A,B,C,D;
    assign {A,B,C,D}=In[3:0];
    assign Out[6]=A||(B&&C&&D);
    assign Out[5]=(~A&&B&&~C)||(~A&&B&&~D);
    assign Out[4]=(~B&&C)||(B&~C&&D)||(A)||(C&&~D);
    assign Out[3]=(~A&&~B&&D)||(~A&&B&&~D)||(~B&&~C&&D);
    assign Out[2]=C;
    assign Out[1]=D;
    assign Out[0]=0;
endmodule
