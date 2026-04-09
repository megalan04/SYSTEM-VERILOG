//typedef union
module typdef_union;
  typedef union packed{
    bit[31:0]b1;
    bit[3:0][7:0]b2;
    bit[1:0][15:0]b3;}data_out;
  data_out data;
  initial begin
    data.b2=32'haaaaaaaa;
    $display("b2=%0d",data.b2);
    $display("b1=%0d",data.b1);
    $display("b3=%0d",data.b3);
  end
endmodule

//output
b2=2863311530
b1=2863311530
b3=2863311530
