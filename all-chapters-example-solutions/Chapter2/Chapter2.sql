=============================
Chapter - 2
Restricting and Sorting Data
Md. Shamim Sarker
=============================

Limiting The Rows That Are Selected
-----------------------------------
SELECT attribute1, attribute2, attribute3, attribute4
FROM tableName
WHERE attribute = anyValueAvailableInThatAttribute;

Character Strings
-----------------
SELECT attribute1, attribute2, attribute3, attribute4
FROM tableName
WHERE attribute = 'anyString'; 		// Only have to use single quote

*****************************************************************
		Comparision Conditions
-----------------------------------------------------------------
	= 			Equal to
	> 			Greater than
	< 			Less than
	>= 			Greater than or equal to
	<= 			Less than or equal to
	<> 			Not equal to
	BETWEEN ... AND ... 	Between two values (inclusive)
	IN (set) 		Match any of a list of values
	LIKE 			Math a character pattern
	IS NULL 		Is a null value?
*****************************************************************

Using Comparision Conditions
----------------------------
SELECT last_name, salary
FROM employees
WHERE salary <=3000;

Using the BETWEEN Condition
---------------------------
SELECT last_name, salary
FROM employees
WHERE salary BETWEEN 2500 AND 3500;

Using the IN Condition
----------------------
SELECT employee_id, last_name, salary, manager_id
FROM employees
WHERE manager_id IN (100,101,201);

Using the LIKE Condition
------------------------
SELECT first_name
FROM employees
WHERE first_name LIKE 'S%';		// Where first letter is S

SELECT first_name
FROM employees
WHERE first_name LIKE '_o%';		// Where o in any position

SELECT employee_id, last_name, job_id
FROM employees
WHERE job_id LIKE '%\_%' ESCAPE '\'; 	// If we want to find actual _ or % then we have to use ESCAPE

Using the IS NULL Condition
---------------------------
SELECT last_name, manager_id
FROM employees
WHERE manager_id IS NULL;

**************************************************************************
				Logical Conditions
--------------------------------------------------------------------------
	AND		Returns TRUE if both component conditions are true
	OR		Returns TRUE if either component condition is true
	NOT		Returns TRUE if the following condition is false
**************************************************************************

Using the AND Operator
----------------------
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary >= 10000
AND job_id LIKE '%MAN%';

Using the OR Operator
--------------------
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary >= 10000
OR job_id LIKE '%MAN%';

Using the NOT Operator
----------------------
SELECT last_name, job_id
FROM employees
WHERE job_id
NOT IN ('IT_PROG', 'ST_CLERK', 'SA_REP');

Rules of Precedence
-------------------
SELECT last_name, job_id, salary
FROM employees
WHERE job_id = 'SA_REP'
OR job_id = 'AD_PRES'
AND salary > 15000;

SELECT last_name, job_id, salary
FROM employees
WHERE (job_id = 'SA_REP'
OR job_id = 'AD_PRES')
AND salary > 15000;

Using the ORDER BY Close
------------------------
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date;		// ascending order is default

SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date DESC;	// sorting by descending order

SELECT last_name, department_id, salary*12 annsal
FROM employees
ORDER BY annsal;		// sorting by column alias

SELECT last_name, department_id, salary
FROM employees
ORDER BY department_id, salary DESC;	// sorting by multiple columns

Using the & (ampersand) Substitution Variable
-----------------------------------------------
SELECT employee_id, last_name, salary, department_id
FROM EMPLOYEES
WHERE EMPLOYEE_ID = &employee_id;

Character Values with Substitution Variables
--------------------------------------------
select last_name,job_id, department_id, salary*12
from employees
where job_id = '&job_title';

Specifying Column Names Expressions, and Text
---------------------------------------------
select employee_id, last_name, job_id, &column_name
from employees
where &condition
order by &order_column;

Using the && Substitution Variable
----------------------------------
select employee_id, last_name, job_id, &&column_name
from employees
order by &column_name;

Using the DEFINE Command and UNDEFINE Command
---------------------------------------------
define employee_num = 200
select employee_id, last_name, salary, department_id
from employees
where employee_id = &employee_num;

undefine employee_num
select employee_id, last_name, salary, department_id
from employees
where employee_id = &employee_num;

Using the VERIFY Command
------------------------
set varify on
select employee_id, last_name, salary
from employees
where employee_id = &employee_num;