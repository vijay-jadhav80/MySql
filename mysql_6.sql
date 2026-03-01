
-- joins in sql


insert into students values(1,"vijay"),(2,"swapnil");

insert into marks values(1,"sql",90),(2,"sql",88),(2,"python",80);

-- inner join 
select students.name ,marks.subject , marks.score 
from students inner join 
marks  on students.id = marks.student_id;

-- left join (outer join)

select students.name ,marks.subject , marks.score
from students left join marks
on students.id = marks.student_id;

-- right join
select students.name , marks.subject , marks.score
from students right join marks 
on students.id = marks.student_id;


-- cross join
select students.name , marks.subject , marks.score 
from students cross join marks; 





-- union and union all queries 

select name , city from customers 
union 
select name , city from venders;

select * from customers 
union all
select * from venders;
