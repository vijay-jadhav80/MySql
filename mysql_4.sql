
-- Tcl commands transaction autocommit , rollback , commit

create table sbi(id int primary key , accno int , balance int );
insert into sbi values (1, 0001 , 200),(2,0002,200);

select @@autocommit;

set autocommit = 0;

start transaction;

update sbi set balance = balance + 100 where  id = 1;

update sbi set balance =balance - 100 where id = 2;

commit;

select * from sbi;



start transaction ;

update sbi set balance = balance - 100 where id = 1;

update sbi set balance = balance + 100 where id = 2;

select * from sbi;

rollback;

select * from sbi;


set autocommit = 1;