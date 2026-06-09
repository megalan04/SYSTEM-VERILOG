// Code your testbench here
// or browse Examples
class counter;
  int count;
  function void set_count(int count);
    this.count=count;
  endfunction
  
  function void display();
    $display("count=%0d",this.count);
  endfunction
endclass
  
  module test;
    counter c;
    initial begin
      c=new();
      c.set_count(44);
      c.display();
    end
  endmodule
