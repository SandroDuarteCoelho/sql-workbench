create database site_12_05_2021;
use site_12_05_2021;

create table users(
id int not null auto_increment,
username varchar(50) not null,
pass varchar (50) not null,
primary key (id)
);

select * from users;

