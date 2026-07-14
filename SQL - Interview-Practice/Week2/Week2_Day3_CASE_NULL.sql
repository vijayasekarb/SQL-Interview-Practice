
/***Ques1
Display employees as per salary***/

select emp.employee_id,
       emp.salary,
       case when emp.salary > 10000 then 'High Salary'
            when emp.salary  between 5000 and 10000 then 'Medium Salary'
            when emp.salary < 5000 then 'Low salary'
            else null
            end
from hr.employees emp;

/***Ques2
Display department wise
Total salary
Average Salary***/

select emp.department_id,
       case when department_id = 90 then sum(salary)
            when department_id = 60 then sum(salary)
       else null
       end,
       case when department_id = 90 then avg(salary)
            when department_id = 60 then avg(salary)
            else null
       end          
from hr.employees emp
group by emp.department_id;

/***Ques3
Replace null comission with 0***/

select commission_pct,
       nvl(commission_pct,0),
       coalesce(commission_pct,0)
from hr.employees emp;

/***Ques4
Generate a report showing 

employee
department
salary band
comission ***/

SELECT 
    e.employee_id,
    e.first_name || ' ' || e.last_name AS employee_name,
    e.salary,
    NVL(e.commission_pct, 0) AS commission_percentage,
    ROUND(e.salary * NVL(e.commission_pct, 0), 2) AS commission_amount
    FROM 
    hr.employees e;
