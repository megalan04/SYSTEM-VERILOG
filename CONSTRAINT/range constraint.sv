//Used when a variable must be within a particular range.

class packet;
  rand int data;
  constraint c1{data inside{[10:20]};
               }
endclass

module tb;
  packet p;
  initial begin
    p=new();
    repeat(10)begin
      p.randomize();
      $display("data=%0d",p.data);
    end
  end
endmodule


//output
data=16
data=12
data=13
data=11
data=18
data=10
data=19
data=18
data=16
data=14
