interface d_ff(input clk);
  logic d;
  logic rst;
  
  
  
  logic q;
  
  clocking cv @(posedge clk);
    default input #1 output #0;
    output d,rst;
    input q;
  endclocking
    
endinterface
