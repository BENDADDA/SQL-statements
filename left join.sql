use Library;






describe Books;
select * from Books;

describe Authors;
select * from Authors;



select  first_name as 'First Name',title as 'Title' from
Authors left join Books on Authors.author_id=Books.author_id;

select  first_name as 'First Name',title as 'Title' from
Authors right join Books on Authors.author_id=Books.author_id;



select first_name as 'First Name'from Authors where author_id in
(
  select author_id from Books
);
