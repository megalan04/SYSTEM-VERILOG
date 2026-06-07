// Code your testbench here
// or browse Examples
`include "interface.sv"
module tb;
  dff_if intf();
  dff dut(intf);

  initial begin
    intf.clk = 0;
    forever #5 intf.clk = ~intf.clk;
  end
 
  initial begin
    intf.rst = 1;
    intf.d   = 0;
    #10;
    intf.rst = 0;
    #10 intf.d = 1;
    #10 intf.d = 0;
    #10 intf.d = 1;
    #20 $finish;
  end

  
  initial begin
    $monitor("Time=%0t rst=%0b d=%0b q=%0b",
              $time, intf.rst, intf.d, intf.q);
  end

endmodule
