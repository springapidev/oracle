select department_id, last_name, job_id
from employees
where department_id in (
    select department_id
    from departments
    where department_name = 'Executive'
);