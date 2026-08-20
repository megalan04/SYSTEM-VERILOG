class packet;
  rand int data[5];
  constraint c1 {
    foreach(data[i])
      data[i]inside{[1:10]};
  }
endclass

module tb;
  packet p;
  initial begin
    p=new();
    p.randomize();
    foreach(p.data[i])
      $display("data[%0d]=%0d",i,p.data[i]);
  end
endmodule

//output
data[0]=10
data[1]=2
data[2]=5
data[3]=1
data[4]=7
