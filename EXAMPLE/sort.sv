module tb;
  int arr[];
  initial begin
    arr=new[10];
    arr='{35,65,77,88,99,56,55,33,11,22};
    arr.sort();
    $display("after sorting:%p",arr);
  end
endmodule
