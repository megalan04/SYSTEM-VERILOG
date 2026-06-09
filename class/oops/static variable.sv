// Code your testbench here
// or browse Examples
class counter;
  static int count; 
  function void increment();
    count++;
  endfunction
  function void display();
    $display("count=%0d",count);
  endfunction
endclass

module test;
  counter c1,c2;

  initial begin
    c1=new();
    c2=new();
    c1.increment();
    c1.increment();
    c2.increment();
    c2.increment();
    c1.increment();
    c1.increment();
    c2.increment();
    c2.increment();
    c1.display();
    c2.display();
  end
endmodule
