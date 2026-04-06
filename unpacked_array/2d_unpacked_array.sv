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

//output
two_d arry[0][0]=0
two_d arry[0][1]=1
two_d arry[0][2]=2
two_d arry[0][3]=3
two_d arry[1][0]=2
two_d arry[1][1]=3
two_d arry[1][2]=4
two_d arry[1][3]=5
two_d arry[2][0]=4
two_d arry[2][1]=5
two_d arry[2][2]=6
two_d arry[2][3]=7
