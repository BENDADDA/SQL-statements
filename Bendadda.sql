DROP DATABASE BENDADDA;
create database BENDADDA;



use Bendadda;


create table Employee
(
    id int primary key auto_increment,
    first_name nvarchar(25),
    last_name nvarchar(25),
    age int,
    jobs nvarchar(25),
    first_address nvarchar(50),
    city nvarchar(25),
    country nvarchar(25),
    job nvarchar(25),
    type char
);

create table Skills
  (
    id int,
    skill nvarchar(50)
  );
create table Contact
  (
    id int,
    phone_number nvarchar(25),
    email nvarchar(50)
  );
alter table Skills
add foreign key (id) references Employee(id)
on delete cascade on update cascade;

alter table Contact
add foreign key (id) references Employee(id)
on delete cascade on update cascade;


create table Monthly
  (
    id int primary key,
    work_days int,
    sallary decimal(2),
    extra_salary decimal(2)
  );

create table Daily
  (
    id int primary key,
    work_hours int,
    sallary decimal(2)
  );


  show tables;
  
