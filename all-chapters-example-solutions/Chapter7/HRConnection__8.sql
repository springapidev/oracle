select employee_id, job_id, salary
from employees
union
select employee_id, job_id, 0
from job_history;