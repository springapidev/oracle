create view v2
    as
        select employee_id id_number, last_name name, salary*12 ann_salary
        from employees
        where department_id = 50;
        
select *
from v2;