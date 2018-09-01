*********************************************************
Extra Commands Which are collected from different source
Md. Shamim Sarker
*********************************************************

To see availabe table in the workspace
--------------------------------------
SELECT tname
FROM tab;

Single line and Multiple line Comments
--------------------------------------
-- is single line comment
/* some command text */ is multiline comments

To join two or more table
-------------------------
SELECT EMPLOYEES.EMPLOYEE_ID, EMPLOYEES.FIRST_NAME, DEPARTMENTS.DEPARTMENT_NAME
FROM DEPARTMENTS, EMPLOYEES;

Unlock an user account in sql plus
----------------------------------
alter user hr identified by hr account unlock;

The history of searching using LIKE operator
--------------------------------------------
select last_name
from employees
where last_name like 'A%'; 		// all names starting with A

select last_name
from employees
where last_name like '%n';		// all names which last character is n

select last_name
from employees
where last_name like '%n%';		// all names which hold n character at any position

select last_name
from employees
where last_name like '_o%';		// all names which second character is n

select last_name
from employees
where last_name like '__o%';		// all names which third character is n

select job_id
from employees
where job_id like '__\___' escape '\';	// searching with escape sequence