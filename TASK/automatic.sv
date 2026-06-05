
module tb;

task automatic counter;
   int count = 0;

   count++;

   $display("Count = %0d", count);
endtask

initial begin
   counter();
   counter();
   counter();
end

endmodule
