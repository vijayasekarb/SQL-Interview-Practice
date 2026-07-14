
/*Ques-1

Find employees whose salary is above the department average using a CTE */

with avg_sal as (
select department_id as department_id ,avg(salary) as salary
from hr.EMPLOYEES
group by department_id)
select * from hr.EMPLOYEES a
join
avg_sal b
on  a.DEPARTMENT_ID = b.department_id
and a.salary > b.salary;

/*Ques-2

Find the top 3 highest salaries department wise using a CTE */


with avg_sal as (
select  department_id , salary,
row_number() over(partition by department_id order by salary desc ) as rn
from hr.EMPLOYEES)
select * from avg_sal
where rn < 4;

/*Ques-3

Rewrite one of your previous subquery using a CTE using a CTE 

------Ques4:- Find department that have no employees
select * from hr.DEPARTMENTS d
where department_id not in 
(select  department_id from hr.employees e
where d.department_id = e.department_id
);*/



with dept_no_emp as (
select  *
from hr.departments)
select distinct a.department_id from dept_no_emp a
Left join
hr.employees b
on a.department_id <>  b.department_id
where b.department_id is null;