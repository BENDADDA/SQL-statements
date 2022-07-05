

use Labrary;

select * from books;
select * from authors;



select * from authors a cross join authors b;

  select author_id from authors where author_id  not in
  (
    select distinct books.author_id from books where author_id
  )
