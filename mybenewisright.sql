
use Athletic_Association;


alter table Coach
add constraint coach_fk2 foreign key (username) references Account(username);
