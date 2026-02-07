create database arbor7;

use arbor7;

create table students (stud_ID int,Student_Name Varchar(50) Not null, Age int,salary int);

insert into  students values (1,"Siddharth Vadgaonkar", 22,40000),
(2,"Ashish Chandra",21,30000),
(3,"Kaushal parbhani",24,20000); 
select * from students;

update students
set Student_name ='Sagar shinde'
where stud_id =3;

update students 
set salary = 50000
where stud_id= 2;

update students
set salary = salary * 1.10;

alter table students
change column stud_id emp_id int;

alter table students
change column student_name emp_name varchar(50);

Truncate students;


drop database arbor7;
