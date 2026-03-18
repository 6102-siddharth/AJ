drop database if exists ecommerce_practice;
CREATE DATABASE ecommerce_practice;
USE ecommerce_practice;
-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);

INSERT INTO customers VALUES
(1,'Amit','Sharma','amit@gmail.com','Delhi','2023-01-10'),
(2,'Priya','Patil','priya@gmail.com','Mumbai','2023-02-05'),
(3,'Rahul','Verma','rahul@gmail.com','Pune','2023-03-15'),
(4,'Sneha','Iyer','sneha@gmail.com','Chennai','2023-04-20'),
(5,'Arjun','Reddy','arjun@gmail.com','Hyderabad','2023-05-25');

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);
INSERT INTO products VALUES
(101,'Laptop','Electronics',75000,10),
(102,'Smartphone','Electronics',30000,20),
(103,'Headphones','Electronics',2000,50),
(104,'Office Chair','Furniture',7000,15),
(105,'Desk','Furniture',12000,8);
-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO orders VALUES
(1001,1,'2024-01-05','Delivered'),
(1002,2,'2024-01-10','Delivered'),
(1003,3,'2024-02-01','Cancelled'),
(1004,1,'2024-02-10','Delivered'),
(1005,4,'2024-03-15','Shipped');

-- Order Items Table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
INSERT INTO order_items VALUES
(1,1001,101,1),
(2,1001,103,2),
(3,1002,102,1),
(4,1003,103,1),
(5,1004,104,1),
(6,1005,105,1);

-- Payments Table
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(50),
    payment_amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
INSERT INTO payments VALUES
(1,1001,'Credit Card',79000,'2024-01-05'),
(2,1002,'UPI',30000,'2024-01-10'),
(3,1004,'Debit Card',7000,'2024-02-10'),
(4,1005,'UPI',12000,'2024-03-15');

-- Reviews Table
CREATE TABLE reviews (
    review_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    rating INT,
    review_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO reviews VALUES
(1,101,1,5,'2024-01-10'),
(2,102,2,4,'2024-01-15'),
(3,103,3,3,'2024-02-05'),
(4,104,1,4,'2024-02-20');
