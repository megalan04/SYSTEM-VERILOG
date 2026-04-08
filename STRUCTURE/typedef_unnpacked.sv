//unpacked structure
module struct_unpacked;
  typedef struct{
  int id;
  string name;
    int age;
  }student;
  initial begin
    student s;
    s='{35,"MEGALAN",21};
    $display("id=%0d,name=%s,age=%0d",s.id,s.name,s.age);
    
    
    s.id=55;
    s.name="JANAGAN";
    s.age=13;
    $display("%p",s);
  end
endmodule

//output
id=35,name=MEGALAN,age=21
'{id:55, name:"JANAGAN", age:13}
