                     # SQL COMMANDS 

# Data Definition Language -- create ,drop,alter,truncate 
 create table aaa(
 id int(20) primary key,
 n varchar(50),
 mbl int(20),
 doj date
 );
 describe aaa;
 select * from aaa;
 drop table aaa;
 alter table aaa 
 add column address varchar(50) ;
 alter table aaa
 drop column address;
alter table aaa 
rename to  bbb;
select * from bbb;
alter table bbb 
change doj dob date ;
alter table bbb
modify  mbl int(30);
rename table bbb to aaa; 
select * from aaa;

# Data uery Language  command --select
select * from aaa;

# Data Manipulation Lnaguage -- insert.update,delete
insert into aaa values (001,'aa',741852932,'2001-12-12'),
(002,'bb',123654796,'2001-11-11');
update aaa
set id=0011 where id=001;
delete from aaa where n='aa';
set sql_safe_updates=0;

# Data Control Language -- grant ,revoke

#Transaction Control Language -- commit,rollback,savepoint
commit;
rollback;
savepoint abc;