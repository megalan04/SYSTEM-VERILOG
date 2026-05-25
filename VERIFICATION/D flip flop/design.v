// Code your design here
module d_flip_flop(input clk,d_ff intf);
  always@(posedge clk)begin
    if(intf.rst)
      intf.q<=0;
    else
      intf.q<=intf.d;
  end
endmodule
