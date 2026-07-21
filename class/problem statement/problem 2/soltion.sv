module test();
  int unsigned exp_result = 15;
  int unsigned cal_result;
  function integer unsigned function_name(integer unsigned a,integer unsigned b);
    return a*b;
  endfunction
    
    initial begin
      cal_result = function_name(5,3);
      if (exp_result == cal_result) begin
        $display("test passed");
        end
      else begin
        $display("test failed");
      end
      $display("calculated result : %0d", cal_result);
      $display("expected result : %0d", exp_result);
    end
               endmodule
