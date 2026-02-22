drop database if exists Housing_database;
create database housing_database;
use housing_database;
-- Tables
select * from housing_cleaned;

-- 1) Count of houses by furnishing status

select furnishingstatus, count(*) from housing_cleaned group by furnishingstatus;

-- 2) Top 5 expensive houses
select * from housing_cleaned order by price desc limit 5;

 