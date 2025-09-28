
SELECT * FROM products;

-- WE DROP AND AGAIN ADD THIS COLUMN CAUSE WE WANT A PERENTAGE VALUE
ALTER TABLE products
DROP COLUMN discount_price;

ALTER TABLE products 
ADD COLUMN discount_price NUMERIC(10,2);



UPDATE products
SET discount_price = NULL
WHERE product_name IN('Laptop','Desk');


--WITH THIS NOT IN WE CAN TOLD THAT WE DID NOT WANT TO GIVE ANY DISCOUNT IN LAPTOP AND DESK. AS WE LEAVE IT AS NULL.
UPDATE products
SET discount_price = price*0.9
WHERE product_name NOT IN('Laptop','Desk');


SELECT product_name, price, discount_price 
FROM products;

--THIS COALESCE GIVES A FINAL PRICE WHERE DISCCOUNT PRICE AND NON-DISCOUNT PRICE WE COULD FIND EASILY.
SELECT product_name, 
		COALESCE(discount_price, price) AS Final_price
FROM products;

