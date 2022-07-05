use company;
select * from orders;
select * from productItem;
select * from productItem where order_id in
(
  select order_id from orders where order_date='2022-5-15'
)
