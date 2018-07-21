select employee_id, job_id
from employees
intersect
select employee_id, job_id
from job_history;