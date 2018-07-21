create or replace view v3(name, minsal, maxsal, avgsal)
as
    select d.department_name, min(e.salary), max(e.salary), avg(e.salary)
    from employees e join departments d
    on (e.department_id = d.department_id)
    group by d.department_name;
    
select *
from v3;