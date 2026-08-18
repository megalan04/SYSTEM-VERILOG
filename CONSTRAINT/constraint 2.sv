class packet;
  rand int data;
  constraint c1{data>44;
                data<55;
    
  }
endclass

module tb;
  packet p;
  initial begin
    p=new();
    repeat(4)begin
      p.randomize();
      $display("addr=%0d",p.data);
    end
  end
endmodule

//output
addr=45
addr=53
addr=50
addr=52


//COMMON OPERATORS
>    greater than
<    less than
>=   greater than or equal
<=   less than or equal
==   equal
!=   not equal


