SELECT employee_id, manager_id, department_id 
FROM employees
WHERE ( manager_id, department_id) IN ( SELECT  manager_id, department_id FROM employees WHERE first_name = 'John')
AND first_name <> 'John' ;



SELECT employee_id, last_name,( CASE WHEN department_id = (SELECT department_id FROM departments WHERE location_id = 1800) THEN 'Canada' ELSE 'USA' END) location
FROM employees;



SELECT employee_id, last_name
FROM employees e
ORDER BY  (SELECT department_name FROM departments d WHERE 
e.department_id = d.department_id);




SELECT department_id, last_name,salary
FROM employees outer
WHERE salary > (SELECT AVG (salary) FROM employees WHERE 
department_id = outer.department_id);



SELECT e.employee_id, last_name, e.job_id
FROM employees e
WHERE 2 <= (SELECT COUNT(*) FROM job_history WHERE 
employee_id = e.employee_id);



SELECT employee_id, last_name, job_id, department_id
FROM employees e
WHERE EXISTS (SELECT 'X' FROM employees WHERE 
manager_id = e.employee_id);




SELECT department_id,  department_name
FROM  departments d
WHERE NOT EXISTS (SELECT 'X' FROM employees WHERE 
department_id = d.department_id);




ALTER TABLE emp13
ADD department_name varCHAR (2);



ALTER table emp13
MODIFY department_name varchar(25);



WITH 
dept_costs AS 
(SELECT d.department_name, SUM(e.salary) AS dept_total FROM employees e JOIN departments d ON e.department_id = d.department_id GROUP BY d.department_name),
avg_cost AS
( SELECT SUM(dept_total)/COUNT(*) AS dept_avg FROM dept_costs)
SELECT * 
FROM dept_costs
WHERE dept_total > (SELECT dept_avg FROM avg_cost)
ORDER BY department_name; 




UPDATE emp13 e
SET department_name = (SELECT department_name FROM departments
WHERE department_id = e.department_id );



SELECT employee_id, last_name, job_id, manager_id
FROM employees
START WITH employee_id = 101
CONNECT BY PRIOR manager_id = employee_id;



SELECT employee_id, last_name, job_id, manager_id
FROM employees
START WITH employee_id = 101
CONNECT BY PRIOR employee_id = manager_id;



SELECT employee_id, last_name, job_id, manager_id
FROM employees
START WITH  manager_id IS NULL
CONNECT BY PRIOR  manager_id = employee_id;



SELECT last_name || ' reports to ' ||
PRIOR last_name "Walk top Down"
FROM employees
START WITH  last_name = 'King'
CONNECT BY PRIOR employee_id = manager_id;



COLUMN org_chat FORMAT A12
SELECT LPAD (last_name, LENGTH(last_name) + (LEVEL * 2) - 2, '_')
AS org_chart
FROM employees
START WITH  first_name = 'Steven' AND last_name = 'King'
CONNECT BY PRIOR employee_id = manager_id;



COLUMN org_chat FORMAT A12
SELECT LPAD (last_name, LENGTH(last_name) + (LEVEL * 2) - 2, '*')
AS org_chart
FROM employees
START WITH  first_name = 'Steven' AND last_name = 'King'
CONNECT BY PRIOR employee_id = manager_id;

 

SELECT employee_id, last_name, job_id, manager_id
FROM employees
START WITH employee_id = 101
CONNECT BY PRIOR manager_id = employee_id;


SELECT employee_id, last_name, job_id, manager_id
FROM employees
START WITH employee_id = 101
CONNECT BY PRIOR employee_id = manager_id;



SELECT employee_id, last_name, job_id, manager_id
FROM employees
START WITH  manager_id IS NULL
CONNECT BY PRIOR  manager_id = employee_id;



SELECT last_name || ' reports to ' ||
PRIOR last_name "Walk top Down"
FROM employees
START WITH  last_name = 'King'
CONNECT BY PRIOR employee_id = manager_id;


COLUMN org_chat FORMAT A12
SELECT LPAD (last_name, LENGTH(last_name) + (LEVEL * 2) - 2, '_')
AS org_chart
FROM employees
START WITH  first_name = 'Steven' AND last_name = 'King'
CONNECT BY PRIOR employee_id = manager_id;


COLUMN org_chat FORMAT A12
SELECT LPAD (last_name, LENGTH(last_name) + (LEVEL * 2) - 2, '*')
AS org_chart
FROM employees
START WITH  first_name = 'Steven' AND last_name = 'King'
CONNECT BY PRIOR employee_id = manager_id;


noman

UPDATE products p
SET stock = stock - (SELECT SUM(quantity)
FROM sales WHERE product_id = p.product_id)


UPDATE products p
SET stock = stock - NVL((SELECT SUM(quantity)
FROM sales WHERE product_id = p.product_id),0);







