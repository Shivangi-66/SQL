CREATE DATABASE temp1;

create database college;
USE COLLEGE;


create database if not exists college;
CREATE DATABASE temp2;

drop database if exists company;
show databases;
show tables;


DROP DATABASE TEMP1;
drop database temp2;


create table student (
sid int primary key,
name varchar(50),
age int not null
); 

insert into student values (1, "Tejaaaa",22);
insert into student values (2, "Shubhii",21);
insert into student 
(sid,name,age)
values
(3,"shivangi",25);
select * from student;
DROP TABLE EMP;

USE COLLEGE1;
