//dynamic  array
module static_array;
  int arr[];
  initial begin
    arr=new[6];
    arr='{44,444,4444,44444,444444,4444444};
    foreach (arr[i])
      $display("arr=%0d",i,arr[i]);
  end
endmodule

//output
arr=0         44
arr=1        444
arr=2       4444
arr=3      44444
arr=4     444444
arr=5    4444444
