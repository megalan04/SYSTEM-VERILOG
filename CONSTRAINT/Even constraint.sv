// Code your testbench here
// or browse Examples
class packet;
  randc int data;
  constraint c1{
    data inside {[1:50]};
    data%2==0;
  }
endclass

module tb;
  packet p;
  initial begin
    p=new();
    repeat(25)begin
      p.randomize();
      $display("data=%0d",p.data);
    end
  end
endmodule

//output
data=22
data=40
data=28
data=46
data=34
data=18
data=6
data=36
data=12
data=24
data=42
data=30
data=8
data=14
data=26
data=32
data=2
data=48
data=38
data=20
data=16
data=4
data=44
data=50
data=10
