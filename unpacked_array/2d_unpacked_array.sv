//unpacked array
module tb;
  int two_d[3][4];
  int i,j;
  initial begin
    for(i=0;i<3;i++)begin
      for(j=0;j<4;j++)begin
        two_d[i][j]=i*2+j;
      end
    end
 
    foreach(two_d[i])begin
      foreach (two_d[i][j]) begin
      $display("two_d arry[%0d][%0d]=%0d",i,j,two_d[i][j]);
    end
    end
  end
endmodule
