`timescale 1ns /1ps
module test();
  bit[7:0] a , b;
  integer c ,d ;
  initial begin 
    a=12;
    b=34;
    c=67;
    d=257;
    #12;
    $display("the value of a,b,c,d : %d ,%d ,%d ,%d ",a,b,c,d);
    
    
  end
endmodule
