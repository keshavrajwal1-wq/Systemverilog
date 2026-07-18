module tb;
  reg [8:0] arr1[20];
  reg [8:0] arr2[$];
  int k;

initial begin
  for ( int i = 0 ;  i <20 ;i++ )begin
  arr1[i]= $urandom;
end
  $display("elemnt of array are : %p ", arr1);
    arr2= arr1;
  k = arr2.pop_front();
  arr2.push_back(k);
  $display("elemnt of array are : %p ", arr2);
  
  end
endmodule
