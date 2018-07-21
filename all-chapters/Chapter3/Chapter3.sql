************************************************
Chapter - 3
Using Single-Row Functions to Customize Output
Md. Shamim Sarker
************************************************

----------------------------------
Using Case_Manipulation Functions
----------------------------------

SELECT employee_id,
  last_name,
  department_id
FROM employees
WHERE last_name = 'King';

SELECT employee_id,
  last_name,
  department_id
FROM employees
WHERE lower(last_name) = 'king';

SELECT employee_id,
  last_name,
  department_id
FROM employees
WHERE initcap(last_name) = 'King';

SELECT employee_id,
  last_name,
  department_id
FROM employees
WHERE upper(last_name) = 'KING';

------------------------------------------
Using the Character-Manipulation Functions
------------------------------------------
SELECT employee_id,
  concat(first_name, last_name) NAME,
  job_id,
  LENGTH(last_name),
  INSTR(last_name, 'a') "Contains 'a'?"
FROM employees
WHERE SUBSTR(job_id, 4) = 'REP';

--------------------
Using ROUND Function
--------------------
SELECT ROUND (45.923,2), ROUND (45.923,0), ROUND (45.923,-1)
FROM dual;

--------------------
Using TRUNC Function
--------------------
SELECT TRUNC(45.923,2), TRUNC(45.923), TRUNC(45.923,-1)
FROM dual;

----------------------
Using the MOD Function
----------------------
SELECT last_name,
  salary,
  MOD(salary, 5000)
FROM employees
WHERE job_id = 'SA_REP';

------------------
Working with Dates
------------------
SELECT last_name, hire_date 
FROM employees 
WHERE hire_date < '01-FEB-03';

-------------------------------------
Using Arithmetic Operators with Dates
-------------------------------------
SELECT last_name,
  (sysdate-hire_date)/7 AS weeks
FROM employees
WHERE department_id = 90;

--------------------
Using Date Functions
--------------------
SELECT employee_id,
  hire_date,
  months_between (sysdate, hire_date) tenure,
  add_months (hire_date, 6) review,
  next_day (hire_date, 'FRIDAY'),
  last_day(hire_date)
FROM employees
WHERE months_between (sysdate, hire_date) < 120;


SELECT employee_id,
  hire_date,
  ROUND (hire_date, 'MONTH'),
  TRUNC(hire_date, 'MONTH')
FROM employees
WHERE hire_date LIKE '%05';
