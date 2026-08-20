
class packet;
  rand int data[5];
  constraint c1 {
    foreach(data[i])
      data[i]inside{[1:10]};
    unique {data};
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
data[0]=3
data[1]=5
data[2]=8
data[3]=7
data[4]=2
