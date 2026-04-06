module tb;
  string str="race car";
  string rev="";
  initial begin
    for(int i=9;i>=0;i--)
      begin
        rev={rev,str[i]};
      end
        
    $display("after reverse string=%s",rev);
  end
endmodule
