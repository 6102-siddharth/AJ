create database food_delivery;
use food_delivery;
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50),
    city VARCHAR(50),
    signup_date DATE
);


INSERT INTO users VALUES
(1, 'Amit', 'Mumbai', '2023-01-10'),
(2, 'Neha', 'Pune', '2023-03-15'),
(3, 'Rahul', 'Delhi', '2022-11-20'),
(4, 'Pooja', 'Bangalore', '2023-06-25'),
(5, 'Ankit', 'Hyderabad', '2024-01-05'),
(6, 'Sneha', 'Chennai', '2022-09-18');


CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(50),
    city VARCHAR(50),
    rating DECIMAL(2,1)
);

INSERT INTO restaurants VALUES
(101, 'Spice Hub', 'Mumbai', 4.5),
(102, 'Food Court', 'Pune', 4.2),
(103, 'Delhi Bites', 'Delhi', 4.0),
(104, 'South Treat', 'Bangalore', 4.6),
(105, 'Hyderabadi House', 'Hyderabad', 4.4);

CREATE TABLE menu (
    item_id INT PRIMARY KEY,
    restaurant_id INT,
    item_name VARCHAR(50),
    category VARCHAR(30),
    price INT,
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

INSERT INTO menu VALUES
(201, 101, 'Paneer Biryani', 'Main Course', 300),
(202, 101, 'Butter Naan', 'Bread', 50),
(203, 102, 'Veg Burger', 'Fast Food', 150),
(204, 102, 'Fries', 'Fast Food', 100),
(205, 103, 'Chole Bhature', 'Main Course', 200),
(206, 104, 'Dosa', 'South Indian', 120),
(207, 105, 'Chicken Biryani', 'Main Course', 350),
(208, 104, 'Idli', 'South Indian', 80);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    restaurant_id INT,
    order_date DATE,
    total_amount INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

INSERT INTO orders VALUES
(1001, 1, 101, '2024-01-10', 350),
(1002, 2, 102, '2024-01-12', 250),
(1003, 3, 103, '2024-02-05', 200),
(1004, 1, 101, '2024-02-20', 300),
(1005, 4, 104, '2024-03-01', 200),
(1006, 5, 105, '2024-03-10', 350),
(1007, 2, 102, '2024-03-15', 150),
(1008, 6, 104, '2024-04-01', 200);


CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    item_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (item_id) REFERENCES menu(item_id)
);

INSERT INTO order_items VALUES
(1, 1001, 201, 1),
(2, 1001, 202, 1),
(3, 1002, 203, 1),
(4, 1003, 205, 1),
(5, 1004, 201, 1),
(6, 1005, 206, 1),
(7, 1006, 207, 1),
(8, 1007, 203, 1),
(9, 1008, 206, 1);

select * from users;
select * from restaurants;
select * from menu;
select * from orders;
select * from order_items;

-- Questions :
-- 1.List all users
select * from users;

-- 2.Show all restaurants in Mumbai
select * from restaurants where city='mumbai';

-- 3.Display menu items cheaper than 150
select * from menu where price < 150;

-- 4.Show all orders from March
select * from orders where order_date  between '2024-03-01' AND'2024-03-31' ;

-- 5.List all users from Pune
select * from users where city='Pune';

-- 6.Total revenue
select * from orders;
select * from order_items;
-- select sum(total_amount) as Total_Revenue from orders;               //Wrong do not prefer this
select sum(quantity * price) as Total_revenue from order_items as oi join menu as m
on oi.item_id =m.item_id ;

-- 7.Orders per city
select u.city,count(o.order_id) 
from users as u join orders as o
on u.user_id =o.user_id 
group by city;

-- 8.Average order value
select AVG(total_amount) as Average_Orders from orders ;

-- 9.Total revenue per restaurant			// revenue = quantity * price from different tables
select  restaurant_name , sum(oi.quantity * m.price) as Total_revenue
from restaurants as r join menu as m
on r.restaurant_id =m.restaurant_id 
join order_items as oi
on m.item_id=oi.item_id
group by restaurant_name;

-- 10.Most expensive menu item
select item_name,max(price) as Expencive_item from menu group by item_name order by max(price) desc limit 1; 

-- Joins

-- 11.Show user name with order id
select * from users;
select * from restaurants;
select * from menu;
select * from orders;
select * from order_items;
select u.user_name , o.order_id
from users as u join orders as o
on u.user_id=o.user_id;
 
-- 12.Show restaurant name with orders
select r.restaurant_name , count(o.order_id) as Orders
from restaurants as r join orders as o
on r.restaurant_id = o.restaurant_id
group by restaurant_name;

-- 13.Show item name with order id
select * from menu;
select * from orders;
select m.item_name , count(o.order_id) as Orders
from menu as m join orders as o 
on m.restaurant_id=o.restaurant_id
group by item_name;

