select * from hub2;
--1)retrieve hub2 whose salary is between 6780.00 and 67803.00-use between operator
select name,employee_id,salary
from hub2
where salary between 6780.00 and  56780.00;




select * from num3;
--2)find num3 whose email address end with gmail.com-use like operator
select name,user_id,email
from num3
where email like '%gmail.com';

 
SELECT name, user_id, email
FROM num3
WHERE TRIM(name) LIKE 'k%';



--3)retrive employee who between 'ict' and 'ml'
SELECT name, department
FROM hub2
WHERE  department in ('ict' ,'ml');
