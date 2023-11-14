create database bookshop;
drop table Authors cascade;
drop table Books cascade;
drop table Customers cascade;
drop table Borrowed_books;
create table if not exists Authors (
    author_ID SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date  DATE
    );

create table if not exists Books (
    book_ID SERIAL PRIMARY KEY,
    title VARCHAR(100),
    publication_year INTEGER,
    available_copies INTEGER,
    author_ID SERIAL,
    FOREIGN KEY (author_ID) REFERENCES authors(author_ID));
create table if not exists Customers (
    customer_ID SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20));
create table if not exists Borrowed_books (
    borrow_ID INT PRIMARY KEY NOT NULL,
    book_ID INT,
    customer_ID INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_ID) REFERENCES books(book_ID),
    FOREIGN KEY (customer_ID) REFERENCES customers(customer_ID));
SELECT author_id, first_name, last_name, TO_CHAR(birth_date, 'DD/MM/YYYY') AS formatted_date
FROM Authors;

INSERT INTO Authors (author_ID, first_name, last_name, birth_date)
VALUES
(1, 'Stephen', 'King', '1947-09-21'),
(2, 'J.K.', 'Rowling', '1965-07-31'),
(3, 'George', 'Orwell', '1903-06-25'),
(4, 'J.R.R.', 'Tolkien', '1892-01-03'),
(5, 'Agatha', 'Christie', '1890-09-15'),
(6, 'F. Scott', 'Fitzgerald', '1896-09-24'),
(7, 'Mark', 'Twain', '1835-11-30'),
(8, 'Harper', 'Lee', '1926-04-28'),
(9, 'Leo', 'Tolstoy', '1828-09-09'),
(10, 'Jane', 'Austen', '1775-12-16'),
(11, 'Fyodor', 'Dostoevsky', '1821-11-11'),
(12, 'Charles', 'Dickens', '1812-02-07'),
(13, 'Gabriel', 'García Márquez', '1927-03-06'),
(14, 'Ernest', 'Hemingway', '1899-07-21'),
(15, 'William', 'Faulkner', '1897-09-25'),
(16, 'Herman', 'Melville', '1819-08-01'),
(17, 'Emily', 'Brontë', '1818-07-30'),
(18, 'Aldous', 'Huxley', '1894-07-26'),
(19, 'Virginia', 'Woolf', '1882-01-25'),
(20, 'Toni', 'Morrison', '1931-02-18');
INSERT INTO Books (book_ID, title, publication_year, available_copies, author_ID)
VALUES
 (1, 'It', 1986, 3, 1),
 (2, 'The Shining', 1977, 7, 1),
 (3, 'Harry Potter and the Sorcerer''s Stone', 1997, 5, 2),
 (4, '1984', 1949, 8, 3),
 (5, 'The Lord of the Rings', 1954, 6, 4),
 (6, 'Murder on the Orient Express', 1934, 9, 5),
 (7, 'The Great Gatsby', 1925, 2, 6),
 (8, 'Adventures of Huckleberry Finn', 1884, 4, 7),
 (9, 'To Kill a Mockingbird', 1960, 10, 8),
 (10, 'War and Peace', 1869, 0, 9),
 (11, 'Pride and Prejudice', 1813, 1, 10),
 (12, 'Crime and Punishment', 1866, 3, 11),
 (13, 'A Tale of Two Cities', 1859, 7, 12),
 (14, 'One Hundred Years of Solitude', 1967, 8, 13),
 (15, 'The Old Man and the Sea', 1952, 5, 14),
 (16, 'The Sound and the Fury', 1929, 0, 15),
 (17, 'Moby-Dick', 1851, 10, 16),
 (18, 'Wuthering Heights', 1847, 3, 17),
 (19, 'Brave New World', 1932, 9, 18),
 (20, 'To the Lighthouse', 1927, 2, 19),
 (21, 'Beloved', 1987, 8, 20),
 (22, 'Carrie', 1974, 6, 1),
 (23, 'The Stand', 1978, 7, 1),
 (24, 'Harry Potter and the Chamber of Secrets', 1998, 4, 2),
 (25, 'Animal Farm', 1945, 0, 3),
 (26, 'The Hobbit', 1937, 1, 4),
 (27, 'Death on the Nile', 1937, 2, 5),
 (28, 'Tender Is the Night', 1934, 9, 6),
 (29, 'The Adventures of Tom Sawyer', 1876, 8, 7),
 (30, 'Go Set a Watchman', 2015, 3, 8),
 (31, 'Anna Karenina', 1877, 7, 9),
 (32, 'Sense and Sensibility', 1811, 1, 10),
 (33, 'The Brothers Karamazov', 1880, 6, 11),
 (34, 'Little Dorrit', 1857, 0, 12),
 (35, 'Love in the Time of Cholera', 1985, 5, 13),
 (36, 'For Whom the Bell Tolls', 1940, 10, 14),
 (37, 'As I Lay Dying', 1930, 0, 15),
 (38, 'Billy Budd, Sailor', 1924, 4, 16),
 (39, 'Jane Eyre', 1847, 2, 17),
 (40, 'Brave New World Revisited', 1958, 6, 18),
 (41, 'Mrs. Dalloway', 1925, 1, 19),
 (42, 'Song of Solomon', 1977, 8, 20),
 (43, 'Cujo', 1981, 5, 1),
 (44, 'Misery', 1987, 3, 1),
 (45, 'Harry Potter and the Prisoner of Azkaban', 1999, 7, 2),
 (46, 'Animal Farm and 1984', 1954, 0, 3),
 (47, 'The Silmarillion', 1977, 4, 4),
 (48, 'And Then There Were None', 1939, 8, 5),
 (49, 'Tender Is the Night', 1934, 9, 6),
 (50, 'The Adventures of Huckleberry Finn', 1884, 1, 7),
 (51, 'Go Set a Watchman', 2015, 3, 8),
 (52, 'War and Peace', 1869, 0, 9),
 (53, 'Pride and Prejudice', 1813, 4, 10),
 (54, 'The Idiot', 1869, 6, 11),
 (55, 'A Tale of Two Cities', 1859, 2, 12),
 (56, 'One Hundred Years of Solitude', 1967, 9, 13),
 (57, 'The Old Man and the Sea', 1952, 5, 14),
 (58, 'The Sound and the Fury', 1929, 0, 15),
 (59, 'Moby-Dick', 1851, 10, 16),
 (60, 'Wuthering Heights', 1847, 3, 17),
 (61, 'Brave New World', 1932, 7, 18),
 (62, 'To the Lighthouse', 1927, 1, 19),
 (63, 'Beloved', 1987, 8, 20),
 (64, 'The Tommyknockers', 1987, 6, 1),
 (65, 'The Dark Half', 1989, 7, 1),
 (66, 'Harry Potter and the Goblet of Fire', 2000, 4, 2),
 (67, 'Animal Farm and 1984', 1954, 0, 3),
 (68, 'The Children of Húrin', 2007, 5, 4),
 (69, 'Appointment with Death', 1938, 9, 5),
 (70, 'Tender Is the Night', 1934, 0, 6),
 (71, 'The Adventures of Tom Sawyer', 1876, 4, 7),
 (72, 'Go Set a Watchman', 2015, 6, 8),
 (73, 'War and Peace', 1869, 0, 9),
 (74, 'Pride and Prejudice', 1813, 2, 10),
