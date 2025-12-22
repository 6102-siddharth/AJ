-- Create Database
CREATE DATABASE AirlinesDB;
USE AirlinesDB;

-- Create Flights Table
CREATE TABLE Flights (
    FlightID INT PRIMARY KEY,
    FlightNumber VARCHAR(10),
    DepartureCity VARCHAR(50),
    ArrivalCity VARCHAR(50),
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    AircraftType VARCHAR(50),
    AvailableSeats INT,
    TicketPrice DECIMAL(10, 2),
    AirlineName VARCHAR(50)
);

-- Insert 40 Rows of Sample Data
-- Insert rows from FlightID 1 to 40

INSERT INTO Flights (FlightID, FlightNumber, DepartureCity, ArrivalCity, DepartureTime, ArrivalTime, AircraftType, AvailableSeats, TicketPrice, AirlineName)
VALUES
(1, 'BA123', 'London', 'New York', '2023-01-15 08:00:00', '2023-01-15 14:00:00', 'Boeing 777', 200, 1200.50, 'British Airways'),
(2, 'DL456', 'New York', 'Paris', '2023-01-20 12:00:00', '2023-01-20 18:00:00', 'Airbus A350', 180, 1500.75, 'Delta Airlines'),
(3, 'AF789', 'Paris', 'Amsterdam', '2023-01-25 14:30:00', '2023-01-25 16:30:00', 'Airbus A320', 150, 900.25, 'Air France'),
(4, 'UA567', 'New York', 'Los Angeles', '2023-01-30 16:00:00', '2023-01-30 20:00:00', 'Boeing 737', 120, 1100.90, 'United Airlines'),
(5, 'EK345', 'Dubai', 'London', '2023-02-05 18:30:00', '2023-02-05 22:30:00', 'Boeing 787', 220, 1300.75, 'Emirates'),
(6, 'SQ890', 'Singapore', 'Sydney', '2023-02-10 20:00:00', '2023-02-11 02:00:00', 'Airbus A380', 180, 1400.25, 'Singapore Airlines'),
(7, 'QF456', 'Sydney', 'Auckland', '2023-02-15 22:30:00', '2023-02-16 01:30:00', 'Boeing 787', 100, 800.50, 'Qantas'),
(8, 'LH123', 'Frankfurt', 'Tokyo', '2023-02-20 02:00:00', '2023-02-20 10:00:00', 'Airbus A350', 300, 1800.90, 'Lufthansa'),
(9, 'TK567', 'Istanbul', 'Moscow', '2023-02-25 04:30:00', '2023-02-25 08:30:00', 'Boeing 777', 160, 1200.00, 'Turkish Airlines'),
(10, 'AA234', 'Chicago', 'Los Angeles', '2023-03-01 06:00:00', '2023-03-01 09:30:00', 'Airbus A320', 130, 950.75, 'American Airlines'),
(11, 'BA567', 'London', 'Berlin', '2023-03-20 14:30:00', '2023-03-20 17:30:00', 'Boeing 737', 110, 1100.25, 'British Airways'),
(12, 'DL789', 'Atlanta', 'Chicago', '2023-03-25 18:00:00', '2023-03-25 20:00:00', 'Airbus A330', 90, 900.75, 'Delta Airlines'),
(13, 'EK345', 'Dubai', 'Mumbai', '2023-03-30 20:30:00', '2023-03-30 23:30:00', 'Boeing 777', 200, 1200.90, 'Emirates'),
(14, 'UA567', 'New York', 'San Francisco', '2023-04-05 22:00:00', '2023-04-06 02:00:00', 'Airbus A350', 150, 1000.50, 'United Airlines'),
(15, 'SQ890', 'Singapore', 'Hong Kong', '2023-04-10 02:30:00', '2023-04-10 04:30:00', 'Airbus A380', 180, 1500.25, 'Singapore Airlines'),
(16, 'QF456', 'Sydney', 'Melbourne', '2023-04-15 04:00:00', '2023-04-15 05:30:00', 'Boeing 787', 100, 800.75, 'Qantas'),
(17, 'LH123', 'Frankfurt', 'Barcelona', '2023-04-20 06:30:00', '2023-04-20 09:00:00', 'Airbus A350', 300, 1800.25, 'Lufthansa'),
(18, 'TK567', 'Istanbul', 'Athens', '2023-04-25 08:00:00', '2023-04-25 10:00:00', 'Boeing 737', 160, 1300.90, 'Turkish Airlines'),
(19, 'AA234', 'Chicago', 'Miami', '2023-04-30 10:30:00', '2023-04-30 12:30:00', 'Airbus A320', 130, 950.50, 'American Airlines'),
(20, 'AF567', 'Paris', 'Rome', '2023-05-05 12:00:00', '2023-05-05 14:00:00', 'Airbus A330', 150, 1600.00, 'Air France'),
(21, 'BA123', 'London', 'New York', '2023-05-10 15:30:00', '2023-05-10 18:30:00', 'Boeing 777', 200, 1200.50, 'British Airways'),
(22, 'DL456', 'New York', 'Paris', '2023-05-15 18:00:00', '2023-05-15 22:00:00', 'Airbus A350', 180, 1500.75, 'Delta Airlines'),
(23, 'AF789', 'Paris', 'Amsterdam', '2023-05-20 20:30:00', '2023-05-20 22:30:00', 'Airbus A320', 150, 900.25, 'Air France'),
(24, 'UA567', 'New York', 'Los Angeles', '2023-05-25 22:00:00', '2023-05-26 02:00:00', 'Boeing 737', 120, 1100.90, 'United Airlines'),
(25, 'EK345', 'Dubai', 'London', '2023-06-01 01:30:00', '2023-06-01 05:30:00', 'Boeing 787', 220, 1300.75, 'Emirates'),
(26, 'SQ890', 'Singapore', 'Sydney', '2023-06-05 04:00:00', '2023-06-05 07:00:00', 'Airbus A380', 180, 1400.25, 'Singapore Airlines'),
(27, 'QF456', 'Sydney', 'Auckland', '2023-06-10 06:30:00', '2023-06-10 09:30:00', 'Boeing 787', 100, 800.50, 'Qantas'),
(28, 'LH123', 'Frankfurt', 'Tokyo', '2023-06-15 08:00:00', '2023-06-15 15:00:00', 'Airbus A350', 300, 1800.90, 'Lufthansa'),
(29, 'TK567', 'Istanbul', 'Moscow', '2023-06-20 12:30:00', '2023-06-20 15:30:00', 'Boeing 777', 160, 1200.00, 'Turkish Airlines'),
(30, 'AA234', 'Chicago', 'Los Angeles', '2023-06-25 16:00:00', '2023-06-25 20:00:00', 'Airbus A320', 130, 950.75, 'American Airlines'),
(31, 'BA567', 'London', 'Berlin', '2023-03-20 14:30:00', '2023-03-20 17:30:00', 'Boeing 737', 110, 1100.25, 'British Airways'),
(32, 'DL789', 'Atlanta', 'Chicago', '2023-03-25 18:00:00', '2023-03-25 20:00:00', 'Airbus A330', 90, 900.75, 'Delta Airlines'),
(33, 'EK345', 'Dubai', 'Mumbai', '2023-03-30 20:30:00', '2023-03-30 23:30:00', 'Boeing 777', 200, 1200.90, 'Emirates'),
(34, 'UA567', 'New York', 'San Francisco', '2023-04-05 22:00:00', '2023-04-06 02:00:00', 'Airbus A350', 150, 1000.50, 'United Airlines'),
(35, 'SQ890', 'Singapore', 'Hong Kong', '2023-04-10 02:30:00', '2023-04-10 04:30:00', 'Airbus A380', 180, 1500.25, 'Singapore Airlines'),
(36, 'QF456', 'Sydney', 'Melbourne', '2023-04-15 04:00:00', '2023-04-15 05:30:00', 'Boeing 787', 100, 800.75, 'Qantas'),
(37, 'LH123', 'Frankfurt', 'Barcelona', '2023-04-20 06:30:00', '2023-04-20 09:00:00', 'Airbus A350', 300, 1800.25, 'Lufthansa'),
(38, 'TK567', 'Istanbul', 'Athens', '2023-04-25 08:00:00', '2023-04-25 10:00:00', 'Boeing 737', 160, 1300.90, 'Turkish Airlines'),
(39, 'AA234', 'Chicago', 'Miami', '2023-04-30 10:30:00', '2023-04-30 12:30:00', 'Airbus A320', 130, 950.50, 'American Airlines'),
(40, 'AF567', 'Paris', 'Rome', '2023-05-05 12:00:00', '2023-05-05 14:00:00', 'Airbus A330', 150, 1600.00, 'Air France');

