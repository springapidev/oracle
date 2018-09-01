create table sales_reps(
    id number(10),
    name varchar2(20),
    salary number(8),
    commission_pct number(3,2),
    department_id number(10)
);

drop table sales_reps;

insert into sales_reps(id, name, salary, commission_pct, department_id)
select employee_id, last_name, salary, commission_pct, department_id
from  employees
where job_id like '%REP%';

select *
from sales_reps;

rollback;

update sales_reps
set department_id = 70
where id=150;

update sales_reps
set department_id = 20;

update sales_reps
set salary = 10, commission_pct = 0.2, department_id = 30
where id = 150;

delete from sales_reps
where id = 150;

delete from sales_reps
where commission_pct=
                (
                select commission_pct
                from employees
                where commission_pct=0.25
                );