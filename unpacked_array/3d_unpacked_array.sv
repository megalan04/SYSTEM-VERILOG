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

//output
three_d arry[0][0][0]=0
three_d arry[0][0][1]=1
three_d arry[0][0][2]=2
three_d arry[0][0][3]=3
three_d arry[0][1][0]=1
three_d arry[0][1][1]=2
three_d arry[0][1][2]=3
three_d arry[0][1][3]=4
three_d arry[0][2][0]=2
three_d arry[0][2][1]=3
three_d arry[0][2][2]=4
three_d arry[0][2][3]=5
three_d arry[1][0][0]=2
three_d arry[1][0][1]=3
three_d arry[1][0][2]=4
three_d arry[1][0][3]=5
three_d arry[1][1][0]=3
three_d arry[1][1][1]=4
three_d arry[1][1][2]=5
three_d arry[1][1][3]=6
three_d arry[1][2][0]=4
three_d arry[1][2][1]=5
three_d arry[1][2][2]=6
three_d arry[1][2][3]=7
three_d arry[2][0][0]=4
three_d arry[2][0][1]=5
three_d arry[2][0][2]=6
three_d arry[2][0][3]=7
three_d arry[2][1][0]=5
three_d arry[2][1][1]=6
three_d arry[2][1][2]=7
three_d arry[2][1][3]=8
three_d arry[2][2][0]=6
three_d arry[2][2][1]=7
three_d arry[2][2][2]=8
three_d arry[2][2][3]=9
three_d arry[3][0][0]=6
three_d arry[3][0][1]=7
three_d arry[3][0][2]=8
three_d arry[3][0][3]=9
three_d arry[3][1][0]=7
three_d arry[3][1][1]=8
three_d arry[3][1][2]=9
three_d arry[3][1][3]=10
three_d arry[3][2][0]=8
three_d arry[3][2][1]=9
three_d arry[3][2][2]=10
three_d arry[3][2][3]=11
three_d arry[4][0][0]=8
three_d arry[4][0][1]=9
three_d arry[4][0][2]=10
three_d arry[4][0][3]=11
three_d arry[4][1][0]=9
three_d arry[4][1][1]=10
three_d arry[4][1][2]=11
three_d arry[4][1][3]=12
three_d arry[4][2][0]=10
three_d arry[4][2][1]=11
three_d arry[4][2][2]=12
three_d arry[4][2][3]=13
