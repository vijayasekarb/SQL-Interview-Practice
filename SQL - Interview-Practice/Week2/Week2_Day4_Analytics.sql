
/****Query1
Find employees salary increased compared to previous employee (use LAG) concept***/


select * from
(
select 
employee_id,
salary,
lag(salary) over(order by employee_id) as con   from hr.employees
order by department_id 
)
where salary > con;

/***Query2

Display the next employee salary using Lead***/


select * from
(
select 
employee_id,
salary,
LEAD(salary) over(order by employee_id) as con   from hr.employees
);

/*** Query3 
Find employees hired in the current year***/


SELECT *     FROM HR.employees
WHERE  EXTRACT(YEAR FROM  hire_date) = 2016;

/*** Query4
***/
 SELECT  sysdate,hire_date,
 round(Months_between(sysdate , hire_date)) as yos,
 (sysdate - hire_date) as yos1
 FROM HR.employees
 where round(Months_between(sysdate , hire_date)) > 120;
 
/*** Query5
Create a reprt showing

Emp
dept
department rank,
previous salry,
salary diff

***/

SELECT * FROM
(select 
employee_id,
department_id,
salary,
dense_rank() over(order by DEPARTMENT_ID) AS RN,
LAG(SALARY) OVER(ORDER BY DEPARTMENT_ID ) AS PR1
from hr.employees;
