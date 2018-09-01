create view v1
    as 
        select employee_id, last_name, salary
        from employees
        where department_id = 80;
        
desc v1;

select *
from v1;