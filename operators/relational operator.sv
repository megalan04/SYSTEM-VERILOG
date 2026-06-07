module relational_operators;
  int a,b;
  initial begin
    a=10;
    b=20;
    $display("a=%0d,b=%0d",a,b);
    $display("a<b=%0b",a<b);
    $display("a>b=%0b",a>b);
    $display("a<=b=%0b",a<=b);
    $display("a>=b=%0b",a>=b);

  end

endmodule
