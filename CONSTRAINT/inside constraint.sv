class packet;
  rand int data;
  constraint c1{data inside{33,44,55,[1:5]};
               }
endclass

module tb;
  packet p;
  initial begin
    p=new();
    repeat(12)begin
      p.randomize();
      $display("addr=%0d",p.data);
    end
  end
endmodule

//output
addr=55
addr=55
addr=3
addr=1
addr=4
addr=1
addr=33
addr=2
addr=55
addr=55
addr=5
addr=44
