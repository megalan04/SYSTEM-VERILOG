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

//output
numbers=1
numbers=2
numbers=4
numbers=3
numbers=5
numbers=6
numbers=7
numbers=8
numbers=9
numbers=10
num=1,sum=1
num=2,sum=3
num=4,sum=7
num=3,sum=10
num=5,sum=15
num=6,sum=21
num=7,sum=28
num=8,sum=36
num=9,sum=45
num=10,sum=55
