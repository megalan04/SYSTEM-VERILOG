// Code your testbench here
// or browse Examples
class packet;
  randc int data;
  constraint c1{
    data inside {[1:50]};
    data % 2 != 0;
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
data=21
data=39
data=27
data=45
data=33
data=17
data=5
data=35
data=11
data=23
data=41
data=29
data=7
data=13
data=25
data=31
data=1
data=47
data=37
data=19
data=15
data=3
data=43
data=49
data=9
