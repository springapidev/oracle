select last_name, department_id, job_id
from employees
where department_id in (
    select department_id
    from departments
    where location_id=&Enter_location
);