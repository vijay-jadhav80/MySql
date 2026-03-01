
create table employee(id int ,name varchar(50) , department varchar(50), salary int);


insert into employee values(2,"Swapnil pisal","IT" , 50000),
(3,"avinash veer","sells",45000),
(4,"suraj nevse" , "IT" , 47000),
(5,"nikhil Thombare","Marketing" , 100000);

insert into employee(id , name , department , salary) values(6,null,"DS" ,10000),(7,null,"CA" , null);

-- Constraints 

-- primary key Constraint

create table school(id int primary key ,
 name varchar(20));

-- NOT NULL Constraint
 
CREATE TABLE emp (
id INT NOT NULL,
 name VARCHAR(100) NOT NULL
);
 
 -- UNIQUE Constraint
 
 create table emp2(user_name varchar(20) unique ,
 email varchar(20) unique);


-- DEFAULT Constraint

create table emp3(name varchar(20) not null ,
country varchar(20) default "India");


-- check Constraint 

create table manager(id int primary key ,
name varchar(20) not null , 
age int constraint check_age check(age > 18) );



create table  collage (
id int primary key not null,
 name varchar(100) not null,
 age INT constraint check (age > 18),
 grade varchar(10) default "C",
 date_of_birth date
);

-- select statements 
 
select * from collage;

select name , age  from collage;

-- using where clause 

select * from collage where grade = "C";

select * from collage where age > 23;

select * from collage where grade <> "A";

select * from collage where age between 20 and 30;

select * from collage where grade not in("C");

select * from collage where grade in ("A");

select * from collage where name like "%a";

select * from collage where name like "a%";

select * from collage where name like "%a%";




select * from collage where grade is null;

select * from collage where date_of_birth is not null;

select * from collage where grade = "c" and age > 20;

select * from collage where age > 22 and date_of_birth is null;

select * from collage where grade = "A" or grade= "B";

select * from collage where (grade = "C" or grade = "B") and  age > 20; 

select * from collage  order by age asc;

select * from collage order by name desc;

select * from collage limit 4;

select * from collage limit 2,5;

select * from collage where date_of_birth like "2025-__-__";

select * from collage where date_of_birth like "____-10-__";


