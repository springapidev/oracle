select * from job_history 





SELECT employee_id, CONCAT(first_name, last_name) Name, LENGTH(last_name), 
INSTR(last_name, 'a') "Contains 'a' ?"
FROM employees
WHERE SUBSTR(last_name, -1, 1) = 'n';






SELECT last_name,TRUNC((SYSDATE-hire_date)/365) "year",TRUNC( MOD(SYSDATE-hire_date, 356)/30) "month", 
TRUNC(MOD(MOD(SYSDATE-hire_date, 356), 30)) "Day"
FROM employees
WHERE job_id = 'SA_REP';




SELECT last_name,TRUNC((SYSDATE-hire_date)/365) "year",TRUNC( MOD(SYSDATE-hire_date, 356)/30) "month", 
TRUNC(MOD(MOD(SYSDATE-hire_date, 356), 30)) "Day"
FROM employees
WHERE job_id = 'SA_REP';





SELECT  department_id, max(salary), min(salary), sum(salary), avg(salary), count(commission_pct)
FROM employees
GROUP BY department_id;





SELECT  department_id, job_id, max(salary), min(salary), sum(salary), avg(salary), count(commission_pct)
FROM employees
GROUP BY department_id, job_id
ORDER BY department_id, job_id;





SELECT department_id, AVG(salary)
FROM employees
GROUP BY department_id
HAVING avg(salary)>8000;




SELECT department_id, AVG(salary)
FROM employees
WHERE department_id NOT IN(20)
GROUP BY department_id
HAVING avg(salary)>8000;





SELECT D.department_id, department_name, MIN(salary)
FROM departments D, employees E
WHERE D.department_id = E.department_id
GROUP BY D.department_id, department_name;





SELECT employee_id, last_name, salary, D.department_id, department_name 
FROM employees E, departments D
WHERE E.department_id(+) = D.department_id;





SELECT employee_id, last_name, salary, department_name, city 
FROM employees E, departments D, locations L
WHERE E.department_id = D.department_id AND D.location_id = L.location_id;





SELECT employee_id, last_name, salary, department_name, city 
FROM employees E, departments D, locations L
WHERE E.department_id = D.department_id AND D.location_id = L.location_id;





SELECT employee_id, last_name, salary, department_name
FROM employees 
 JOIN departments USING (department_id);





SELECT e.last_name emp, m.last_name mgr
FROM employees e
JOIN employees m
ON (e.manager_id = m.employee_id)
WHERE e.manager_id = 100; 




SELECT e.last_name, e.department_id, d.department_name
FROM employees e 
FULL OUTER JOIN departments d
ON (e.department_id = d.department_id);





SELECT  last_name, job_id, salary
FROM employees
WHERE  job_id in('SA_REP', 'ST_CLERK') AND salary NOT IN (2500, 3500, 7000);





SELECT * FROM employees 
WHERE salary=(SELECT salary FROM employees WHERE last_name='Abel');




SELECT * FROM employees 
WHERE salary=(SELECT salary FROM employees WHERE last_name='Abel')
AND last_name != 'Abel';




SELECT * FROM employees 
WHERE salary=(SELECT min(salary) FROM employees WHERE job_id='IT_PROG' )
AND job_id != 'IT_PROG';




SELECT  last_name, job_id
FROM employees
WHERE job_id = (SELECT job_id FROM employees WHERE employee_id =141);




SELECT  last_name, job_id, salary
FROM employees
WHERE job_id = (SELECT job_id FROM employees WHERE employee_id =141)
AND salary > (SELECT salary FROM employees WHERE employee_id = 143);


SELECT  department_id, MIN(salary)
FROM employees
GROUP BY department_id
HAVING MIN(salary) > (SELECT MIN(salary) FROM employees WHERE department_id = 50);



SELECT  job_id, last_name
FROM employees
WHERE job_id = (SELECT job_id FROM employees WHERE last_name = 'Haas');




