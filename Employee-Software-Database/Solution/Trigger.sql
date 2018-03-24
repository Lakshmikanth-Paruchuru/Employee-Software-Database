
DELIMITER |

create trigger Not_Morethan2_to_insert before insert on computer 
for each row
begin
 declare Num_Comp int default 0;
 select count(*) into Num_Comp
 from computer
 where Emp_ID=NEW.Emp_ID;
 
 If Num_Comp>=2 Then
  set NEW.Emp_ID=NULL;
  end if;
 end;
 |
 DELIMITER;
 
 Insert into computer values ('105','X600','Pear','30','31');
 
 DELIMITER |
 
 create trigger No_morethan2_update before update on computer
 for each row
 begin
 
 declare Num_Comp int default 0;
 select count(*) into Num_Comp
 from computer
 where Emp_ID=new.Emp_ID;
 
 
 If Num_Comp>=2 Then
  set NEW.Emp_ID=NULL;
  end if;
 end;
 |
 DELIMITER;