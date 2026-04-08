//packed_struct
module packed_tb;
  struct packed{
    bit[7:0]a;
    bit[3:0]b; 
    bit c;
  }value;
  initial 
    begin
      value='{8'hfa,4'he,2};
      $display("%p",value);
      
      value.b=4'h2;
      $display("%p",value.b);
      $display("%p",value);
      
      value.c=15;
      $display("%p",value.c);
      $display("%p",value);
    end
endmodule

//output
'{a:'hfa, b:'he, c:'h0}
2
'{a:'hfa, b:'h2, c:'h0}
1
'{a:'hfa, b:'h2, c:'h1}
