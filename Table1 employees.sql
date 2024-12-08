-- 1) creating DATABASE. 

create database  sql_pract_db;

-- 2) Creating Table1.

 create table employees(
 emp_id int,
name varchar(50),
age int,
department VARCHAR(30),
salary int,
email varchar(40),
year_at_comp int );

-- 3) Inserting values inside Table1.

INSERT INTO employees(emp_id,name,age,department,salary,email,year_at_comp)
VALUES(101,'Alice',25,'IT',50000,'alice@gmail.com',2),
(102,'Bob',35,'HR',40000,'bob@yahoo.com',6),
(103,'Charlie',30,'Finance',55000,'NULL',4),
(104,'Diana',40,'IT',70000,'diana@gmail.com',10),
(105,'Evan',29,'Sales',45000,'evan@outlook.com',3),
(106,'Fiona',22,'IT',65000,'fiona@gmail.com',1),
(107,'George',45,'Marketing',48000,'george@gmail.com',12),
(108,'Hannah',28,'HR',47000,'hannah@yahoo.com',5);

-- 4) Retrieve Table1

select * from employees;
