create table user (
  id int unsigned primary key auto_increment not null,
  email varchar(255) not null unique,
  password varchar(255) not null
);

create table item (
  id int unsigned primary key auto_increment not null,
  title varchar(255) not null,
  user_id int unsigned not null,
  foreign key(user_id) references user(id)
);

create table category (
id int unsigned primary key auto_increment not null,
name varchar(50) not null
);

create table program (
id int unsigned primary key auto_increment not null,
title varchar(50) not null,
synopsis varchar(255) not null,
poster LONGBLOB,
country varchar(30),
year int year,
category_id int unsigned not null,
foreign key(category_id) references category_id
);