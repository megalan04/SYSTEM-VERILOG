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
