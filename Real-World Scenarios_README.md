17. Find all users who haven’t logged in for more than 30 days from a user_logs table.

SELECT user_id
FROM user_logs
WHERE last_login < NOW() - INTERVAL 30 DAY;
 
 
-- 18. Write a query to fetch the top 3 products with the highest sales from a sales table.

SELECT product_id, product_name, MAX(total_sales) AS max_sales
FROM sales
GROUP BY product_id, product_name
ORDER BY max_sales DESC
LIMIT 3;

 
-- 19. Count the number of customers from each region in the customers table.

select count(*)as North_reg from customers where region = 'north';
select count(*)as south_reg from customers where region = 'south';
select count(*)as east_reg from customers where region = 'east';
select count(*)as west_reg from customers where region = 'west';

-- 20. Retrieve all orders from the orders table where the shipped_date is later than the 
-- delivery_date.

select * from orders where shipped_date > delivery_date;

-- 21. Sort by Multiple Columns: 
-- Retrieve employees sorted by department in ascending order and salary in descending 
-- order. 

select * from employees order by salary desc,department asc;
 
-- 22. Fetch the highest-paid employee from each department.

SELECT emp_id, name, department, salary
FROM employees 
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department = 'HR');

SELECT emp_id, name, department, salary
FROM employees 
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department = 'Finance');
    
SELECT emp_id, name, department, salary
FROM employees 
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department = 'Marketing');
    
SELECT emp_id, name, department, salary
FROM employees 
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department = 'IT');
    
SELECT emp_id, name, department, salary
FROM employees 
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department = 'Sales');    


-- 23. Find all employees whose email addresses are NULL.

select * from employees where email = 'NULL' ; 

-- 24. Update the salary to 30000 for all employees whose current salary is NULL.
