module tb;
  int numbers[10]='{1,2,4,3,5,6,7,8,9,10};
  int sum;
  initial begin 
    foreach(numbers[i])
      $display("numbers=%0d",numbers[i]);
    //multi statement in foreach loop 
    foreach(numbers[i])begin
      sum+=numbers[i];
      $display("num=%0d,sum=%0d",numbers[i],sum);
    end
  end
endmodule
