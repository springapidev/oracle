CREATE TABLE sal_history
AS SELECT employee_id empid, hire_date hiredate, salary sal
FROM employees;


CREATE TABLE mgr_history
AS SELECT employee_id empid, manager_id mgr, salary sal
FROM employees;



delete from sal_history;
delete from mgr_history;



INSERT ALL
INTO sal_history VALUES (empid, hiredate, sal)
INTO mgr_history VALUES (empid, mgr, sal)
SELECT employee_id empid, hire_date hiredate, salary sal, manager_id mgr
FROM employees
WHERE employee_id > 200;



INSERT ALL
WHEN sal > 10000 THEN
     INTO sal_history VALUES (empid, hiredate, sal)
WHEN mgr > 200 THEN
    INTO mgr_history VALUES (empid, mgr, sal)
SELECT employee_id empid, hire_date hiredate, salary sal, manager_id mgr
FROM employees
WHERE employee_id > 200;



INSERT ALL
WHEN sal > 10000 THEN
     INTO sal_history VALUES (empid, hiredate, sal)
WHEN mgr > 200 THEN
    INTO mgr_history VALUES (empid, mgr, sal)
SELECT employee_id empid, hire_date hiredate, salary sal, manager_id mgr
FROM employees
WHERE employee_id > 200;



CREATE TABLE special_sal
AS SELECT department_id deptid, (salary) sal
FROM employees;

CREATE TABLE hiredate_history
AS SELECT department_id deptid, (hire_date) hiredate
FROM employees;



delete from hiredate_history;
delete from special_sal;


CREATE TABLE hiredate_history_00
AS SELECT department_id deptid, (hire_date) hiredate
FROM employees;
CREATE TABLE hiredate_history_99
AS SELECT department_id deptid, (hire_date) hiredate
FROM employees;


delete from hiredate_history_00;
delete from hiredate_history_99;



INSERT ALL
WHEN sal > 25000 THEN
     INTO special_sal VALUES (deptid, sal)
WHEN hiredate LIKE('%00%') THEN
    INTO hiredate_history_00 VALUES (deptid, hiredate)
WHEN hiredate LIKE('%99%') THEN
    INTO hiredate_history_99 VALUES (deptid, hiredate)
SELECT department_id deptid, SUM(salary) sal, MAX(hire_date) hiredate
FROM employees
GROUP BY department_id;



select last_name, hire_date, TO_CHAR(hire_date, 'ww') week, TO_CHAR(hire_date, 'DY') day
FROM employees;



CREATE OR REPLACE VIEW emp_week_view 
AS SELECT last_name, hire_date, TO_CHAR(hire_date, 'ww') week, TO_CHAR(hire_date, 'DY') day
FROM employees;



SELECT TO_CHAR(hire_date, 'ww') week, count(TO_CHAR(hire_date, 'ww'))  
FROM emp_week_view 
GROUP BY week;



DELETE FROM emp13


INSERT INTO emp13
SELECT * FROM employees; 



UPDATE emp13
SET salary=10000;


DELETE FROM emp13
WHERE employee_id=113;



commit


MERGE INTO emp13 C
   USING employees E
  ON (C.employee_id = E.employee_id)
WHEN MATCHED THEN
UPDATE SET
  C.salary = E.salary
WHEN NOT MATCHED THEN
INSERT VALUES(E.employee_id, E.first_name, E.last_name, E.email, E.phone_number, E.hire_date, E.job_id, E.salary, E.commission_pct, E.manager_id, E.department_id);



SELECT salary FROM employees
VERSIONS BETWEEN SCN MINVALUE AND MAXVALUE
;



UPDATE emp13
SET salary = 10000
WHERE employee_id = 107;




SELECT salary FROM employees
VERSIONS BETWEEN SCN MINVALUE AND MAXVALUE
WHERE employee_id = 107;



