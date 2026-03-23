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



