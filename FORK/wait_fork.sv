// Code your testbench here
// or browse Examples
module tb;
initial begin
  fork begin
      #10;
      $display("P1 completed");
    end
    begin
      #20;
      $display("P2 completed");
    end
  join_none
  $display("Parent continues");
  wait fork;
  $display("All child processes completed");
end
endmodule
