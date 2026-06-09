// Code your testbench here
// or browse Examples
class packet #(type T=int);
  T data;
endclass


module test;
  initial begin
    packet #(int)p1;
    packet #(bit[7:0])p2;
    packet #(string)p3;

    p1=new();
    p2=new();
    p3=new();

    p1.data=10;
    p2.data=8'hAA;
    p3.data="Hello";

    $display("p1=%0d",p1.data);
    $display("p2=%0h",p2.data);
    $display("p3=%s",p3.data);
  end
endmodule
