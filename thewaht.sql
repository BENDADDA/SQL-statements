drop database TheOrder;
create database TheOrder;

use TheOrder;

create table Orders
(
  order_id int auto_increment,
  order_date date,
  constraint order_pk primary key (order_id)
);


create table ProductItem
(
  order_id int not null,
  product_name varchar(40),
  item_description varchar(200),
  constraint pructItem_fk foreign key (order_id) references Orders (order_id)
);
