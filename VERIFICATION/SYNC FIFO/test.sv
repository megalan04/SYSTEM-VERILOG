// Code your testbench here
// or browse Examples
`include "transaction.sv"
`include "interface.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"
`include "environment.sv"

module tb_top;
  logic clk;
  always #5 clk=~clk;
  fifo_if vif(clk);
  environment env;
  syn_fifo dut(.clk(clk),
               .rst(vif.rst),
               .w_en(vif.w_en),
               .r_en(vif.r_en),
               .data_in(vif.data_in),
               .data_out(vif.data_out));
  initial begin
    clk=0;
    vif.rst=1;
    #20;
    vif.rst=0;
  end
  
  initial begin
    env=new(vif);
    env.run();
  end
  initial begin
    $dumpfile("v.vcd");
    $dumpvars;
    #200;
    $finish;
  end
endmodule
