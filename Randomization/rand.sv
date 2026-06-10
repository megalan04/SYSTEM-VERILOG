class Packet;
  rand bit [7:0] addr;
  rand bit [7:0] data;
endclass

module tb;
  initial begin
    Packet pkt;
    pkt=new();
    repeat(5) begin
      if(pkt.randomize()) begin
        $display("addr = %0d, data = %0d", pkt.addr,pkt.data);
      end
      else
        $display("randomization failed");
    end
   
  end
endmodule
