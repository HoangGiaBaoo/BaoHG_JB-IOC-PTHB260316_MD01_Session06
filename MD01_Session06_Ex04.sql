create table orderinfo(
    id serial primary key ,
    customer_id int,
    order_date date,
    total numeric(10, 2),
    status varchar(20)
);

insert into orderinfo (customer_id, order_date, total, status) values
    (1, '2024-10-05', 1200000, 'Completed'),
    (2, '2024-10-18',  450000, 'Pending'),
    (3, '2024-11-02',  890000, 'Shipping'),
    (4, '2024-11-15',  320000, 'Cancelled'),
    (5, '2024-12-01', 2500000, 'Completed');

--1
select *
from orderinfo
where total > 500000;

--2
select *
from orderinfo
where order_date between '2024-10-01' and '2024-10-31';

--3
select *
from orderinfo
where status != 'Completed';

--4
select *
from orderinfo
order by order_date desc
limit 2;