`include "transaction.sv"
`include "interface.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"
`include "environment.sv"
`include "reference.sv"


module tb;
  
  logic clk;

  d_ff intf(clk);

  d_flip_flop dut(clk,intf);

  environment env;

  always #5 clk = ~clk;

  initial begin
    
    $dumpfile("v.vcd");
    $dumpvars;
    clk = 0;

    env = new(intf,intf);
    //env.gen.count = 10;

    env.test();

    #100;
    $finish;
  end

endmodule
