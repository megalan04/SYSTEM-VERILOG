//static array
module static_array;
  int arr[6];
  int i;
  initial begin
    for(i=0;i<6;i++)begin
      arr[i]=i*10;
    $display("arr[%0d]=%0d",i,arr[i]);
    end
  end
endmodule
