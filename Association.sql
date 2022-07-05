drop database association;
create database association;
use association;
  create table Fighter
    (
      id int primary key auto_increment,
      firstname varchar(25) not null,
      lastname varchar(25) not null,
      age int,
      weight int,
      height int,
      sportname varchar(25) not null
    );


    insert into Fighter
    (firstname,lastname,age,weight,height,sportname) values ('Bendadda','Benaouda',21,69,174,'Kickboxing');


    select * from Fighter;
