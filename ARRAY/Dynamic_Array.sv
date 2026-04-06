//dynamic array
module tb;
  int arr[];
  initial begin;
    arr=new[10];
    for(int i=0;i<10;i++)
    arr[i]=i*5;
  foreach(arr[i])begin
    $display("after value multiply=%0d",arr[i]);
    $display("size of the array=%0d",arr[i]);
  end
  end
endmodule

//without size
//dynamic array
module tb;
  int arr[];
  initial begin;
    arr=new[10];
    for(int i=0;i<10;i++)
    arr[i]=i*5;
  foreach(arr[i])begin
    $display("after value multiply=%0d",arr[i]);
   
  end
  end
endmodule

//dynamic array
module tb;
  int arr[];
  initial begin;
    arr=new[10];
    arr='{1,2,3,4,5,6,7,8,9,10};
    $display("before the resize=%p",arr);
    //resize
    arr=new[14](arr);
    arr[11]=22;
    arr[12]=33;
    arr[13]=55;
    $display("aftere the resize=%p",arr);
  end
endmodule
