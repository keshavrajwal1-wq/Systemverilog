module a54;
  bit unsigned [7:0] ain [32];
  
  
  function void multiple8(ref bit unsigned [7:0] a [32]);
  for (int i = 0 ; i<32 ;i++) begin
    a[i] = 8* i;
  end
endfunction
  

  initial begin
   multiple8(ain);
    for (int i = 0 ; i <32 ;i++) begin
      $display("value  of elemnt %0d is : %0d",i,ain[i]);
    
  end
  end

endmodule
