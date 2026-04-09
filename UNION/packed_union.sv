//union packed
module union_packed;
  typedef union{ bit[31:0] m;
                bit[3:0][7:0]c;}data;//same size
  data d;             
  initial begin
    
   
    d.m=32'h4abcd657;
    $display("union=%0d",d.m);
    $display("c=%0d",d.c);
   
  end
endmodule

//output
union=1253889623
c=1253889623
