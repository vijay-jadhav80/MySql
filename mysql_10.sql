
-- Group by clouse

select dept , avg(salary) as avg_salary
from employees 
group by dept ;

select dept , count(*) as count 
from employees
group by dept;

alter table employees 
add column job_title varchar(20);

update employees 
set job_title = "frontend" 
where id = 1 or id = 2 or id = 5 or id = 7; 

update employees 
set job_title = "backendend" 
where id = 9 or id = 8 or id = 4 or id = 6; 
 
 
 select dept , job_title , count(*) 
 as count 
 from employees
group by dept , job_title;
  


-- Having clouses

select dept , count(*) as count
from employees
group by dept 
having count(*) > 1;


select dept , avg(salary) as avg_salary 
from employees
where age > 31
group by dept 
having avg(salary) > 50000;