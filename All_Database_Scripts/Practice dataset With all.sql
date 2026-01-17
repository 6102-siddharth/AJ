create database practice_2026;
use practice_2026;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    budget INT
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT,
    hire_date DATE,
    is_manager VARCHAR(5),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);


CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    emp_id INT,
    hours_worked INT,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

 INSERT INTO departments VALUES
(1,'IT',900000),
(2,'HR',300000),
(3,'Finance',700000),
(4,'Marketing',500000),
(5,'Sales',650000),
(6,'Support',250000);

INSERT INTO employees VALUES
(101,'Amit Sharma',55000,1,'2021-03-10','no'),
(102,'Priya Verma',75000,1,'2020-08-22','yes'),
(103,'Rohan Patel',45000,2,'2022-01-12','no'),
(104,'Sneha Kulkarni',60000,3,'2019-11-05','no'),
(105,'Vikas Gupta',82000,3,'2018-06-15','yes'),
(106,'Neha Singh',38000,4,'2023-02-25','no'),
(107,'Karan Thakur',50000,4,'2021-07-18','no'),
(108,'Manoj Kumar',90000,5,'2017-09-09','yes'),
(109,'Ritika Jain',47000,6,'2022-05-20','no'),
(110,'Shivam Yadav',52000,6,'2023-03-13','no'),
(111,'Harshita Desai',64000,1,'2020-12-28','no'),
(112,'Jeet Mehta',43000,2,'2023-04-10','no'),
(113,'Simran Kaur',71000,5,'2021-09-19','yes'),
(114,'Ankit Jadhav',36000,1,'2024-01-05','no'),
(115,'Tarun Mishra',80000,3,'2018-12-01','no'),
(116,'Pooja Nair',46000,4,'2022-06-11','no'),
(117,'Deepak Rao',49000,6,'2020-07-23','no'),
(118,'Anjali Sinha',58000,2,'2021-01-14','no'),
(119,'Saurabh Shah',67000,5,'2020-11-30','no'),
(120,'Gaurav More',53000,1,'2022-03-15','no'),
(121,'Riya Kapoor',41000,4,'2023-09-01','no'),
(122,'Yash Dubey',90000,5,'2019-05-22','no'),
(123,'Meera Joshi',72000,3,'2019-10-18','yes'),
(124,'Devansh Roy',48000,6,'2022-07-27','no'),
(125,'Kunal Dixit',35000,2,'2024-02-10','no'),
(126,'Rashmi Pawar',66000,1,'2021-08-25','no'),
(127,'Santosh Bane',59000,4,'2020-10-08','no'),
(128,'Aarav Shetty',72000,5,'2020-04-19','no'),
(129,'Tejaswini Naik',47000,3,'2023-03-29','no'),
(130,'Nikhil Mane',51500,6,'2021-06-12','no');

INSERT INTO projects VALUES
(201,'Website Upgrade',101,120),
(202,'Cloud Migration',102,200),
(203,'Security Audit',104,150),
(204,'Recruitment Drive',103,100),
(205,'Budget Planning',105,180),
(206,'Digital Ads',106,90),
(207,'Brand Strategy',107,110),
(208,'CRM Setup',108,210),
(209,'Customer Support Tool',109,80),
(210,'Warranty System',110,75),
(211,'Market Survey',127,95),
(212,'Sales Dashboard',113,160),
(213,'Product Launch',119,140),
(214,'Portal Optimization',120,130);

select * from employees;
select * from departments;
select * from projects;


-- 🟢 BEGINNER LEVEL (SELECT, WHERE, ORDER BY)

-- 1. Display all records from the employees table.
select * from employees;

-- 2. Show employee names and their salaries only.
select emp_name , salary from employees ;

-- 3. List employees who earn more than 50,000.
select * from employees where salary > 50000;

-- 4. Display employees who belong to the IT department.
select * from employees where dept_id =1;

-- 5. Find employees hired after 2022-01-01.
select * from employees where hire_date > 2022-01-01;

-- 6. Show employees whose salary is between 40,000 and 70,000.
select * from employees where salary between 40000 AND 700000;

-- 7. Display employees whose name starts with ‘A’.
select * from employees where emp_name like "A%";

-- 8. List employees whose name contains ‘sh’.
select * from employees where  emp_name like "sh%" ;

-- 9. Show employees who are not managers.
Select * from employees where is_manager = 'no';

-- 10. Display employee details sorted by salary in descending order.
select * from employees order by salary desc;

-- 🟡 INTERMEDIATE LEVEL (GROUP BY, HAVING, AGGREGATE)

-- 11. Count the total number of employees in each department.
select dept_id, count(emp_id) from employees group by dept_id;

-- 12. Find the average salary of employees.
select avg(salary) from employees;

