DROP TABLE hub3;
 
 create table hub4(
  employee_id int primary key,   
   name varchar(100) not null,
   position varchar(100),
   department varchar(100),
   hier_date date,
   salary numeric(10,2)
);

 
 SELECT * FROM hub4;

insert into hub4(employee_id,name,position,department,hier_date,salary)
values(770,'kowshik','student','data analiys','2022-12-5',6780.00),
       (669,'wshik','student','ict','2020-11-5',67803.00),
	   (768,'kok','student','cs','2012-02-5',26780.00),
	   (901,'dowshik','student','ml','2032-10-5',56780.00); 

 delete from hub4
 where employee_id=770;

 alter table hub4
 drop column  salary;

 drop table if exists hub4;
 