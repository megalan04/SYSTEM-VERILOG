module arithmetic_operator;

  int a = 10;
  int b = 3;

  initial begin
    $display("Addition=%0d",a+b);
    $display("Subtraction=%0d",a-b);
    $display("Multiplication=%0d",a*b);
    $display("Division=%0d",a/b);
    $display("Modulus=%0d",a%b);
    $display("Exponent=%0d",a**b);
  end

endmodule
