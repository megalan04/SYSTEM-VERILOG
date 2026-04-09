//union unpacked
module union_tb;
  union {
    bit [7:0]a;
    byte b;
  }data;
  initial begin
  data.a=8'hab; 
    $display("a=%b",data.a);
    $display("b=%b",data.b);
  end
endmodule

//output
a=10101011
b=10101011
