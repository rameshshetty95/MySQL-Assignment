
-- 1) creating Table2.

create table sales(
product_id int,
product_name varchar(50),
total_sales int );

-- 2) Inserting values inside Table2.

INSERT INTO sales(product_id,product_name,total_sales)
VALUES(201,'Laptop',150),
(202,'Smartphone',300),
(203,'Headphones',200),
(204,'Monitor',100),
(205,'Keyboard',50);

-- 3) Retrieve Table2.

select * from sales;

ALTER TABLE sales ADD INDEX (product_id);
