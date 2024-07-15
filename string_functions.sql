
# some basic operations in mysql
select (50+30) as addition;
select (50-30) as sub;
select(11%2) as modulus;
select length("shivangi") as name_len;
select repeat('@',5);
select upper('shivi');
select curdate();
select day(curdate());
select now();

#string functions
select upper('shivi')as upr_case;
select lcase('SHIVI') as first_letter; 
select character_length('India') as total_len;
select character_length(name) as total_len from emp_details;
select concat('shivi',' shubhi',' shivangi');
select name,age, concat(name," ",age)as name_age from emp_details;
select reverse("shivi");
select reverse(name) from emp_details;
select replace("orange is a vegetable","vegetable","fruit");
select length("                 india            ");
select length(rtrim("                 india            "));
select position("FRUIT" in "orange is a fruit");
select ascii(1);
select ascii("A");