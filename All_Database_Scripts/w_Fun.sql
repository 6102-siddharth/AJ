use w_f;
CREATE TABLE Emp (
    Emp_ID INT,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    Joining_Date DATE
);

INSERT INTO Emp VALUES
(1,'Amit','IT',50000,'2022-01-10'),
(2,'Neha','HR',40000,'2021-03-15'),
(3,'Raj','Finance',60000,'2020-07-20'),
(4,'Simran','IT',55000,'2022-05-11'),
(5,'Karan','HR',42000,'2019-08-19'),
(6,'Pooja','Finance',65000,'2021-09-25'),
(7,'Arjun','IT',70000,'2020-11-30'),
(8,'Riya','HR',38000,'2023-02-10'),
(9,'Vikram','Finance',72000,'2018-06-14'),
(10,'Sneha','IT',48000,'2022-04-01'),

(11,'Rahul','HR',41000,'2021-12-12'),
(12,'Anjali','Finance',58000,'2020-03-18'),
(13,'Suresh','IT',53000,'2019-10-10'),
(14,'Meena','HR',39000,'2023-01-22'),
(15,'Rohit','Finance',61000,'2022-07-05'),
(16,'Priya','IT',75000,'2020-08-29'),
(17,'Nikhil','HR',43000,'2021-06-16'),
(18,'Kavita','Finance',67000,'2019-12-09'),
(19,'Manoj','IT',52000,'2022-09-17'),
(20,'Deepa','HR',36000,'2023-03-03'),

(21,'Ajay','Finance',69000,'2020-01-25'),
(22,'Swati','IT',64000,'2021-04-14'),
(23,'Varun','HR',45000,'2022-06-21'),
(24,'Divya','Finance',71000,'2018-11-11'),
(25,'Harsh','IT',56000,'2022-08-08'),
(26,'Nisha','HR',37000,'2023-05-12'),
(27,'Gaurav','Finance',63000,'2021-02-28'),
(28,'Tina','IT',58000,'2020-06-19'),
(29,'Rakesh','HR',46000,'2019-09-09'),
(30,'Komal','Finance',68000,'2022-10-30'),

(31,'Abhishek','IT',72000,'2020-05-05'),
(32,'Sonal','HR',41000,'2021-08-08'),
(33,'Yash','Finance',66000,'2019-07-23'),
(34,'Payal','IT',54000,'2022-12-01'),
(35,'Tarun','HR',44000,'2020-02-14'),
(36,'Isha','Finance',70000,'2021-11-27'),
(37,'Kunal','IT',61000,'2022-03-19'),
(38,'Rekha','HR',39000,'2023-04-07'),
(39,'Sameer','Finance',72000,'2018-10-10'),
(40,'Pallavi','IT',50000,'2021-01-01'),

(41,'Aakash','HR',42000,'2020-09-15'),
(42,'Bhavna','Finance',65000,'2022-02-02'),
(43,'Chetan','IT',67000,'2021-07-07'),
(44,'Dinesh','HR',38000,'2019-05-05'),
(45,'Ekta','Finance',73000,'2018-03-03'),
(46,'Farhan','IT',69000,'2020-12-12'),
(47,'Geeta','HR',40000,'2022-11-11'),
(48,'Hitesh','Finance',62000,'2021-10-10'),
(49,'Jaya','IT',71000,'2020-04-04'),
(50,'Lokesh','HR',45000,'2019-06-06');

-- Basic

-- 1.	Assign row numbers to all employees
select *, row_number() over()as Ranking from  emp;
select * from emp;

-- 2.	Assign row numbers based on salary (highest first)
select *, row_number() over(order by salary desc)as Salary_Rank from emp;

-- 3.	Assign row numbers based on joining date (oldest first)
select row_number() over (order by joining_date asc)as Date_rank from emp;

-- 4.	Rank employees based on salary
select *, Rank() over(order by salary desc) from emp;

-- 5.	Dense rank employees based on salary
select *, dense_rank() over(order by salary desc) from emp;

-- 6.	Show row number for employees ordered by name
select *, row_number() over (order by name) from emp;

-- 7.	Find top 5 employees using ROW_NUMBER()
select * from (select * , row_number() over (order by salary desc)as rn from emp)t where rn<=5 ;

-- 8.	Find employee with rank = 1 (highest salary)
select *, rank() over (order by salary desc)as Highest_Salary from emp limit 1;

-- 9.	Show employees with dense rank = 1
select *, dense_rank() over (order by salary)as Ranking from emp;

-- 10.	Assign row number without ordering (observe result)
select *, row_number() over () from emp;

-- Rank employees based on salary
-- Rank Skips the rank number when its value is same 


select * from emp;
select emp_Id, Name ,department,salary, Rank() over(order by salary desc)as Ranks from emp;

-- Dense rank employees within each department
select department,salary, dense_rank() over(partition by department order by salary) as dept_wise_Rank from emp;

-- Assign row numbers to employees
select row_number() over (order by salary desc)as salar_rank from emp;

