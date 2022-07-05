

use Library;

select * from books;
select * from authors;




select title ,first_name from books
right join authors on books.author_id=authors.author_id union
select title ,first_name from books
left join authors on books.author_id=authors.author_id;
