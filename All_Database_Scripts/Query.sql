Use college;
CREATE TABLE department (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);
CREATE TABLE student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

DELETE FROM department WHERE dept_id = 2;

