use library;




create index authorindex on Authors(author_id);
create index bookindex on Books(author_id);
select first_name as 'Name',title as 'Supject' from Authors inner join Books
on Authors.author_id=Books.author_id;


drop index authorindex on Authors;
drop index bookindex on Books;
