
create table students(ID int key auto_increment,NAME varchar(100) not null,COURSE varchar(50),MOBILE int);
desc students;
insert into students(NAME,COURSE,MOBILE) values("manoj","cse",8106444512),("vasu","civil","9948989648");
select * from students;
alter table students modify column MOBILE bigint;
desc students;
insert into students(NAME,COURSE,MOBILE) values("vinod","mech",6320047000);
select * from students;
insert into students(NAME,COURSE,MOBILE) values("prasana","mech",2566352252),("hari","civil",55668642266),("navin","mech",99868571265),("ravi","cse",7045866125),("don","eee",996562552),
("gavi","eee",683692661);
select * from students;
create table cse(ID int,NAME varchar(100),COURSE varchar(50),MOBILE bigint);
desc cse;
insert into cse(ID,NAME,COURSE,MOBILE) select ID,NAME,COURSE,MOBILE from students where course="cse";
select * from cse;
create table mech(ID int,NAME varchar(100),COURSE varchar(50),MOBILE bigint);
insert into mech(ID,NAME,COURSE,MOBILE) select ID,NAME,COURSE,MOBILE from students where course="mech";
select * from mech;
create table civil(ID int,NAME varchar(100),COURSE varchar(50),MOBILE bigint);
insert into civil(ID,NAME,COURSE,MOBILE) select ID,NAME,COURSE,MOBILE from students where course="civil";
select * from civil;
create table eee(ID int,NAME varchar(100),COURSE varchar(50),MOBILE bigint);
insert into eee(ID,NAME,COURSE,MOBILE) select ID,NAME,COURSE,MOBILE from students where course="eee";
select * from eee;

