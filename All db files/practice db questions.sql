create database arbor_practice_db;
use arbor_practice_db;

create table employees (emp_id int, emp_name varchar(50), salary int, dept varchar(50), hire_date date , is_manager varchar(5));



INSERT INTO employees (emp_id, emp_name, salary, dept, hire_date, is_manager) VALUES
(101, 'Rohan Sharma', 55000, 'Sales', '2020-04-15', 'No'),
(102, 'Priya Verma', 72000, 'HR', '2019-11-03', 'Yes'),
(103, 'Amit Kulkarni', 63000, 'IT', '2021-06-21', 'No'),
(104, 'Sneha Patil', 88000, 'Finance', '2018-02-10', 'Yes'),
(105, 'Karan Mehta', 45000, 'Marketing', '2022-08-05', 'No'),
(106, 'Neha Gupta', 99000, 'IT', '2017-09-14', 'Yes'),
(107, 'Siddharth Joshi', 54000, 'Operations', '2020-12-01', 'No'),
(108, 'Manish Singh', 70000, 'Sales', '2019-07-29', 'Yes'),
(109, 'Aditi Deshpande', 48000, 'HR', '2022-03-17', 'No'),
(110, 'Vivek Chavan', 61000, 'IT', '2021-11-08', 'No'),
(111, 'Harshal Kulkarni', 52000, 'Marketing', '2023-01-12', 'No'),
(112, 'Tanvi Shinde', 83000, 'Finance', '2018-06-19', 'No'),
(113, 'Raj Malhotra', 79000, 'Operations', '2019-02-25', 'Yes'),
(114, 'Shruti Nair', 57000, 'HR', '2020-10-03', 'No'),
(115, 'Yash Kothari', 68000, 'IT', '2021-07-14', 'No'),
(116, 'Meenal Agarwal', 91000, 'Finance', '2017-03-28', 'Yes'),
(117, 'Nikhil Pawar', 43000, 'Sales', '2023-05-22', 'No'),
(118, 'Pooja Sawant', 46000, 'Operations', '2022-11-16', 'No'),
(119, 'Gaurav Mishra', 72000, 'Marketing', '2019-05-10', 'Yes'),
(120, 'Riya Khandelwal', 69000, 'IT', '2021-12-30', 'No'),
(121, 'Ashwin Shetty', 76000, 'Sales', '2018-04-08', 'Yes'),
(122, 'Kavita Rao', 51000, 'HR', '2022-09-21', 'No'),
(123, 'Parth Deshmukh', 83000, 'Finance', '2018-11-18', 'No'),
(124, 'Sonali Jain', 47000, 'Operations', '2023-03-12', 'No'),
(125, 'Arjun Thakur', 65000, 'IT', '2020-06-06', 'No'),
(126, 'Deepika Reddy', 93000, 'Finance', '2017-01-14', 'Yes'),
(127, 'Mohit Chauhan', 56000, 'Sales', '2020-09-19', 'No'),
(128, 'Isha Kulkarni', 48000, 'HR', '2023-02-02', 'No'),
(129, 'Pranav Patil', 71000, 'IT', '2021-04-23', 'No'),
(130, 'Swati Jadhav', 79000, 'Marketing', '2019-08-27', 'Yes');

-- 1. BASIC SELECT & WHERE QUESTIONS (Easy – 10)

-- Write a query to display all employee names and their departments.
select emp_name, dept from employees;

-- Retrieve details of employees working in the IT department.
select * from employees
 where dept= 'IT';

-- Display employees whose salary is greater than 60,000.
select * from employees
 where salary > 60000;

-- Find employees who are managers (is_manager = 'Yes').
select * from employees 
where is_manager= 'YES';

-- List all employees hired after 2021-01-01.
select * from employees
where hire_date > '2021-01-01';

-- Show the employee details for emp_id = 108.
select * from employees 
where emp_id= 108;

-- Write a query to get employees from Sales and Marketing departments.
select * from employees 
where dept= 'Sales' or dept='marketing';

-- Retrieve employees whose salary is between 50,000 and 80,000.
select * from employees
 where salary between 50000 and  80000; 

-- Display employees whose names start with ‘S’.
select * from employees
 where emp_name like "S%";

