module unpacked_1d;
  logic[31:0] array[7:0];
  int i;
  initial begin
  array[4]='hdd_dd_dd_dd;
    array[7][16:0]='hee_ee_ee_ee;
  array[5]='haa_aa_aa_aa;
  foreach(array[i])begin
    $display("data(%0d)=%0h",i,array[i]);
  end
  end
endmodule
