--WORK WITH employee_data.csv file for understand it and openit in excel
DROP TABLE IF EXISTS employee2;

create table employee2(
employee_id int primary key,
first_name varchar(20) not null,
last_name varchar(20) not null,
department varchar(20),
salary numeric(10,2),
joining_date date ,
age int
);

 
select * from employee2;
 

-- Set date style if your CSV uses DD-MM-YYYY
SET datestyle = 'DMY';

-- Server-side COPY command
COPY employee2(employee_id, first_name, last_name, department, salary, joining_date, age)

--in that from the path is from cs file for this > go to file > propertices> security> copy the path
FROM 'C:\Program Files\PostgreSQL\17\employee_data.csv'

--as we use csv(comma separeted file) so for that we determint it with ','
DELIMITER ','

-- in our excel we find all this header so csv header; if we did not do this sql with accept first one as rows and column
CSV HEADER;



 