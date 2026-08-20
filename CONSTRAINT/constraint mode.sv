class packet;
  rand int data;
  constraint c1{
    data inside{[1:88]};
  }
endclass

module tb;
  packet p;
  initial begin
    p=new();
    p.c1.constraint_mode(0);//disable
    p.randomize();
    $display("Constraint OFF:data=%0d",p.data);
    p.c1.constraint_mode(1);// Enable
    p.randomize();
    $display("Constraint ON:data=%0d",p.data);
  end
endmodule

//output
Constraint OFF:data=1491695440
Constraint ON:data=36
