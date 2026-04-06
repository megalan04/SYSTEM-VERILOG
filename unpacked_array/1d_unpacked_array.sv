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

//output
one_d arry=0          0
one_d arry=1          2
one_d arry=2          4
one_d arry=3          6
one_d arry=4          8
one_d arry=5         10
one_d arry=6         12
