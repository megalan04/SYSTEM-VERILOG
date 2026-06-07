module pbr_test;
  function automatic increment(ref int a);
    a=a+1;
  endfunction
  initial begin
    int num=10;
    $display("Before = %0d", num);
    increment(num);
    $display("After Call 1 = %0d", num);
    increment(num);
    $display("After Call 2 = %0d", num);

    increment(num);
    $display("After Call 3 = %0d", num);
  end

endmodule
