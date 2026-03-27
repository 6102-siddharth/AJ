drop database if exists student_dataset;
create database student_dataset;
use student_dataset;


CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50),
    city VARCHAR(30),
    join_date DATE
);

INSERT INTO Students VALUES
(1,'Amit Sharma','amit@gmail.com','Mumbai','2024-01-10'),
(2,'Priya Singh','priya@gmail.com','Pune','2024-01-15'),
(3,'Rahul Verma','rahul@gmail.com','Delhi','2024-02-01'),
(4,'Sneha Patil','sneha@gmail.com','Pune','2024-02-10'),
(5,'Vikas Gupta','vikas@gmail.com','Bangalore','2024-02-15'),
(6,'Neha Jain','neha@gmail.com','Delhi','2024-02-20'),
(7,'Rohit Mehta','rohit@gmail.com','Mumbai','2024-03-01'),
(8,'Pooja Shah','pooja@gmail.com','Ahmedabad','2024-03-05'),
(9,'Karan Patel','karan@gmail.com','Surat','2024-03-10'),
(10,'Anjali Desai','anjali@gmail.com','Ahmedabad','2024-03-15'),
(11,'Arjun Nair','arjun@gmail.com','Kochi','2024-03-20'),
(12,'Meera Iyer','meera@gmail.com','Chennai','2024-03-25'),
(13,'Suresh Reddy','suresh@gmail.com','Hyderabad','2024-04-01'),
(14,'Divya Kapoor','divya@gmail.com','Delhi','2024-04-05'),
(15,'Manish Yadav','manish@gmail.com','Lucknow','2024-04-10'),
(16,'Ritu Singh','ritu@gmail.com','Jaipur','2024-04-12'),
(17,'Deepak Kumar','deepak@gmail.com','Patna','2024-04-15'),
(18,'Simran Kaur','simran@gmail.com','Amritsar','2024-04-18'),
(19,'Varun Khanna','varun@gmail.com','Chandigarh','2024-04-20'),
(20,'Nisha Agarwal','nisha@gmail.com','Kolkata','2024-04-25'),
(21,'Aditya Roy','aditya@gmail.com','Kolkata','2024-04-28'),
(22,'Tina Das','tina@gmail.com','Guwahati','2024-05-01'),
(23,'Mohit Bansal','mohit@gmail.com','Delhi','2024-05-05'),
(24,'Kavya Nair','kavya@gmail.com','Kochi','2024-05-08'),
(25,'Yash Shah','yash@gmail.com','Ahmedabad','2024-05-10'),
(26,'Isha Mehta','isha@gmail.com','Mumbai','2024-05-12'),
(27,'Raj Malhotra','raj@gmail.com','Delhi','2024-05-15'),
(28,'Preeti Joshi','preeti@gmail.com','Pune','2024-05-18'),
(29,'Akash Singh','akash@gmail.com','Lucknow','2024-05-20'),
(30,'Rohan Das','rohan@gmail.com','Kolkata','2024-05-25');

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    category VARCHAR(30),
    price INT,
    duration_weeks INT
);

INSERT INTO Courses VALUES
(101,'SQL Basics','Data','2000',4),
(102,'Advanced SQL','Data','3000',6),
(103,'Python for Data Science','Data','4000',8),
(104,'Excel Mastery','Data','1500',3),
(105,'Power BI','Data','3500',5),
(106,'Machine Learning','AI','6000',10),
(107,'Deep Learning','AI','7000',12),
(108,'Web Development','Development','5000',8),
(109,'React JS','Development','4500',6),
(110,'Node JS','Development','4000',6),
(111,'Java Programming','Development','3500',7),
(112,'C++ Fundamentals','Development','2500',5),
(113,'Data Structures','Development','3000',6),
(114,'Cloud Computing','IT','5500',8),
(115,'Cyber Security','IT','5000',7),
(116,'Linux Basics','IT','2000',4),
(117,'DevOps','IT','6000',9),
(118,'UI/UX Design','Design','3000',5),
(119,'Graphic Design','Design','2500',4),
(120,'Digital Marketing','Marketing','3500',6),
(121,'SEO','Marketing','2000',4),
(122,'Content Writing','Marketing','1500',3),
(123,'Business Analytics','Business','4500',6),
(124,'Project Management','Business','5000',7),
(125,'Agile Methodology','Business','3000',5),
(126,'Tableau','Data','3500',5),
(127,'Statistics','Data','3000',6),
(128,'R Programming','Data','3500',6),
(129,'Big Data','Data','6000',9),
(130,'Data Engineering','Data','7000',10);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enroll_date DATE,
    status VARCHAR(20)
);

