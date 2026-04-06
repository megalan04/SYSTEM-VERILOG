//unpacked array
module tb;
  int three_d[5][3][4];
  int i,j,k;
  initial begin
    for(i=0;i<5;i++)begin
      for(j=0;j<3;j++)begin
        for(k=0;k<4;k++)begin
          three_d[i][j][k]=i*2+j+k;
        end
      end
    end
 
    foreach(three_d[i])begin
      foreach (three_d[i][j]) begin
        foreach(three_d[i][j][k])begin
          $display("three_d arry[%0d][%0d][%0d]=%0d",i,j,k,three_d[i][j][k]);
        end
      end
    end
  end
endmodule
