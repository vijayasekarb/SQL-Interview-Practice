
------Ques1:- Find employees earning more than the average salary
select * from hr.employees
where salary > (select avg(salary) from hr.employees);

------Ques2:- Find employees whose salary equals the maximun salary
select * from hr.employees
where salary =  (select max(salary) from hr.employees);

------Ques3:- Find employess working in the IT department using a subquery
select * from hr.employees
where DEPARTMENT_ID =
(select  DEPARTMENT_ID from hr.DEPARTMENTS 
where department_name = 'IT');

------Ques4:- Find department that have no employees
select * from hr.DEPARTMENTS d
where department_id not in 
(select  department_id from hr.employees e
where d.department_id = e.department_id
);

------Query5:-Find employees earning more than the average salary of thier department
select * from hr.employees a
where a.salary > (select  avg(salary) avg_sal from hr.employees e
 where a.department_id = e.department_id)

------Query6:- Find the third highest salary

select max(salary) from hr.employees
where salary <
(select max(salary) from hr.employees
where salary < (select max(salary) from hr.employees)) 
