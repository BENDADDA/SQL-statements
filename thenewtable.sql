use library;




select * from Authors;
select * from Books;


select concat(first_name,' ',last_name) as 'full name' ,count(title) as 'Number of books',avg(paperback) ,max(paperback) ,min(paperback) as  'minP' ,sum(paperback) from
Authors
left join Books on Authors.author_id=Books.author_id  group by first_name having minP>0 order by minP ASC;/*DESC*/
