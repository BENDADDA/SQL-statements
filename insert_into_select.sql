use Library;





create table BookName
  (
    title varchar(100)
  );



  insert into BookName select title from Books;

  select * from BookName;
  drop table BookName;
