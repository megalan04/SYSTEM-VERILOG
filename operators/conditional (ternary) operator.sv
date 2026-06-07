module conditional_operator;
  int a,b;
  initial begin
    a=10;
    b=20;
    $display("max=%0d",(a>b)?a:b);
  end
endmodule
