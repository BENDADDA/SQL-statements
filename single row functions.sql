use library;


/*
-charcter functions
lower() upper()
length() instr()
substr() concat()
-numeric functions
Round() Truncate()
Mod()
*/
select * from books;
select concat('Book()=',lower(title)) as 'Title',substr()
length(title) ,instr(title,'a') as 'dfsf',
truncate(paperback,1) ,mod(paperback,13) as 'mod' from books ;
