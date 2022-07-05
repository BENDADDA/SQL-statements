use Library;










select  first_name as 'First name' ,title as 'Title' from
Authors inner join Books on Authors.author_id=Books.author_id;


select B.*,A.* from Books B,Authors A;
