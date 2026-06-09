// Code your testbench here
// or browse Examples
class packet;
  int addr;
  int data;
  bit wr_en;

  function void display();
    $display("ADDR=%0d,DATA=%0d,WR_EN=%0b",addr,data,wr_en);
  endfunction
endclass

module test;
  packet p;   // class handle

  initial begin
    p=new(); // object creation
    p.addr=10;
    p.data=255;
    p.wr_en=1;
    p.display();
  end
endmodule
