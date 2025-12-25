create database ecom;
use ecom;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);

INSERT INTO customers VALUES
(1, 'Amit Shah', 'amit@gmail.com', 'Mumbai', '2023-01-10'),
(2, 'Neha Patel', 'neha@gmail.com', 'Ahmedabad', '2023-03-12'),
(3, 'Rahul Mehta', 'rahul@gmail.com', 'Delhi', '2022-11-20'),
(4, 'Pooja Verma', 'pooja@gmail.com', 'Bangalore', '2023-06-15'),
(5, 'Ankit Jain', 'ankit@gmail.com', 'Pune', '2024-01-05'),
(6, 'Sneha Iyer', 'sneha@gmail.com', 'Chennai', '2022-09-18');

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price INT
);

INSERT INTO products VALUES
(101, 'iPhone 14', 'Electronics', 70000),
(102, 'Laptop', 'Electronics', 55000),
(103, 'Shoes', 'Fashion', 3000),
(104, 'Watch', 'Accessories', 8000),
(105, 'Headphones', 'Electronics', 2000);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders VALUES
(1001, 1, '2024-01-10', 73000),
(1002, 2, '2024-01-15', 3000),
(1003, 3, '2024-02-05', 55000),
(1004, 1, '2024-02-20', 2000),
(1005, 4, '2024-03-01', 8000),
(1006, 5, '2024-03-10', 70000),
(1007, 2, '2024-03-15', 55000),
(1008, 6, '2024-04-01', 3000);

CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items VALUES
(1, 1001, 101, 1),
(2, 1001, 105, 1),
(3, 1002, 103, 1),
(4, 1003, 102, 1),
(5, 1004, 105, 1),
(6, 1005, 104, 1),
(7, 1006, 101, 1),
(8, 1007, 102, 1),
(9, 1008, 103, 1);

CREATE TABLE campaigns (
    campaign_id INT PRIMARY KEY,
    campaign_name VARCHAR(50),
    channel VARCHAR(30),
    spend INT,
    start_date DATE,
    end_date DATE
);

INSERT INTO campaigns VALUES
(1, 'New Year Sale', 'Google Ads', 50000, '2024-01-01', '2024-01-10'),
(2, 'Fashion Fest', 'Instagram', 30000, '2024-02-01', '2024-02-15'),
(3, 'Electronics Sale', 'Facebook', 70000, '2024-03-01', '2024-03-20');

select * from campaigns;
select* from customers;
select * from order_items;
select * from orders;
select * from products;

-- 1️⃣ Total Revenue
select sum(total_amount) as Total_Revenue from orders;

-- 2️⃣ Monthly Revenue Trend
select month(order_date) as Montly_Revenue , sum(Total_amount) from orders
group by month(order_date) ; 


-- 3️⃣ Top 3 Spending Customers


-- 4️⃣ Repeat Customers


-- 5️⃣ Revenue by Product Category


-- 6️⃣ Best-Selling Products


-- 7.Campaign Spend Summary

-- 8.ROI Concept (Spend vs Revenue)


-- 9️⃣ Customers Who Never Ordered



-- 10. Running Total Revenue (Window Function
