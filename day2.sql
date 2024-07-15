create database fruits;
use fruits;
create table items(fruit varchar(50),Quantity int,Price int,counter_no int);
desc items;
insert into items(fruit,Quantity,Price,counter_no) values("mango",12,110,5);

alter table items modify column  Quantity varchar(50);
desc items;
update items set Quantity="12kgs" where Quantity=12;
select * from items;insert into items(fruit,Quantity,Price,counter_no) values("orange","10kgs",130,4);
insert into items(fruit,Quantity,Price,counter_no) values("banana","15kgs",40,1),("goa","13kgs",60,3);
update items set Quantity="12kgs" where Quantity="12";
select * from items;
 create table  mango(Quantity varchar(50),Price int,counter_no int);
 desc mango;
 insert into mango(Quantity,Price,counter_no) select Quantity,Price,counter_no from items where fruit="mango";
 select * from mango;
 create table banana(Quantity varchar(50),Price int ,counter_no int);
 insert into banana(Quantity,Price,counter_no) select Quantity,Price,counter_no from items where fruit="banana";
 select * from banana;
 select * from items;
 truncate items;
 insert into items values("banana","15kgs",60,101),("mango","20kgs",50,102);
 select * from items;
 insert into items values("goa","10kgs",55,103),("apple","12kgs",65,104),("cherry","9kgs",75,105);
 select * from items;
 create table banana(fruit varchar(100),Quantity varchar(50),Price int,counter_no int);
 desc banana;
 insert into  banana(fruit,Quantity,Price,counter_no) select fruit,Quantity,Price,counter_no from items where fruit="banana";
 select * from banana;
 
 
 create table mangos(fruit varchar(100),Quantity varchar(50),Price int,counter_no int);
 select * from mangos;
 insert into mangos(fruit,Quantity,Price,counter_no) select fruit,Quantity,Price,counter_no from items where fruit="mango";
 select * from mangos;
 create table banana(fruit varchar(100),Quantity varchar(50),Price int,counter_no int);
 desc banana;
 insert into banana(fruit,Quantity,Price,counter_no) select fruit,Quantity,Price,counter_no from items where fruit="banana";
 select * from banana;
 create table cherry(fruit varchar(100),Quantity varchar(50),Price int,counter_no int);
 insert into cherry(fruit,Quantity,Price,counter_no) select fruit,Quantity,Price,counter_no from items where fruit="cherry";
 select * from cherry;
 create table apple(fruit varchar(100),Quantity varchar(50),Price int,counter_no int);
 insert into apple(fruit,Quantity,Price,counter_no) select fruit,Quantity,Price,counter_no from items where fruit="apple";
 select * from apple;
  truncate apple;
   desc apple;
   
 create table goa(fruit varchar(100),Quantity varchar(50),Price int,counter_no int);
 insert into goa(fruit,Quantity,Price,counter_no) select fruit,Quantity,Price,counter_no from items where fruit="goa";
 select * from goa;

drop table goa;
 
 
 
 
 
 
  
 
 
 

