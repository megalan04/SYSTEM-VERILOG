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
    repeat(4)
    if(pkt.randomize())
      $display("Randomization Success");
    else
      $display("Randomization Failed");

    $display("a=%0d",pkt.a);
  end
endmodule