SELECT employee_id, last_name, salary, job_id
FROM employees
WHERE salary <ANY (SELECT salary FROM employees WHERE job_id = 'IT_PROG')
AND job_id <> 'IT_PROG';



SELECT employee_id, job_id
FROM employees
INTERSECT
SELECT employee_id, job_id
FROM job_history;




SELECT employee_id, job_id
FROM employees
UNION
SELECT employee_id, job_id
FROM job_history;



SELECT employee_id, job_id, salary
FROM employees
UNION
SELECT employee_id, job_id, 0
FROM job_history;



SELECT employee_id, job_id, salary
FROM employees
UNION All
SELECT employee_id, job_id, 0
FROM job_history
ORDER BY employee_id;



SELECT employee_id, job_id, hire_date, To_Date(NULL) end_date, salary 
FROM employees
UNION All
SELECT employee_id, job_id, start_date, end_date, 0
FROM job_history
ORDER BY employee_id;




SELECT last_name, employee_id, job_id, hire_date, To_Date(NULL) end_date, salary 
FROM employees
UNION All
SELECT '', employee_id, job_id, start_date, end_date, 0
FROM job_history
ORDER BY employee_id;


grant connect to noman 



CREATE table products( 
Product_id number(10) primary Key,
Product_name varChar(15),
Stock number(10),
Price number(12,2)
) 



GRANT RESOURCE TO noman 


SELECT * FROM user_objects


INSERT INTO Products (product_id, product_name, stock, price)
VALUES (100, 'Pen', 100, 50);



INSERT INTO Products (product_id, product_name, stock, price)
VALUES (&product_id, '&product_name', &stock, &price);



COMMIT 


UPDATE products set price=550 



rollback


UPDATE products 
SET product_name = 'Kana',
       price = 100
WHERE product_id = 100; 



delete from products
where product_id = 102; 




INSERT  INTO departments(department_id, department_name, manager_id, location_id)
VALUES (271, 'Public Relations', 100, 1700);




INSERT  INTO departments(department_id, department_name)
VALUES (272, 'Purchasing');



INSERT  INTO departments
VALUES (273, 'Finance', NULL, NULL);



INSERT  INTO departments
VALUES (273, 'Finance', NULL, NULL);



