module a53;
  //ports
 bit [5:0] addr;
  bit en,wr;
  bit clk = 0;
  
  always #20 clk = ~clk;    //25mhz signal is 40ns in a cyle
  
  
  task gen_stim(input bit [5:0] addr1 , input bit en1,input bit wr1);
    @(posedge clk)
    addr = addr1;
    en = en1;
    wr = wr1;
  endtask
  
  initial begin
    $dumpfile("dumpfile.vcd");
    $dumpvars;
    #250;
    $finish;
    
  end
  
  initial begin
    
    gen_stim(12,1,1);
    
    gen_stim(14,1,1);
    
    gen_stim(23,1,0);
    
    gen_stim(48,1,0);
    
    gen_stim(56,0,0);
   
    
  
  end
  
  
  
endmodule
