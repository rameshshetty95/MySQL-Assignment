create table employees(
employee_id int,
name VARCHAR(50),
department VARCHAR(30),
salary int,
age INT,
bonus INT );

INSERT INTO employees VALUES(1,'Alice Johnson','HR',45000,29,2);
INSERT INTO employees VALUES(2,'Bob Smith','IT',55000,34,3000);
INSERT INTO employees VALUES(3,'Charlie Brown','Finance',70000,45,4000);
INSERT INTO employees VALUES(4,'David Wilson','It',60000,41,3500);
INSERT INTO employees VALUES(5,'Eve Davis','HR',38000,24,1500);
INSERT INTO employees VALUES(6,'Frank Martin','Finance',90000,50,5000);
INSERT INTO employees VALUES(7,'Grace Lee','IT',50000,28,2500);
INSERT INTO employees VALUES(8,'Henry Clark','Finance',72000,48,4500);

select * from employees;

-- 1) Retrieve all the records in the department which all = HR

select * from employees where department = 'HR';

-- 2) Find the total number of employees

select count(*) from employees;

-- 3) Fetch the records where the employees salary > 50000

select * from employees where salary >50000;

-- 4) count the number of employees in each department

select count(*) from employees where department= 'HR';
select count(*) from employees where department= 'IT';
select count(*) from employees where department= 'Finance';


-- 5) list the employees who are older than 40

select * from employees where age >40;


-- 6) retrieve all employees sorted by their salary in desending order

select * from employees order by salary desc;