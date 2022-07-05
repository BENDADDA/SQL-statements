drop database library;
create database library;


use library;


create table Employee
  (
    id int primary key auto_increment,
    first_name varchar(20),
    last_name varchar(20)
  );
create table Customer
  (
    id int auto_increment,
    first_name varchar(20),
    last_name varchar(20),
    constraint customer_pk primary key (id)
  );

create table Book
  (
    book_id int primary key auto_increment,
    id int,
    title varchar(100)

  );

  insert into Employee
  (first_name,last_name)values('bendadda','benaouda');
  insert into Employee
  (first_name,last_name)values('yassain','yassin');
  insert into Employee
  (first_name,last_name)values('muhamed','muhamed');
  insert into Employee
  (first_name,last_name)values('adam','bendadda');

  insert into Customer
  (first_name,last_name)values ('BENDADDA','BENAOUDA');
  insert into Customer
  (first_name,last_name)values ('MUHAMMED','ESSA');
  insert into Customer
  (first_name,last_name)values ('Omar','bendadda');


  alter table Book
  add foreign key (id) references Employee(id);
  insert into Book
  (id,title)values(1,'math');
  insert into Book
  (id,title)values(2,'programming');
  insert into Book
  (id,title) values(3,'Problem solving with C#');
  insert into Book
  (id,title) values(2,'GUI with C# using WPF');


  describe Employee;
  describe Customer;
  describe Book;
  select * from Employee;
  select * from Customer;
  select * from Book;
