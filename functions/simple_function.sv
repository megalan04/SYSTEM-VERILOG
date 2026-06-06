// Code your testbench here
// or browse Examples
module simple_function;
  int cal;
 
  function int add(input int a, b);
    
    return a+b;
    
  endfunction
  
  initial begin
    cal = add(40,4);
    $display("Subtraction cal=%0d", cal); 
  end
  
endmodule
