module unpacked_1d;
  logic[31:0] array[7:0];
  int i;
  initial begin
    foreach(array[i])begin
      array[i]=32'h0;
    end
  array[4]='hdd_dd_dd_dd;
    array[7][16:0]='hee_ee_ee_ee;
  array[5]='haa_aa_aa_aa;
  foreach(array[i])begin
    $display("data(%0d)=%h",i,array[i]);
  end
  end
endmodule

//output
data(7)=0000eeee
data(6)=00000000
data(5)=aaaaaaaa
data(4)=dddddddd
data(3)=00000000
data(2)=00000000
data(1)=00000000
data(0)=00000000
