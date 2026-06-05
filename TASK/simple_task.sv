// Code your testbench here
// or browse Examples
/*module tb;

task display_message;
   $display("Hello from Task");
endtask

initial begin
   display_message();
end

endmodule*/


module tb;

task add_num(input int a, input int b);
   int sum;
   sum = a + b;
   $display("Sum = %0d", sum);
endtask

initial begin
   add_num(10, 20);
   add_num(5, 15);
end

endmodule
