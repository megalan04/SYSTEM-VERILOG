// Code your testbench here
// or browse Examples
class packet;
  rand bit write;
  rand int data;

  constraint c1 {
    if (write == 1)
      data inside {[1:100]};
    else
      data == 0;
  }
endclass

module tb;
  packet p;
  initial begin
    p=new();
    repeat(8)begin
      p.randomize();
      $display("write=%0d data=%0d",p.write, p.data);
    end
  end
endmodule



//output
write=0 data=0
write=1 data=64
write=1 data=85
write=1 data=1
write=0 data=0
write=0 data=0
write=0 data=0
write=1 data=60
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
