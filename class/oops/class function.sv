// Code your testbench here
// or browse Examples
class Counter;
  int count=0;

  function void increment();
    count++;
  endfunction

  function int get_count();
    return count;
  endfunction
endclass

module test;
  Counter c;

  initial begin
    c=new();

    c.increment();
    c.increment();
    c.increment();
    c.increment();
    c.increment();
    c.increment();
    c.increment();
    c.increment();
    c.increment();
    c.increment();
    c.increment();
    c.increment();
    c.increment();
    c.increment();
    c.increment();
    c.increment();

    $display("Count = %0d", c.get_count());
  end
endmodule
