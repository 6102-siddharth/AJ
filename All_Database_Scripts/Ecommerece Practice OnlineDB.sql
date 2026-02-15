-- CREATE DATABASE ecommerce_practice; 
USE ecommerce_practice;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    signup_date DATE
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price INT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
(1,'Amit Sharma','Pune','2022-01-10'),
(2,'Priya Verma','Mumbai','2022-03-15'),
(3,'Rohan Patil','Nagpur','2021-11-20'),
(4,'Sneha Kulkarni','Pune','2023-02-05'),
(5,'Vikas Gupta','Delhi','2021-09-18'),
(6,'Neha Singh','Mumbai','2023-01-22'),
(7,'Karan Thakur','Pune','2022-07-30'),
(8,'Ritika Jain','Jaipur','2022-12-11'),
(9,'Manoj Kumar','Delhi','2021-05-14'),
(10,'Simran Kaur','Chandigarh','2023-04-01'),
(11,'Ankit Jadhav','Pune','2023-06-19'),
(12,'Pooja Nair','Bangalore','2022-10-09');

INSERT INTO products VALUES
(101,'Laptop','Electronics',60000),
(102,'Smartphone','Electronics',25000),
(103,'Headphones','Electronics',3000),
(104,'Office Chair','Furniture',7000),
(105,'Study Table','Furniture',12000),
(106,'Running Shoes','Fashion',4000),
(107,'T-Shirt','Fashion',800),
(108,'Watch','Accessories',5000),
(109,'Backpack','Accessories',1500),
(110,'Water Bottle','Home',600);

INSERT INTO orders VALUES
(1001,1,'2023-01-10',63000),
(1002,2,'2023-02-14',25000),
(1003,3,'2023-03-05',7000),
(1004,4,'2023-03-18',4000),
(1005,5,'2023-04-22',12000),
(1006,1,'2023-05-01',800),
(1007,6,'2023-05-09',5000),
(1008,7,'2023-06-11',1500),
(1009,8,'2023-06-25',3000),
(1010,9,'2023-07-03',60000),
(1011,10,'2023-07-19',25000),
(1012,11,'2023-08-02',7000),
(1013,12,'2023-08-15',4000),
(1014,2,'2023-09-05',5000),
(1015,4,'2023-09-20',600);

INSERT INTO order_items VALUES
(1,1001,101,1),
(2,1001,103,1),
(3,1002,102,1),
(4,1003,104,1),
(5,1004,106,1),
(6,1005,105,1),
(7,1006,107,1),
(8,1007,108,1),
(9,1008,109,1),
(10,1009,103,1),
(11,1010,101,1),
(12,1011,102,1),
(13,1012,104,1),
(14,1013,106,1),
(15,1014,108,1),
(16,1015,110,1),
(17,1001,109,1),
(18,1007,110,2),
(19,1011,103,2),
(20,1010,107,3);

select * from customers;
select * from products;
select * from orders;
select * from order_items;
-- BEGINNER LEVEL (Basic SELECT & WHERE)
-- 1.	Display all customers.
select * from customers;

-- 2.	Show customer names and cities only.
select customer_name , city from customers;

-- 3.	List all products with price greater than 10,000.
select * from products where price >10000;
 
-- 4.	Show products in the Electronics category.
select * from products where category ="Electronics";

-- 5.	Display all orders placed after 2023-05-01.
select * from orders where order_date > '2023=05-01';

-- 6.	Find customers from Pune.
select * from customers
 where city ='Pune';

-- 7.	Show products whose price is between 1000 and 5000.
select * from products
 where price between 1000 and 5000;

-- 8.	Display orders sorted by total_amount (high to low).
select * from orders 
order by total_amount desc;

-- 9.	Count total number of customers.
select count(customer_id) as Total_Customers
 from Customers;

-- 10.	Find the maximum product price
select max(price) as Max_Product_price
 from products;

-- INTERMEDIATE LEVEL (GROUP BY & AGGREGATE)
-- 11.	Count how many customers are there in each city.
select count(customer_id), city 
from Customers 
group by City ;

-- 12.	Find average product price category-wise.
select avg(price), category 
from products 
group by category;

-- 13.	Calculate total revenue from all orders.
select sum(p.price * oi.quantity) as Total_Revenue 
from Products as p join order_items as oi 
on p.product_id=oi.product_id ;

select * from customers;
select * from products;
select * from orders;
select * from order_items;

-- 14.	Find total orders placed by each customer.
select customer_name, count(o.order_id) 
from orders as o join customers  as c
on o.customer_id=c.customer_id
group by customer_name ;

-- 15.	Show cities having more than 2 customers.
select city, count(customer_id) as customer_count 
from customers 
group by city
having customer_count >2 ;

-- 16.	Find the minimum order amount.
-- select min(total_amount) from orders ;

-- 17.	Display total quantity sold for each product.
-- select product_name ,sum(oi.quantity) as Total_Quantity_Sold 
-- from Products as p join order_items as oi
-- on p.product_id = oi.product_id
-- group by Product_name;

-- 18.	Find the highest order amount per customer.
select customer_name ;

-- 19.	Show categories where average price > 5000.
-- select category,avg(price)
-- from products 
-- group by Category
-- having avg(price) >5000; 

-- 20.	Count how many products exist in each category.
-- select Category, count(Product_name) from Products group by Category;
-- select * from products;