-- 13. Find the average salary department-wise.
select dept_id,avg(Salary) from employees group by dept_id; 

-- 14. Display departments where average salary is greater than 60,000.
select dept_id, avg(Salary) from employees group by dept_id having avg(Salary) > 60000;

-- 15. Find the maximum salary in the company.
select max(salary) from employees ;

-- 16. Find the minimum salary department-wise.
select min(salary) from employees;

-- 17. Show departments having more than 4 employees.
select dept_id,count(emp_id) from employees group by dept_id having count(emp_id) >4;

-- 18. Find total salary paid by each department.
select dept_id, sum(salary) from employees group by dept_id;

-- 19. Display employees earning the highest salary in the company.
select * from employees where salary =(select max(salary)from employees);

-- 20. Count how many employees are managers.
select emp_name,count(emp_id) from employees 
where is_manager='Yes'
group by emp_name;

-- 🟠 JOINS PRACTICE (VERY IMPORTANT)

-- 21. Display employee name along with department name.
select e.emp_name,d.dept_name from employees e join departments d 
on e.dept_id=d.dept_id; 

-- 22. Show all employees even if they do not belong to any department.
select e.emp_name ,d.dept_id, d.dept_name from employees e left join departments d 
on e.dept_id=d.dept_id;

-- 23. Display department names with no employees.
select e.emp_name,d.dept_name from employees e right join departments d 
on e.dept_id=d.dept_id;

-- 24. Show employee name and project name.
select e.emp_name , p.project_name from employees e join projects p 
on e.emp_id=p.emp_id;

-- 25. List employees who are not assigned to any project.
select e.emp_name ,p.project_name from employees e left join projects p
on e.emp_id =p.emp_id;

-- 26. Display employees working on more than one project.
select e.emp_name ,count(e.emp_id) from employees e join projects p
on e.emp_id=p.emp_id
group by e.emp_name 
having count(e.emp_id) >1;

-- 27. Show employee name, department name, and project name together.
select e.emp_name, d.dept_name, p.project_name from employees e join departments d 
on e.dept_id=d.dept_id
join projects p
on e.emp_id =p.emp_id;

-- 28. Find employees working in the Sales department on projects.
select e.emp_name, d.dept_name, p.project_name from employees e join departments d 
on e.dept_id=d.dept_id
join projects p
on e.emp_id =p.emp_id
where dept_name ="sales";

-- 🔵 SUBQUERIES PRACTICE						
 										
-- 29. Find employees whose salary is greater than the average salary.				
select * from employees where Salary >(select avg(salary) from employees);

-- 30. Display employees who earn the highest salary in their department.				
-- select * from employees where salary >(select max(salary) from employees);									
                                        
-- 31. Find the second highest salary in the company.						
 										
-- 32. Display employees earning more than the IT department average salary.			
 										
-- 33. Find employees whose salary is equal to the maximum salary.			
select * from employees where salary = (select max(Salary) from employees);	
 										
-- 34. Display employees hired before the oldest manager.					
 										
-- 35. Find departments where total salary is greater than company average salary.	































-- 🔴 ADVANCED / INTERVIEW LEVEL					
 										
-- 36. Find employees who earn more than their department average.				
 										
-- 37. Display departments where all employees earn more than 40,000.				
 										
-- 38. Find employees whose salary is within 10% of the maximum salary.				
 										
-- 39. Display employees hired on weekends.						
 										
-- 40. Find employees who earn the same salary as someone in another department.			
 										
-- 41. Display the top 3 highest-paid employees.
select * from employees where salary >=(select max(Salary) from employees)						
 										
-- 42. Find employees with duplicate salaries.						
 										
-- 43. Display the department with highest total salary.					
 										
-- 44. Find employees who have worked more than 150 hours on projects.				
 										
-- 45. Display employees who are managers but not assigned to any project.			
 										
 										
-- 🟣 UPDATE / DELETE PRACTICE					
-- 										
-- 46. Increase salary by 10% for IT department employees.					
-- 										
-- 47. Update all managers’ salary to 90,000.						
-- 										
-- 48. Delete employees who earn less than 35,000.						
-- 										
-- 49. Delete employees who joined before 2019.						
-- 										
-- 50. Update project hours by +20 for Sales department employees.				
-- 										
-- 										
-- 										
-- 🧠 REAL-WORLD SCENARIO QUESTIONS				
-- 										
-- 51. Find the highest-paid employee per department, but only show departments with more than 3 employees.
-- 										
-- 52. Find employees whose salary is above department average but below company average.		
-- 										
-- 53. Display employees who work on projects but are not managers.				
-- 										
-- 54. Find the department with minimum budget but maximum employees.			
-- 										
-- 55. Retrieve employees who joined in the last 1 year and earn above average salary.







