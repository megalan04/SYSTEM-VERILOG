module up_counter(clk,reset,counter);
  input clk, reset;
  output [3:0] counter;
  reg [3:0] counter_up;
  always @(posedge clk or posedge reset) begin
    if(reset)
      counter_up <= 4'b0;
    else
      counter_up <= counter_up + 4'b1;
  end 
  assign counter = counter_up;
endmodule:up_counter
