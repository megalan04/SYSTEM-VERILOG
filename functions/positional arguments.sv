module test;

  function int add(int a, int b);
    return a + b;
  endfunction

  initial begin
    int result;
    
    result = add(10, 20);
    
    $display("Result = %0d", result);
  end

endmodule


//another type
module func;

  function int product(int x,y,z); 
    $display("x=%0d y=%0d z=%0d",x,y,z);
    return x+y*z;

  endfunction

  initial begin
    $display("positional arguement function");
    $display("result = %0d",product(.z(3),.y(2),.x(4)));
  end

endmodule
