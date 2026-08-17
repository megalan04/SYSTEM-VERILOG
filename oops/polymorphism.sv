class parent;
  virtual function void display();
    $display("Parent display");
  endfunction
endclass


class child extends parent;
  function void display();
    $display("Child display");
  endfunction
endclass


module tb;
  parent p;
  child c;
  initial begin
    c=new();// Calls child function
    p=c;// Parent handle points to child object
    p.display();       
  end
endmodule

//OUTPUT
Child display


//without virtual
class parent;
  function void display();
    $display("Parent display");
  endfunction
endclass


class child extends parent;
  function void display();
    $display("Child display");
  endfunction
endclass


module tb;
  child c;
  parent p;
  initial begin
    c=new ();  
    p=c;
    p.display();      
  end
endmodule

//OUTPUT
Parent display


| **Without Polymorphism**                       | **With Polymorphism**                                   |
| ---------------------------------------------- | ------------------------------------------------------- |
| Parent and child methods are called separately | Same parent handle can refer to different child objects |
| No dynamic method selection                    | Dynamic method selection                                |
| Each object needs its own handle               | One common parent handle can be used                    |
| Less flexible                                  | More flexible                                           |
| No runtime method overriding behavior          | Supports method overriding                              |
| Code becomes less reusable                     | Better code reusability                                 |
