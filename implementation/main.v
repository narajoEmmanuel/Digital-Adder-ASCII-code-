`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2021 21:41:04
// Design Name: 
// Module Name: main
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


module main(
input [6:0] AD, AU, BD, BU, //se declaran los inputs para decenas y unidades de cada número en ascii
output [6:0] YC, YD, YU //se declaran los outputs para las centenas, decenas y unidades del resultado en ascii
    );
    
    wire [6:0] ADb, AUb, BDb, BUb, ADm, BDm, A, B, S, CoutA, CoutB, Cout; //cables entre conexiones
    wire [9:0] Y; //cable para la salida del convertidor.
    wire [3:0] YCb, YDb, YUb; //cables a los que se les asigna los bits para cada uno del convertidor.
    
    assign ADb = {1'b0, 1'b0, 1'b0, AD[3:0]}; //se pasan de binario a ascii 
    assign AUb = {1'b0, 1'b0, 1'b0, AU[3:0]}; //pasando los 3 bits más significativos todos a 0.
    assign BDb = {1'b0, 1'b0, 1'b0, BD[3:0]};
    assign BUb = {1'b0, 1'b0, 1'b0, BU[3:0]};
    
    multiplicador multiA(ADb, ADm); //capa de multiplicadores.
    multiplicador multiB(BDb, BDm);
    
    sumador_7_bits sumA(ADm, AUb, A, CoutA); //capa de sumadores.
    sumador_7_bits sumB(BDm, BUb, B, CoutB);
    sumador_7_bits SumTotal(A, B, S, Cout); //suma total.
    
    convertidor convert(S, Cout, Y); //convertidor binario a bcd.
    
    assign YUb = {Y[3:0]}; //se les asignan los bits correspondientes a 
    assign YDb = {Y[7:4]}; //unidades, decenas y centeas a su respectivos cables.
    assign YCb = {1'b0, 1'b0, Y[9:8]};

    assign YU = {1'b0, 1'b1, 1'b1, YUb[3:0]}; //se pasan de binario 4 bits a ascii 7 bits
    assign YD = {1'b0, 1'b1, 1'b1, YDb[3:0]}; //añadiendo los bits más significativos 011
    assign YC = {1'b0, 1'b1, 1'b1, YCb[3:0]};
    
endmodule
