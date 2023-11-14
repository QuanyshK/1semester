create table if not exists Books
(
    book_id serial primary key,
    title varchar(50),
    author varchar(50),
    public_year integer,
    genre varchar(50)
    );
insert into Books(book_id, title, author, public_year, genre)
    values(1, 'back', 'qk', 2005, 'horror');
insert into Books(book_id, title)
    values(2, 'aka maka');
insert into Books(book_id, title, public_year)
    values(3, 'tupac', NULL);
insert into Books(book_id, title, author, public_year, genre)
    values(4, 'chikatilo', 'moster', 2002, 'detective'),
          (5, 'bitcevski', 'sherlock', 2001, 'detective'),
          (6, 'bengamin', 'fic', 2001, 'fantasy');
alter table Books alter column author set default 'Unknown Author';
insert into Books(book_id, title)
    values(7, '1984');
drop table Books;
insert into Books DEFAULT VALUES;
create table bookscopy(like Books);
insert into bookscopy select * from Books;
update Books set public_year = 2000 where public_year is NULL;
select title, public_year + 2 as "new public year" from Books;
update Books set genre = 'Fantasy' where book_id = 2;
delete from books where genre = 'detective';
delete from bookscopy where book_id in (select book_id from books);
