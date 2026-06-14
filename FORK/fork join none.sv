// Code your testbench here
// or browse Examples
module tb;
initial begin
  fork begin
      #10;
      $display("A completed at %0t",$time);
    end
    begin
      #15;
      $display("B completed at %0t",$time);
    end
  join_none
  $display("Parent continues at %0t",$time);
  #20;
  $display("Simulation ends at %0t",$time);
end
endmodule
