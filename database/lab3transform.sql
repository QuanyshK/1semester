create database student;
create table if not exists Majors
(
    major_ID serial primary key,
    major_name varchar(55)
);
create table if not exists Student
(
    student_ID serial primary key,
    first_name varchar(55),
    last_name varchar(65),
    date_of_birth date,
    GPA decimal,
    major_ID serial,
    foreign key (major_ID) references Majors(major_ID),
    city varchar(75)

);
insert into Majors(major_ID, major_name)

VALUES

    (1, 'Computer Science'),

    (2, 'Mechanical Engineering'),

    (3, 'Finance'),

    (4, 'Electrical Engineering'),

    (5, 'Biology');
insert into Student(student_ID, first_name, last_name, date_of_birth, gpa, major_ID, city)

VALUES

(1, 'Amina', 'Abdulova', '2005-05-14', 3.8, 1, 'Almaty'),

(2, 'Aidar', 'Kazakhov', '2004-08-23', 3.5, 2, 'Astana'),

(3, 'Gulnara', 'Ismailova', '2005-11-30', 3.9, 3, 'Almaty'),

(4, 'Bakhytzhan', 'Nurpeisov', '2002-02-17', 3.2, 4, 'Shymkent'),

(5, 'Ainur', 'Suleimenova', '2003-07-09', 3.6, 5, 'Almaty'),

(6, 'Askhat', 'Yerzhanov', '12/04/2004', 3.7, 1, 'Atyrau'),

(7, 'Aizere', 'Tulegenova', '2005-09-28', 3.4, 3, 'Almaty'),

(8, 'Aruzhan', 'Zhumagaliyeva', '2003-12-03', 3.8, 2, 'Almaty'),

(9, 'Azamat', 'Iskakov', '2006-03-25', 3.5, 4, 'Taldykorgan'),

(10, 'Dana', 'Baibekova', '2004-06-19', 3.9, 3, 'Almaty'),

(11, 'Eldar', 'Bekturov', '2002-01-17', 3.3, 1, 'Almaty'),

(12, 'Emina', 'Kasimova', '2003-10-14', 3.7, 2, 'Astana'),

(13, 'Galymzhan', 'Saparbayev', '2005-05-05', 3.6, 5, 'Almaty'),

(14, 'Gaukhar', 'Nurkhanova', '2004-08-07', 3.4, 1, 'Almaty'),

(15, 'Ilyas', 'Rakhimov', '2006-07-16', 3.8, 3, 'Almaty'),

(16, 'Karlygash', 'Tursynbekova', '2002-09-09', 3.9, 2, 'Shymkent'),

(17, 'Mukhtar', 'Zhumabayev', '2003-11-21', 3.5, 4, 'Almaty'),

(18, 'Nurgul', 'Kenzhebekova', '2004-04-05', 3.7, 1, 'Almaty'),

(19, 'Nurzhan', 'Talgatov', '2005-02-28', 3.6, 5, 'Astana'),

(20, 'Ruslan', 'Karimov', '2002-03-11', 3.4, 3, 'Almaty'),

(21, 'Sanzhar', 'Bakytov', '2003-06-07', 3.8, 2, 'Almaty'),

(22, 'Saule', 'Oralova', '2005-10-01', 3.9, 1, 'Almaty'),

(23, 'Talgat', 'Sarsembayev', '2004-12-14', 3.5, 4, 'Shymkent'),

(24, 'Zarina', 'Kazakhbayeva', '2003-01-29', 3.7, 1, 'Almaty'),

(25, 'Zhibek', 'Tulendiyeva', '2006-07-17', 3.8, 3, 'Almaty'),

(26, 'Azamat', 'Iskakov', '2002-09-05', 3.9, 2, 'Atyrau'),

(27, 'Zhuldyz', 'Nurlanova', '2005-08-18', 3.5, 4, 'Almaty'),

(28, 'Ayaz', 'Mukhametov', '2004-02-24', 3.6, 5, 'Almaty'),

(29, 'Zarina', 'Zhakupova', '2003-11-06', 3.7, 1, 'Almaty'),

(30, 'Arman', 'Sagymbayev', '2002-04-14', 3.8, 3, 'Almaty'),

(31, 'Amina', 'Kanatova', '2004-06-30', 3.9, 2, 'Astana'),

(32, 'Dinara', 'Ospanova', '2006-03-03', 3.5, 4, 'Almaty'),

(33, 'Erlan', 'Tasmagambetov', '2002-10-27', 3.6, 5, 'Almaty'),

(34, 'Zere', 'Yergaliyeva', '2005-05-05', 3.7, 1, 'Almaty'),

(35, 'Ruslan', 'Mukhtarov', '2004-07-27', 3.8, 3, 'Almaty'),

(36, 'Nazerke', 'Nurmukhamedova', '2003-09-08', 3.9, 2, 'Almaty'),

(37, 'Baurzhan', 'Aidarkhanov', '2002-12-12', 3.5, 4, 'Astana'),

(38, 'Aigerim', 'Nurlanova', '2004-01-16', 3.6, 5, 'Almaty'),

(39, 'Nursultan', 'Kulmanov', '2005-08-18', 3.7, 1, 'Almaty'),

(40, 'Aisha', 'Tulegenova', '2006-10-06', 3.8, 3, 'Almaty');

select * from Student where GPA >= 3 and GPA <= 3.5;
select * from Student where extract(year from date_of_birth) = 2004 order by first_name, last_name;
select * from Student where extract(year from date_of_birth) < 2003 and city = 'Shymkent';
select * from Student where student_ID%2=0;
select * from Student where last_name like 'A%';
select max(GPA) from Student;
select min(GPA) from Student;
select * from Student where extract(month from date_of_birth) = 1;
select extract(year from date_of_birth) as year, count(*) as studentcht from Student group by year order by year;
select Majors.major_name, max(GPA) as maxgpa from Student join Majors on Student.major_ID = Majors.major_ID group by Majors.major_name order by maxgpa desc;
select extract(month from date_of_birth) as month, count(*) as studentcht from Student where city = 'Almaty' group by month order by month;
select * from Student where extract(year from date_of_birth) < 2003 or GPA > 3.2;
select * from Student where date_of_birth='2006-10-06';
select Majors.major_name, count(*) as studentcount from Student join Majors on Student.major_ID = Majors.major_ID group by Majors.major_name order by studentcount;
drop table Student;
drob table Majors;