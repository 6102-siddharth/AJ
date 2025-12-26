create database arbor_practice;
use arbor_practice;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO departments VALUES
(1, 'HR', 'Mumbai'),
(2, 'IT', 'Pune'),
(3, 'Sales', 'Delhi'),
(4, 'Finance', 'Bangalore'),
(5, 'Marketing', 'Hyderabad');


CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT,
    hire_date DATE,
    is_manager BOOLEAN,
    gender VARCHAR(10),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO employees VALUES
(101, 'Amit', 60000, 2, '2020-01-15', 1, 'Male'),
(102, 'Neha', 45000, 1, '2021-03-10', 0, 'Female'),
(103, 'Ravi', 50000, 3, '2019-07-25', 1, 'Male'),
(104, 'Pooja', 48000, 2, '2022-06-05', 0, 'Female'),
(105, 'Rahul', 70000, 4, '2018-11-12', 1, 'Male'),
(106, 'Sneha', 52000, 5, '2021-09-30', 0, 'Female'),
(107, 'Ankit', 40000, 3, '2023-01-20', 0, 'Male'),
(108, 'Kiran', 65000, 2, '2017-05-18', 1, 'Male'),
(109, 'Priya', 47000, 1, '2020-08-14', 0, 'Female'),
(110, 'Suresh', 55000, 4, '2019-12-01', 0, 'Male');


CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    dept_id INT,
    budget INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO projects VALUES
(201, 'Website Revamp', 2, 500000),
(202, 'Recruitment Drive', 1, 200000),
(203, 'Sales Campaign', 3, 300000),
(204, 'Audit System', 4, 400000),
(205, 'Ad Campaign', 5, 250000);


CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    emp_id INT,
    date DATE,
    status VARCHAR(10),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

INSERT INTO attendance VALUES
(1, 101, '2024-01-01', 'Present'),
(2, 102, '2024-01-01', 'Absent'),
(3, 103, '2024-01-01', 'Present'),
(4, 104, '2024-01-01', 'Present'),
(5, 105, '2024-01-01', 'Absent'),
(6, 106, '2024-01-01', 'Present'),
(7, 107, '2024-01-01', 'Present'),
(8, 108, '2024-01-01', 'Absent'),
(9, 109, '2024-01-01', 'Present'),
(10, 110, '2024-01-01', 'Present');


select * from departments;
select * from employees;
select * from projects;
select * from attendance;



-- 🧠 PRACTICE QUESTIONS (LEVEL-WISE)
-- 🟢 Beginner (WHERE, ORDER BY)

-- 1 Get all employees earning more than 50,000
select * from employees where salary > 50000;

-- 2 List employees from IT department
select * from employees where dept_id=2;

-- 3 Find employees hired after 2020
select * from employees where hire_date > '2020-01-01';

-- 4 Display employees sorted by salary (DESC)
select * from employees order by salary desc;

-- 5 Show only managers
select * from employees where is_manager=1;

-- 🟡 Intermediate (GROUP BY, HAVING)

-- 6.Find average salary per department
select dept_id ,avg(salary) from employees group by dept_id;

-- 7.Count employees in each department
select dept_id , count(emp_id) from employees group by dept_id;

-- 8.Show departments having more than 2 employees
select dept_id, count(emp_id) from employees group by dept_id having count(emp_id) > 2;

-- 9.Find total salary paid per department
select dept_id ,sum(salary) from employees group by dept_id ;

-- 10.Count male and female employees
select gender, count(gender) from employees group by gender ;

-- 🔵 Joins

-- 11.Show employee name with department name
select emp_name,dept_name from employees as e join departments as d
on e.dept_id=d.dept_id;

-- 12.List employees with department location
select emp_name , location from employees as e join departments as d
on e.dept_id=d.dept_id;

-- 13.Show project name with department name
select project_name,dept_name from projects as p join departments as d
on p.dept_id=d.dept_id;


-- 14.Display employees working in Pune
select emp_name,location from employees as e join departments as d 
on e.dept_id=d.dept_id 
where location ='pune';

-- 15.Show employees who belong to Sales department
select emp_name, dept_name from employees as e join departments as d 
on e.dept_id=d.dept_id
where dept_name='Sales';

-- 🔴 Subqueries
select * from departments;
select * from employees;
select * from projects;
select * from attendance;

-- 16.Find employees earning more than average salary
select * from employees where salary > (select avg(salary) from employees);

-- 17.Get employees from department with highest budget
select * from employees where (select max(budget) from projects );
 
-- 18.Find employee with max salary
select * from employees where salary =(select max(salary) from employees);

-- 19.Get employees who are managers
select * from employees where is_manager=1;

-- 20.Show departments with no managers
select * from employees where is_manager=0;











