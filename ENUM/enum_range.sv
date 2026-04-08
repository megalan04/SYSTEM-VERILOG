module enum_tb;
  typedef enum{CAPTAIN_AMERICA,THOR,HULK,SPIDERMAN,IRONMAN,THANOS,GROOT,AVENGERS_ASSEMBLE}characters;
  characters a;
  int i;
  initial begin
    $display("----------------a-----------------");
    for(i=0;i<8;i++)begin
      a=characters'(i);
      $display("value=%0d character=%s",a,a.name());
    end
  end

 
  typedef enum{CAPTAIN_AMERICA1,THOR1=4,HULK1,SPIDERMAN1,IRONMAN1,THANOS1,GROOT1,AVENGERS_ASSEMBLE1}characters1;
  characters1 b;
  initial begin
    $display("----------------b-----------------");
    for(i=0;i<8;i++)begin
      b=characters1'(i);
      $display("value=%0d character=%s",b,b.name());
    end
  end
  



  typedef enum{CAPTAIN_AMERICA2,THOR2,HULK2,SPIDERMAN2[4],IRONMAN2,THANOS2,GROOT2,AVENGERS_ASSEMBLE2}characters2;
  characters2 c;
  initial begin
     $display("----------------c-----------------");
    for(i=0;i<8;i++)begin
      c=characters2'(i);
      $display("value=%0d character=%s",c,c.name());
    end
  end
  


  typedef enum{CAPTAIN_AMERICA3,THOR3,HULK3[3:5],SPIDERMAN3,IRONMAN3,THANOS3,GROOT3,AVENGERS_ASSEMBLE3}characters3;
  characters3 d;
  initial begin
     $display("----------------d-----------------");
    for(i=0;i<8;i++)begin
      d=characters3'(i);
      $display("value=%0d character=%s",d,d.name());
    end
  end
  
 
  typedef enum{CAPTAIN_AMERICA4,THOR4,HULK4,SPIDERMAN4,IRONMAN4=9,THANOS4,GROOT4,AVENGERS_ASSEMBLE4}characters4;
  characters4 e;
  initial begin
     $display("----------------e-----------------");

    for(i=0;i<8;i++)begin
      e=characters4'(i);
      $display("value=%0d character=%s",e,e.name());
    end
  end
endmodule

//output
----------------a-----------------
value=0 character=CAPTAIN_AMERICA
value=1 character=THOR
value=2 character=HULK
value=3 character=SPIDERMAN
value=4 character=IRONMAN
value=5 character=THANOS
value=6 character=GROOT
value=7 character=AVENGERS_ASSEMBLE
----------------b-----------------
value=0 character=CAPTAIN_AMERICA1
value=1 character=
value=2 character=
value=3 character=
value=4 character=THOR1
value=5 character=HULK1
value=6 character=SPIDERMAN1
value=7 character=IRONMAN1
----------------c-----------------
value=0 character=CAPTAIN_AMERICA2
value=1 character=THOR2
value=2 character=HULK2
value=3 character=SPIDERMAN20
value=4 character=SPIDERMAN21
value=5 character=SPIDERMAN22
value=6 character=SPIDERMAN23
value=7 character=IRONMAN2
----------------d-----------------
value=0 character=CAPTAIN_AMERICA3
value=1 character=THOR3
value=2 character=HULK33
value=3 character=HULK34
value=4 character=HULK35
value=5 character=SPIDERMAN3
value=6 character=IRONMAN3
value=7 character=THANOS3
----------------e-----------------
value=0 character=CAPTAIN_AMERICA4
value=1 character=THOR4
value=2 character=HULK4
value=3 character=SPIDERMAN4
value=4 character=
value=5 character=
value=6 character=
value=7 character=
