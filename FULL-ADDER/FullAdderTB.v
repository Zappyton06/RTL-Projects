//Verilog testbench

`timescale 1ns / 1ps

module FullAdderTB;
    reg A;
    reg B;
    reg Cin;
    
    wire Sum;
    wire Cout;
    
    FullAdderDesign uut(
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );
    
    initial begin 
        $monitor("At time %0d: A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b", $time, A, B,Cin, Sum, Cout);
        
        A = 0; B = 0; Cin = 0;
        #5;
        
        A = 0; B = 0; Cin = 1;
        #5;
        
        A = 0; B = 1; Cin = 0;
        #5;
        
        A = 0; B = 1; Cin = 1;
        #5;
        
        A = 1; B = 0; Cin = 0;
        #5;
        
        A = 1; B = 0; Cin = 1;
        #5;
        
        A = 1; B = 1; Cin = 0;
        #5;
        
         A = 1; B = 1; Cin = 1;
        #5;
        $finish;
    end     
endmodule
