// Code your testbench here
// or browse Examples
class Packet;
  rand int a;
  constraint c1 {
    a inside{[1:10]};}
endclass

module tb;
  Packet pkt;

  initial begin
    pkt=new();
    repeat(2)
    if(pkt.randomize())
      $display("Success,a=%0d",pkt.a);
    else
      $display("Failed");
  end
endmodule
