//with encap(local)
class transaction;
  local int data;
  function void set(int value);
    data=value;
  endfunction
  function int get();
    return data;
  endfunction
endclass

module test;
  transaction tr;
  initial begin
    tr=new();
    tr.set(100);//Set through method
    $display("Data=%0d",tr.get());//Get through method
  end
endmodule

//OUTPUT
Data=100

//without encap
class transaction;
  int data;
endclass

module test;
  transaction tr;
  initial begin
    tr=new();
    tr.data=200;//accessing the data directly
    $display("Data=%0d",tr.data);
  end
endmodule
//OUTPTUT
Data=200
