# SQL joins
drop table cricket;
drop table football;
 create table cricket(cricket_id int auto_increment,
 name varchar(30), primary key(cricket_id));
 
 create table football(football_id int auto_increment,
 name varchar(30), primary key(football_id));
 
 insert into cricket(name) values('shivi'),('teja'),('paryya'),('fale'),('arpii');
 select * from cricket;
 
 insert into football(name) values('shivi'),('teja'),('paryya'),('khushi'),('dada');
 select * from football;

 #SQL- Inner join- used to fetch rows that are common in both the tables
 #find stud who are part of both the teams
 select * from cricket as c inner join  #here we have used inner join bcoz we want to combine both table and find the common row
 football as f on c.name=f.name; 
 
 # SQL- Outer join- used to fetch rows which is not common in both the tables
 # find stu who are present in cricket table but not in football
 select * from cricket as c left join
 football as f on c.name=f.name;
 
 select * from cricket;
 