INSERT INTO Enrollments VALUES
(1,1,101,'2024-01-15','Completed'),
(2,2,102,'2024-01-20','Completed'),
(3,3,103,'2024-02-05','Ongoing'),
(4,4,104,'2024-02-12','Completed'),
(5,5,105,'2024-02-20','Dropped'),
(6,6,106,'2024-02-25','Ongoing'),
(7,7,107,'2024-03-05','Ongoing'),
(8,8,108,'2024-03-10','Completed'),
(9,9,109,'2024-03-15','Completed'),
(10,10,110,'2024-03-18','Ongoing'),
(11,11,111,'2024-03-25','Completed'),
(12,12,112,'2024-03-28','Completed'),
(13,13,113,'2024-04-02','Ongoing'),
(14,14,114,'2024-04-08','Dropped'),
(15,15,115,'2024-04-12','Completed'),
(16,16,116,'2024-04-15','Completed'),
(17,17,117,'2024-04-18','Ongoing'),
(18,18,118,'2024-04-20','Completed'),
(19,19,119,'2024-04-22','Completed'),
(20,20,120,'2024-04-26','Ongoing'),
(21,21,121,'2024-04-30','Completed'),
(22,22,122,'2024-05-02','Completed'),
(23,23,123,'2024-05-06','Ongoing'),
(24,24,124,'2024-05-10','Completed'),
(25,25,125,'2024-05-12','Completed'),
(26,26,126,'2024-05-15','Ongoing'),
(27,27,127,'2024-05-18','Completed'),
(28,28,128,'2024-05-20','Completed'),
(29,29,129,'2024-05-22','Ongoing'),
(30,30,130,'2024-05-25','Completed');

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    student_id INT,
    amount INT,
    payment_date DATE,
    payment_mode VARCHAR(20)
);

INSERT INTO Payments VALUES
(1,1,2000,'2024-01-15','UPI'),
(2,2,3000,'2024-01-20','Card'),
(3,3,4000,'2024-02-05','UPI'),
(4,4,1500,'2024-02-12','Net Banking'),
(5,5,3500,'2024-02-20','UPI'),
(6,6,6000,'2024-02-25','Card'),
(7,7,7000,'2024-03-05','UPI'),
(8,8,5000,'2024-03-10','Net Banking'),
(9,9,4500,'2024-03-15','Card'),
(10,10,4000,'2024-03-18','UPI'),
(11,11,3500,'2024-03-25','UPI'),
(12,12,2500,'2024-03-28','Card'),
(13,13,3000,'2024-04-02','Net Banking'),
(14,14,5500,'2024-04-08','UPI'),
(15,15,5000,'2024-04-12','Card'),
(16,16,2000,'2024-04-15','UPI'),
(17,17,6000,'2024-04-18','Net Banking'),
(18,18,3000,'2024-04-20','UPI'),
(19,19,2500,'2024-04-22','Card'),
(20,20,3500,'2024-04-26','UPI'),
(21,21,2000,'2024-04-30','UPI'),
(22,22,1500,'2024-05-02','Card'),
(23,23,4500,'2024-05-06','UPI'),
(24,24,5000,'2024-05-10','Net Banking'),
(25,25,3000,'2024-05-12','UPI'),
(26,26,3500,'2024-05-15','Card'),
(27,27,3000,'2024-05-18','UPI'),
(28,28,3500,'2024-05-20','Net Banking'),
(29,29,6000,'2024-05-22','UPI'),
(30,30,7000,'2024-05-25','Card');

select * from students;
select * from enrollments;
select * from courses;
select * from payments;


-- 1. WHERE Clause

-- 1.	Find all students from Pune 
select * from students where city ="Pune";

-- 2.	Get students who joined after '2024-03-01' 
select * from students where join_date > '2024-03-01';

-- 3.	Find courses with price greater than 4000 
select * from courses where price > 4000;

-- 4.	Show enrollments with status = 'Completed' 
select * from enrollments where status ="Completed";

-- 5.	Get payments made using UPI 
select * from payments where payment_mode ="UPI";

