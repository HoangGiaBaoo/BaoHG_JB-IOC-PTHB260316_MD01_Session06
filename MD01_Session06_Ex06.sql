create table orders (
    id serial primary key ,
    customer_id int,
    order_date date,
    total_amount numeric(10, 2)
);

insert into orders (customer_id, order_date, total_amount) values
    (1, '2022-03-15', 12000000),
    (2, '2022-07-20', 18500000),
    (3, '2022-11-05',  9000000),
    (4, '2023-01-10', 22000000),
    (5, '2023-04-18', 15000000),
    (1, '2023-08-22', 31000000),
    (2, '2023-11-30',  8500000),
    (3, '2024-02-14', 27000000),
    (4, '2024-06-09', 19000000),
    (5, '2024-09-25', 45000000);

--1
select sum(total_amount)  as total_revenue,
       count(id)          as total_orders,
       avg(total_amount)  as average_order_value
from orders;

--2
select extract(year from order_date) as year,
       sum(total_amount)             as total_revenue
from orders
group by extract(year from order_date)
order by year;

--3
select extract(year from order_date) as year,
       sum(total_amount)             as total_revenue
from orders
group by extract(year from order_date)
having sum(total_amount) > 50000000
order by year;

--4
select *
from orders
order by total_amount desc
limit 5;