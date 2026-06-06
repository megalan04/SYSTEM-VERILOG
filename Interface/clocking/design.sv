// Code your design here
// module:d_flipflop   
module d_flipflop(dff.dut intf);   
  
  always @(posedge intf.clk)
  intf.q <= intf.d;
endmodule     