-- Select and Display All Rows
SELECT * FROM Flights;

-- Mix Up Question’s

-- 1.	Retrieve all flight details from the Flights table.
select * from flights;
-- 2.	Find the total number of available seats for all flights.
select sum(availableseats) from flights;
 
-- 3.	List unique departure cities in alphabetical order.
select distinct departurecity from flights order by departurecity asc ;

-- 4.	Display flights departing from 'New York' with departure time later than '2023-01-30 00:00:00'.
select departurecity, departuretime from flights 
where departurecity = 'New York' AND departuretime >= '2023-01-30 00:00:00';

-- 5.	Calculate the average ticket price for all flights.
select  avg(ticketprice) from flights ;
-- select flightnumber, avg(ticketprice) from flights group by flightnumber;   -- Here avg is wrt flight number 

-- 6.	Show flights with available seats less than 150 and departure time after '2023-02-20 00:00:00'.
select * from flights where availableseats < 150 AND departuretime > '2023-02-20 00:00:00';

-- 7.	Retrieve flights operated by 'Emirates' airline.
select * from flights where airlinename = 'Emirates';

-- 8.	Find the maximum number of available seats among all flights.
select  max(availableseats) from flights  ; 

-- 9.	Display flights arriving in 'Los Angeles' with arrival time before '2023-05-01 00:00:00'.
select * from flights where arrivalcity = 'los angeles' AND arrivaltime <= '2023-05-01 00:00:00';

