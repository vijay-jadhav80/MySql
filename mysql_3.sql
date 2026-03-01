
create table  collage (
id int primary key not null,
 name varchar(100) not null,
 age INT constraint check (age > 18),
 grade varchar(10) default "C",
 date_of_birth date
);


-- update queries

update collage set age = 22 where id = 1;

update collage set grade = "D" where id = 3;

update collage set age = 22 , grade = "C" where id = 7;

update collage set grade = "B" where grade = "C";

update collage set age = age + 1 where age = 20;

update collage set grade = "Uknown" where grade is null;

select * from collage ;




-- delete queries

delete from collage where age <20;

delete from collage where id = 2;

delete from collage where grade = "D";

delete from collage where grade is null;

delete from collage ;

drop table  collage ;