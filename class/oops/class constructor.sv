// Code your testbench here
// or browse Examples
class Counter;
  int count;

  function new(int value);
    count=value;
  endfunction
endclass

module test;
  Counter c;

  initial begin
    c=new(10);
    $display("Count=%0d",c.count);
  end
endmodule
