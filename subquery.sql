use  sql_intro;
create table stud_details (
rollno int,
name varchar(50),
marks int);
show tables;
describe stud_details;
insert into stud_details values(
101,'Anil',78),(102,'Bhumika',93),(103,'Chetan',85),(104,'Dhruv',96),(105,'Emanuel',92),(106,'Farahn',82);
select * from stud_details;