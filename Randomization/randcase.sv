// Code your testbench here
// or browse Examples
module tb;

  initial begin
    for(int i=0;i<12;i++)begin

    randcase
    50:$display("KABADDI");
    20:$display("CRICKET");
    30:$display("FOOTBALL");
    endcase

    end
  end

endmodule
