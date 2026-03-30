create table course (
    id serial primary key ,
    title varchar(100),
    instructor varchar(50),
    price numeric(10, 2),
    duration int
);

insert into course (title, instructor, price, duration) values
    ('Lập trình Python cơ bản',   'Nguyễn Văn An',   899000,  20),
    ('SQL và cơ sở dữ liệu',      'Trần Thị Bình',   1200000, 35),
    ('SQL nâng cao cho DBA',      'Lê Quốc Cường',   1800000, 40),
    ('Web Frontend với ReactJS',  'Phạm Thị Dung',   1500000, 45),
    ('Machine Learning cơ bản',   'Hoàng Văn Em',    2500000, 50),
    ('Demo khóa học thử nghiệm',  'Ngô Thị Phương',  100000,  5),
    ('Docker và DevOps cơ bản',   'Đặng Văn Giang',  1350000, 32);

--1
update course
set price = price * 1.15
where duration > 30;

--2
delete from course
where title ilike '%Demo%';

--3
select *
from course
where title ilike '%SQL%';

--4
select *
from course
where price between 500000 and 2000000
order by price desc
limit 3;