module auto_test;

  function automatic int counter();
    int count = 0;
    count++;
    return count;
  endfunction

  initial begin
    $display("%0d", counter());
    $display("%0d", counter());
    $display("%0d", counter());
  end

endmodule
