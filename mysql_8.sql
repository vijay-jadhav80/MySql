-- view in mysql

-- creating view 
create  view public_employee as select name, age, department from emps;

select * from public_employee; 

-- modify view 
create or replace view public_employee  as select name, age, salary from emps;

select * from public_employee; 

drop view public_employee;


create view senior as select name , age , department from emps where age > 30;

select * from senior;

create view junior_It_emps as select name , age , department  from emps where age < 25 and department = "IT"; 

select * from junior_It_emps; 




-- Mysql Indexes

CREATE TABLE users (
    id INT,
    name VARCHAR(50),
    city VARCHAR(50),
    email VARCHAR(100)
);


INSERT INTO users (id, name, city, email) VALUES
(1, 'Amit Sharma', 'Mumbai', 'amit.sharma@gmail.com'),
(2, 'Priya Singh', 'Pune', 'priya.singh@gmail.com'),
(3, 'Rahul Patil', 'Nagpur', 'rahul.patil@gmail.com'),
(4, 'Sneha Kulkarni', 'Nashik', 'sneha.kulkarni@gmail.com'),
(5, 'Vikram Deshmukh', 'Kolhapur', 'vikram.deshmukh@gmail.com'),
(6, 'Neha Joshi', 'Delhi', 'neha.joshi@gmail.com'),
(7, 'Rohan Mehta', 'Bangalore', 'rohan.mehta@gmail.com'),
(8, 'Pooja Verma', 'Hyderabad', 'pooja.verma@gmail.com'),
(9, 'Karan Yadav', 'Chennai', 'karan.yadav@gmail.com'),
(10, 'Anjali Gupta', 'Jaipur', 'anjali.gupta@gmail.com');


select * from users;


create index email_index on users(email);

describe users;

create index name_city on users(name,city);

describe users;

drop index emil_index on users;

show index from users;
