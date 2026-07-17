module top (
  input a, b , c, 
  output sum,carry);
  
  wire t1 , t2,t3 ;
  
  
  ha ha1(a,b,t1,t2);
  ha ha2(t1,c, sum, t3);
  
  assign carry = t2 | t3;
endmodule

module ha(
  input a, b , 
  output sum,carry)
;
  
  assign sum = a ^ b;
  assign carry = a & b;
  
endmodule

