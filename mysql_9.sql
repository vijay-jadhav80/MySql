-- Subqueries in my sql

use collage;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    dept VARCHAR(30),
    salary INT
);

INSERT INTO employees (id, name, age, dept, salary) VALUES
(1, 'Amit', 25, 'IT', 45000),
(2, 'Priya', 28, 'HR', 40000),
(3, 'Rahul', 30, 'Finance', 55000),
(4, 'Sneha', 26, 'Marketing', 42000),
(5, 'Vikram', 35, 'IT', 70000),
(6, 'Neha', 27, 'Sales', 38000);




select * from employees
 where salary >
 (select avg(salary) from employee);


select dept , avg_salary 
from (select dept ,avg(salary)
 as avg_salary from employees 
 group by dept) as dept_avg
 where avg_salary > 50000;



CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    dept VARCHAR(30),
    budget INT,
    start_date DATE,
    end_date DATE
);


INSERT INTO projects (project_id, project_name, dept, budget, start_date, end_date) VALUES
(1, 'Website Redesign', 'IT', 500000, '2024-01-10', '2024-04-15'),
(2, 'Mobile App', 'IT', 750000, '2024-02-01', '2024-06-30'),
(3, 'Recruitment Drive', 'HR', 200000, '2024-03-01', '2024-05-31'),
(4, 'Payroll System', 'Finance', 400000, '2024-01-20', '2024-03-30'),
(5, 'Digital Marketing', 'Marketing', 350000, '2024-02-15', '2024-07-15');



select name ,
(select count(*) from projects 
where employees.id = projects.project_id) 
as project_count 
from employees; 


select name , dept , salary 
from employees where salary >
(select avg(salary) from employees
where dept = employees.dept);
