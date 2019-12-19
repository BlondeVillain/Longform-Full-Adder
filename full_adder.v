`timescale 1ns/100ps
module full_adder(
    input x,
    input y,
    input Cin,
    output Cout,
    output S
    );
  
  wire a,b,c;
  xor (a,x,y);
  and (b,x,y);
  xor (S,a,Cin);
  and (c,a,Cin);
  or  (Cout,c,b);
  
endmodule
