create database E_com;
use E_com;


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

select * from customers;
select * from order_items;
select * from Orders;
select * from payments;
select * from products;
select * from reviews;


-- 3. BASIC SQL PRACTICE QUESTIONS
-- Retrieve all customers.
select * from customers;

-- Find all products with price greater than 10,000.
select * from products where price > 10000;

-- Show all customers from Pune.
select * from customers where city ="pune";

-- Display all orders placed in 2024.
select * from orders
where order_date between '2024-01-01' and '2024-12-31';

-- Find total number of products.
select count(product_id) Total_Products from products;


-- 4. INTERMEDIATE QUESTIONS
-- Filtering

-- Find products with stock less than 10.
select * from products 
where stock <10;

-- Show customers who signed up after March 2023.
select * from customers where signup_date > '2023-03-01';

-- Aggregation

-- Find total revenue.
select sum(p.price * oi.quantity) as Total_Revenue 
from Products as p join order_items as oi
on p.product_id =oi.product_id;

-- Find average product price.
select avg(price) from products;

-- Count number of orders per customer.
select concat(c.first_name," ",c.last_name) as Name , count(o.Order_id)
from Customers as c join Orders as o
on c.customer_id=o.customer_id
group by Name;


-- GROUP BY
-- Find number of products in each category.
select Category , count(product_id) from products group by category;

-- Find total revenue per category.
select category, sum(p.price * oi.quantity) as Total_Revenue 
from Products p join order_items oi 
on p.product_id=oi.product_id
group by category;

-- Find total orders per city.
select city, count(o.order_id) as Total_orders 
from orders as o join customers c
on c.customer_id=o.customer_id
group by city;

-- 5. JOIN QUESTIONS
-- Show all orders with customer names.
select concat(first_name, last_name) as Customer_name , count(o.order_id) as Orders
from Customers as c join orders as o
on c.customer_id=o.customer_id
group by Customer_Name;

-- List products purchased in each order.
select Product_name , count(oi.order_id) as Order_Count
from Products as p join order_items as oi
on p.product_id=oi.product_id
group by Product_name; 

-- Find total amount spent by each customer.
select concat(first_name ," ",last_name) as Fullname ,sum(oi.quantity * p.price) as TotalSpend
from customers as c join orders as o 
on c.customer_id=o.customer_id 
join order_items as oi
on o.order_id=oi.order_id 
join products as p
on p.product_id=oi.product_id
group by Fullname;  

-- Show product name with review rating.
select product_name , rating 
from products  p join reviews r 
on p.product_id=r.product_id
group by Product_name , Rating;

-- Find customers who have never placed an order.
select concat(first_name ," ",last_name) as Fullname, count(o.order_id) as orderss
from customers as c left join orders as o
on c.customer_id = o.customer_id
group by fullname having orderss <=0;


--  6. ADVANCED QUESTIONS
-- Subqueries

-- Find the most expensive product.
select * from products where price =(select max(price) from products); 
select * from products order by price desc limit 1;

-- Find customers who spent more than average spending.
with abc as (select concat(first_name," ",last_name) fullname ,sum(oi.quantity * p.price) as spend
from customers as c join orders as o
on c.customer_id =o.customer_id
join order_items as oi
on o.order_id=oi.order_id
join products as p
on p.product_id=oi.product_id
group by fullname)

select fullname,spend
from abc
where spend > (select avg(spend) from abc);


-- Find products that have never been ordered.
select Product_name , count(quantity)as quantity 
from products as p left join order_items as oi
on p.product_id = oi.product_id
group by Product_name
having count(oi.quantity) =0;




-- Window Functions


-- Rank products by price.
select product_name, price, rank() over(order by price desc) as rank_  from products;

-- RANK() OVER (ORDER BY price DESC)
select *,rank() over(order by price desc)as rank_price from products;

-- Running total of payments.


-- Top 3 expensive products.
-- (select * , rank() over(order by price desc) as expense
-- from products ); 
with top as(select product_name,price,
rank() over(order by price desc) as Top_products
from products )

select product_name,price
from top
where top_products < 4;
