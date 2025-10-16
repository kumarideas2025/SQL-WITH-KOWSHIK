CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(40)
);

select * from customers;

insert into customers( first_name,last_name)
VALUES
('Rahul', 'Sharma' ),
('Priya', 'Mehta' ),
('Ankit', 'Verma' ),
('Simran', 'Kaur'   ),
('Aman', 'Singh'  );

CREATE TABLE  transactionss (
    transaction_id SERIAL PRIMARY KEY,
    amount decimal(5,3),
	customer_id int,
	foreign key(customer_id) references customers(customer_id )
	);

select * from   transactionss;

-- for drop foreign key that is create for use foreign key in table
-- ALTER TABLE customers
-- DROP CONSTRAINT customers_pkey;

-- foreign key new name
alter table transactionss
add constraint fk_customer_id
foreign key(customer_id) references customers(customer_id );


insert into transactionss(amount,customer_id )
VALUES

(5.66,2),
(3.55,3),
( 4.99,1 );


--so we cant not del that id cause taht is already references in transaction table so .parnten data can not del (but use [on delete cas cade] for delete it..)
delete  from customers
where customer_id=2;

-- use cas cade for this type of delete
-- CREATE TABLE transactionss (
--     transaction_id SERIAL PRIMARY KEY,
--     amount DECIMAL(5,3),
-- 	customer_id INT,
-- 	FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
-- );