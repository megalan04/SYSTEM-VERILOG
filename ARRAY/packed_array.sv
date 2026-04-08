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
