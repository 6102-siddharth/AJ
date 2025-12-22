-- Create Database
CREATE DATABASE CompanyDB1;
USE CompanyDB1;

-- Create Department Table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(50) NOT NULL,
    Location VARCHAR(100) NOT NULL
);

-- Insert 10 records into Department table
INSERT INTO Department (DepartmentName, Location) VALUES
('HR', 'Mumbai'),
('Finance', 'Delhi'),
('IT', 'Bangalore'),
('Sales', 'Chennai'),
('Marketing', 'Hyderabad'),
('Operations', 'Pune'),
('R&D', 'Kolkata'),
('Legal', 'Ahmedabad'),
('Customer Support', 'Jaipur'),
('Admin', 'Lucknow');

-- Create Employee Table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Salary DECIMAL(10,2) NOT NULL,
    DateOfJoining DATE NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID) ON DELETE SET NULL
);

-- Insert 40 records into Employee table
INSERT INTO Employee (FirstName, LastName, Email, Salary, DateOfJoining, DepartmentID) VALUES
('Amit', 'Sharma', 'amit.sharma@example.com', 60000, '2020-01-15', 1),
('Priya', 'Verma', 'priya.verma@example.com', 75000, '2019-03-22', 2),
('Rohan', 'Singh', 'rohan.singh@example.com', 80000, '2018-06-10', 3),
('Sneha', 'Patel', 'sneha.patel@example.com', 55000, '2021-07-18', 4),
('Rahul', 'Iyer', 'rahul.iyer@example.com', 72000, '2017-11-25', 5),
('Deepak', 'Nair', 'deepak.nair@example.com', 65000, '2022-02-20', 6),
('Anjali', 'Reddy', 'anjali.reddy@example.com', 70000, '2016-09-30', 7),
('Vikram', 'Chopra', 'vikram.chopra@example.com', 68000, '2023-05-14', 8),
('Meena', 'Das', 'meena.das@example.com', 71000, '2015-12-05', 9),
('Suresh', 'Ghosh', 'suresh.ghosh@example.com', 73000, '2014-08-19', 10),
('Neha', 'Jain', 'neha.jain@example.com', 64000, '2019-04-21', 1),
('Arun', 'Bajaj', 'arun.bajaj@example.com', 59000, '2020-10-30', 2),
('Kavita', 'Mishra', 'kavita.mishra@example.com', 62000, '2018-07-13', 3),
('Rakesh', 'Malhotra', 'rakesh.malhotra@example.com', 67000, '2017-02-27', 4),
('Pooja', 'Deshmukh', 'pooja.deshmukh@example.com', 70000, '2016-11-10', 5),
('Sandeep', 'Yadav', 'sandeep.yadav@example.com', 66000, '2021-06-05', 6),
('Lata', 'Kulkarni', 'lata.kulkarni@example.com', 74000, '2015-09-28', 7),
('Mahesh', 'Rastogi', 'mahesh.rastogi@example.com', 72000, '2023-03-12', 8),
('Komal', 'Joshi', 'komal.joshi@example.com', 69000, '2014-07-08', 9),
('Sunil', 'Kapoor', 'sunil.kapoor@example.com', 63000, '2019-12-01', 10),
('Gaurav', 'Bose', 'gaurav.bose@example.com', 58000, '2020-05-17', 1),
('Swati', 'Aggarwal', 'swati.aggarwal@example.com', 61000, '2018-02-24', 2),
('Yash', 'Tripathi', 'yash.tripathi@example.com', 65000, '2017-08-19', 3),
('Bhavya', 'Saxena', 'bhavya.saxena@example.com', 72000, '2016-05-22', 4),
('Ritu', 'Chatterjee', 'ritu.chatterjee@example.com', 78000, '2021-01-11', 5),
('Anup', 'Thakur', 'anup.thakur@example.com', 64000, '2015-06-30', 6),
('Ishita', 'Menon', 'ishita.menon@example.com', 69000, '2023-04-15', 7),
('Kunal', 'Bhatia', 'kunal.bhatia@example.com', 71000, '2014-10-18', 8),
('Divya', 'Roy', 'divya.roy@example.com', 62000, '2019-01-29', 9),
('Rajeev', 'Kumar', 'rajeev.kumar@example.com', 58000, '2020-06-23', 10),
('Sonali', 'Pandey', 'sonali.pandey@example.com', 67000, '2018-03-15', 1),
('Manish', 'Verma', 'manish.verma@example.com', 73000, '2017-09-26', 2),
('Geeta', 'Dutta', 'geeta.dutta@example.com', 75000, '2016-07-21', 3),
('Harsh', 'Mangal', 'harsh.mangal@example.com', 69000, '2021-02-28', 4),
('Snehal', 'Tiwari', 'snehal.tiwari@example.com', 62000, '2015-10-12', 5),
('Ajay', 'Shetty', 'ajay.shetty@example.com', 77000, '2023-05-09', 6),
('Lavanya', 'Shah', 'lavanya.shah@example.com', 65000, '2014-06-05', 7),
('Ravi', 'Naik', 'ravi.naik@example.com', 71000, '2019-11-14', 8),
('Megha', 'Sinha', 'megha.sinha@example.com', 63000, '2020-08-30', 9),
('Tushar', 'Bhattacharya', 'tushar.bhattacharya@example.com', 70000, '2018-12-03', 10);

