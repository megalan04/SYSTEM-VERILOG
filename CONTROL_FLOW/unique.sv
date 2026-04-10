module unique_if;
 int a=4,
  b=44;
  initial begin
    $display("print the values");
    unique if(a<b)
      $display("a is lesser");
    else if(b>a)
      $display("b is greater");
    else
      $display("empty");
  end
endmodule

//output
xcelium> run   //warning will be shown when the both the if and else if will be true
print the values
a is lesser
xmsim: *W,MCONDE: Unique if violation:  Multiple true if clauses at {line=6:pos=12 and line=8:pos=10}.
            File: ./testbench.sv, line = 6, pos = 12
           Scope: unique_if
            Time: 0 FS + 1

xmsim: *W,RNQUIE: Simulation is complete.

  module unique_if;
 int a=77,
  b=44;
  initial begin
    $display("print the values");
    unique if(a<b)
      $display("a is greater");
    else if(b<a)
      $display("b is lesser");
    else
      $display("empty");
  end
endmodule

//output
xcelium> run
print the values
b is lesser
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit

module unique_if;
 int a=77,
  b=44;
  initial begin
    $display("print the values");
    unique if(a<b)
      $display("a is lesser");
    else if(b>a)
      $display("b is greater");
   
  end
endmodule

//output
print the values
xmsim: *W,NOCOND: Unique if violation:  Every if clause was false.//warning will be shown when the else will not be declared
            File: ./testbench.sv, line = 6, pos = 12
           Scope: unique_if
            Time: 0 FS + 1

xmsim: *W,RNQUIE: Simulation is complete.

  
