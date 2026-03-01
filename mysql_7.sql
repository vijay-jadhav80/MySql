
-- my sql functions 

select concat("Vijay" , "Jadhav") ;

select length("Vijay");

select round(88.2848,2);

select datediff("2026-02-16","2003-10-04");

select year(now());

select monthname("2003-10-04");

create table emps(emp_id int , name varchar(50),age int ,department varchar(20),salary int);

INSERT INTO emps (emp_id, name, age, department, salary) VALUES
(1, 'Amit Sharma', 25, 'IT', 40000),
(2, 'Priya Singh', 28, 'HR', 35000),
(3, 'Rahul Patil', 30, 'Finance', 50000),
(4, 'Sneha Kulkarni', 26, 'IT', 42000),
(5, 'Vikram Deshmukh', 35, 'Sales', 55000),
(6, 'Neha Joshi', 29, 'Marketing', 45000),
(7, 'Rohan Mehta', 32, 'IT', 60000),
(8, 'Pooja Verma', 27, 'HR', 38000),
(9, 'Karan Yadav', 31, 'Finance', 52000),
(10, 'Anjali Gupta', 24, 'Sales', 30000);

select count(*) from emps;

select avg(salary) from emps;

select sum(salary) from emps;

select min(age) from emps;

select max(age) from emps;
