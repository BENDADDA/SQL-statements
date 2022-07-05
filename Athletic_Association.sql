drop database Athletic_Association;
create database Athletic_Association;


use Athletic_Association;


create table Athlete
  (
    email varchar(45),
    first_name varchar(25),
    last_name varchar(25),
    date_of_bbirth date,
    first_address varchar(100),
    country varchar(45),
    city varchar(25),
    constraint athlete_pk primary key (email)
  );

  create table Coach
    (
      email varchar(45),
      first_name varchar(25),
      last_name varchar(25),
      date_of_bbirth date,
      first_address varchar(100),
      country varchar(45),
      city varchar(25),
      constraint Coach_pk primary key (email),
      sport_name varchar(25),
      username varchar(25),
      constraint coach_fk foreign key (sport_name) references Sport(sport_name),
      constraint coach_fk2 foreign key (username) references Account(username)

    );
    create table Account
      (
        username varchar(25),
        password varchar(25),
        account_type varchar(25),
        constraint account_pk primary key (username),
        email varchar(45),
        constraint account_fk foreign key (email) references Athlete(email)
      );

    create table Sport
      (
        sport_name varchar(25) ,
        description varchar(125),
        sport_type varchar(25),
        constraint sport_pk primary key (sport_name)
      );
    create table Contact
      (
        email_a varchar(45),
        email_c varchar(45),
        phone_number varchar(25),
        constraint contact_fk foreign key (email_a) references Athlete(email),
        constraint contact_fk2 foreign key (email_c) references Coach(email)

      );
    create table Pictures
      (
        email_a varchar(45),
        email_c varchar(45),
        picture longblob,
        constraint pictures_pk foreign key (email_a) references Athlete(email),
        constraint pictures_pk2 foreign key(email_c) references Coach(email)

      );
    create table UFC
      (
        email_a varchar(45),
        email_c varchar(45),
        constraint ufc_fk foreign key (email_a) references Atlete(email),
        constraint ufc_fk2 foreign key (email_c) references Coach(email)
      );
    create table Save
      (
        email varchar(45),
        sport_name varchar(45),
        constraint save_fk foreign key (email) references Athlete(email),
        constraint save_fk2 foreign key (sport_name) references Sport(sport_name)
      );
