drop database library;
create database library;

use library;


create table books
(
  isbn varchar(25) primary key,
  title varchar(100),
  date_publish date,
  language varchar(25),
  paperback int,
  author_id int
);


create table authors
(
  author_id int primary key auto_increment,
  first_name varchar(25),
  last_name varchar(25),
  first_address varchar(85),
  country varchar(25),
  city varchar(25)

);

alter table books
add constraint books_fk foreign key (author_id) references authors(author_id)
on update cascade
on delete cascade;


create table Reviewers
(
  code_r varchar(25) primary key,
  full_name varchar(50),
  major varchar(25)
);

create table Review
(
  isbn varchar(25),
  code_r varchar(25),
  evaluation float(2)
);

alter table Review
add foreign key (isbn) references books(isbn) on delete cascade on update cascade;
alter table Review
add foreign key (code_r) references Reviewers(code_r) on delete cascade on update cascade;
/*insert data*/
insert into Authors
(first_name,last_name,first_address,country,city)values('Benaouda','Bendadda','5650-d','Saudi Arab','Makkah');
insert into Authors
(first_name,last_name,first_address,country,city)values('Essa','Bendadda','sfd45-d','Saudi Arab','Makkah');
insert into Authors
(first_name,last_name,first_address,country,city)values('Adam','Bendadda','fgf-5s','America','New Youk City');
insert into Authors
(first_name,last_name,first_address,country,city)values('muhhammed','Bendadda','fgf-510','America','New Mixico');
insert into Authors
(first_name,last_name,first_address,country,city)values('Omar','Bendadda','560a-510','Egybt','Quhira');
insert into Authors
(first_name,last_name,first_address,country,city)values('muhhammed','Bendadda','fgf-510','America','New Mixico');
insert into Authors
(first_name,last_name,first_address,country,city)values('yassin','Bendadda','01d-422100','America','Miami');



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
insert into Books
(isbn,title,date_publish,language,paperback,author_id)values('0455-7654588412024','DBMS NO SQL','2032-01-04','English',1000,1);
insert into Books
(isbn,title,date_publish,language,paperback)values('2024-5645454548977','SHELL SCRIPTING','2025-08-30','Arabic',600);

insert into reviewers
(code_r,full_name,major)values('XI89013748013','Karim Karim','English');
insert into reviewers
(code_r,full_name,major)values('IJFS39832342','Jaiky Jack','Maths');
insert into reviewers
(code_r,full_name,major)values('F00001155555','Adam Bendadda','Computer Science');

insert into review
(isbn,code_r,evaluation)values('979-8649306959','XI89013748013',17.75);
insert into review
(isbn,code_r,evaluation)values('2024-5645454548977','XI89013748013',15.25);
insert into review
(isbn,code_r,evaluation)values('0455-7654588412024','XI89013748013',13.5);
insert into review
(isbn,code_r,evaluation)values('0154-7923694045101','XI89013748013',18);
insert into review
(isbn,code_r,evaluation)values('1085810046959','XI89013748013',11);

insert into review
(isbn,code_r,evaluation)values('979-8649306959','IJFS39832342',13.75);
insert into review
(isbn,code_r,evaluation)values('2024-5645454548977','IJFS39832342',12.25);
insert into review
(isbn,code_r,evaluation)values('0455-7654588412024','IJFS39832342',15.5);
insert into review
(isbn,code_r,evaluation)values('0154-7923694045101','IJFS39832342',17);
insert into review
(isbn,code_r,evaluation)values('1085810046959','IJFS39832342',14);
insert into review
(isbn,code_r,evaluation)values('89-4554521052154','IJFS39832342',16);
insert into review
(isbn,code_r,evaluation)values('959-8654306959','IJFS39832342',12.5);

describe books;
describe authors;
describe review;
describe reviewers;
