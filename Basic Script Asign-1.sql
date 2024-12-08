-- Basics
 
-- 1. Write a query to retrieve all data from a table named employees.

select * from employees; 

-- 2. Fetch the name, age, and department columns from the employees table.

select name,age,department from employees;
 
-- 3. Retrieve all employees whose age is greater than 30. 

select * from employees where age > 30;

-- 4. Find employees who work in the IT department and have a salary greater than 50000.

select * from employees where department = 'IT' and salary > 50000; 

-- 5. Get all employees who work in the HR department or are less than 25 years old. 

select * from employees where department = 'HR' or age < 25;

-- 6. Retrieve all employees who do not work in the Finance department.

select * from employees where not department = 'Finance';
 
-- 7. Find employees whose names start with the letter 'A'. 

select * from employees where name = 'a%';

-- 8. Retrieve employees whose email addresses contain the domain gmail.com. 

select * from employees where email = '%@gmail.com';

-- 9. Fetch the names and salaries of employees sorted by salary in descending order.

select name, salary from employees order by salary desc;
 
-- 10. Retrieve the top 5 highest-paid employees.

SELECT emp_id,name, salary
FROM employees
ORDER BY salary DESC
LIMIT 5;

 
-- 11. Count the total number of employees in the employees table. 

select count(*) from employees;

-- 12. Write a query to find the minimum and maximum salaries in the employees table.

SELECT 
    department,
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary
FROM employees
GROUP BY department
LIMIT 0, 1000;

  
-- 13. Calculate the average salary of employees in each department.

select avg(salary) as avr_of_IT from employees where department = 'IT';
select avg(salary) as avr_of_HR from employees where department = 'HR';
select avg(salary) as avr_of_sales from employees where department = 'Sales'; 
select avg(salary) as avr_of_Marketing from employees where department = 'Marketing';
select avg(salary) as avr_of_Finance from employees where department = 'Finance'; 

-- 14. Find all employees who work in the IT department and have a salary greater than
-- 60000 or have been with the company for more than 5 years. 

SELECT *
FROM employees
WHERE department = 'IT'
  AND (salary > 60000 OR year_at_comp > 5);

-- 15. Increase the salary of all employees in the Sales department by 10%. 

UPDATE employees
SET salary = salary * 1.10
WHERE department = 'Sales';

-- 16. Update the department of an employee with employee_id = 101 to Marketing.

UPDATE employees
SET department = 'Marketing'
WHERE department = 'IT' and emp_id = '101';
