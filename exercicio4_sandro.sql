create database exercicio_4;
use exercicio_4;

create table customers(
	CustomerID int not null auto_increment,
    primary key(CustomerID),
    CustomerName varchar(45) not null,
    ContactName varchar(45) not null,
    Address varchar(45) not null,
    City varchar(45) not null,
    PostalCode varchar(45) not null, -- leva tracinho
    Country varchar(45) not null
);

insert into customers (CustomerName, ContactName, Address, City, PostalCode, Country) values ("Alfreds", "Maria", "Obere 57", "Berlin", "12209", "Germany");
insert into customers (CustomerName, ContactName, Address, City, PostalCode, Country) values ("Ana", "Ana", "Avenida 22222", "Mexico", "05021", "Mexico");
insert into customers (CustomerName, ContactName, Address, City, PostalCode, Country) values ("Antonio", "Antonio", "Mataderos", "Mexico", "05023", "Mexico");
insert into customers (CustomerName, ContactName, Address, City, PostalCode, Country) values ("Around", "Thomas", "120 Hanover", "London", "WA1", "UK");
insert into customers (CustomerName, ContactName, Address, City, PostalCode, Country) values ("Berglunds", "Christina", "Berguv", "Lule", "s-958", "Sweden");

Select * from customers;

delete from customers where CustomerID="1";
delete from customers where CustomerID="5";

delete from customers where Country="Mexico";



