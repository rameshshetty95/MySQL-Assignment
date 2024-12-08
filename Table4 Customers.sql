-- 1) creating Table4.

create table customers(
cust_id int ,
cust_name varchar(50),
region varchar(10) );

-- 2) Inserting values inside Table4.

INSERT INTO customers(cust_id,cust_name,region)
VALUES(401,'John Doe','North'),
(402,'Jane Smith','South'),
(403,'Emily Johnson','East'),
(404,'Michael Brown','West'),
(405,'Sarah Devis','North') ;

-- 3) Retrieve Table4 
select * from customers;

ALTER TABLE customers ADD INDEX (cust_id);
