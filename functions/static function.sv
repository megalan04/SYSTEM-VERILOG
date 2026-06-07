// Code your testbench here
// or browse Examples
module sat_test;

  function static int counter();
    static int count=0;
    count++;
    return count;
  endfunction

  initial begin
    $display("%0d",counter());
    $display("%0d",counter());
    $display("%0d",counter());
    $display("%0d",counter());
    $display("%0d",counter());
    $display("%0d",counter());
  end

endmodule
