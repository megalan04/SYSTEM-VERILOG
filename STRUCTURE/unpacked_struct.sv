//unpacked structure
module struct_unpacked;
  struct{
  int id;
  string name;
    int age;
  }student;
  initial begin
    student='{35,"MEGALAN",21};
    $display("id=%0d,name=%s,age=%0d",student.id,student.name,student.age);
    
    
    student.id=55;
    student.name="JANAGAN";
    student.age=13;
    $display("%p",student);
  end
endmodule
