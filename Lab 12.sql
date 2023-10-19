

create table Orders (
OrderID int not null primary key,
CustomerID int not null,
OrderDate datetime not null
)

insert into Orders values
(10308,	2,	'1996-09-18'),
(10309,	37,	'1996-09-19'),
(10310,	77,	'1996-09-20')

select * from Orders

drop table Customers

create table Customers(
CustomerID int not null primary key,
CustomerName varchar(100) not null,
ContactName varchar(100) not null,
Country varchar(100) not null
)

insert into Customers values
(1,	'Alfreds Futterkiste', 'Maria Anders',	'Germany'),
(2,	'Ana TrujilloEmparedados y helados', 'Ana Trujillo', 'Mexico'),
(3,	'Antonio Moreno Taquería', 'Antonio Moreno', 'Mexico')

select * from Customers
