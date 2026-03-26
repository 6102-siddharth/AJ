create database emp_data;
use emp_data;


create table employees(Emp_Id int, Emp_Name varchar(50), Dept_Id int, Manager_Id int , salary int);
insert into employees values (1,"Rahul ",101, Null,50000),
(2,"Amit", 102,1,45000),
(3,"Neha",103,1,48000),
(4,"Priya",101,2,42000),
(5,"Kiran",104,2,40000),
(6,"Sanjay",Null,3,38000),
(7,"Pooja",103,3,47000),
(8,"Rohit",102,1,52000),
(9,"Anita",101,4,41000),
(10,"Vikas",105,2,39000);

select * from employees;

-- Write a query  to find employees earning more than there manager
select e.emp_name  as employee ,e.salary as emp_salary ,m.emp_name as manager, m.salary manager_salary
from employees e left join employees m
on e.Manager_Id=m.Emp_Id
where e.salary > m.salary ;


-- find employees name and manger name

select e.emp_name employees, m.emp_name as manager
from employees e left join employees m
on e.Manager_Id =m.emp_id;

-- select e.Emp_id, e.Emp_name , em.manager_id , em.emp_name as Manager_name 
-- from Employees as e left join  Employees as em
-- on e.Manager_id= em.manager_id;
