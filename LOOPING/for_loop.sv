module for_loop;
  int i;
  int mek[3:0];
  initial begin
    for(i=0;i<4;i++)
      begin
         mek[i]=i*2;
        $display("looping values=%0d",mek[i]);
      end
  end
endmodule

//output
looping values=0
looping values=2
looping values=4
looping values=6
