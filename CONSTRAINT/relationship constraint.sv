// Code your testbench here
// or browse Examples
class packet;
  rand int a;
  rand int b;
  constraint c1{
    a inside{[1:100]};
    b==a+10;
  }
endclass

module tb;
  packet p;
  initial begin
    p=new();
    repeat(10)begin
      p.randomize();
      $display("a=%0d b=%0d",p.a,p.b);
    end
  end
endmodule

//output
a=64 b=74
a=44 b=54
a=1 b=11
a=41 b=51
a=94 b=104
a=7 b=17
a=82 b=92
a=73 b=83
a=56 b=66
a=37 b=47