(75, 'The Brothers Karamazov', 1880, 7, 11),
 (76, 'Little Dorrit', 1857, 0, 12),
 (77, 'Love in the Time of Cholera', 1985, 8, 13),
 (78, 'For Whom the Bell Tolls', 1940, 3, 14),
 (79, 'As I Lay Dying', 1930, 0, 15),
 (80, 'Billy Budd, Sailor', 1924, 5, 16),
 (81, 'Jane Eyre', 1847, 1, 17),
 (82, 'Brave New World Revisited', 1958, 9, 18),
 (83, 'Mrs. Dalloway', 1925, 3, 19),
 (84, 'Song of Solomon', 1977, 7, 20),
 (85, 'The Girl Who Loved Tom Gordon', 1999, 4, 1),
 (86, 'Dreamcatcher', 2001, 2, 1),
 (87, 'Harry Potter and the Order of the Phoenix', 2003, 9, 2),
 (88, 'Animal Farm and 1984', 1954, 1, 3),
 (89, 'The Fall of Gondolin', 2018, 6, 4),
 (90, 'The A.B.C. Murders', 1936, 7, 5),
 (91, 'Tender Is the Night', 1934, 8, 6),
 (92, 'The Adventures of Huckleberry Finn', 1884, 0, 7),
 (93, 'Go Set a Watchman', 2015, 5, 8),
 (94, 'War and Peace', 1869, 2, 9),
 (95, 'Pride and Prejudice', 1813, 7, 10),
 (96, 'The Idiot', 1869, 3, 11),
 (97, 'A Tale of Two Cities', 1859, 0, 12),
 (98, 'One Hundred Years of Solitude', 1967, 4, 13),
 (99, 'The Old Man and the Sea', 1952, 8, 14),
 (100, 'The Sound and the Fury', 1929, 1, 15);


