// Code your testbench here
// or browse Examples
module tb;
initial begin
  fork  begin
      #10;
      $display("Process 1 completed at %0t",$time);
    end
    begin
      #20;
      $display("Process 2 completed at %0t",$time);
    end
    begin
      #30;
      $display("Process 3 completed at %0t",$time);
    end
  join_any
  $display("One process finished at %0t",$time);
  disable fork;
    $display("Remaining processes not print");
end
endmodule
