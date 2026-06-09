class Packet;
  int header_id;
  int payload;
endclass


module tb;
  initial begin
    Packet p1;
    Packet p2;

    p1=new();
    p1.header_id=44;
    p1.payload=263;

    $display("p1 data:ID=%0d,Payload=%0d",p1.header_id, p1.payload);

    // SHALLOW COPY (handle copy)
    p2=new p1;

    $display("p2 data:ID=%0d,Payload=%0d",p2.header_id, p2.payload);

    // modify p2
    p2.payload=512;

    $display("After modification:");
    $display("p1 payload=%0d",p1.payload);
    $display("p2 payload=%0d",p2.payload);
  end
endmodule
