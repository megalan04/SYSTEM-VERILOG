// Code your testbench here
// or browse Examples
class mul;
  int a,b;
  function int MUL();
    MUL=a*b;
  endfunction
  
endclass

module MULTI;
 initial begin
  mul c=new();
  c.a=10;
  c.b=10;
   $display("MUL = %0d",c.MUL());
  end
  
endmodule
    
