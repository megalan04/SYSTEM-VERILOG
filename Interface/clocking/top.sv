
    
    
//including the file test.sv and interface.sv  
`include "test.sv"      
`include "interface.sv"     
module top;
  bit clk=1;
  initial
    forever #5 clk = ~clk;

  //creating interface instance
  dff intf(clk);

  //d_flipflop instance
  d_flipflop t1(intf);  

  //test Instance
  test t2(intf);

  initial
    $monitor("DUT side [%0t]=d_tb_drive:%d q_dut_sample:%d",$time,intf.d, intf.q);
endmodule
