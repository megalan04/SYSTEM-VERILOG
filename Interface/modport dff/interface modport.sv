interface dff_if;

  logic clk;
  logic rst;
  logic d;
  logic q;

  
  modport DUT (
    input  clk,
    input  rst,
    input  d,
    output q
  );

  
  modport TB (
    output clk,
    output rst,
    output d,
    input  q
  );

endinterface
