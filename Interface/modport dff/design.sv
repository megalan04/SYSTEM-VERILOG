// Code your design here
module dff(dff_if.DUT intf);
  always_ff @(posedge intf.clk or posedge intf.rst) begin
    if (intf.rst)
      intf.q <= 0;
    else
      intf.q <= intf.d;
  end

endmodule
