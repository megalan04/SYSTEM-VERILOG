// Code your testbench here
// or browse Examples
class packet;
  int data;

  extern function void display();  // declaration only
endclass


// definition outside class
function void packet::display();
  $display("data=%0d",data);
endfunction


module tb;
  initial begin
    packet p;

    p=new();
    p.data=200;

    p.display();
  end
endmodule
