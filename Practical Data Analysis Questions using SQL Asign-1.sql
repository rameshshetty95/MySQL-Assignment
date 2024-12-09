-- Practical Data Analysis Questions using SQL 


-- 25. Count how many users are active and inactive from the user_activity table.

select activity_status,count(*)user_count 
from user_activity 
group by activity_status;


-- 26. Using the orders table, calculate the total number of orders placed in the first quarter 
-- (January to March) of 2023 and 2024. Compare the results to analyze the growth or 
-- decline in order activity.

SELECT 
    YEAR(order_date) AS year,
    COUNT(order_id) AS total_orders
FROM orders
WHERE (YEAR(order_date) = 2023 OR YEAR(order_date) = 2024)
  AND MONTH(order_date) BETWEEN 1 AND 3
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date);
 
-- 27. Identify the customer who 1has made the most purchases.

 SELECT cust_id, COUNT(*) AS purchase_count
FROM customers
GROUP BY cust_id
ORDER BY purchase_count DESC
LIMIT 1;

-- 28. Find the product that has been purchased most frequently.

SELECT product_id, COUNT(*) AS purchase_count
FROM orders
GROUP BY product_id
ORDER BY purchase_count DESC
LIMIT 1;
