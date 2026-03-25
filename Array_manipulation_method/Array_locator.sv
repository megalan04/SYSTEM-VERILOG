module array_locators;
  int q[$]='{1,3,5,7};// queue
  int d[]='{9,1,8,3,4,4};// dynamic array
  int f[6]='{1,6,2,6,8,6};// fixed array
  int tq[$];// temporary queue
  int count;
  initial begin
    $display("sum=",q.sum());
    $display("product=",d.product());
    $display("maximum=%p",f.max());
    $display("minimum=%p",q.min());
    
    tq=f.unique();
    $display("%p",tq);
    tq=d.find with (item>4);
    $display("%p",tq);
    tq=f.find with (item<6);
    $display("%p",tq);
    tq=d.find with (item>20);
    $display("%p",tq);
    tq=d.find_index with (item==8);
    $display("%p",tq);
    tq=f.find_index with (item==8);
    $display("%p",tq);
    tq=d.find_first_index with (item==4);
    $display("%p",tq);
    tq=d.find_last_index with (item==4);
    $display("%p",tq);
  end 
endmodule
