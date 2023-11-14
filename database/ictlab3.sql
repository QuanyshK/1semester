
drop table student;
drop table Teachers;
drop table Courses;
drop view infotable;
create table if not exists Teachers (
    teacher_ID serial primary key,
    first_name varchar(55),
    last_name varchar(65)
);
create table if not exists Courses
(
    course_ID serial primary key,
    course_name varchar(55),
    teacher_ID integer,
    foreign key (teacher_ID) references Teachers(teacher_ID)
);
create table if not exists Student
(
    student_ID serial primary key,
    first_name varchar(55),
    last_name varchar(65),
    yearcourse integer,
    yearbirth integer,
    course_ID integer, foreign key (course_ID) references Courses(course_ID),
    GPA decimal,
    course varchar(50)

);
INSERT INTO Teachers (teacher_ID, first_name, last_name)
VALUES
 (1, 'Kamilla', 'Aitalieva'),
 (2, 'Aigerim', 'Kenzhebayeva'),
 (3, 'Bakytzhan', 'Sultanov'),
 (4, 'Dinara', 'Ismailova'),
 (5, 'Erlan', 'Nurzhanov');

INSERT INTO Courses(course_ID, course_name, teacher_ID)
values

    (1, 'OOP', 1),
    (2, 'Calculus', 2),
    (3, 'ICT', 3),
    (4, 'ADS', 4),
    (5, 'DATABASES', 5);
insert into Student(student_ID, first_name, last_name, yearcourse, yearbirth, gpa, course_ID, course)

VALUES

(1, 'Quanysh', 'Abdulov', 1, 2005, 3.8, 2, 'Calculus'),

(2, 'Maral', 'Kazakbayev', 2, 2004, 3.5, 1, 'OOP'),

(3, 'Gulnar', 'Rysmambetovva', 2, 2003, 3.9, 1, 'OOP'),
(4, 'James', 'Jhons', 4, 2002, 3.2, 3,  'ICT'),

(5, 'Ayan', 'Suleimenov', 3, 2003, 3.6, 2,'Calculus'),

(6, 'Askhat', 'Rakhimbayev', 3, 2003, 3.7,3,  'ICT'),

(7, 'Nuriya', 'Bazarbek', 2, 2005, 3.4, 3,'ICT'),

(8, 'Kollinz', 'Rodinson', 2, 2004, 3.8, 4, 'ADS'),

(9, 'Azamat', 'Taubayev', 2, 2004,3.5, 1, 'OOP'),

(10, 'Dana', 'Kulikova', 1, 2006, 3.9,  5, 'DATABASES'),

(11, 'Ernar', 'Chort', 2, 2005, 3.3, 3, 'ICT'),

(12, 'Anel', 'Kasymmova', 2, 2004, 3.7, 4, 'ADS'),
(13, 'Algabas', 'Saparbayev', 3, 2003, 3.6, 1,  'OOP'),

(14, 'Dauka', 'Nurkhanov', 2, 2004, 3.4,  5, 'DATABASES'),

(15, 'Ilyas', 'Otegen', 1, 2007, 3.8, 5, 'DATABASES'),

(16, 'Karlygash', 'Khurmutullayeva', 2, 2006, 3.9, 4, 'ADS');


select * from Student where course='ICT';
select *from Student order by yearcourse asc
limit 2;
select *from Student order by yearcourse desc
limit 2;
update Student set last_name = 'Updatenul' where student_ID = 2;
select * from Student where student_ID= 2;
update Student set last_name='Updatemore' where yearcourse = 3;
select * from Student where yearcourse=3;
select Student.*, Courses.course_name, Teachers.first_name, Teachers.last_name from Student
join Courses on Student.course_ID = Courses.course_ID
join Teachers on Courses.teacher_ID = Teachers.teacher_ID;
select Courses.course_name, count(*) as studentcnt from Student join Courses on Student.course_ID = Courses.course_ID group by Courses.course_name;
select Courses.course_name, avg(2023-yearbirth) as avgage from Student join Courses on Student.course_ID = Courses.course_ID group by Courses.course_name;
select * from Student where GPA > (select avg(GPA) from Student);
select * from Student where GPA > 3.5;
create view infotable as select Student.student_ID, Student.first_name, Student.last_name, Courses.course_name, Student.gpa from Student
join Courses on Student.course_ID = Courses.course_ID;
select * from infotable;
select course_name, avg(GPA) AS avggpa from infotable group by course_name;