

use Library;

select * from books;
select * from authors;




select * from authors where author_id  not in
(
  select distinct books.author_id from books where author_id is not null
);
