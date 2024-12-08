-- 1) Creating Table5.

 CREATE TABLE orders (
    order_id INT NOT NULL PRIMARY KEY, 
    cust_id INT NOT NULL, 
    product_id INT NOT NULL, 
    order_date DATE NOT NULL, 
    shipped_date DATE, 
    delivery_date DATE, 
    FOREIGN KEY (cust_id) REFERENCES customers(cust_id), 
    FOREIGN KEY (product_id) REFERENCES sales(product_id)
);

-- 2) Inserting Values inside table5.

INSERT INTO orders(order_id,cust_id,product_id,order_date,shipped_date,delivery_date)
VALUES(501,401,202,'2024-10-01','2024-10-03','2024-10-05'),
(502,402,203,'2024-11-01','2024-11-02','2024-11-04'),
(503,403,201,'2024-10-20','2024-10-22','2024-10-21'),
(504,401,204,'2024-10-25','2024-10-28','2024-10-27'),
(505,405,203,'2024-11-03','2024-11-05','2024-11-06'); 

-- 3) Retrieve Table5 
select * from orders;