-- 10.	Calculate the total revenue generated from ticket sales for all flights.
select flightnumber , 
sum(ticketprice)"Total_Revenue" from flights 
group by flightnumber;

select * from flights;

-- More Questions
-- 1.	Retrieve the count of flights for each departure city.
select departurecity ,
count(*)"Count DepartureCity" from flights
 group by departurecity;

-- 2.	Find the average ticket price for each airline.
select airlinename,
 avg(ticketprice) from flights
 group by airlinename;

-- 3.	List the departure cities with the total number of available seats, ordered by seat count in descending order.
select departurecity, 
sum(availableseats) As Available_Seats from flights
 group by departurecity
 order by Available_Seats desc;
 
-- Error in this query having clause is used 
-- select departurecity, sum(availableseats)"Total Avail Seats" from flights
--  group by departurecity 
--  having count(availableseats)
--  order by availableseats desc;

-- Tried query
 -- select departurecity, sum(availableseats)"Total Avail Seats" from flights
--  group by departurecity having count(availableseats);
-- select * from (select departurecity, sum(availableseats) from flights
--  group by departurecity having count(availableseats))  order by availableseats desc;

-- 4.	Display the arrival cities and the maximum ticket price among flights arriving there.
select arrivalcity, 
max(ticketprice) from flights
 group by arrivalcity;

-- 5.	Show the average available seats and total revenue for each departure city, but only for cities with an average seat count greater than 150.
select departurecity, 
avg(AvailableSeats), sum(ticketprice * availableseats) as 'Total Revenue' from flights 						-- Here is issue with total revenue
group by departurecity 
having avg(AvailableSeats) > 150;

