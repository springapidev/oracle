create or replace view v4
as
    select *
    from employees
    where department_id = 20
    with check option constraint v4_ck;
    
select *
from v4;

update v4
set department_id = 10
where employee_id = 201;
