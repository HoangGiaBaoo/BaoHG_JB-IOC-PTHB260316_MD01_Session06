create table employee(
    id serial primary key ,
    fuLL_name varchar(100),
    department varchar(50),
    salary numeric(10, 2),
    hire_date date
);

insert into employee (full_name, department, salary, hire_date) values
    ('Nguyễn Văn An',    'IT',          8000000, '2023-03-15'),
    ('Trần Thị Lan',     'IT',          9500000, '2022-07-01'),
    ('Lê Quốc Bảo',      'Kế toán',     7000000, '2023-09-20'),
    ('Phạm Thị Hương',   'Kế toán',     5500000, '2023-11-05'),
    ('Hoàng Văn Tuấn',   'Nhân sự',     5000000, '2021-04-18'),
    ('Đặng Thị Thanh',   'Nhân sự',     6500000, '2023-06-30');

--1
update employee
set salary = salary * 1.1
where department = 'IT';

--2
delete from employee
where salary < 6000000;

--3
select *
from employee
where full_name ilike '%an%';

--4
select *
from employee
where hire_date between '2023-01-01' and '2023-12-31';