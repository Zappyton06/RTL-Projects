`timescale 1ns / 1ps

module halfAdder(
    input X,
    input Y,
    output S,
    output C);
    assign S = X^Y;
    assign C = X & Y;
endmodule

module FullAdderDesign(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
    wire K1,K2,K3;
    halfAdder HA1(A,B,K1,K3);
    halfAdder HA2(K1,Cin,Sum,K2);
    assign Cout = K2 | K3;
endmodule