-- 6.	Retrieve the count of flights for each aircraft type, but limit the result to the top 5 types with the highest counts.
select AircraftType, 
count(flightnumber) as high_count from flights
 group by AircraftType 
 order by high_count desc limit 5  ;     

-- 7.	Retrieve flights operated by 'Emirates' airline.
select * from flights where AirlineName ='Emirates';

-- 8.	Find the maximum number of available seats among all flights.
select FlightNumber ,
 max(AvailableSeats) from flights
 group by flightnumber;

-- 9.	Display flights arriving in 'Los Angeles' with arrival time before '2023-05-01 00:00:00'.
select * from flights
 where arrivalcity ='los angeles' AND ArrivalTime < '2023-05-01 00:00:00';

-- 10.	Calculate the total revenue generated from ticket sales for all flights.
select FlightNumber ,
 sum(ticketprice) from flights
 group by FlightNumber ;

-- 11.	Retrieve the count of flights for each arrival city with more than 2 flights.
select ArrivalCity, count(*) from flights
group by arrivalcity 
having count(*) > 2;

-- 12.	List departure cities and their total revenue from ticket sales, ordering by revenue in descending order.
select  departurecity,
 sum(ticketprice) AS Ticket_sales from flights
 group by departurecity 
 order by Ticket_Sales desc;

-- 13.	Show airlines and their average ticket prices, but include only airlines with more than 5 flights.
select airlinename , 
avg(ticketprice),count(*) from flights
 group by AirlineName 
 having count(*) > 5;

-- 14.	Display the arrival cities with the lowest average ticket prices.
select arrivalcity ,
 avg(ticketprice) as ticket_price from flights
 group by arrivalcity 
 order by ticket_price asc ;

-- 15.	Find departure cities and the total number of flights departing from each city, limiting the result to the top 3 cities.
select departurecity,
 count(flightnumber) as top_cities from flights
 group by departurecity 
 order by top_cities  desc limit 3;

-- 16.	Retrieve airlines and the total number of flights operated by each airline, but show only airlines with more than 10 flights.
select airlinename, 
count(*) from flights 
group by airlinename
 having count(*) > 10 ;

-- 17.	List departure cities and their average ticket prices, ordering by average ticket price in ascending order.
select departurecity , 
avg(ticketprice) as avgticket from flights
 group by DepartureCity
 order by avgticket ;

-- 18.	Display arrival cities and the total number of available seats for each city, limiting the result to the bottom 5 cities.
select arrivalcity,
 sum(availableseats) from flights
 group by arrivalcity
 order by ArrivalCity desc limit 5 ;

-- 19.	Show airlines and the earliest departure time among their flights.
select airlinename, min(departuretime) from flights group by airlinename;

-- 20.	Calculate the average ticket price for each aircraft type, but limit the result to the bottom 3 aircraft types.
select aircrafttype, 
avg(ticketprice) as aircrafttype from flights
 group by AircraftType 
 order by aircrafttype desc limit 3 ;

-- 21.	Retrieve departure cities and their total revenue from ticket sales, but show only cities with total revenue greater than $100,000.
select departurecity,
 sum(ticketprice * availableseats) from flights
group by departurecity 
having sum(TicketPrice *AvailableSeats) > 100000;

-- 22.	List airlines and their total revenue from ticket sales, but include only airlines with more than 8 flights.
select airlinename, sum(ticketprice * AvailableSeats) ,
 count(*)"Flights COUNT" from flights
 group by airlinename 
 having count(*) > 8;     

-- 23.	Display arrival cities and the latest arrival time among flights for each city.
select arrivalcity, max(arrivaltime)  from flights 
group by ArrivalCity
order by max(ArrivalTime) desc ;

