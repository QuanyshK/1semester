create database lab2;
create table if not exists students
(
    student_id  integer primary key,
    firstname varchar(50),
    lastname varchar(50),
    date_of_birth date,
    major varchar(50),
    city varchar(50),
    gpa decimal
);
alter table students
    alter  column student_id set DATA TYPE smallint;
alter table students
    alter column student_id set NOT NULL;
alter table students
    rename column date_of_birth to birth_date;
alter table students
    add column if not exists email varchar(50);
alter table students
    drop column if exists major;
insert into students(student_id, firstname, lastname, birth_date, city, gpa, email)
    values (1, 'Q', 'K', '2005-01-14', 'Aral', 3, 'leva@gmail.com'),
           (2, 'Z', 'D', '2005-02-12', 'Ridder', 4, 'zd@gmail.com');
select * from students;
select * from students where student_id = 2;
drop table students;