-- 6.	Find courses in 'Data' category 
select * from courses where category="Data";

-- 7.	Show students from Mumbai or Delhi 
select * from students where city ="Mumbai" or city ="Delhi";

-- 8.	Get courses with duration more than 6 weeks 
select * from courses where duration_weeks > 6;

-- 9.	Find enrollments after '2024-04-01' 
select * from enrollments where enroll_date > "2024-04-01";

-- 10.	Get payments where amount > 5000 
select * from payments where amount >5000;

-- 11.	Find students whose name is 'Amit Sharma' 
select * from students where name ="amit Sharma";

-- 12.	Show courses with price between 3000 and 6000 
select * from courses where price between 3000 and 6000;

-- 13.	Get enrollments with status 'Dropped' 
select * from enrollments where status ="Dropped";

-- 14.	Find students not from Delhi 
select * from students where city !="Delhi";

-- 15.	Get payments before '2024-03-01'
select * from payments where payment_date < '2024-03-01';

-- 2. ORDER BY 


-- 1.	Sort students by join_date ascending 
select * from students order by join_date asc;

-- 2.	Sort courses by price descending 
select * from courses order by price desc;

-- 3.	Order enrollments by enroll_date 
select * from enrollments order by enroll_date asc;

-- 4.	Sort payments by amount highest to lowest 
select * from payments order by amount desc;

-- 5.	Order students by name alphabetically 
select * from students order by name ;

-- 6.	Sort courses by duration_weeks descending 
select * from courses order by duration_weeks desc;

-- 7.	Order enrollments by status 
select * from enrollments order by status;

-- 8.	Sort payments by payment_date latest first 
select * from payments order by payment_date desc;

-- 9.	Order courses by category 
select * from courses order by category;

-- 10.	Sort students by city
select * from students order by city;

-- 3. GROUP BY 

-- 1.	Count students per city 
select city,count(student_id) from students group by city;

-- 2.	Count courses per category 
select category,count(course_id) from courses group by category; 

-- 3.	Find total enrollments per course 
select course_name, sum(price) from courses group by course_name;

-- 4.	Count enrollments by status 
select status, count(enrollment_id) as enrol_count from enrollments group by status; 

-- 5.	Find total payments per student 
select student_id ,sum(amount) Total_payments from payments group by student_id;

-- 6.	Find average course price per category 
select category ,avg(price) Avg_price from courses group by category;

-- 7.	Count students joined per month 
select date_format(join_date,'%Y-%m')as month, 
count(student_id) Total_students from students
 group by month
 order by month;

-- 8.	Find total revenue (sum of amount) 
select sum(amount)from payments; 

-- 9.	Count payments by payment_mode 
select payment_mode,count(payment_id) from payments group by payment_mode;

-- 10.	Find max course price per category 
select category, max(price) from courses group by category;

-- 11.	Find min payment per student 
select student_id, min(amount) from payments group by student_id;

-- 12.	Count enrollments per month 
select date_format(enroll_date,'%M') as months ,
count(enrollment_id) from enrollments group by months ;

-- 13.	Find average duration per category 
select category , avg(duration_weeks) as avg_duration_weeks 
from courses 
group by category;

-- 14.	Count students per join_date 
select join_date, count(student_id) from students 
group by join_date;

-- 15.	Find total enrollments per student
select student_id, count(*) total_enrollments from enrollments 
group by student_id ;


-- 4. HAVING Clause 
-- 1.	Find cities having more than 2 students 
select city,count(*) as city_count from students 
group by city
having city_count > 2;

-- 2.	Find categories with average price > 4000 
select category, avg(price) as avg_price 
from courses 
group by category
having avg_price >4000;

-- 3.	Show students who made payments > 5000 total 
select student_id, sum(amount) from payments group by student_id having sum(amount) >5000;

-- 4.	Find courses with more than 1 enrollment 
select  course_id,count(enrollment_id) as counts from enrollments group by course_id having  count(enrollment_id) >1; 


-- 5.	Find payment modes used more than 5 times 
select payment_mode,count(payment_mode) from payments group by payment_mode 
having count(payment_mode) > 5;

-- 6.	Show students with more than 1 enrollment 
select student_id , count(*) 
from enrollments group by student_id 
having count(*) > 1;

-- 7.	Find categories with total courses > 3 
select category ,count(course_id) 
from courses 
group by category 
having count(course_id) >3 ;

