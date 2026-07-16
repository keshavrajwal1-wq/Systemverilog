module data_types();
  
  
  //hardware data type 
  reg a =0; //procedural assignment
  wire b= 0;//continuous assignment
  
  
  //variable datatype
  
  
  //  1....for a 2 state data type if not initilaised default value is 0 , for 4 state its default is X
  
  // signed variable -2^(n-1 )to 2(n-1)-1.  whereas unsigned 0 to 2^(n)-1 , where n is number of bit
  
  byte c = 0;   //8 bit signed
  shortint d = 0;  //16 bit signed
  int e = 0; //32 bit signed
  longint f = 0 ; // 64 bit signed
  
  
  // unsinged variable
  bit[7:0] g = 8'b00000000;
  bit [15:0] h= 16'h0000;
  
  
  //floating variable
   real i = 0;
  
  
  
  
  
  
  
  
  
  
endmodule
