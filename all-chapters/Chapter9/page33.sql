create table t8
    as
        select employee_id, last_name, salary*12 annsal, hire_date
        from employees
        where department_id = 80;
        
desc t8;

select *
from t8;