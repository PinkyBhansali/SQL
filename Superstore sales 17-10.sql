create database project;

select * from project.superstore_sql;

-- Total number of orders

use project;
select * from project.superstore_sql;
select count(distinct(order_id)) from superstore_sql;

-- Total number of orders from all the regions

select region,count(order_id) as Total_order
from superstore_sql
group by region
order by Total_order desc;

-- Total number of orders as per shipmode

select shipmode,count(order_id) from superstore_sql 
group by shipmode
order by count(order_id) desc;


select * from superstore_sql;

-- Top 5 customers to place max sales 

select customer_name, 
round(avg(sales),2) as 'max_sales' 
from superstore_sql
group by customer_name
order by avg(sales) desc limit 5;	

update superstore_sql
set OrderDate= str_to_date(OrderDate,"%d-%mm-%yyyy");

desc  superstore_sql;

alter table superstore_sql
modify OrderDate date;

select monthname(realdate1) as "monthname" from superstore_sql;

delete from superstore_sql
where row_id =4918;

select f_orderdate from project.superstore_sql;

ALTER TABLE superstore_sql ADD
realdate1 date as (str_to_date(OrderDate,'%d-%m-%y'));

alter table superstore_sql rename column realdate1 to f_orderdate;

select month(f_orderdate), round(avg(sales),2) as "Avg_monthly_sales "
from project.superstore_sql
group by month(f_orderdate)
order by round(avg(sales),2) asc limit 3;	

-- Sales in weekends?
SELECT 
    CASE
        WHEN DAYNAME(f_orderdate) = 'Saturday' THEN 'Weekend'
        WHEN DAYNAME(f_orderdate) = 'Sunday' THEN 'Weekend'
        ELSE 'weekday'
    END AS days,
    AVG(SALES) AS 'avg_sales'
FROM
    superstore_sql
GROUP BY days;
-- Avg Sales as per segment;

select segment, round(avg(sales),2) AS "AVG SEGMENT SALES"from superstore_sql
group by segment
order by avg(sales) desc limit 3;



