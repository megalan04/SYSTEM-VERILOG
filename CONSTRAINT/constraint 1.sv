//"Generate random values, but only within these rules."

class packet;
  rand bit[3:0]addr;
  constraint addr_c{
    addr inside{[4:10]};
    
  }
endclass

module tb;
  packet p;
  initial begin
    p=new();
    repeat(4)begin
      p.randomize();
      $display("addr=%0d",p.addr);
    end
  end
endmodule


//output
addr=6
addr=4
addr=10
addr=8
