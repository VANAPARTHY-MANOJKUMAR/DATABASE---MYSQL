create database aggregate_functions;
use aggregate_functions;

create table student(
	id int not null,
    stuname varchar(100) not null,
    studsubject varchar(100) not null,
	marks int default 0
	);

desc student;

insert into student values(1,"varun","english",90),(1,"varun","maths",70),(1,"varun","social",70),
							(2,"vikram","english",70),(2,"vikram","maths",90),(2,"vikram","social",40),
                            (3,"raju","english",60),(3,"raju","maths",75),(3,"raju","social",80),
                            (4,"manoj","english",65),(4,"manoj","maths",99),(4,"manoj","social",70)
                            ;
                            
select * from student;


-- INDIVIDUAL SUBJECT MARKS OF STUDENTS
select id,stuname,marks as english_marks from student where studsubject="english";
select id,stuname,marks as maths_marks from student where studsubject="maths";
select id,stuname,marks as social_marks from student where studsubject="english";

-- COUNT OF INDIVIDUAL STUDENT
select id,stuname,count(id) as records from student where id=1 group by id,stuname;
select id,stuname,count(id) as records from student where id=2 group by id,stuname;
select id,stuname,count(id) as records from student where id=3 group by id,stuname;
select id,stuname,count(id) as records from student where id=4 group by id,stuname;

-- COUNT OF ALL STUDENTS AT A TIME
select id,stuname,count(id) as records from student group by id,stuname;


-- SUM OF TOTALMARKS OF INDIVIDUAL STUDENT 
select id,stuname,sum(marks) as varun_marks from student where stuname="varun" group by id,stuname;
select id,stuname,sum(marks) as vikram_marks from student where stuname="vikram" group by id,stuname;
select id,stuname,sum(marks) as raju_marks from student where stuname="raju" group by id,stuname;
select id,stuname,sum(marks) as manoj_marks from student where stuname="manoj" group by id,stuname;

-- SUM OF TOTALMARKS OF ALL STUDENTS AT A TIME
select id,stuname, sum(marks) as total_marks from student GROUP BY id,stuname order by total_marks asc;

-- AVERAGE MARKS OF INDIVIDUAL STUDENT
select id,stuname,avg(marks) as varun_avg from student where stuname="varun" group by id,stuname;
select id,stuname,avg(marks) as vikram_avg from student where stuname="vikram" group by id,stuname;
select id,stuname,avg(marks) as raju_avg from student where stuname="raju" group by id,stuname;
select id,stuname,avg(marks) as manoj_avg from student where stuname="manoj" group by id,stuname;

-- AVERAGE MARKS OF ALL STUDENTS AT A TIME
select id,stuname,avg(marks) as average from student GROUP BY id,stuname;


-- MAXIMUM MARKS OF INDIVIDUAL STUDENT
select id,stuname,max(marks) from student group by id,stuname having stuname="varun";
select id,stuname,max(marks) from student group by id,stuname having stuname="vikram";
select id,stuname,max(marks) from student group by id,stuname having stuname="raju";
select id,stuname,max(marks) from student group by id,stuname having stuname="manoj";

-- MAXIMUM MARKS OF ALL STUDENTS AT A TIME
select id,stuname,max(marks) from student group by id,stuname;


-- MINIMUM MARKS OF INDIVIDUAL STUDENT 
select id,stuname,min(marks) from student group by id,stuname having stuname="varun";
select id,stuname,min(marks) from student group by id,stuname having stuname="vikram";
select id,stuname,min(marks) from student group by id,stuname having stuname="raju";
select id,stuname,min(marks) from student group by id,stuname having stuname="manoj";

-- MINIMUM MARKS OF ALL STUDENTS AT A TIME
select id,stuname,min(marks) from student group by id,stuname;


-- CREATING A NEW TABLE AND INSERTING STUDENT DATA INTO IT

create table final_marks(
	id int primary key,
    stu_name varchar(100),
    stud_marks int
    );
    
insert into final_marks select id,stuname, sum(marks) as total_marks from student GROUP BY id,stuname order by total_marks asc;

select*from final_marks;