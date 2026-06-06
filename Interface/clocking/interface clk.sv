
interface dff(input clk);

  logic d;
  logic q;

  clocking cd @(posedge clk);
    default input #1step output #0;
    output q;
    input d;
  endclocking

  modport dut(input clk,
             input d,
             output q);

  modport tb(
      input q,
      output d,
      input clk
  );

endinterface
