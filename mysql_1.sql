-- creating and deleting  database and tables 

create database collage ;

show databases;

use collage;

create table student(id int , name varchar(20) , roll_no int , age int , email varchar(20));

select * from student;

show tables;

drop table student;

drop database collage;





-- alter commands in table
 
create table teacher(id int , name varchar(20) , age int , email varchar(20));

alter table teacher rename column name to teacher_name;

alter table teacher add column salary int ;

alter table teacher modify column  teacher_name varchar(50);

alter table teacher modify column  age int  after email ;

alter table teacher drop column salary ;

rename table teacher to teacher_data;






-- inserting rows in to table

create table employee(id int ,name varchar(50) , department varchar(50), salary int);

insert into employee(id , name , department , salary) 
values(1,"vijay jadhav" , "Data Science" , 50000);


insert into employee values(2,"Swapnil pisal","IT" , 50000),
(3,"avinash veer","sells",45000),
(4,"suraj nevse" , "IT" , 47000),
(5,"nikhil Thombare","Marketing" , 100000);

insert into employee(id , name , department , salary) values(6,null,"DS" ,10000),(7,null,"CA" , null);


