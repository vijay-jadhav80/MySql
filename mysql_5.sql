
-- getting current date and time 

select current_date();

select current_time();

select now();

select localtime();

select localtimestemp();

insert into logs values("a",now()), ("z",now());

select * from logs;



-- foreign key 

create table classes(class_id int primary key not null ,
class_name varchar(30) not null);

create table student(student_id int primary key not null ,
student_name varchar(50) not null ,
c_id int ,
foreign key (c_id) references classes(class_id));

INSERT INTO classes (class_id ,class_name) VALUES (1,'Sql'), (2,'Java'), (3,'Python');

INSERT INTO student (student_id , student_name, c_id) VALUES
(1,'Alice', 1),
(2,'Bob', 2),
(3,'Charlie', 1);