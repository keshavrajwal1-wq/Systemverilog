class cls;
  integer unsigned dm1;
  integer unsigned dm2;
  integer unsigned dm3;
  
endclass

module mod;
  cls hdlr; // using handler "hdlr"
  initial begin
    hdlr = new(); //assigning memory to handler for data member using "new()"
    hdlr.dm1 = 45;
    hdlr.dm2 =78;
    hdlr.dm3 = 90;
    $display(" the 1 ,2 and 3 element are :%0d,%0d,%0d",hdlr.dm1,hdlr.dm2,hdlr.dm3);
  end
endmodule
