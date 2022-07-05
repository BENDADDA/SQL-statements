drop database company;
create database company;
use company;

create table orders
  (
    order_id int auto_increment,
    order_date date,
    constraint orders_pk primary key (order_id)
  );

  create table productItem
    (
      order_id int not null,
      item_name varchar(25),
      item_descripton varchar(125),
      constraint productItem_fk foreign key (order_id) references orders(order_id)
    );
      /*isert into the table: orders-----------------------*/
    insert into orders
    (order_date)values('2022-5-15');
    insert into orders
    (order_date)values('2022-4-01');
    insert into orders
    (order_date)values('2022-1-22');




    /*isert into the table: prodcutItem-----------------------*/
    insert into productItem
    (order_id,item_name,item_descripton) values(1,'Ponne','Iphone 5');
    insert into productItem
    (order_id,item_name,item_descripton) values(1,'tv','Koiwa');
    insert into productItem
    (order_id,item_name,item_descripton) values(1,'Wach','Apple');
    insert into productItem
    (order_id,item_name,item_descripton) values(2,'Phone','Samsunge A2 Core');
    insert into productItem
    (order_id,item_name,item_descripton) values(2,'tv','Samsunge');
    insert into productItem
    (order_id,item_name,item_descripton) values(3,'pc','Mac');
    select * from orders;
    select *from productItem;
