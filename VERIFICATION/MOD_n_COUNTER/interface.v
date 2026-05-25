interface mod_count(input logic clk);
  logic rst;
  logic [3:0]q;
  
  clocking drv @(negedge clk);
    default input #1step output #0;
    output rst;
  endclocking
  
  clocking mon @(posedge clk);
    default input #1step output #0;
    input rst;
    input q;
  endclocking
endinterface
