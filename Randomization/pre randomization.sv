// Code your testbench here
// or browse Examples
class Packet;
  rand logic [3:0]a;

  constraint c1 {
    a inside{[1:10]};}
  function void pre_randomize();
    c1.constraint_mode(0);  // Disable constraint
    $display("Constraint disabled");
  endfunction
endclass

module tb;
  Packet pkt;

  initial begin
    pkt=new();
    repeat(2)
    pkt.randomize();

    $display("a = %0d", pkt.a);
  end
endmodule