INSERT INTO Customers (customer_ID, first_name, last_name, email, phone_number)
VALUES
 (1, 'Kamilla', 'Aitalieva', 'kamosik@gmail.com', '+77081223345'),
 (2, 'Aigerim', 'Kenzhebayeva', 'aigerim123@gmail.com', '+77052345678'),
 (3, 'Bakytzhan', 'Sultanov', 'bakytzhan@gmail.com', '+77012655457'),
 (4, 'Dinara', 'Ismailova', 'dinaraisi@gmail.com', '+77088734024'),
 (5, 'Erlan', 'Nurzhanov', 'erlan.nurzhanov@gmail.com', '+77082134567'),
 (6, 'Gaukhar', 'Akhmetova', 'gaukhar.a@gmail.com', '+77011231234'),
 (7, 'Zhanar', 'Kulbekova', 'zhanar.k@gmail.com', '+77017778899'),
 (8, 'Azamat', 'Mukhametzhanov', 'azamat.m@gmail.com', '+77083456789'),
 (9, 'Aisulu', 'Sarsenova', 'aisulu.s@gmail.com', '+77013476923'),
 (10, 'Nurzhan', 'Ospanov', 'nurzhan.o@gmail.com', '+77014659318'),
 (11, 'Aizada', 'Zhakupova', 'aizada.z@gmail.com', '+77776502360'),
 (12, 'Zarina', 'Akhmetova', 'zarina.a@gmail.com', '+77053297930'),
 (13, 'Abdul', 'Sultanov', 'abdul.s@gmail.com', '+77086516265'),
 (14, 'Aizere', 'Tulegenova', 'aizere.t@gmail.com', '+77056565567'),
 (15, 'Azhar', 'Rakhimova', 'azhar.r@gmail.com', '+77055457651'),
 (16, 'Akbota', 'Kadirbekova', 'akbota.k@gmail.com', '+77085471551'),
 (17, 'Rustem', 'Kulzhabaev', 'rustem.k@gmail.com', '+77087547156'),
 (18, 'Sultan', 'Khamzin', 'sultan.k@gmail.com', '+77777567567'),
 (19, 'Aisana', 'Zhunussova', 'aisana.z@gmail.com', '+77051576113'),
 (20, 'Kazbek', 'Nurgaliev', 'kazbek.n@gmail.com', '+77084554651'),
 (21, 'Madina', 'Aitkulova', 'madina.a@gmail.com', '+77012461534'),
 (22, 'Erbol', 'Tursynov', 'erbol.t@gmail.com', '+77055146357'),
 (23, 'Dana', 'Omarova', 'dana.o@gmail.com', '+77774974685'),
 (24, 'Bakdaulet', 'Bakdauletov', 'bakdaulet.b@gmail.com', '+77058756464'),
 (25, 'Akmaral', 'Kenzhebayeva', 'akmaral.k@gmail.com', '+77085136542'),
 (26, 'Ainura', 'Sarsenova', 'ainura.s@gmail.com', '+77055561689'),
 (27, 'Rustem', 'Zhunissov', 'rustem.z@gmail.com', '+77771616548'),
 (28, 'Amina', 'Khamzina', 'amina.k@gmail.com', '+77012556443'),
 (29, 'Alibek', 'Kenzhebayev', 'alibek.k@gmail.com', '+77056564663'),
 (30, 'Ainur', 'Ospanova', 'ainur.o@gmail.com', '+77054556446'),
 (31, 'Daulet', 'Sarsenov', 'daulet.s@gmail.com', '+77084718156'),
 (32, 'Zarina', 'Nurzhanova', 'zarina.n@gmail.com', '+77778794755'),
 (33, 'Adil', 'Mukhametzhanov', 'adil.m@gmail.com', '+77087443215'),
 (34, 'Gulzhan', 'Kadirbekova', 'gulzhan.k@gmail.com', '+77051245647'),
 (35, 'Nurbol', 'Rakhimov', 'nurbol.r@gmail.com', '+77055657545'),
 (36, 'Aigerim', 'Zhunusova', 'aigerim.z@gmail.com', '+77778498097'),
 (37, 'Baurzhan', 'Aitkulov', 'baurzhan.a@gmail.com', '+77056543098'),
 (38, 'Saniya', 'Kenzhebayeva', 'saniya.k@gmail.com', '+77087654325'),
 (39, 'Raihan', 'Omarov', 'raihan.o@gmail.com', '+77084121218'),
 (40, 'Asylbek', 'Tulegenov', 'asylbek.t@gmail.com', '+77774651276'),
 (41, 'Aizere', 'Nurgalieva', 'aizere.n@gmail.com', '+77055434652'),
