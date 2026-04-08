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

//output
arr[0]=0
arr[1]=10
arr[2]=20
arr[3]=30
arr[4]=40
arr[5]=50
