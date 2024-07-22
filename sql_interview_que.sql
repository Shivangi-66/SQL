# 1.Find the lowest salary of the employee in each department
use sql_intro;
describe emp_details;
select * from emp_details;

select city ,min(salary)
as lowest_salary from emp_details
group by city;

# query to select unique values from a column in table
select distinct city from emp_details;

# query to fetch unique values of dpt and print their length
select distinct city as unique_city, length(city) from emp_details;
 
 # datediff fun- returns no.of days b/w 2 date,datetime or timestamp values
 select datediff('2024-05-12','2024-06-9')as total_days;
 select datediff(now(),'2024-06-14');
 
 # query to diaplay dpt/city that has more than 2 employees
 select city, count(name) as count from emp_details
 group by city
 having count(name)>5;
 
 # details of emp for all dpt/city except marketing
 select * from emp_details 
 where city != 'delhi';
    #or
select * from emp_details
where city <> 'delhi'; # <> represents not equal to

# query to print details of emp who has joined in before april 2010 and after may 2005
select * from emp_details
where doj between '2005-06-01' AND '2010-03-31';
      #or
select * from emp_details
where doj>'2005-05-31' AND doj <'2010-03-31';

# emp with 3rd highest salary
select * from
(select * from emp_details order by salary desc limit 3)
as highest order by salary limit 1;

# print all the alternate records
select * from emp_details where age%2=0;
with CTE as # common table expression
(
select *,row_number() over (order by name)as ab
from emp_details
)
select* from cte where ab % 2=0;


# add emp_id column to table
alter table emp_details
add column emp_id int ;

# update emp_id of each employee
update emp_details 
set  emp_id=101 
where name='shane';
set sql_safe_updates=0;
select * from emp_details;

# query to fetch all duplicate rows 
select emp_id ,name,age ,count(*) as dup_count 
from emp_details group by emp_id,name ,age 
having count(emp_id)>1 and count(name)>1 and count (age)>1;
 
# emp with 2 A's in name
select length(replace(upper(name),'a','')) from emp_details ; # query to replace a and count the left out letters
select * from emp_details where length(name) - length(replace(upper(name),'a','')) =2;


# from given string "michael ballack" extract 4 char starting from 2nd position
select substr('michael ballack',2,4);
	# or
select substring('michael ballack',2,4);

# query to print one row twice in result from table  
select name,city from emp_details as e
where e.city ='raipur'
union all
select name,city from emp_details as e1
where e1.city ='raipur';

# using num tble add 10 where num is 0,20 where num is 1 else print the number itself
create table num (n_id int);
insert into num values(0),(3),(3),(1),(2),(0),(2),(3),(1),(0),(2),(1);
select * from num;
select n_id ,
case when n_id =0  then n_id +10
when n_id =1  then n_id +20
else n_id end as num_add
from num;

#add +ve and -ve values
select sum(case when num_int>0 then num_int else 0 end)as sum_pos,
sum(case when num_int <0 then num_int else 0 end)as sum_neg
from num1;