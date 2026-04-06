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

//output
//using size
after value multiply=0
size of the array=0
after value multiply=5
size of the array=5
after value multiply=10
size of the array=10
after value multiply=15
size of the array=15
after value multiply=20
size of the array=20
after value multiply=25
size of the array=25
after value multiply=30
size of the array=30
after value multiply=35
size of the array=35
after value multiply=40
size of the array=40
after value multiply=45
size of the array=45
xmsim: *W,RNQUIE: Simulation is complete.

//withoutsize
after value multiply=0
after value multiply=5
after value multiply=10
after value multiply=15
after value multiply=20
after value multiply=25
after value multiply=30
after value multiply=35
after value multiply=40
after value multiply=45
xmsim: *W,RNQUIE: Simulation is complete.

//output
//resize
before the resize='{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
aftere the resize='{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 0, 22, 33, 55}
