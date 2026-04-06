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
