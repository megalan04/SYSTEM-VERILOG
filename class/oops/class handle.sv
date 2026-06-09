



class counter;
  int count;
endclass

module test;
  counter c1,c2;//class handle
  initial begin
    c1=new();
    c2=c1;
    c1.count=10;
    $display("c2.coount=%0d",c2.count);
  end
endmodule
