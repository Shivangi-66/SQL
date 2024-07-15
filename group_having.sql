# sql group by and having clause
 # just an examplse find avg salary of emp in each city
 select distinct city from emp_details;
 select city,round(avg(salary)) as avg_salary #round funtion is used to round the decimal places ,round(age,1) i.e,upto 1 decimal place
 from emp_details
 group by city;
 
 select city,sum(salary) as sum_salary 
 from emp_details
 group by city;
 
 select city,avg(salary) as avg_salary 
 from emp_details
 group by city
 order by count(city) desc;
 
 # having clause is condition applied on groups...count no of emp in each city whrer max salary is >100000000
 select count(name),city
 from emp_details
 group by city
 having max(salary)>10000000;
 
 select sum(name),city
 from emp_details
 group by city
 having max(salary)>10000000;
 
 select count(*),city
 from emp_details
 group by city
 having count(*)>2;
 
 select count(name),city
 from emp_details
 where city !="delhi"
 group by city
 having max(salary)>100000;