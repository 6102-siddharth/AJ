CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    budget INT
);

INSERT INTO departments VALUES
(1, 'IT', 900000),
(2, 'HR', 300000),
(3, 'Finance', 700000),
(4, 'Marketing', 500000),
(5, 'Sales', 650000),
(6, 'Support', 250000);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT,
    hire_date DATE,
    is_manager VARCHAR(5),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);


INSERT INTO employees VALUES
(101, 'Amit Sharma', 55000, 1, '2021-03-10', 'no'),
(102, 'Priya Verma', 75000, 1, '2020-08-22', 'yes'),
(103, 'Rohan Patel', 45000, 2, '2022-01-12', 'no'),
(104, 'Sneha Kulkarni', 60000, 3, '2019-11-05', 'no'),
(105, 'Vikas Gupta', 82000, 3, '2018-06-15', 'yes'),
(106, 'Neha Singh', 38000, 4, '2023-02-25', 'no'),
(107, 'Karan Thakur', 50000, 4, '2021-07-18', 'no'),
(108, 'Manoj Kumar', 90000, 5, '2017-09-09', 'yes'),
(109, 'Ritika Jain', 47000, 6, '2022-05-20', 'no'),
(110, 'Shivam Yadav', 52000, 6, '2023-03-13', 'no'),
(111, 'Harshita Desai', 64000, 1, '2020-12-28', 'no'),
(112, 'Jeet Mehta', 43000, 2, '2023-04-10', 'no'),
(113, 'Simran Kaur', 71000, 5, '2021-09-19', 'yes'),
(114, 'Ankit Jadhav', 36000, 1, '2024-01-05', 'no'),
(115, 'Tarun Mishra', 80000, 3, '2018-12-01', 'no'),
(116, 'Pooja Nair', 46000, 4, '2022-06-11', 'no'),
(117, 'Deepak Rao', 49000, 6, '2020-07-23', 'no'),
(118, 'Anjali Sinha', 58000, 2, '2021-01-14', 'no'),
(119, 'Saurabh Shah', 67000, 5, '2020-11-30', 'no'),
(120, 'Gaurav More', 53000, 1, '2022-03-15', 'no'),
(121, 'Riya Kapoor', 41000, 4, '2023-09-01', 'no'),
(122, 'Yash Dubey', 90000, 5, '2019-05-22', 'no'),
(123, 'Meera Joshi', 72000, 3, '2019-10-18', 'yes'),
(124, 'Devansh Roy', 48000, 6, '2022-07-27', 'no'),
(125, 'Kunal Dixit', 35000, 2, '2024-02-10', 'no'),
(126, 'Rashmi Pawar', 66000, 1, '2021-08-25', 'no'),
(127, 'Santosh Bane', 59000, 4, '2020-10-08', 'no'),
(128, 'Aarav Shetty', 72000, 5, '2020-04-19', 'no'),
(129, 'Tejaswini Naik', 47000, 3, '2023-03-29', 'no'),
(130, 'Nikhil Mane', 51500, 6, '2021-06-12', 'no');



CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    emp_id INT,
    hours_worked INT,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);


INSERT INTO projects VALUES
(201, 'Website Upgrade', 101, 120),
(202, 'Cloud Migration', 102, 200),
(203, 'Security Audit', 104, 150),
(204, 'Recruitment Drive', 103, 100),
(205, 'Budget Planning', 105, 180),
(206, 'Digital Ads', 106, 90),
(207, 'Brand Strategy', 107, 110),
(208, 'CRM Setup', 108, 210),
(209, 'Customer Support Tool', 109, 80),
(210, 'Warranty System', 110, 75),
(211, 'Market Survey', 127, 95),
(212, 'Sales Dashboard', 113, 160),
(213, 'Product Launch', 119, 140),
(214, 'Portal Optimization', 120, 130);

select * from employees;
select* from departments;
select * from projects;

-- ✅ 📘 Easy Level (Beginner Queries)
-- (Basic SELECT, WHERE, ORDER BY)
select * from employees;

-- 1. Retrieve all columns from the employees table.
select * from employees;

-- 2.Display only emp_name and salary from the employees table.
select emp_name, salary from employees;

-- 3. List employees whose salary is greater than 30000.
select * from employees where salary > 30000;

-- 4.Show employees who work in the 'IT' department.
select * from employees;
select * from departments;
select * from projects;
select emp_id, emp_name, e.dept_id , dept_name from employees e join departments d
on e.dept_id=d.dept_id
where dept_name='IT';

-- 5. Retrieve employees hired after 2022-01-01.
select * from employees where hire_date > '2022-01-01';

-- 6. List employees with salary between 30000 and 60000.
select * from employees where salary between 30000 AND 60000;

-- 7.Display employees whose name starts with 'A'.
select * from employees where emp_name like 'a%';

-- 8. Show employees whose name contains 'an' anywhere.
select * from employees where emp_name like "%AN%";

-- 9. Retrieve employees who are not managers (is_manager = 'no').
select * from employees where is_manager='NO';

-- 10. Display employee details sorted by salary (highest first).
select * from employees order by salary desc;

-- 11. Sort employees by hire date in ascending order.
select * from employees order by hire_date asc;

-- 12.  Count how many employees are in each department.																			--TO cross check 
select * from employees;
select * from departments;
select emp_id,dept_name , count(departments.dept_id) from departments join employees group by emp_id,dept_name  ;
select e.dept_id,dept_name, count(emp_id) from employees e join departments group by dept_id,dept_name;

-- 13. Find the maximum salary in the company.
select * from employees order by salary desc limit 1;
select * from employees where salary = (select max(salary)from employees limit 1);