select* from employee;
select * from department;


-- Here are 15 SQL questions using simple joins on your Employee and Department tables:

-- 1. Retrieve all employees along with their department names
 select employeeid, concat(e.firstname," " ,e.lastname) as fullname , e.departmentid , departmentname from employee as e join department as d
 on e.departmentid=d.departmentid;

-- 2. Find employees who work in the "IT" department
select employeeid, concat(e.firstname," " ,e.lastname) as fullname,e.departmentid from employee e join department d on
e.departmentid=d.departmentid where departmentname='IT';  

select* from employee;
select * from department;


-- 3. List employees along with their department locations
select employeeid, concat(e.firstname," " ,e.lastname) as fullname, departmentname from employee e join department d
on e.departmentid=d.departmentid;

-- 4. Retrieve the total number of employees in each department
select d.departmentid, d.departmentname,count(employeeid) from employee e join department d
on e.departmentid=d.departmentid
group by departmentid, departmentname ;

select * from department;
select * from employee;

-- 5. Find the highest-paid employee in each department
-- select , departmentname,
-- max(salary),count(employeeid) from employee as e join department as d
-- on e.departmentid=d.departmentid 
-- group by fullname,departmentname 
-- ;
select d.departmentid, departmentname, max(Salary) , count(employeeid) from employee e join department d 
on e.departmentid=d.departmentid 
group by d.departmentid, departmentname
order by max(salary) desc;

-- 6. Display employees who joined after January 1, 2020, along with their department names
select employeeid, departmentname,e.dateofjoining from employee e join department d
on e.departmentid=d.departmentid
where dateofjoining > 2020-01-01;

-- 7. Show employees earning more than ₹70,000 and their respective departments
select * from employee;
select * from department;
select employeeid,concat(e.firstname, " ",e.lastname) as fullname , departmentname, salary from employee e join department d
on e.departmentid=d.departmentid where salary > 70000;

-- 8. Retrieve employees working in the "Pune" office
select employeeid, concat(e.firstname, " ",e.lastname) as fullname, departmentname, location 
from employee e join department d
on e.departmentid=d.departmentid
where location ='pune';

-- 9. List employees along with department names in alphabetical order of department names
select employeeid, concat(e.firstname, " ",e.lastname) as fullname, departmentname 
from employee e  join department d 
on e.departmentid=d.departmentid
order by departmentname;

-- 10. Find the average salary of employees in each department
 select d.departmentid, departmentname, avg(salary),count(employeeid) from employee e join department d
 on e.departmentid=d.departmentid 
 group by departmentid,departmentname;
 
-- 11. Show employees whose last names start with 'S' along with department names
select lastname , departmentname from employee e join department d
on e.departmentid=d.departmentid
where lastname like "S%";

-- 12. Find the department with the most employees
select e.departmentid, departmentname ,count(employeeid) from employee e join department d
on e.departmentid=d.departmentid
group by departmentid, departmentname
order by count(employeeid) desc limit 1;

-- 13. Show employees who do not have a department assigned
select employeeid, departmentname,count(employeeid) from employee e join department d
on e.departmentid= d.departmentid
where departmentname is null 
group by employeeid , departmentname;

-- 14. Retrieve employees sorted by salary in descending order along with their department names
select employeeid, concat(firstname," ",lastname) as fullname, salary,d.departmentid,departmentname
from employee e join department d on e.departmentid=d.departmentid
order by salary desc;

-- 15. List the employees with the same department as 'Amit Sharma'
select employeeid, concat(e.firstname, " ",e.lastname) as fullname, e.departmentid,departmentname
from employee e join department d
on e.departmentid=d.departmentid
where firstname='Amit' and lastname='sharma';
