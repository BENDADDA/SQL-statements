use Library;




select author_id from Authors;
select author_id from Books;

select author_id from Authors union
select author_id from Books;