-- 14.Orders with user city
select * from orders;
select * from users;
select u.city, count(order_id)as Orders 
from Orders as o join users as u
 on u.user_id=o.user_id
 group by city;

-- 15.Menu items with restaurant name
select * from menu;
select * from restaurants;
select m.item_name,r.restaurant_name 
from menu as m join restaurants as r
on m.restaurant_id=r.restaurant_id;

-- Beginner Level

-- 16. Show all users ordered by signup date
select * from users order by signup_date asc;

-- 17.List all restaurants ordered by rating
select * from restaurants order by rating ;

-- 18.Show menu items between ₹100 and ₹300
select * from menu where price between 100 and 300 order by price asc;

-- 19.Display all orders sorted by total_amount DESC
select * from orders order by total_amount desc;

-- 20.Show distinct cities from users
select distinct city from users;

-- 21.Count total users
select count(user_id) from users;

-- 22.Count total restaurants
select count(restaurant_id) from restaurants;

-- 23.Find max order value
-- select order_id,total_amount as max_value from orders
-- order by total_amount desc limit 1;
select order_id, max(total_amount) from orders
group by order_id 
order by max(total_amount) desc limit 1;

-- 24.Find min order value
select * from orders order by total_amount limit 1;

-- 25.Show all items from "South Indian" category
select * from menu where category='south indian';

select * from users;
select * from restaurants;
select * from menu;
select * from orders;
select * from order_items;

-- 🟡 Intermediate Level

-- 26.Total orders per user
select u.user_id,user_name ,count(order_id)from users as u join orders as o
on u.user_id=o.user_id
group by user_id,user_name;

-- 27.Total spending per user 
select u.user_id,u.user_name, sum(total_amount) from users as u join orders as o
on u.user_id=o.user_id
group by user_id,user_name;

-- 28.Average spending per user
select u.user_id,u.user_name, avg(total_amount) from users as u join orders as o
on u.user_id=o.user_id
group by user_id,user_name;

-- 29.Orders per restaurant
select r.restaurant_id,restaurant_name,count(order_id) from restaurants as r join orders as o
on r.restaurant_id=o.restaurant_id
group by restaurant_id,restaurant_name;
 
-- 30.Revenue per restaurant				
select restaurant_name ,sum(quantity*price) from restaurants as r join menu as m
on r.restaurant_id=m.restaurant_id
join order_items as o
on m.item_id=o.item_id
group by restaurant_name;

-- 31.Average order value per restaurant
select restaurant_name , avg(total_amount) from restaurants as r join orders as o
on r.restaurant_id=o.restaurant_id
group by restaurant_name;

-- 32.City-wise users count
select city,count(user_id) from users group by city;

-- 33.City-wise revenue
select city,sum(quantity*price) from restaurants as r
join menu as m
on r.restaurant_id=m.restaurant_id
join order_items as o
on m.item_id=o.item_id
group by city ;

-- 34.Category-wise menu count
select category,count(item_id) from menu group by category;

-- 35.Category-wise revenue
select category , sum(quantity * price) from menu as m join order_items as o
on m.item_id=o.item_id
group by category;

select * from users;
select * from restaurants;
select * from menu;
select * from orders;
select * from order_items;

-- Analytics

-- 36. Monthly revenue trend
select date_format(order_date,"%M")as Monthly, sum(quantity * price) as Total_revenue from orders as o join order_items as oi
on o.order_id=oi.order_id
join menu as m
on m.item_id=oi.item_id
group by Monthly;

-- 37. Repeat customers
select user_name,count(o.user_id) as repeat_consumer from users as u join orders as o
on u.user_id=o.user_id
group by user_name
having repeat_consumer >1 ;

-- 38. Top 3 users by spending
select user_name,sum(total_amount) as spending_rupees from users as u join orders as o
on u.user_id=o.user_id
group by user_name
limit 3 ;

-- 39.Best restaurant by revenue
select restaurant_name ,sum(quantity * price) as Revenue from menu as m join order_items as oi
on m.item_id=oi.item_id
join restaurants as r
on r.restaurant_id=m.restaurant_id
group by restaurant_name
order by revenue desc
limit 1;

-- 40.Most sold food item
select item_name ,count(quantity) as Revenue from menu as m join order_items as oi
on m.item_id=oi.item_id
join restaurants as r
on r.restaurant_id=m.restaurant_id
group by item_name;

select * from users;
select * from restaurants;
select * from menu;
select * from orders;
select * from order_items;
-- Advanced SQL

-- 41.Users who never ordered

-- 42.Restaurants with no orders

-- 43.Items never ordered

-- 44.Running total revenue

-- 45.City-wise revenue ranking