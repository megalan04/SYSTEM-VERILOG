// Code your testbench here
// or browse Examples
class parent;
  int a=44;
  function void display_parent();
    $display("Parent Class");
    $display("a=%0d", a);
  endfunction
endclass

class child extends parent;
  int b=33;
  function void display_child();
    $display("Child Class");
    $display("a=%0d",a);   // Inherited variable
    $display("b=%0d",b);
  endfunction
endclass

module tb;
  child c;
  initial begin
    c=new();
    c.display_parent();
    c.display_child();
  end
endmodule

//OUTPUT
Parent Class
a=44
Child Class
a=44
b=33



