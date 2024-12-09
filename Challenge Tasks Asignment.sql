-- Challenge Tasks


--  29. Assign a rank to each employee based on their salary in descending order.

SELECT emp_id,name,salary,
RANK() OVER (ORDER BY salary DESC) AS rank_emp
FROM 
employees;


-- 30. Retrieve duplicate records from the orders table based on the customer_id and
-- order_date.

Select
    cust_id,
    order_date,
    COUNT(*) AS record_count
FROM 
    orders
GROUP BY 
    cust_id, order_date
HAVING 
    COUNT(*) > 1;
