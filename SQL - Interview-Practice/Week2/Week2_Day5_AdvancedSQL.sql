/***Query1:-**/



select employee_id,
department_id,
salary,
top2
from
(select employee_id,
        department_id,
        salary,
 dense_rank() 
 over (partition by department_id order by salary desc) as top2
 from hr.employees )         
 where top2 in (1,2)
 order by department_id; 

/***Query2:-**/

select * from hr.EMPLOYEES
where salary > (select avg(salary) from hr.employees);

/***Query3:-**/

select * from 

(select employee_id,
month1,
lag(month1) over(order by employee_id) as month2
from(
select employee_id,
extract(month from hire_date) as month1
from hr.employees))
where  month1 = month2;

/***Query4:-**/



select employee_id,salary,
case 
when salary >= 20000 then 'High' 
when salary < 20000 and salary >= 5000 then 'Medium'
else 'Low'
end
from hr.employees;

/***Query5:-**/


with subq as
(select employee_id,
month1,
lag(month1) over(order by employee_id) as month2
from(
select employee_id,
extract(month from hire_date) as month1
from hr.employees))
select * from subq
where  month1 = month2;