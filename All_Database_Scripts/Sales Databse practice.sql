create database Sales_DB;
use Sales_DB;

CREATE TABLE sales_data (
    order_id INT,
    order_date DATE,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    region VARCHAR(20),
    product VARCHAR(30),
    category VARCHAR(30),
    quantity INT,
    price DECIMAL(10,2),
    discount DECIMAL(4,2),
    payment_mode VARCHAR(20)
);
INSERT INTO sales_data VALUES
(101, '2024-01-05', 'Amit', 'Mumbai', 'West', 'Laptop', 'Electronics', 1, 55000, 5, 'Card'),
(102, '2024-01-06', 'Neha', 'Pune', 'West', 'Mouse', 'Electronics', 2, 800, 0, 'UPI'),
(103, '2024-01-07', 'Rahul', 'Delhi', 'North', 'Chair', 'Furniture', 1, 4500, 10, 'Cash'),
(104, '2024-01-08', 'Sneha', 'Bangalore', 'South', 'Table', 'Furniture', 1, 12000, 15, 'Card'),
(105, '2024-01-09', 'Ravi', 'Chennai', 'South', 'Laptop', 'Electronics', 1, 60000, 7, 'UPI'),
(106, '2024-01-10', 'Anita', 'Delhi', 'North', 'Keyboard', 'Electronics', 3, 1500, 5, 'Card'),
(107, '2024-01-11', 'Vikas', 'Mumbai', 'West', 'Monitor', 'Electronics', 2, 12000, 8, 'UPI'),
(108, '2024-01-12', 'Pooja', 'Pune', 'West', 'Notebook', 'Stationery', 5, 200, 0, 'Cash'),
(109, '2024-01-13', 'Karan', 'Delhi', 'North', 'Pen', 'Stationery', 10, 50, 0, 'Cash'),
(110, '2024-01-14', 'Meena', 'Bangalore', 'South', 'Chair', 'Furniture', 2, 4800, 12, 'Card');

select * from sales;
alter table sales_data
rename to sales;
-- 1.Show all orders from West region
select * from Sales where region="West";

-- 2.Display orders where price > 10,000
select * from sales where price >10000;

-- 3.Fetch records where category = 'Electronics'
select * from sales where category ='Electronics';

-- 4.Find orders paid using UPI
select * from sales where payment_mode ='UPI';

-- 5.Show orders between 2024-01-05 and 2024-01-10
select * from sales where order_date between '2024-01-05' and '2024-01-10'; 

-- 6.Find total sales amount
select sum(price * quantity) as TotalSales from sales; 

-- 7.Calculate average price of products
select avg(price),product from sales group by product;

-- 8.Find maximum & minimum price
select max(price) as Max_price , min(price) as Min_price 
from sales;

-- 9.Count total number of orders
select count(order_id) from sales;

-- 10.Total quantity sold per product
select quantity, product from sales group by quantity, product ;

-- 11.Total sales category-wise
select sum(quantity * price) as Total_sales , category from sales 
group by category; 

-- 12.Total quantity sold region-wise
select sum(quantity) , region from sales
group by region;

-- 13.Average price per product
select avg(price) ,product from sales
group by product;

-- 14.Number of orders per city
select count(order_id) , city from sales
group by city;

-- 15.Total discount given per region
select sum(discount) ,region from sales
group by region;

-- 16.Categories having total sales > 50,000
select category,sum(quantity * price ) as Total_sales from sales 
group by category having Total_sales > 50000;

-- 17.Cities with more than 2 orders
select city, count(order_id) from sales 
group by city
having count(order_id) >2; 

-- 18.Products with average price > 10,000
select avg(price) ,product from sales 
group by product having avg(price) > 10000; 

-- 19.Regions where total quantity sold > 3
select region, sum(quantity) from sales
group by region having sum(quantity) >3;

-- 20.Products having total discount > 10%
select product,sum(discount) as Total_Discount
from sales group by product having sum(discount) >10;

-- 21.Show orders sorted by price (DESC)
select * from sales order by price desc;

-- 22.Sort customers by order_date (ASC)
select * from sales order by order_date asc;

-- 23.Display category-wise sales ordered by highest sales
select category, sum(quantity * price) as Sales from sales 
group by category having Sales order by Sales desc ;

-- 24.Top 3 most expensive orders
select * from sales 
order by price desc limit 3;

-- 25.Bottom 3 cheapest products
select * from sales 
order by price asc limit 3;

-- 26.Region-wise sales where sales > 30,000 ordered descending
select region,sum(quantity * price)  from sales 
group by region
having sum(quantity * price) >30000;  

-- 27.Category-wise quantity sold for Electronics only
select category, sum(quantity) from sales
where category="Electronics"
group by category  ;

-- 28.Cities having more than 1 order sorted by count
select city , count(order_id) from sales 
group by city having count(order_id) > 1;

-- 29.Product-wise total sales ordered by highest revenue
select product ,sum(quantity * price) as Total_sales
from sales group by product
order by total_sales desc;

-- 30.Payment modes with more than 2 transactions
select payment_mode, count(order_id) from sales group by payment_mode having count(order_id) >2;


select * from sales;