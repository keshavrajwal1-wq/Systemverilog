module arr();
  //port declartaion
  
  bit [3:0] b[15];
  int j;
  
  //function declaration
  function void value_gen( ref  bit [3:0] a[15]);
    int i;
    for (i = 0 ;i<15; i++ ) begin
      a[i]= i;
    end
    
    endfunction
  
  
  //initial block
  initial begin
    value_gen (b);
    #1
    $display("value of array : %p", b);
    for ( j = 0 ; j <15 ;j++ ) begin
      $display(" value of element %0d is: %0d",j, b[j]);
    end
  end
  
  
endmodule
