//without abstraction   //WE NEED TO WRITE THE WHAT THE EXPRESSION WE NEED IT WILL NEED TO BE WRITE//
class alu;
  int a,b;
  int result;
  function void add();
    result=a+b;
  endfunction
endclass

module test;
  alu alu1;
  initial begin
    alu1=new();
    alu1.a=10;
    alu1.b=20;
    alu1.result=alu1.a+alu1.b;
    $display("Result=%0d",alu1.result);
  end
endmodule

//OUTPUT
Result=30

//with abstraction
class alu;
  function int add(int a,int b);
    return a+b;
  endfunction
endclass

module test;
  alu alu1;
  initial begin
    alu1=new();
    $display("Result=%0d",alu1.add(10,20));
  end
endmodule

//OUTPUT
Result=30



| **Without Abstraction**                     | **With Abstraction**                     |
| ------------------------------------------- | ---------------------------------------- |
| Internal implementation is exposed          | Internal implementation is hidden        |
| User needs to know **how** it works         | User only needs to know **what** it does |
| More complexity for the user                | Simpler for the user                     |
| User directly handles internal operations   | User calls a simple method/interface     |
| Example: manually performing ALU operations | Example: calling `add()`                 |
| No implementation hiding                    | **Implementation hiding**                |
