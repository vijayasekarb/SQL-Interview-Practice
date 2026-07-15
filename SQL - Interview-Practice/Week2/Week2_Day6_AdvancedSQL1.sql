“ WIP.ext Me o Peer

To Do Tasks.txt

B LS, @

iii
<

File Edit © View Lh Gi LAW LA Ht
1.select salary 00)
from (select salary, iNT}
row number () aver (order by salary dese) as rn
from hr.employees)
where rn << 4505000 OAL
2.select salary
from (select salary,
rank() over(order by, salary desc) as wen:
from hr.employees). ,
where rn < 4;
3.select distinct salary. from (select salary,
dense _rank() over(order by salary: desc). as rn
from hr.employees) where mo < 4; i "
4.with avgsal as (select avg(salary) as avs from h br. enployees )
select * from hr.employees main
join avgsal ON
on main.salary > avgsal.avgs PSS A
5. with dept_maxsal as (select debarenste Adanax(seler ) as maxsal
from hr.EMPLOYEES
group by department id),
dept_minsal as
(select department id,min(salary) as minsal
from hr. EMPLOYEES
group by department_id) select distinct nein.depactuent. id.deot inexeal.naxsal,
dept_minsal.minsal
from hr. EMPLOYEES main

join
dept_maxsal on dept_maxsal.department_id = main.department_id
join

dept_minsal on dept_minsal. -depart i
é.select * Frow’ bee eines ctment_id dept_maxsal department id

where extract(year from hire date) > 2016

