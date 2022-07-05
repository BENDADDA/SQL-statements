use library;





drop view AB;
create view AB as
select concat(first_name,' ',last_name) as 'Full Name' ,title as 'Title' from Authors inner join Books
on Authors.author_id=Books.author_id;








select * from AB;
