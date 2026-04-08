//packed array
module tb;
  bit[7:0] m;
  int i;
  initial begin
    m=8'hb1;
    for(i=0;i<8;i++)begin
      $display("array[%0d]=%0b",i,m[i]);
    end
  end
endmodule


//output
array[0]=1
array[1]=0
array[2]=0
array[3]=0
array[4]=1
array[5]=1
array[6]=0
array[7]=1
