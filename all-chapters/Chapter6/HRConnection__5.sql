select employee_id, last_name, job_id, salary
from employees
where salary < any (select salary
                    from employees
                    where job_id = 'IT_PROG')
and job_id <> 'IT_PROG';