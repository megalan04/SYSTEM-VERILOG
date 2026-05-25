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
  initial clk=0;
    always #10 clk = ~clk;
    
    mod_count intf(clk);
    
    mod_n_counter dut (
        .clk(intf.clk),
        .rst(intf.rst),
        .q(intf.q)
    );
    
    environment env;
    
    initial begin
      intf.rst=1;
      #20;
        env = new(intf);
        env.run();
        
        #100; 
        $finish;
    end
endmodule
