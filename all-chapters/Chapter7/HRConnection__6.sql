select employee_id, department_id
from employees
where (employee_id, department_id)
    in(select employee_id, department_id
        from employees
        union
        select employee_id, department_id
        from job_history);