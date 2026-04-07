module while_loop;
  int count;
  initial begin
    count=0;
    while(count<8)
      begin
         count++;
        $display("count the values=%0d",count);
      end
  end
endmodule

//output
count the values=1
count the values=2
count the values=3
count the values=4
count the values=5
count the values=6
count the values=7
count the values=8