INSERT  INTO employees (employee_id, first_name, last_name, email,  phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
VALUES (213, 'Louis', 'Popp', 'Lpopp', '515.124.4567', SYSDATE, 'AC_ACCOUNT', 6900, NULL, 205, 100);




INSERT INTO employees
VALUES (214, 'Den', 'Rapheal', 'DrapheaL', '515.127.4561', TO_DATE('FEB 3, 1999', 'MON DD, YYYY'), 'AC_ACCOUNT', 11000, NULL, 100, 30);



CREATE TABLE emp
AS
SELECT employee_id, last_name, salary
FROM employees;



DELETE  FROM emp


INSERT INTO emp
SELECT employee_id, last_name, salary
FROM employees
where department_id = 10
;



SAVEPOINT  dept10;



INSERT INTO emp
SELECT employee_id, last_name, salary
FROM employees
where department_id = 20;



INSERT INTO emp
SELECT employee_id, last_name, salary
FROM employees
where department_id = 50;


rollback to dept20;


create table emp
as 
select * from employees;



drop table emp


UPDATE employees
SET department_id = 70
WHERE employee_id = 113;


UPDATE emp
SET department_id = 110;



INSERT INTO 
(SELECT employee_id, last_name, email, hire_date, job_id, salary, department_id
FROM employees
WHERE department_id=50)
VALUES (99999, 'Taylor', 'DTAYLOR', TO_DATE('07-JUN-99', 'DD-MON-RR'), 'ST_CLERK', 5000, 50);



SELECT employee_id, last_name, email, hire_date, job_id, salary, department_id
FROM employees
WHERE department_id=50


SELECT * FROM user_constraints


CREATE table products( 
Product_id number(10)  constraints product_id_pk primary Key,
Product_name varChar(15) not Null,
Stock number(10),
Price number(12,2)
) 



CREATE table products( 
Product_id number(10)  constraints product_id_pk primary Key,
Product_name varChar(15) not Null,
Stock number(10),
Price number(12,2),
Stock_date date default sysdate
) 


CREATE TABLE customers(
customer_id number(10) constraints customer_id_pk primary key,
customer_name varChar(25) not null,
email varChar(30) unique,
age number(3),
constraints customer_age_check check(age>=18)  
)




CREATE TABLE sales(
sales_id number(10) constraints sales_id_pk primary key, 
product_id number(10),
customer_id number(10),
quantity number(12,2),
 price number(10,2),
sales_date date,
CONSTRAINTS product_id_fk FOREIGN KEY (product_id) REFERENCES products (product_id),
CONSTRAINTS customer_id_fk FOREIGN KEY (customer_id) REFERENCES customers (customer_id) )



ALTER TABLE sales
ADD(CONSTRAINTS product_id_fk FOREIGN KEY (product_id) REFERENCES products (product_id),
CONSTRAINTS customer_id_fk FOREIGN KEY (customer_id) REFERENCES customers (customer_id) )



ALTER TABLE salse
drop CONSTRAINTS product_id_fk;


alter table sales
drop constraints product_id_fk



alter table sales
add constraints customer_id_fk foreign key (customer_id) references customers(customer_id) on delete set null;



alter table sales
add constraints product_id_fk foreign key (product_id) references products(product_id) on delete set null;



delete from products
where product_id=101;



delete from customers
where customer_id=401;


ALTER TABLE customers
ADD  zip_code number(10);


ALTER TABLE customers
DROP COLUMN  zip_code;


ALTER TABLE customers
ADD zip_code number(10) default 1600;


CREATE VIEW empvu80
AS SELECT employee_id, last_name, salary
From employees
WHERE department_id=80;



desc empvu80

select * from empvu80



CREATE OR REPLACE  VIEW salvu50
AS SELECT employee_id ID_NUMBER, last_name NAME, salary*12 SALARY
FROM employees
WHERE department_id=50;




CREATE OR REPLACE  VIEW salvu50 (ID_NUMBER, NAME, ANN_SALARY)
AS SELECT employee_id, last_name , salary*12 
FROM employees
WHERE department_id=50;




CREATE OR REPLACE VIEW dept_sum_vu(name, minsal, maxsal, avgsal)
AS SELECT d.department_name, MIN(e.salary), MAX(e.salary), AVG(e.salary)
FROM employees e JOIN departments d
ON (e.department_id=d.department_id)
GROUP BY d.department_name;



SELECT * FROM cat



CREATE OR REPLACE VIEW empvu20
AS SELECT *
FROM employees
WHERE department_id=20
WITH CHECK OPTION CONSTRAINT empvu20_ck; 


drop view empvu10



CREATE SEQUENCE dept_deptid_seq
INCREMENT BY 10
START WITH 120
MAXVALUE 9999
NOCACHE
NOCYCLE;


SELECT * FROM user_sequences


INSERT INTO products
values(dept_deptid_seq.NEXTVAL, 'Processor', 50, 15000, sysdate);




CREATE VIEW employee_id_vu
AS SELECT * FROM employees
WHERE job_id='IT_PROG';



CREATE SYNONYM Programer 
FOR employee_id_vu; 


SELECT * FROM programer; 


select * from dictionary


SELECT object_name, object_type, created, status
FROM user_objects
order by object_type;


desc user_tables;


desc user_tables;


desc user_tab_columns;

select * from user_tables;


select column_name, data_type, data_length, data_precision, data_scale, nullable  
 from user_tab_columns
WHERE table_name='PRODUCTS';


desc user_constraints


select * from user_cons_columns;


COMMENT ON COLUMN products.stock
IS 'How many products on hand';


SELECT * FROM user_COL_COMMENTS;


SELECT * FROM user_tab_COMMENTS;


SELECT constraint_name, constraint_type, search_condition, r_constraint_name, delete_rule, status
FROM user_constraints







