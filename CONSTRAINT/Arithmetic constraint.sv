class packet;
  rand int a;
  rand int b;
  constraint c1{
    a inside {[1:44]};
   // b inside {[1:50]};
    a+b==200;
  }
endclass

module tb;
  packet p;
  initial begin
    p=new();
    repeat(5)begin
      p.randomize();
      $display("a=%0d b=%0d sum=%0d",p.a,p.b,p.a+p.b);
    end
  end
endmodule

//output
a=21 b=179 sum=200
a=44 b=156 sum=200
a=1 b=199 sum=200
a=4 b=196 sum=200
a=15 b=185 sum=200
