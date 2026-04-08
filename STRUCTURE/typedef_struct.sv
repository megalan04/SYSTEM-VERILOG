//typedef_struct
module typedef_struct;
  typedef struct{int number;
                 string model;
                 int year;
                 }cars;
  initial begin
    cars car1;
    cars car2;
    cars car3;
    cars car4;
    
    car1='{4444,"BMW_M4",2024};
    $display("number_plate=%0d,model=%s,year=%0d",car1.number,car1.model,car1.year);
    
    car2='{444,"BMW_M7",2023};
    $display("number_plate=%0d,model=%s,year=%0d",car2.number,car2.model,car2.year);
    
    car3='{44,"BMW_i5",2024};
    $display("number_plate=%0d,model=%s,year=%0d",car3.number,car3.model,car3.year);
    
    car4='{4,"BMW_i4",2022};
    $display("number_plate=%0d,model=%s,year=%0d",car4.number,car4.model,car4.year);
    
    
    car1=car2;
    $display("car1=%p,car2=%p",car1,car2);
    
    car1.model="por911";
    $display("car1=%p",car1);
    car2.model="Mustang";
    $display("car2=%p",car2);
    
    car1='{default:0,model:""};
    $display("car1=%p",car1);
    
  end
endmodule
