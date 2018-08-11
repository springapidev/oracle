CREATE USER noman
IDENTIFIED BY noman;


CREATE ROLE myrole;


GRANT create session, create table
TO myrole;


GRANT select on hr.employees to myrole;


GRANT myrole TO noman111, noman222, noman333;


select * from hr.employees


GRANT select,insert
ON products
TO noman111;


ALTER TABLE table_name
RENAME COLUMN present_col_name TO change_col_name;



UPDATE table_name
SET column_name=value
WHERE column_name=value;



GRANT select, update
ON products
TO noman222;



GRANT select,insert
ON products
TO noman111;


select * from noman.products


REVOKE update
ON products
FROM noman222;


GRANT SELECT, INSERT
ON customers
TO noman333
WITH GRANT OPTION;



GRANT select
ON noman.customers
TO noman111;


select * FROM noman.customers


select * FROM ROLE_SYS_PRIVS;


select * FROM USER_SYS_PRIVS;


REVOKE select
ON noman.customers
FROM noman111;


SELECT * FROM noman.customers;


REVOKE ALL
ON products
FROM noman111, noman222, noman333;


CREATE TABLE xx(bdb number(10));


DROP TABLE xx;


select * from recyclebin 


FLASHBACK TABLE xx TO BEFORE DROP;


DROP TABLE xx PURGE;


PURGE recyclebin;


CREATE TABLE emp13 
AS (SELECT * FROM employees);



INSERT INTO (SELECT employee_id, last_name, email, hire_date, job_id, salary, department_id
FROM emp13
WHERE department_id=50)
VALUES (99999, 'Taylor', 'DTAYLOR', TO_DATE('07-JUN-99', 'DD-MON-RR'), 'ST_CLEARK', 5000, 50);




INSERT INTO (SELECT employee_id, last_name, email, hire_date, job_id, salary, department_id
FROM emp13
WHERE department_id=50 
WITH CHECK OPTION)
VALUES (99999, 'Taylor', 'DTAYLOR', TO_DATE('07-JUN-99', 'DD-MON-RR'), 'ST_CLEARK', 5000, 40);



INSERT INTO (SELECT employee_id, last_name, email, hire_date, job_id, salary, department_id
FROM emp13
WHERE department_id=50 
WITH CHECK OPTION)
VALUES (99999, 'Taylor', 'DTAYLOR', TO_DATE('07-JUN-99', 'DD-MON-RR'), 'ST_CLEARK', 5000, 50);




SELECT a.last_name, a.salary, a.department_id, b.salavg
FROM employees a JOIN (SELECT department_id, AVG(salary) salavg 
                       FROM employees 
                      GROUP BY department_id) b
ON a.department_id=b.department_id
AND a.salary > b.salavg;




UPDATE emp13
SET  job_id = (SELECT job_id
               FROM employees
               WHERE employee_id = 205),
       salary = (SELECT salary
                FROM employees
                WHERE employee_id = 168)
WHERE employee_id = 114;





