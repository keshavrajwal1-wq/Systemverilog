module tb;
  reg [8:0] arr1[];
initial begin 
  arr1 = new[7];
  for (int i =0 ; i<7 ;i++)begin
    arr1[i] = 7 + 7*i;
end
  #20
  arr1 = new[20](arr1);
  for (int j = 1 ; j < 14; j++) begin
    arr1[6 +j]= 5 * j;
  end
  $display("element of array : %p ", arr1);

end
endmodule
