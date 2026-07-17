// Code your testbench here
// or browse Examples
`include "transaction.sv"
`include "interface.sv"
`include "w_generator.sv"
`include "r_generator.sv"
`include "w_driver.sv"
`include "r_driver.sv"
`include "w_monitor.sv"
`include "r_monitor.sv"
`include "scoreboard.sv"
`include "environment.sv"
//=========================
//    TOP TESTBENCH
//=========================
module tb_top;

  // 1. Generate the physical test clocks
  logic wclk = 0;
  logic rclk = 0;
  
  always #5 wclk = ~wclk; // 100MHz Write Clock
  always #7 rclk = ~rclk; // ~71MHz Read Clock (Asynchronous)

  // 2. Instantiate the interface container 
  asynfifo_if  intf(wclk,rclk);

  // 3. Connect your Design Under Test (DUT)
  // (Assuming your FIFO module is named 'FIFO')
  top dut (
    .wclk    (intf.wclk),
    .rclk    (intf.rclk),
    .wrst    (intf.wrst),
    .rrst    (intf.rrst),
    .we     (intf.we),
    .re     (intf.re),
    .w_data  (intf.w_data),
    .r_dout (intf.r_dout),
    .full     (intf.full),
    .empty    (intf.empty)
  );

  // 4. Declare and run the Verification Environment
  environment env;

  initial begin
    $display("[TB_TOP] Starting Testbench Execution...");
    
    // Instantiate environment, passing the testbench interface modport (intf.TB)
    env = new(intf.TB);
    
    // Apply initial resets to the design
    intf.wrst = 1; intf.rrst = 1;
    #20;
    intf.wrst = 0; intf.rrst = 0;
    
    // Execute the object oriented environment
    env.run();

    // Give simulation a few extra clocks to settle down before exiting
    #700;
    $display("[TB_TOP] Simulation complete. Ending...");
    $finish;
  end
  initial begin 
    $dumpfile("v.vcd");
    $dumpvars(0,tb_top);
  end

endmodule



















