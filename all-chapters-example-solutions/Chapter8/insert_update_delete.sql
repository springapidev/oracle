insert into departments(department_id, department_name, manager_id, location_id)
values (280, 'J2EE', 100, 1700);

insert into departments
values (290, 'WPSI', null, 1700);

update departments
set manager_id = 100
where department_id = 290;

delete from departments
where department_id in (290);

select *
from departments
order by department_id;

