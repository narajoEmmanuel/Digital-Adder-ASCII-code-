`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2021 22:16:22
// Design Name: 
// Module Name: main_tb
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


module main_tb;
    reg [6:0] AD, BD, AU, BU;
    wire [3:0] YU,YD, YC;
    //sumador_7_bits sum1(A,B,salida,carry);
    main maintb(AD, AU, BD, BU, YC, YD, YU);
    
    initial begin
      AD = 0;
      BD = 0;
      AU = 0;
      BU = 0;   
    end
    
    always #40 AD = $urandom%10;
    always #40 BD = $urandom%10;
    always #40 AU = $urandom%10;
    always #40 BU = $urandom%10;
     
endmodule