(42, 'Amina', 'Aitkulova', 'amina.a@gmail.com', '+77053655484'),
 (43, 'Bakdaulet', 'Kadirbekov', 'bakdaulet.k@gmail.com', '+77776534655'),
 (44, 'Dina', 'Sultanova', 'dina.s@gmail.com', '+77085653643'),
 (45, 'Zhanat', 'Nurzhanov', 'zhanat.n@gmail.com', '+77082221791'),
 (46, 'Akmaral', 'Kenzhebayeva', 'akmaral.k@gmail.com', '+77051088904'),
 (47, 'Ainura', 'Sarsenova', 'ainura.s@gmail.com', '+77055362133'),
 (48, 'Rustem', 'Zhunissov', 'rustem.z@gmail.com', '+77775247897'),
 (49, 'Amina', 'Khamzina', 'amina.k@gmail.com', '+77052984789'),
 (50, 'Alibek', 'Kenzhebayev', 'alibek.k@gmail.com', '+77083872379'),
 (51, 'Ainur', 'Ospanova', 'ainur.o@gmail.com', '+77773628347'),
 (52, 'Daulet', 'Sarsenov', 'daulet.s@gmail.com', '+77058675457'),
 (53, 'Zarina', 'Nurzhanova', 'zarina.n@gmail.com', '+77057176573'),
 (54, 'Adil', 'Mukhametzhanov', 'adil.m@gmail.com', '+77774251823'),
 (55, 'Gulzhan', 'Kadirbekova', 'gulzhan.k@gmail.com', '+77088572389'),
 (56, 'Nurbol', 'Rakhimov', 'nurbol.r@gmail.com', '+77085765568'),
 (57, 'Aigerim', 'Zhunusova', 'aigerim.z@gmail.com', '+77014732891'),
 (58, 'Baurzhan', 'Aitkulov', 'baurzhan.a@gmail.com', '+77052361234'),
 (59, 'Saniya', 'Kenzhebayeva', 'saniya.k@gmail.com', '+77056162428'),
 (60, 'Raihan', 'Omarov', 'raihan.o@gmail.com', '+77772688465');

