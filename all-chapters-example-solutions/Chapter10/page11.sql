create or replace view  v1(id_number, name, sal, department_id)
as
    select employee_id, first_name ||' '||last_name, salary, department_id
    from employees
    where department_id = 80;
    
select *
from v1;