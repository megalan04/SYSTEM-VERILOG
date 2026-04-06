//4_state
module tb;
  reg[4:0]rg;
  wire[1:0]wr;
  logic[8:0]log;
  integer i;
  real rl1,rl2;
  
 
  initial begin
    $display("default value reg=%b",rg);
    $display("default value wire=%b",wr);
    $display("default value of logic=%b",log);
    $display("default value of integer=%0d",i);
    $display("default value of real=%0f",rl1,rl2);
    
    
    rg=4'b1001;
    log=8'hbc;
    rl1=33.05;
    rl2=56.77;
    rl1+=rl2;
    
    $display("value after instalization=%b",rg);
    $display("value after instalization=%b",log);
    $display("value after instalization=%0f",rl1);
    $display("value after instalization=%0f",rl2);
    $display("real1+real2=%0f",rl1);
  end 
   assign wr=2'b01;
  initial begin 
    $display("before the wire=%b",wr);
    #1
    $display("after the wire=%b",wr);
  end
endmodule


//output
default value reg=xxxxx
default value wire=xx
default value of logic=xxxxxxxxx
default value of integer=x
default value of real=0.0000000
value after instalization=01001
value after instalization=010111100
value after instalization=89.820000
value after instalization=56.770000
real1+real2=89.820000
before the wire=xx
after the wire=01
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
