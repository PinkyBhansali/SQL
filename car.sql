SELECT * FROM sqlproject2.`car_data`;

use sqlproject2;

--  1 Get all details
select * from car_data;

-- 2 Get the count of total cars

select count(*) as total_cars from car_data;

-- 3 How many cars will be available in 2023?
select year,count(*) from car_data
where year = 2023;

-- 4 How many cars is available in 2020,2021,2022?
select year,count(*) from car_data
group by year
order by year desc limit 1, 3  ;

-- Second approch - simple way
select count(*) from car_data where year = 2020; -- 74
select count(*) from car_data where year = 2021; -- 7
select count(*) from car_data where year = 2020 ; --7;

-- third approch;

select year, count(*) from car_data 
where year in (2020,2021,2022) 
group by year; 

-- 5 client asked me to print total of all the cars	by year. i dont see all the details

select year, count(*) from car_data
group by year;

-- 6 	How many diesel cars were there in 2020?

select count(*) from car_data
where year = 2020 and fuel = "Diesel";

-- 7. How many petrol cars were there in 2020?
select count(*) from car_data
where year = 2020 and fuel = "petrol";

-- 8 All the fuel(petrol, Diesel, cng) cars sorted by year   

select count(*) from car_data where fuel = 'petrol' group by year;
select count(*) from car_data where fuel = 'Desiel' group by year;
select count(*) from car_data where fuel = 'CNG' group by year;

-- Which year has more than 100 cars

select year,count(*) from car_data
group by year
having count(*) > 100;

-- all car counts between 2015 to 2023

select 	count(*) from car_data
where year between 2015 and 2023;

-- all car details between 2015 to 2023
_
select * from car_data
where year between 2015 and 2023;


