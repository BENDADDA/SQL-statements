drop database Library;
create database Library;

use Library;

create table Books
  (
    isbn varchar(100),
    title varchar(100),
    date_publish date,
    language varchar(25),
    paperback int,
    author_id int,
    constraint book_pk primary key (isbn)

  );




create table Authors
  (
    author_id int auto_increment,
    first_name varchar(25),
    last_name varchar(25),
    first_address varchar(45),
    country varchar(25),
    city varchar(25),
    constraint author_pk primary key (author_id)
  );
  alter table Books
  add constraint books_fk foreign key (author_id) references Authors(author_id)
  on update cascade
  on delete cascade;
  describe Books;
  describe Authors;

  insert into Authors
  (first_name,last_name,first_address,country,city)values('Benaouda','Bendadda','5650-d','Saudi Arab','Makkah');
  insert into Authors
  (first_name,last_name,first_address,country,city)values('Essa','Bendadda','sfd45-d','Saudi Arab','Makkah');
  insert into Authors
  (first_name,last_name,first_address,country,city)values('Adam','Bendadda','fgf-5s','America','New Youk City');
  insert into Authors
  (first_name,last_name,first_address,country,city)values('muhhammed','Bendadda','fgf-510','America','New Mixico');

  insert into Books
  (isbn,title,date_publish,language,paperback,author_id)values('979-8649306959','EXPERIMENT DATABASE VIEW','2020-01-02','English',258,1);
  insert into Books
  (isbn,title,date_publish,language,paperback,author_id)values('959-8654306959','PROBLEM SOLVING AND DATA STURCTUE','2020-01-02','English',1000,1);
  insert into Books
  (isbn,title,date_publish,language,paperback,author_id)values('1085810046959','lERAR C# ','2020-01-02','English',500,3);
  insert into Books
  (isbn,title,date_publish,language,paperback,author_id)values('89-4554521052154','DATABASE MANAGEMENT SYSTEM','2022-01-02','English',2058,2);
  insert into Books
  (isbn,title,date_publish,language,paperback,author_id)values('05151487104761405','WEB APPLICAITON','2025-01-02','Arabic',400,3);
  insert into Books
  (isbn,title,date_publish,language,paperback)values('0154-7923694045101','Maching Learging','2030-08-30','Arabic',400);

  select * from Books;
  select * from Authors;


  select title as 'book_title' from Books;
  select  title from Books limit 3;


  select first_name as 'full name' from Authors limit 2;
