// Code your testbench here
// or browse Examples
module tb;

task static counter;
   static int count = 0;

   count++;

   $display("Count = %0d", count);
endtask

initial begin
   counter();
   counter();
   counter();
end

endmodule
