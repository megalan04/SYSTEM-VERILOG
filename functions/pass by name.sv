module pbn_test;

  function int add(int a,int b);
    return a+b;
  endfunction

  initial begin
    int result;

    result=add(.b(20),.a(10));

    $display("Result = %0d", result);
  end

endmodule
