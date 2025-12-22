create database arbor1;
use arbor1;

create table employees
(emp_id int primary key,
name varchar(50),
salary int, 
dept_id varchar(2));


create table dept
(dept_id varchar(2) primary key,
d_name varchar(50),
pincode int);

insert into employees values 
(1, 'siddharth', 40000, 'DA'),
(2,'ashish', 30000,'DS'),
(3,'shubham', 25000,'ML'),
(4,'sushant', 23000,'DA'),
(5,'achal',45000,'BD');

insert into dept values
('DS', 'Data s',1234),
('DA', 'Data a',5678),
('ML' , 'Machine Learning',1234),
('WD','Web Dev', 1234);

select * from employees;
select * from dept;


-- simple join
 
select emp_id, name, employees.dept_id, d_name from employees 
inner join dept 
on employees. dept_id= dept.dept_id;

-- Right Join 

select emp_id, name,employees.dept_id, d_name from employees
right join dept
on employees.dept_id= dept.dept_id;

-- left join
select emp_id, name, dept.dept_id, d_name from employees 
 left join dept
on employees.dept_id= dept.dept_id;