-- 8.	Find students whose total payment < 3000 
select * from payments;
select student_id , sum(amount) 
from payments 
group by student_id 
having sum(amount) > 3000;

-- 9.	Show months with more than 2 enrollments 
select date_format(enroll_date,"%M") as months, count(enrollment_id)as enrolls
from enrollments group by months
having enrolls >2 ;

-- 10.	Find cities with avg join count > 2 
SELECT city, AVG(join_count) AS avg_joins
FROM (
    SELECT city, COUNT(*) AS join_count
    FROM students
    GROUP BY city
) t
GROUP BY city
HAVING AVG(join_count) > 2;
select city,count(*) as join_counts from students group by city
having count(*) > 2;
select * from students;
select * from enrollments;
select * from courses;
select * from payments;




-- select city, avg(city) from students group by city;

-- SELECT city, AVG(join_count) AS avg_joins
-- FROM (
--     SELECT city, COUNT(*) AS join_count
--     FROM enrollments
--     GROUP BY student_id, city
-- ) t
-- GROUP BY city


-- . LIKE / Wildcards 


-- 1.	Find students whose name starts with 'A' 
select * from students where name like "A%";

-- 2.	Find students whose name ends with 'a' 
select * from students where name like "%a";

-- 3.	Find students containing 'sh' in name 
select * from students where name like "%sh%";

-- 4.	Find courses starting with 'Data' 
select * from courses where course_name like "Data%";

-- 5.	Find courses ending with 'ing' 
select * from courses where course_name like "%ing";

-- 6.	Find students with email containing 'gmail' 
select * from students where email like "%gmail%";

-- 7.	Find cities starting with 'M' 
select * from students where city like "M%";

-- 8.	Find courses with 'SQL' in name 
select * from courses where course_name like "%SQL%";

-- 9.	Find students whose name has exactly 5 letters 
select student_id, name from students where length(name) =5;

-- 10.	Find courses where second letter is 'a' 
select * from courses where course_name like "_a%";

-- 11.	Find students whose name starts with 'S' and ends with 'a' 
select * from students where name like "S%a";

-- 12.	Find emails ending with '.com'
select * from students where email like "%.com";


-- 6. JOINS – 20 Questions 

-- 1.	Get student names with their enrollments 
select * from students;
select * from enrollments;
select s.student_id,name , course_id from students as s
join enrollments as e 
on s.student_id =e.student_id; 

-- 2.	Show student name and course name 
select name , course_name 
from students s join enrollments e 
on s.student_id=e.student_id
join courses as c
on e.course_id=c.course_id ;

-- 3.	Get course name with enrolled students 
select s.student_id,name,course_name , status
from students s join enrollments e
on s.student_id = e.student_id
join courses c
on c.course_id=e.course_id;

select * from students;
select * from enrollments;
select * from courses;
select * from payments;


-- 4.	Show payment details with student names 
select  payment_id,name, payment_date,payment_mode
from students s join payments p
on s.student_id=p.student_id;

-- 5.	Get enrollments with course price 
select enrollment_id , price 
from courses c right join enrollments e
on e.course_id=c.course_id;

-- Intermediate Joins
-- 6.	Find total courses enrolled by each student 
select s.student_id,name,course_name, count(e.course_id) as Total_counts 
from students s left join enrollments e 
on s.student_id=e.student_id
join courses as c
on c.course_id=e.course_id
group by s.student_id,name,course_name;

-- 7.	Show total amount paid per student 


-- 8.	Find students who enrolled in 'Data' category 


-- 9.	Show completed courses with student names 


-- 10.	Get students who made payments via UPI 


-- Advanced Joins


-- 11.	Find top paying students 


-- 12.	Show most popular course 


-- 13.	Find students who never enrolled (LEFT JOIN) 


-- 14.	Find courses with no enrollments 


-- 15.	Show students with multiple enrollments 


-- Multi-table Joins


-- 16.	Show student, course, payment details together 


-- 17.	Find revenue generated by each course 


-- 18.	Show category-wise revenue 


-- 19.	Find student who spent highest amount 


-- 20.	Show course-wise completion count 

select * from students where city ="Pune";
select * from payments;
select * from 
(select amount,dense_rank() over(order by amount desc) as descs from payments ) p 
where descs =4;

select amount,dense_rank() over(order by amount desc) as descs from payments 