-- 14. Find the minimum salary in the company.
select emp_id, min(salary) from employees group by emp_id order by min(salary) asc;
select * from employees where salary = (select min(salary) from employees limit 1);

-- 59. Get the total salary budget (SUM).
select sum(salary)"Total Salary" from employees;

-- ✅ 📗 Medium Level Queries
-- (GROUP BY, HAVING, Subqueries, Aggregation)

-- 15. Find the average salary for each department.
select e.dept_id,dept_name, avg(salary),count(e.emp_id)
 from employees e join departments d
 on e.dept_id=d.dept_id 
 group by dept_id,dept_name;

select d.dept_id , dept_name, avg(Salary), count(e.emp_id) from employees  e join departments d 
on e.dept_id=d.dept_id
group by dept_id,dept_name;

-- select dept_name , avg(salary) from employees group by dept_name;

-- 16. Show departments having an average salary greater than 45000.
select dept_id, avg(salary) from employees group by dept_id having avg(salary) > 45000;

-- 17. Retrieve employees whose salary is greater than the company average salary.
select * from employees where salary > (select avg(Salary) from employees);

-- 18. List employees who earn the maximum salary in their department.
select emp_id,emp_name,e.dept_id,dept_name, max(Salary) from employees e join departments d
on e.dept_id=d.dept_id
group by emp_id,emp_name,dept_id,dept_name
order by max(salary) desc;

-- 19. Show departments with more than 5 employees.
select * from employees;
select * from departments;
select d.dept_id,dept_name, count(emp_id) from employees e join departments d group by d.dept_id,dept_name having count(e.emp_id) > 5 limit 1;

-- 20. Find employees hired in the last 6 months.																			--Not solve  
select max(hire_date) from employees ;

select * from employees where hire_date between '2023-08-10' AND '2024-02-10';

-- 21. Find employees whose salary is below the department average salary.
select * from employees where salary < (select  avg(budget) from departments) ;
select  avg(budget) from departments;

-- 22. Retrieve the top 3 highest-paid employees.
select * from employees order by salary desc limit 3;

-- 23. Show departments sorted by total salary spent (DESC).
select dept_name,budget , sum(budget) from departments group by dept_name,budget order by budget desc;

-- 24. Count how many managers are there in each department.																	-- 24 not solve 
-- select dept_id, count(is_manager) from employees group by dept_id;
select dept_name ,is_manager, count(emp_id) from departments join employees where is_manager='Yes' group by dept_name,is_manager;
 
 select * from employees;
 
-- 25. Retrieve employees with duplicate salary values.																		    -- 25 not solve only half solve 
-- select * from employees where salary ;
-- select salary , count(salary) from employees group by salary having count(salary) > 1 ;
-- select emp_name,salary from employees where salary in (select salary from employees group by salary having count(salary) > 1) order by salary desc;
select * from employees where salary != (select distinct salary from employees );

select salary , count(salary) from employees group by salary having count(salary) >1;

-- 26. Show employees who do not belong to any department (NULL dept).
select * from employees where dept_id= Null;

-- 27. Find the employee with the earliest hire date.
select min(hire_date) from employees;
select * from employees where hire_date = (select min(hire_date) from employees);

-- 28. List all employees with even-numbered emp_id.
select * from employees where emp_id % 2= 0;

-- 29. Display employees whose salary is within 10% of the highest salary.												-- Not solve 


-- 🟦 Advanced (Hard Level Queries)
-- (Nested Subqueries, Analytics, Complex Filtering)

-- 30. Retrieve employees who earn more than every manager in the company.												-- Not Solve 


-- 31. Find the second highest salary (without using LIMIT).															-- Not solve  half solve
select max(salary) from employees order by max(Salary) desc;													
select max(salary) from employees
 where salary < (select max(salary) from employees
 where salary < (select max(salary) from employees ));

-- 32.  Retrieve the 3rd highest salary using a subquery.																-- Not solve 
select * from employees where salary = (select max(salary) from employees order by max(Salary) desc );

-- 33. Display employees whose salary is closest to the company average.												-- Not solve 

-- 34. Show the highest-paid employee in each department using subqueries.												-- Not solve 
select dept_name from departments where salary= (select max(salary) from employees) ;

-- 35. Retrieve employees who have the same salary as the maximum salary of another department.

-- 36. Show departments where all employees earn more than 30000.

-- 37.  Retrieve the median salary (hard).

-- 38. List departments where the total salary is within 10% of the company total salary.

-- 39. Retrieve employees who joined on weekends (SAT/SUN).

-- 40. Retrieve departments where no manager exists.

-- 41. Show employees whose salary increased compared to last year's data (requires history table).

-- 42. Retrieve employees that were hired this year and earn above the dept average.

-- 43. Count employees group by department but only show departments where the count is divisible by 3.

-- 🟧 JOIN-Based Questions (Important)

-- 60 .  List employees along with their department names.
select emp_id, emp_name, dept_name from employees as e join departments as d on d.dept_id = e.dept_id;

-- 44. Retrieve employees who have never taken leave (from leave table).


-- 45. Find employees along with their project names (join 3 tables).

-- 46. Show departments with no employees (LEFT JOIN).


-- 47. Retrieve employee details and manager name (self join).

-- 48. List employees working on more than 2 projects.

-- 49. Show employees who have not been assigned to any project.

-- 🔧 UPDATE / ALTER / DELETE Practice

-- 50. Update salary of employees in IT department by +10%.
		
-- 51. Update all managers’ salary to 80000.

-- 52. Delete employees with salary < 20000.

-- 53. Change column name emp_name to employee_name.

-- 54. Add a new column email to employees.

-- 55. Modify salary column to store two decimals.

-- 56. Drop the is_manager column.

-- 57. Delete all employees hired before 2020.

-- 58. Increase department budget by 15%.


