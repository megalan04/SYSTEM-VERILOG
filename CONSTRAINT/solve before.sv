class packet;
  rand int a;
  rand int b;
  constraint c1{
    a inside{[1:10]};
    b==a*2;
    solve a before b;
  }
endclass

module tb;
  packet p;
  initial begin
    p=new();
    repeat(4)begin
      p.randomize();
      $display("a=%0d,b=%0d",p.a,p.b);
    end
  end
endmodule

//output
a=10,b=20
a=6,b=12
a=5,b=10
a=7,b=14
