create database triggers;
use triggers;
show tables;
drop table customers;

# before insert trigger
 create table customers
 (cust_id int, age int,name varchar(30));
 
 # a delimiter is a marker for the end of each command
 delimiter //
 create trigger age_verify 
 before insert on customers
 for each row 
 if new.age < 0 then set new.age=0;
 end if;//
 
 insert into customers
 values (1001,27,"james"),
 (1002,-40,"amay"),
 (1003,32,"ben"),
 (1004,-39,"avani");
 
 select * from customers;
 
 # after insert trigger

 
 create table customers1(
 id int auto_increment primary key,
 name varchar(40) not null,
 email varchar(30),birthdate date);

create table message (
id int auto_increment,
messageId int,
message varchar(300)not null,
primary key (id ,messageId));

delimiter //
create trigger
check_null_dob
after insert
on customers1
for each row
begin
if new.birthdate is null then
insert into message (messageId , message)
values (new.id,concat('hi' ,new.name,'please update your dob'));
end if;
end//
delimiter ;

insert into customers1(name,email,birthdate)
values ("Nancy","nancy@abc.com",null),
("ronald","roanld@xyz.com","1998-11-16"),
("chris","chris@xyz","1997-08-20"),
("alice","alice@anc.com",null);

select * from customers1;
select * from message;