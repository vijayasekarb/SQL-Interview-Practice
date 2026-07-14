/***Ques1:- Create a View showing below coulns as in select query***/

CREATE VIEW vw_emp_det
as
SELECT first_name,department_id,salary
FROM hr.employees;

/***Ques2:- Retreive data using view***/

select * from  vw_emp_det;

/***Ques3:- Query to Retreive emp eraning more than dept avg salary data using view***/

Create view vw_avg_sal
as
select b.employee_id,b.department_id,b.salary,a.avg_sal
from
(select department_id,avg(salary) as avg_sal
from hr.EMPLOYEES
group by department_id)a
join
hr.employees b
on a.department_id = b.department_id;

select * from vw_avg_sal
where salary > avg_sal;


