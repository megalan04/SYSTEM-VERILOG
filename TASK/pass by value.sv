// Code your testbench here
// or browse Examples
module tb;

task change(input int a);

   a = 50;

   $display("Inside Task = %0d", a);

endtask

initial begin

   int x = 10;

   change(x);

   $display("Outside Task = %0d", x);

end

endmodule
