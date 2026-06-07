module pbv_test;

  function int increment(int a);
    a=a + 1;
    return a;
  endfunction

  initial begin
    int num=10;
    int result;

    result=increment(num);

    $display("num=%0d",num);
    $display("result=%0d",result);
  end

endmodule
