// Code your testbench here
// or browse Examples
interface count_if #(parameter N=3) ;  
  logic reset,clk;  
  logic [N:0] counter;
endinterface



module top(); 
  count_if inf();
  up_counter u1(.clk(inf.clk), .reset(inf.reset), .counter(inf.counter));
  upcounter_testbench u2(inf);
endmodule

//testbench for up counter
module upcounter_testbench(count_if inf);
  initial begin
    $display("\n // Parameterised interface example");
    $monitor("\ncount=%d",inf.counter);
    inf.clk=0;
    forever #5 inf.clk=~inf.clk;
  end
  initial begin
    inf.reset=1;
    #20;
    inf.reset=0;
    #70;
    $finish;
  end
endmodule