-- 24.	Find departure cities and their total revenue from ticket sales, ordering by revenue in descending order, and show only the top 5 cities.
select departurecity, 
sum(ticketprice * AvailableSeats) AS Orderby_Revenue from flights
 group by departurecity
 order by Orderby_Revenue desc limit 5;

-- 25.	Show airlines and the average number of available seats, but include only airlines with an average seat count greater than 170.
select airlinename,
 avg(availableseats) from flights
 group by AirlineName
 having avg(availableseats) > 170;
 
-- 26.	Retrieve departure cities and the total number of flights for each city, ordering by flight count in ascending order.
select departurecity,
count(flightnumber) as OrderBy_flights from flights
 group by departurecity
 order by OrderBy_flights  ;

-- 27.	List arrival cities and the average ticket prices, but include only cities with an average ticket price less than $1100.
select arrivalcity,
avg(ticketprice) from flights
 group by arrivalcity
 having avg(ticketprice) < 1100;
 
-- 28.	Display airlines and the total revenue from ticket sales, ordering by revenue in ascending order.
select airlinename,
 sum(ticketprice) as Revenue from flights
 group by airlinename 
 order by Revenue asc  ;
 
-- 29.	Find the departure cities and their total revenue from ticket sales, but show only cities with total revenue greater than $80,000.
select departurecity, 
sum(ticketprice)"Total Revenue" from flights
 group by departurecity 
 having sum(ticketprice) > 80000;
 
-- 30.	Calculate the average ticket price for each aircraft type, but include only types with an average ticket price greater than $1200.
select aircrafttype,
 avg(ticketprice) from flights
 group by aircrafttype 
 having avg(ticketprice) > 1200;
 
-- 31.	Retrieve arrival cities and the total number of flights for each city, limiting the result to the bottom 3 cities.
select arrivalcity,
 count(flightnumber) as result from flights
 group by arrivalcity 
 order by result desc  limit 3;
 
select * from flights;

-- 32.	Show airlines and the total revenue from ticket sales, but include only airlines with an average ticket price greater than $1300.
select airlinename,
sum(ticketprice), avg(ticketprice) from flights 
group by airlinename
having avg(ticketprice) >1300;

select * from flights;
-- 33.	Display departure cities and the earliest departure time among flights for each city, but show only cities with more than 3 flights.
select departurecity,
min(departuretime), count(departurecity) from flights 
group by departurecity
 having count(departurecity) > 3  ;

-- 34.	Retrieve airlines and their average ticket prices, ordering by average ticket price in descending order.
select airlinename, 
avg(ticketprice) as Orderby_Ticketprice from flights
 group by airlinename
 order by orderby_Ticketprice desc ;

-- 35.	List departure cities and the total number of available seats for each city, but include only cities with total available seats greater than 500.
select departurecity, 
sum(availableseats) from flights 
group by departurecity 
having sum(availableseats) >500; 

-- 36.	Show arrival cities and the latest arrival time among flights for each city, ordering by arrival time in descending order.
select arrivalcity, 
max(arrivaltime) as latest_arrival from flights
 group by arrivalcity 
 order by latest_Arrival desc;

-- 37.	Retrieve airlines and the maximum ticket price among their flights, limiting the result to the top 4 airlines.
select airlinename, max(ticketprice) from flights group by airlinename limit 4 ;

-- 38.	Display departure cities and the average number of available seats, but include only cities with an average seat count greater than 120.
select departurecity, avg(availableseats) from flights group by departurecity having avg(availableseats) > 120;

-- 39.	Find arrival cities and the total revenue from ticket sales, but show only cities with total revenue greater than $90,000.
select arrivalcity, sum(ticketprice) from flights group by arrivalcity having sum(ticketprice) > 90000;

-- 40.	Calculate the average ticket price for each aircraft type, but include only types with an average ticket price
--  greater than $1100 and order by average ticket price in descending order.
select aircrafttype,
avg(ticketprice) as avgticket from flights 
group by aircrafttype 
having avg(ticketprice) >1100
 order by avgticket desc;