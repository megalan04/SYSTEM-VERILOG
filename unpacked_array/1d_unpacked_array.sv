//unpacked array
module tb;
  int one_d[7];
  int i;
  initial begin
    for(i=0;i<7;i++)
    one_d[i]=i*2;
    
    foreach(one_d[i])begin
      $display("one_d arry=%0d",i,one_d[i]);
    end
  end
endmodule
