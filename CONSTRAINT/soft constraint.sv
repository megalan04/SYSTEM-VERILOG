// Code your testbench here
// or browse Examples
class packet;
  rand int data;
  constraint c1{
    soft data inside{[1:100]};
  }
endclass

module tb;
  packet p;
  initial begin
    p=new();
    p.randomize();
    $display("Normal data=%0d", p.data);
    // Override soft constraint
    p.randomize() with{
      data inside{[200:300]};
    };
    $display("Inline data=%0d",p.data);
  end
endmodule

//output
Normal data=9
Inline data=235
