// Code your testbench here
// or browse Examples
`timescale 1ns/1ps
`include "interface.sv"
`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"
`include "environment.sv"

module tb;
  bit pclk;
  always #5 pclk=~pclk;
  apb_i2c_if intf(pclk);
  apb_i2c_top dut(.pclk(pclk),
                  .presetn(intf.presetn),
                  .transfer(intf.transfer),
                  .write_en(intf.write_en),
                  .addr(intf.addr),
                  .write_data(intf.write_data),
                  .read_data(intf.read_data),
                  .scl(intf.scl),
                  .sda(intf.sda));

environment env;
initial begin
    intf.presetn=0;
    intf.transfer=0;
    intf.write_en=0;
    intf.addr=0;
    intf.write_data=0;
    #20;
    intf.presetn=1;
    env=new(intf);
    env.run();
end
initial begin
    #5000;
    $finish;
end
endmodule
