//"dist" is used when you want to control the probability of random values.

class packet;
  rand int data;
  constraint c1{data dist{10:=30,20:=60,30:=10};
  }
endclass

module tb;
  packet p;
  initial begin
    p=new();
    repeat(4)begin
      p.randomize();
      $display("data=%0d",p.data);
    end
  end
endmodule

//output
data=20
data=20
data=10
data=10