INSERT INTO borrowed_books (borrow_ID, book_ID, customer_ID, borrow_date,
return_date)
VALUES
(1, 43, 12, '2023-02-01', '2023-02-10'),
(2, 78, 27, '2023-02-02', '2023-02-11'),
(3, 15, 48, '2023-02-03', '2023-02-12'),
(4, 91, 3, '2023-02-04', '2023-02-13'),
(5, 64, 36, '2023-02-05', '2023-02-14'),
(6, 22, 56, '2023-02-06', '2023-02-15'),
(7, 35, 9, '2023-02-07', '2023-02-16'),
(8, 50, 20, '2023-02-08', '2023-02-17'),
(9, 10, 41, '2023-02-09', '2023-02-18'),
(10, 71, 4, '2023-02-10', '2023-02-19'),
(11, 5, 18, '2023-02-11', '2023-02-20'),
(12, 31, 34, '2023-02-12', '2023-02-21'),
(13, 89, 52, '2023-02-13', '2023-02-22'),
(14, 59, 8, '2023-02-14', '2023-02-23'),
(15, 2, 44, '2023-02-15', '2023-02-24'),
(16, 67, 29, '2023-02-16', '2023-02-25'),
(17, 37, 50, '2023-02-17', '2023-02-26'),
(18, 55, 11, '2023-02-18', '2023-02-27'),
(19, 14, 31, '2023-02-19', '2023-02-28'),
(20, 82, 21, '2023-02-20', '2023-03-01'),
(21, 1, 14, '2023-02-21', '2023-03-02'),
(22, 38, 40, '2023-02-22', '2023-03-03'),
(23, 73, 19, '2023-02-23', '2023-03-04'),
(24, 25, 5, '2023-02-24', '2023-03-05'),
(25, 47, 25, '2023-02-25', '2023-03-06'),
(26, 7, 54, '2023-02-26', '2023-03-07'),
(27, 98, 1, '2023-02-27', '2023-03-08'),
(28, 58, 47, '2023-02-28', '2023-03-09'),
(29, 28, 6, '2023-03-01', '2023-03-10'),
(30, 80, 38, '2023-03-02', '2023-03-11'),
(31, 17, 51, '2023-03-03', '2023-03-12'),
(32, 63, 22, '2023-03-04', '2023-03-13'),
(33, 3, 10, '2023-03-05', '2023-03-14'),
(34, 49, 39, '2023-03-06', '2023-03-15'),
(35, 79, 15, '2023-03-07', '2023-03-16'),
(36, 41, 57, '2023-03-08', '2023-03-17'),
(37, 9, 23, '2023-03-09', '2023-03-18'),
(38, 68, 45, '2023-03-10', '2023-03-19'),
(39, 26, 55, '2023-03-11', '2023-03-20'),
(40, 51, 32, '2023-03-12', '2023-03-21'),
(41, 36, 7, '2023-03-13', '2023-03-22'),
(42, 69, 28, '2023-03-14', '2023-03-23'),
(43, 8, 46, '2023-03-15', '2023-03-24'),
(44, 53, 13, '2023-03-16', '2023-03-25'),
(45, 94, 49, '2023-03-17', '2023-03-26'),
(46, 20, 2, '2023-03-18', '2023-03-27'),
(47, 4, 35, '2023-03-19', '2023-03-28'),
(48, 61, 24, '2023-03-20', '2023-03-29'),
(49, 30, 42, '2023-03-21', '2023-03-30'),
(50, 70, 16, '2023-03-22', '2023-03-01'),
(51, 10, 6, '2023-03-01', '2023-03-10'),
(52, 31, 35, '2023-03-02', '2023-03-11'),
(53, 85, 13, '2023-03-03', '2023-03-12'),
(54, 50, 55, '2023-03-04', '2023-03-13'),
(55, 21, 27, '2023-03-05', '2023-03-14'),
(56, 73, 41, '2023-03-06', '2023-03-15'),
(57, 46, 24, '2023-03-07', '2023-03-16'),
(58, 66, 56, '2023-03-08', '2023-03-17'),
(59, 12, 8, '2023-03-09', '2023-03-18'),
(60, 91, 19, '2023-03-10', '2023-03-19'),
(61, 57, 47, '2023-03-11', '2023-03-20'),
(62, 35, 10, '2023-03-12', '2023-03-21'),
(63, 68, 28, '2023-03-13', '2023-03-22'),
(64, 11, 53, '2023-03-14', '2023-03-23'),
(65, 77, 36, '2023-03-15', '2023-03-24'),
(66, 38, 7, '2023-03-16', '2023-03-25'),
(67, 22, 20, '2023-03-17', '2023-03-26'),
(68, 62, 51, '2023-03-18', '2023-03-27'),
(69, 89, 3, '2023-03-19', '2023-03-28'),
(70, 16, 14, '2023-03-20', '2023-03-29'),
(71, 40, 40, '2023-03-21', '2023-03-30'),
(72, 32, 2, '2023-03-22', '2023-03-31'),
(73, 86, 37, '2023-03-23', '2023-04-01'),
(74, 28, 49, '2023-03-24', '2023-04-02'),
(75, 17, 4, '2023-03-25', '2023-04-03'),
(76, 63, 59, '2023-03-26', '2023-04-04'),
(77, 20, 18, '2023-03-27', '2023-04-05'),
(78, 9, 45, '2023-03-28', '2023-04-06'),
(79, 54, 29, '2023-03-29', '2023-04-07'),
(80, 33, 15, '2023-03-30', '2023-04-08'),
(81, 87, 1, '2023-03-31', '2023-04-09'),
(82, 64, 9, '2023-04-01', '2023-04-10'),
(83, 14, 32, '2023-04-02', '2023-04-11'),
(84, 27, 11, '2023-04-03', '2023-04-12'),
(85, 75, 38, '2023-04-04', '2023-04-13'),
(86, 8, 48, '2023-04-05', '2023-04-14'),
(87, 44, 30, '2023-04-06', '2023-04-15'),
(88, 47, 21, '2023-04-07', '2023-04-16'),
(89, 72, 44, '2023-04-08', '2023-04-17'),
(90, 41, 23, '2023-04-09', '2023-04-18'),
(91, 5, 17, '2023-04-10', '2023-04-19'),
(92, 43, 54, '2023-04-11', '2023-04-20'),
(93, 7, 26, '2023-03-12', '2023-03-21'),
(94, 67, 50, '2023-04-13', '2023-04-22'),
(95, 37, 31, '2023-04-14', '2023-04-23'),
(96, 15, 5, '2023-04-15', '2023-04-24'),
(97, 59, 25, '2023-04-16', '2023-04-24'),
(98, 80, 57, '2023-04-17', '2023-04-26'),
(99, 25, 42, '2023-04-18', '2023-04-27'),
(100, 36, 12, '2023-04-19', '2023-04-28'),
(101, 60, 56, '2023-04-01', '2023-04-10'),
(102, 7, 27, '2023-04-02', '2023-04-11'),
(103, 30, 34, '2023-04-03', '2023-04-12'),
(104, 85, 4, '2023-04-04', '2023-04-13'),
(105, 33, 10, '2023-04-05', '2023-04-14'),
(106, 15, 47, '2023-04-06', '2023-04-15'),
(107, 16, 18, '2023-04-07', '2023-04-16'),
(108, 25, 53, '2023-04-08', '2023-04-17'),
(109, 39, 14, '2023-04-09', '2023-04-18'),
(110, 11, 33, '2023-04-10', '2023-04-19'),
(111, 6, 5, '2023-04-11', '2023-04-20'),
(112, 67, 28, '2023-04-12', '2023-04-21'),
(113, 17, 29, '2023-04-13', '2023-04-22'),
(114, 40, 15, '2023-04-14', '2023-04-23'),
(115, 70, 6, '2023-04-15', '2023-04-24'),
(116, 48, 48, '2023-04-16', '2023-04-25'),
(117, 13, 21, '2023-04-17', '2023-04-26'),
(118, 31, 39, '2023-04-18', '2023-04-27'),
(119, 8, 7, '2023-04-19', '2023-04-28'),
(120, 57, 35, '2023-04-20', '2023-04-29'),
(121, 86, 20, '2023-04-21', '2023-04-30'),
(122, 61, 54, '2023-04-22', '2023-05-01'),
(123, 63, 37, '2023-04-23', '2023-05-02'),
(124, 59, 19, '2023-04-24', '2023-05-03'),
(125, 45, 12, '2023-04-25', '2023-05-04'),
(126, 90, 31, '2023-04-26', '2023-05-05'),
(127, 41, 50, '2023-04-27', '2023-05-06'),
(128, 78, 36, '2023-04-28', '2023-05-07'),
(129, 14, 11, '2023-04-29', '2023-05-08'),
(130, 56, 30, '2023-04-30', '2023-05-09'),
(131, 36, 16, '2023-05-01', '2023-05-10'),
(132, 10, 8, '2023-05-02', '2023-05-11'),
(133, 29, 22, '2023-05-03', '2023-05-12'),
(134, 58, 3, '2023-05-04', '2023-05-13'),
(135, 47, 43, '2023-05-05', '2023-05-14'),
(136, 18, 58, '2023-05-06', '2023-05-15'),
(137, 37, 9, '2023-05-07', '2023-05-16'),
(138, 80, 27, '2023-05-08', '2023-05-17'),
(139, 25, 51, '2023-05-09', '2023-05-18'),
(140, 21, 34, '2023-05-10', '2023-05-19'),
(141, 83, 14, '2023-05-11', '2023-05-20'),
(142, 3, 54, '2023-05-12', '2023-05-21'),
(143, 46, 6, '2023-05-13', '2023-05-22'),
(144, 54, 21, '2023-05-14', '2023-05-23'),
(145, 68, 44, '2023-05-15', '2023-05-24'),
(146, 13, 26, '2023-05-16', '2023-05-25'),
(147, 24, 13, '2023-05-17', '2023-05-26'),
(148, 69, 56, '2023-05-18', '2023-05-27'),
(149, 72, 33, '2023-05-19', '2023-05-28'),
(150, 64, 4, '2023-05-20', '2023-05-29');
/*lab5*/
select distinct Books.title from Books left join Borrowed_books on Books.book_ID = Borrowed_books.book_ID where Borrowed_books.book_ID is null;
select Books.title from Books join Authors on Books.author_ID = Authors.author_ID where extract(year from Authors.birth_date) < 1930;
 insert into Authors(author_ID, first_name, last_name, birth_date)
     values
 (21, 'Haruki', 'Murakami', '1949-01-12'),
 (22, 'Nassim', 'Taleb', '1960-09-11'),
 (23, 'Ray', 'Bradbury', '1920-08-22');
select Authors.author_ID, Authors.first_name, Authors.last_name from Authors left join Books on Authors.author_ID = Books.author_ID where Books.book_ID is null;
select Authors.author_ID, Authors.first_name, Authors.last_name, count(Books.book_ID) as published_books from Authors left join Books on Authors.author_ID = Books.author_ID group by Authors.author_ID, Authors.first_name, Authors.last_name order by published_books desc limit 15;
select Customers.first_name, Customers.last_name, Books.title from Customers join Borrowed_books on Customers.customer_ID = Borrowed_books.customer_ID join Books on Borrowed_books.book_ID = Books.book_ID where Books.title like '%Potter%';
delete from Borrowed_books where extract(month from return_date) > 4;
update Customers set email = 'nurzhanov.e@gmail.com' where customer_ID = 5;
select customer_ID, first_name, last_name, email from Customers where customer_ID = 5;
select book_ID from Borrowed_books  join Customers on Borrowed_books.customer_ID = Customers.customer_ID where Customers.last_name = 'Ospanov';
select book_ID from Borrowed_books where extract(dow from borrow_date) = 1;
select Books.title from Books join Authors on Books.author_ID = Authors.author_ID where extract(year from Books.) < 1990;
