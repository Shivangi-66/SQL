#simplilearn practice
create database sql_intro;
show databases;
use sql_intro;
create table emp_details(
name varchar(50),
age int ,
gender char(1),
dob date,
city varchar(15),
salary float
);
describe emp_details;
insert into emp_details values("shane",35,"m","2005-05-30","chicago",70000),
("sara",24,"f","2000-07-12","delhi",1000000),
("shivangi",22,"f","2002-05-12","raipur",10000000),
("vaishnavi",21,"f","2002-08-02","delhi",1200000),
("arpita",21,"f","2002-09-4","chicago",21000000),
("tejas",23,"m","2002-04-28","raipur",22000000),
("jadya",24,"m","2003-01-28","nagpur",220000),
("pravin",22,"m","2002-05-08","raipur",1200000);

select * from emp_details;



 
