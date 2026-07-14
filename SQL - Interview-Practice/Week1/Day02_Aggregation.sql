
------Ques1:- Query the total population of all cities in CITY where District is California.
select sum(population) from city where district = 'California';

------Ques2:- Query the average population of all cities in CITY where District is California.
select avg(population) from city where district = 'California';

------Ques3:- Query the average population for all cities in CITY, rounded down to the nearest integer.
select round(avg(population)) from city;

------Ques4:- Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
select SUM(POPULATION) from city where countrycode ='JPN';

------Query5:-the difference between the maximum and minimum populations in CITY.
SELECT MAX(POPULATION) - MIN(POPULATION) FROM CITY;

------Query6:- Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was ---broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and ---the actual average salary.

---Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.

select ceil((a-b)) from (SELECT
avg(salary) a,
avg(cast(replace(cast(salary as varchar(10)),'0','') as int)) b FROM EMPLOYEES);

SELECT CEIL(AVG(salary) - AVG(REPLACE(salary, '0', ''))) 
FROM EMPLOYEES;

-----Query7:-We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in ---the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. ---Then print these values as  space-separated integers.

-----Query8:-Query the following two values from the STATION table:

---The sum of all values in LAT_N rounded to a scale of  decimal places.
---The sum of all values in LONG_W rounded to a scale of  decimal places.

select round(sum(LAT_N),2),round(sum(LONG_W ),2) from station;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
---HR Schema practice:-

---Ques1:- Display deptment name and employee count

select dept.department_name,count(emp.employee_id)
from hr.employees emp  inner join
hr.departments dept
on emp.DEPARTMENT_ID = dept.DEPARTMENT_ID
group by dept.department_name;

---Ques2:- Display deptment name havinng more than 5 employees
select dept.department_name,count(emp.employee_id)
from hr.employees emp  inner join
hr.departments dept
on emp.DEPARTMENT_ID = dept.DEPARTMENT_ID
group by dept.department_name
having count(emp.employee_id) > 5;

---Ques3:- Find avg salary in each department
select dept.department_name,avg(emp.salary)
from hr.employees emp  inner join
hr.departments dept
on emp.DEPARTMENT_ID = dept.DEPARTMENT_ID
group by dept.department_name;

---Ques4:- Find avg salary in each department
select dept.department_name,avg(emp.salary)
from hr.employees emp  inner join
hr.departments dept
on emp.DEPARTMENT_ID = dept.DEPARTMENT_ID
group by dept.department_name;
having avg(emp.salary) > 7000;

---Ques5:- Find highest salary in each department
select dept.department_name,max(emp.salary)
from hr.employees emp  inner join
hr.departments dept
on emp.DEPARTMENT_ID = dept.DEPARTMENT_ID
group by dept.department_name;

---Ques6:- Display the department having the highest average salary


select op.dname
as high
from 
(select dept.department_name as dname,avg(salary) as avg_sal
from hr.employees emp  inner join
hr.departments dept
on emp.DEPARTMENT_ID = dept.DEPARTMENT_ID
group by dept.department_name)op 
where op.avg_sal in (select max(avg_sal) from (select dept.department_name as dname,
avg(salary) as avg_sal
from hr.employees emp  inner join
hr.departments dept
on emp.DEPARTMENT_ID = dept.DEPARTMENT_ID
group by dept.department_name ));

    
select dept.department_name as dname,avg(salary) as avg_sal
from hr.employees emp  inner join
hr.departments dept
on emp.DEPARTMENT_ID = dept.DEPARTMENT_ID
group by dept.department_name
order by avg(salary) desc
FETCH  FIRST 1 ROW ONLY;




