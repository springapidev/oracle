create or replace view v5(employee_number, employee_name, job_title)
as
    select employee_id, last_name, job_id
    from employees
    where department_id = 10
    with read only;
    
select *
from v5;