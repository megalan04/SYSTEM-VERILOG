// Code your testbench here
// or browse Examples
class base_class;
  string key;
  string car;
  
  function void display();
    key="ON";
    $display("using super keyword");
    $write("car is start %s",key);
  endfunction
endclass

class sub_class extends base_class;
  string car="ON";
  function void display();
    super.display();
    $write("  It sounds like devil %s /n",car);
  endfunction
endclass

module super_keyword;
  sub_class s;
  initial begin
    s=new();
    s.display();
  end
endmodule
