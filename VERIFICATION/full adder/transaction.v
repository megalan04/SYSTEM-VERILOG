class transaction;
  rand bit A;
  rand bit B;
  rand bit Cin;
  
  bit Sum;
  bit Cout;
  
  function void display(string MEK);
    $display("[%s] A=%b B=%b Cin=%b Sum=%b Cout=%b",MEK,A,B,Cin,Sum,Cout);
  endfunction
endclas
  
