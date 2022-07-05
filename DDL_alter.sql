use company;


/*add column
  alter table productItem
  add column price int;
*/
/*modify
  alter table productItem
  modify price int default 0;
  describe productItem;
  */
/*delete column*/
  alter table productItem
  drop price;
