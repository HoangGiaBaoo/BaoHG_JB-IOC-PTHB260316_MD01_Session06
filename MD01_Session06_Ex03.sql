create table customer(
    id serial primary key ,
    name varchar(100),
    email varchar(100),
    phone varchar(20),
    point int
);

insert into customer (name, email, phone, point) values
    ('Nguyễn Văn An',   'an.nguyen@gmail.com',   '0901234567', 320),
    ('Trần Thị Bình',   'binh.tran@gmail.com',   '0912345678', 150),
    ('Lê Quốc Cường',   'cuong.le@gmail.com',    '0923456789', 480),
    ('Phạm Thị Dung',   'dung.pham@gmail.com',   '0934567890', 210),
    ('Hoàng Văn Em',    null,                    '0945678901', 95),
    ('Ngô Thị Phương',  'phuong.ngo@gmail.com',  '0956789012', 560),
    ('Đặng Văn Giang',  'giang.dang@gmail.com',  '0967890123', 390);

--1
select distinct name
from customer;

--2
select *
from customer
where email is null;

--3
select *
from customer
order by point desc
limit 3 offset 1;

--4
select *
from customer
order by name desc;