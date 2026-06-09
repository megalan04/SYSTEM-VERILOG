// object is not copied only address will be copied
class packet;
  int data;
endclass


module tb;
  initial begin
    packet p1,p2;
    p1=new();      // object created
    p1.data=25;
    $display("p1.data=%0d",p1.data);

    p2=p1;// class assignment (handle copy)

    p2.data=99;

    $display("p1.data=%0d",p1.data);
    $display("p2.data=%0d",p2.data);
  end
endmodule
