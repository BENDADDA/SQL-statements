use newdata;



select * from table3 where id2 in
(
  select id from table2
)
