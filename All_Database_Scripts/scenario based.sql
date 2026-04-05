drop database if exists scenario_db;
create database scenario_db;
use scenario_db;

select * from customers;
select * from employees;
select * from orders;
select * from payments;
select * from products;

-- MySQL Scenario-Based Questions:

-- Basic to Intermediate
-- 1.	Find customers who placed more than 5 orders in the last 6 months. 
select * from customers;
select * from orders;
select name, count(o.customer_id) as Orders_count 
from customers c join orders o
on c.customer_id=o.customer_id
where order_date >=curdate() - interval 6 month
group by name
having Orders_count >5; 

-- 2.	Get total revenue generated per month. 
select date_format(order_date,"%M") as Months, sum(amount)as Revenue 
from orders group by months;

-- 3.	Find the top 3 highest-paying customers. 
select c.customer_id,name,sum(o.amount) as Total_spent from customers c join orders o
on c.customer_id=o.customer_id
group by customer_id,name 
order by Total_spent desc limit 3; 

-- 4.	Identify customers who never placed an order. 
select c.customer_id, name, count(o.customer_id) as orders_counts
from customers c left join orders o
on c.customer_id= o.customer_id
group by customer_id,name
having orders_counts =0;

-- 5.	Find average order value per customer. 
select name, avg(amount) as avg_order 
from orders o join customers c
on c.customer_id=o.customer_id
group by name;

-- 6.	Get the latest order of each customer. 


-- 7.	Find products that were never sold. 


-- 8.	Get total orders per city. 


-- 9.	Find customers who ordered in both 2023 and 2024.

 
-- 10.	Get the second highest salary from employees table. 


-- 11.	Find duplicate email IDs in customers. 


-- 12.	Calculate total revenue per product category. 


-- 13.	Find employees earning more than department average.

 
-- 14.	Get count of orders per status (Delivered, Pending, Cancelled). 


-- 15.	Find customers who spent more than ₹50,000 total. 


-- 16.	Get daily sales trend. 


-- 17.	Find products with stock less than 10. 


-- 18.	Get customer retention (customers who ordered again). 


-- 19.	Find longest inactive customer (last order date). 


-- 20.	Find highest selling product. 


