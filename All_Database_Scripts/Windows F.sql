create database W_F;
use W_F;

CREATE TABLE employees (
emp_id INT,
emp_name VARCHAR(50),
department VARCHAR(50),
salary INT,
joining_year INT
);

INSERT INTO employees VALUES
(1,'Amit','IT',60000,2020),
(2,'Neha','IT',75000,2019),
(3,'Rohit','IT',60000,2021),
(4,'Priya','HR',50000,2018),
(5,'Karan','HR',55000,2020),
(6,'Sneha','HR',55000,2022),
(7,'Rahul','Finance',70000,2019),
(8,'Anjali','Finance',72000,2021),
(9,'Vikram','Finance',70000,2020),
(10,'Pooja','IT',80000,2017);

select * from employees;

-- Descending  values by W_F
select emp_name ,salary,
row_number() over(order by salary desc)as row_no from employees;


