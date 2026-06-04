// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
`include "interface.sv"
`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"
`include "environment.sv"

module tb;
  signal vif();
  environment env;
  
  single_port_ram dut ( 
    .clk(vif.clk),
    .rst(vif.rst),
    .w_en(vif.w_en),
    .en(vif.en),
    .data(vif.data),
    .addr(vif.addr),
    .dout(vif.dout)
  );
  always #5 vif.clk = ~vif.clk;
  
  initial begin
    vif.clk=0;
    vif.rst=1;
    env=new(vif);
    env.run();
    
    #5 vif.rst =0;

    #15 vif.rst =1;
    #5 vif.rst =0;
    #1000;
  
    $finish;
  end
  
endmodule
