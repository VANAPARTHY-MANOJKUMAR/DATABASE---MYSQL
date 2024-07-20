---- CREATING THE TABLE ----
create table students(ID int key auto_increment,NAME varchar(100) not null,COURSE varchar(50),MOBILE int);
desc students;

----- INSERTING THE VALUES INTO TABLE USING INSERT ----
insert into students(NAME,COURSE,MOBILE) values("manoj","cse",8106444512),("vasu","civil","9948989648");

alter table students modify column MOBILE bigint;

insert into students(NAME,COURSE,MOBILE) values("vinod","mech",6320047000);

insert into students(NAME,COURSE,MOBILE) values("prasana","mech",2566352252),("hari","civil",55668642266),("navin","mech",99868571265),("ravi","cse",7045866125),("don","eee",996562552),
("gavi","eee",683692661);

---- SELECTING THE ALL COLUMN PRESENT IN THE STUDENTS TABLE  USING SELECT----
select * from students;

---- SELECTING THE NAMES  COLUMN FROM STUDENTS TABLE USING SELECT ----
select name from students;
---- SELECTING THE NAME AND COURSE COLUMNS FROM STUDENTS TABLE USING SELECT ----
select name,course from students
---- SELECTING THE NAME AND MOBILE COLUMNS FROM STUDENTS TABLE USING SELECT ----
select name,mobile  from students
---- SELECTING THE MOBILE COLUMN FROM STUDENTS TABLE USING SELECT ----
select mobile from students

---- CREATING THE INDIVIDUAL TABLE FROM EACH COURSE ----
create table cse(ID int,NAME varchar(100),COURSE varchar(50),MOBILE bigint);
desc cse;
insert into cse(ID,NAME,COURSE,MOBILE) select ID,NAME,COURSE,MOBILE from students where course="cse";
select * from cse;

select id,name from students

select id, course from students

create table mech(ID int,NAME varchar(100),COURSE varchar(50),MOBILE bigint);
insert into mech(ID,NAME,COURSE,MOBILE) select ID,NAME,COURSE,MOBILE from students where course="mech";
select * from mech;
create table civil(ID int,NAME varchar(100),COURSE varchar(50),MOBILE bigint);
insert into civil(ID,NAME,COURSE,MOBILE) select ID,NAME,COURSE,MOBILE from students where course="civil";
select * from civil;
create table eee(ID int,NAME varchar(100),COURSE varchar(50),MOBILE bigint);
insert into eee(ID,NAME,COURSE,MOBILE) select ID,NAME,COURSE,MOBILE from students where course="eee";
select * from eee;

SET SQL_SAFE_UPDATES=0;
 ---- DELETING THE RECORDS FROM THE TABLE CIVIL ----
delete from civil;
---- DELETING ALL THE RECORDS OF PARTICULAR STUDENT BASED ON NAME ----
delete from mech where name="navin";
 select * from mech;
 ---- UPDATE IS USED FROM UPDATING THE VALUES IN TABLE ----
 update students set mobile=8106444412 where name="manoj"
 select * from students;
 
 update students set name="manoj" where name="kumar"

select name from students;

