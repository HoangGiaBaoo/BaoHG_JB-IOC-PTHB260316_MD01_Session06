create table product(
    id serial primary key ,
    name varchar(100),
    category varchar(50),
    price numeric(10, 2),
    stock int
);

-- 1
insert into product (name, category, price, stock) values
                                                       ('Laptop Dell XPS',     'Điện tử',      25000000, 10),
                                                       ('Samsung Galaxy S24',  'Điện tử',       8500000, 25),
                                                       ('Tai nghe Sony WH',    'Điện tử',       2990000, 40),
                                                       ('Tủ lạnh Panasonic',   'Gia dụng',     12000000,  8),
                                                       ('Máy lọc không khí',   'Gia dụng',      4500000, 15);

-- 2
select *
from product;

-- 3
select *
from product
order by price desc
limit 3;

-- 4
select *
from product
where category = 'Điện tử'
  and price < 10000000;

-- 5
select *
from product
order by stock asc;