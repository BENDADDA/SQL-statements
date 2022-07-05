drop database company;
create database company;
use company;
  create table employee
    (
      empid int primary key,
      firstname varchar(25) not null,
      lastname varchar(25) not null,
      salary decimal(5,2) check(salary>100),
      dep varchar(40) default 'Google'

    );
    create table Worker
      (
        id int primary key,
        firstname varchar(25),
        lastname varchar(25),
        job varchar(25)
      );
    describe employee;
    insert into employee
    (empid,firstname,lastname,salary,dep) values (1,'Benaouda','Bendadda',800.75,'Matputer');
    insert into employee
    (empid,firstname,lastname,salary,dep) values (2,'Ben','2000',654,'Microsoft');
    insert into employee
    (empid,firstname,lastname,salary,dep) values (3,"Mohammad","Bendadda",700,"Matputer");
    insert into employee
    (empid,firstname,lastname,salary,dep) values (4,"Essa","Bendadda",800,"Matputer");
    insert into employee
    (empid,firstname,lastname,salary,dep) values (5,"Ahmad","Bendadda",500,"Microsoft");
    insert into employee
    (empid,firstname,lastname,salary,dep) values (6,"Omar","Bendadda",100,'Google');
    insert into employee
    (empid,firstname,lastname,salary,dep) values (7,"Adam","Bendadda",45,"Google");
    insert into employee
    (empid,firstname,lastname,salary,dep) values (8,"Essa","karim",200,"Apple");
    select * from employee;
    select * from employee where firstname like '_e%';
    select * from employee where firstname is null;
    select * from employee order by salary DESC;
