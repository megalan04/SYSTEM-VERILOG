`include "interface.sv"
`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"
`include "environment.sv"

module tb_top;
  adder_if intf();
  full_adder dut(.A(intf.A),
                 .B(intf.B),
                 .Cin(intf.Cin),
                 .Sum(intf.Sum),
                 .Cout(intf.Cout)
                );
  environment env;
  
  initial begin
    env=new(intf,intf);
    
    env.run();
    
    #100;
    $finish;
  end
endmodule
