module test;

  function int find_value(int a);

    if (a == 0)
      return 100;   // Premature return

    return 200;

  endfunction

  initial begin
    $display("Output = %0d", find_value(5));
    $display("Output = %0d", find_value(0));
  end

endmodule