-- Show all employees not working in Finance.
select * from employees
 where dept != 'Finance' ;



-- 2. ORDER BY QUESTIONS (5)

-- Display all employees ordered by salary (ascending).
select * from employees 
order by salary asc;

-- Display all employees ordered by hire_date (newest first).
select * from employees 
order by hire_date asc;

-- List employees sorted by department, then by salary (desc).
select emp_name,dept,salary from employees
 order by salary desc;
 -- or
 select * from employees 
 order by salary desc;
 
-- Show all managers ordered by name alphabetically.
select * from employees 
order by emp_name asc;

-- Display employees sorted by salary, and if salaries match, sort by hire_date.   					-- Reamining 
select * from employees 
order by salary,hire_date asc  ;





-- 3. GROUP BY & AGGREGATION QUESTIONS (6)

-- Find the number of employees in each department.
select dept , count(emp_id) from employees
 group by dept;

-- Find the average salary department-wise.
select dept, avg(salary) from employees
 group by dept;

-- Display the minimum and maximum salary in each department.
select dept,
 min(salary), max(salary) from employees 
group by dept;

-- Count how many managers are in each department.
select dept,is_manager,
 count(is_manager) from employees
 group by dept ,is_manager
 having is_manager ='yes';


-- Show total salary expenditure for each department.
select dept, 
sum(salary) from employees
 group by dept;

-- Display department names having more than 3 employees.
select dept, 
count(emp_id) from employees
 group by dept 
 having count(emp_id) > 3;




-- 4. Combined (WHERE + GROUP BY + ORDER BY) (5)
select * from employees;

-- Show the average salary of each department where avg salary > 60000, ordered by average salary descending.
select dept,
 avg(salary) from employees
 group by dept 
 having avg(Salary) > 60000
 order by avg(salary) desc;

-- Display departments having at least 2 managers, ordered alphabetically.
select dept, 
count(is_manager) from employees
 group by dept
 having count(is_manager) > 2
 order by count(is_manager) asc;
										-- or 
select dept,
 count(is_manager) from employees
 group by dept
 having count(is_manager) > 2 
 order by dept asc;

-- Show total salary of employees hired after 2019, grouped by department.
select dept,hire_date, 
sum(salary) from employees
 group by dept,hire_date 
 having hire_date > '2018-12-31'
 order by hire_date asc;

-- Display departments where the maximum salary is above 80,000, ordered by max salary.
select dept,
 max(salary) from employees 
 group by dept
 having max(salary) > 80000 
 order by max(salary) desc;

-- Retrieve count of employees in each department excluding HR, sorted by count descending.
select dept, 
count(dept) from employees
 group by dept having dept!='HR' 
 order by count(dept) desc ;

-- for off safe update mode 
set sql_safe_updates = 0;


-- 5. UPDATE & ALTER TABLE QUESTIONS (5)
select * from employees;

-- Write a query to increase salary by 10% for all IT employees.
update employees
set salary = salary * 1.10
where dept= 'it';

-- Update the department of employee emp_id = 117 to Marketing.
update employees 
set dept= 'marketing'
where emp_id=117;

-- Set is_manager = 'Yes' for employees earning more than 85,000.
update employees 
set is_manager = 'YES'
where salary > 85000;

-- Write a query to change the column name dept to department.
alter table employees 
rename column dept to department;

-- Add a new column email VARCHAR(50) to the employees table.
alter table employees 
add column email varchar(50) ;


-- 6. HARD / THINKING-LEVEL SQL QUESTIONS (8)

-- Retrieve the details of the top 3 highest-paid employees in each department.
select department , 
max(salary) from employees
 group by department 
 order by max(Salary) desc 
 limit 3 ;
 
-- Find employees whose salary is above the average salary of their department.
-- select * from salary where salary > (select avg(salary) from employees group by department);

select * from employees;

-- Display employees hired in the same year as employee with emp_id = 106.

-- Find departments where the second highest salary is above 70,000.

-- Retrieve all employees whose salary is within 5,000 range of the department average.

-- Display managers who are earning less salary than some non-manager in their department.

-- Show employees who were hired earliest in each department (department-wise oldest employee).

-- Display the longest-serving employee (min hire_date) from the entire table.

-- List all pairs of employees who work in the same department (self-join).