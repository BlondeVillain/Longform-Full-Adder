`timescale 1ns/100ps

module full_adderTB();
  reg x;
  reg y;
  reg Cin;
  
  full_adder FA(
    .x(x),
    .y(y),
    .Cout(Cout),
    .Cin(Cin),
    .S(S)
  );
   
  initial begin 
    $dumpfile("test.vcd"); 
    $dumpvars(1,full_adderTB);  
	
    #50
    x = 0;
    y = 0;
    Cin = 0;
    #50
    x = 0;
    y = 1;
    Cin = 0;
    #50
    x = 1;
    y = 0;
    Cin = 0; 
    #50
    x = 1;
    y = 1;
    Cin = 0;
    #50
    x = 0;
    y = 0;
    Cin = 1;
    #50
    x = 0;
    y = 1;
    Cin = 1;
    #50
    x = 1;
    y = 0;
    Cin = 1; 
    #50
    x = 1;
    y = 1;
    Cin = 1; 
    #50
    $finish;
  end
endmodule
