
------Ques1:- Find the highest paid employee in every department using ROW_NUMBER().
SELECT * FROM 
(
SELECT E.*,
ROW_NUMBER() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) AS HIGH_SAL
FROM HR.EMPLOYEES E)SQ
WHERE HIGH_SAL = 1
ORDER BY DEPARTMENT_ID;

------Ques2:- Find the top 3 highest salary in the company
SELECT DISTINCT SQ.SALARY FROM (SELECT E.*,
DENSE_RANK() OVER(ORDER BY SALARY DESC) AS HIGH_SAL
FROM HR.EMPLOYEES E)SQ
WHERE SQ.HIGH_SAL < 4;

------Ques3:- Find employess with the same salary using rank
SELECT SQ.* FROM 
(SELECT E.*,
RANK() OVER(ORDER BY SALARY ) AS HIGH_SAL
FROM HR.EMPLOYEES E)SQ
WHERE SQ.HIGH_SAL > 1;

------Ques4:- Find second highest salary in each department
SELECT SQ.* FROM 
(SELECT E.*,
DENSE_RANK() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY ) AS HIGH_SAL
FROM HR.EMPLOYEES E)SQ
WHERE SQ.HIGH_SAL = 2
ORDER BY SQ.DEPARTMENT_ID;

------Query5:-Assign a row number to employees ordered by hire date
SELECT E.*,
row_number() OVER(ORDER BY HIRE_DATE ) AS HIGH_SAL
FROM HR.EMPLOYEES E

------Query6:- Explain why dense rank is preferred over rank() in some reporting scenarios

/*Reason is very simple when we want to consider records with same data or the records following the same set of data
for any analysis we have to go for DENSE_RANK() instead of RANK()  */