SELECT department_id, job_id, SUM(salary)
FROM employees
WHERE department_id < 60
GROUP BY ROLLUP (department_id, job_id);


SELECT department_id, job_id, SUM(salary)
FROM employees
WHERE department_id < 60
GROUP BY CUBE (department_id, job_id);


SELECT department_id, job_id, SUM(salary)
FROM employees
WHERE department_id < 60
GROUP BY CUBE (department_id, job_id)
ORDER BY SUM(salary);



SELECT department_id deptid, job_id job, SUM(salary),
GROUPING (department_id) grp_dept,
GROUPING (job_id) grp_job
FROM employees
WHERE department_id < 50
GROUP BY ROLLUP (department_id, job_id)
ORDER BY SUM(salary);



SELECT department_id, job_id, manager_id, AVG(salary)
FROM employees
GROUP BY
GROUPING SETS
( (department_id, job_id, manager_id),(department_id, manager_id) , ( job_id, manager_id));



SELECT department_id, job_id, manager_id, AVG(salary)
FROM employees
GROUP BY
GROUPING SETS
( (department_id, job_id), ( job_id, manager_id));



SELECT department_id, job_id, manager_id, SUM(salary)
FROM employees
GROUP BY ROLLUP (department_id, ( job_id, manager_id));



SELECT department_id, job_id, manager_id, SUM(salary)
FROM employees
GROUP BY department_id,
ROLLUP(job_id), CUBE(manager_id);



CREATE TABLE  testtime(
r_date DATE,
t_date TIMESTAMP);



INSERT INTO testtime
VALUES(sysdate, sysdate)



CREATE TABLE  testtime1(
r_date DATE,
t_date TIMESTAMP WITH TIME ZONE);



INSERT INTO testtime1
VALUES (sysdate, sysdate);



ALTER SESSION 
SET NLS_DATE_FORMAT = 'DD-MON-YYYY HH24:MI:SS';
ALTER SESSION SET TIME_ZONE = '-5:0';
SELECT SESSIONTIMEZONE, CURRENT_DATE FROM DUAL;


ALTER SESSION SET TIME_ZONE = '-5:0';
SELECT SESSIONTIMEZONE, LOCALTIMESTAMP 
FROM DUAL;



SELECT DBTIMEZONE FROM DUAL;


SELECT SESSIONTIMEZONE FROM DUAL;



INSERT INTO  warranty VALUES (123, INTERVAL '8' MONTH);
INSERT INTO  warranty VALUES (155, INTERVAL '200' YEAR (3));
INSERT INTO  warranty VALUES (678, '200-11');
SELECT * FROM warranty;



CREATE TABLE warranty
(prod_id NUMBER, warranty_time INTERVAL YEAR (3) TO MONTH);
INSERT INTO  warranty VALUES (123, INTERVAL '8' MONTH);
INSERT INTO  warranty VALUES (155, INTERVAL '200' YEAR (3));
INSERT INTO  warranty VALUES (678, '200-11');



CREATE TABLE lab
(exp_id NUMBER, test_time INTERVAL DAY(2) TO SECOND);
INSERT INTO lab VALUES (100012, '90 00:00:00');
INSERT INTO lab VALUES (56093, INTERVAL '6 03:30:16' DAY TO SECOND);
SELECT * FROM lab;



SELECT last_name ,EXTRACT (MONTH FROM hire_date)
FROM employees;



SELECT last_name, hire_date, EXTRACT (YEAR FROM hire_date), EXTRACT (MONTH FROM hire_date)
FROM employees;



SELECT  EXTRACT (YEAR FROM sysdate), EXTRACT (MONTH FROM sysdate), EXTRACT (DAY FROM sysdate)
FROM dual;



SELECT * FROM V$TIMEZONE_NAMES;



SELECT TZ_OFFSET ('Asia/Dhaka ') FROM DUAL;


SELECT department_id,last_name, salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees) OR salary = (SELECT MIN(salary) FROM employees);