use abhishek
go 
create table trainer
(
id int,
name varchar(50),
exp int
)
insert into trainer values(1,'Abhishek',5),(2,'Suyog',10),(3,'Prashant',2),
(4,'Pravin',1)
go
select * from trainer

go
select * from trainer
go
--new location column
alter table trainer add location varchar(50) default 'pune'
go
--new city column
alter table trainer add city varchar(50) not null default 'pune'
go
create table laptops
(id int,
name varchar(50),
)
insert into laptops values(1,'Dell'),(2,'Samsung'),(3,'Hp'),(4,'Asus')
drop table laptops
go
create table smartphones
(id int,
name varchar(50),
)
insert into smartphones values(1,'Oneplus'),(2,'Samsung'),(3,'Redmi'),(4,'Iphone')
go

select * from smartphones 
select * from laptops
go
select id,name from smartphones
union all
select id,name from laptops
go
select id,name from smartphones
union 
select id,name from laptops
go
select id from smartphones
union all
select id,name from laptops
go 
select id,name from smartphones
union all
select id,name from laptops
go

--Intersact
select id,name from smartphones
intersect
select id,name from laptops
go

--Except
select id,name from smartphones
except
select id,name from laptops
go
select id,name from laptops
except
select id,name from smartphones

drop table laptops
drop table smartphones


go
create table laptops
(id int,
name varchar(50),
price int
)
insert into laptops values(1,'Dell',50000),(2,'Samsung',25000),(3,'Hp',30000),(4,'Asus',35000)

go
create table smartphones
(id int,
name varchar(50),
devicename varchar(50)
)
select * from laptops
select * from smartphones
insert into smartphones values(1,'Oneplus','Nordce3lite'),(2,'Samsung','GalaxyM30'),(3,'Redmi','Note5'),(4,'Iphone','iphone13')

select id,name,price from laptops
select id,name,devicenumber from smartphones
go
select id,name,price from laptops
union all
select id,name,devicenumber from smartphones
alter table smartphones 
add devicenumber int
update smartphones 

set devicenumber=1014 where id=4

select id,name,price from laptops
select id,name,devicenumber from smartphones
go
select id,name,price from laptops
union all
select id,name,devicenumber from smartphones
go
select id,name,price,null as devicenumber from laptops
union all
select id,name,null as price,devicenumber from smartphones








































