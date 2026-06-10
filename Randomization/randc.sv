// Code your testbench here
// or browse Examples
class Packet;
  rand bit [1:0]a;
  randc bit [2:0]b;
endclass

module tb;
  Packet pkt;
  initial begin
    pkt=new();

    repeat(8) begin
      pkt.randomize();
      $display("a=%0d b=%0d",pkt.a,pkt.b);
    end
  end
endmodule
