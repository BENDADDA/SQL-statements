use library;


/*
select * from books;
select * from authors;
select * from review;
select * from reviewers;

*/

/*
SELECT LAST_INSERT_ID();
select max(author_id) from authors;
select * from authors  order by author_id desc limit 1;


SELECT AUTO_INCREMENT FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'authors';

create View Goods as
select first_name as Name ,title as 'Book Name', date_publish as 'Date' ,language from authors
inner join books on authors.author_id=books.author_id ;

RENAME TABLE thebooks TO books;

RENAME TABLE old_table1 TO new_table1,
             old_table2 TO new_table2,
             old_table3 TO new_table3;

*/




drop database Bendadda;
create database Bendadda;


select title,full_name ,evaluation from Books inner join Review
on Books.isbn=Review.isbn right join Reviewers on Review.code_r=Reviewers.code_r;


select title,full_name ,evaluation from Books left join Review
on Books.isbn=Review.isbn left join Reviewers on Review.code_r=Reviewers.code_r;

select title,full_name ,evaluation from Books inner join Review
on Books.isbn=Review.isbn inner join Reviewers on Review.code_r=Reviewers.code_r
where evaluation >=10;






select * from books;
select * from authors;
select * from reviewers;
select * from review;



select concat(first_name,' ',last_name) as 'full names of authors',title ,avg(evaluation) from authors
inner join Books on Authors.author_id=Books.author_id inner join Review on Books.isbn=Review.isbn
inner join Reviewers on Review.code_r=Reviewers.code_r where evaluation>=10 group by first_name ;


select concat(first_name,' ',last_name) as 'full names of authors',title ,evaluation from authors
inner join Books on Authors.author_id=Books.author_id inner join Review on Books.isbn=Review.isbn
inner join Reviewers on Review.code_r=Reviewers.code_r where evaluation>=0 ;































































































































































/**/
