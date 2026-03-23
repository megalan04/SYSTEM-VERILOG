module array_reduction;
  int R[4]='{1,2,3,4};
  int redu;
  initial begin
    redu=R.sum();
    $display(redu);
    redu=R.product();
    $display(redu);
    redu=R.and();
    $display(redu);
    redu=R.or();
    $display(redu);
    redu=R.xor();
    $display(redu);
  end
endmodule
