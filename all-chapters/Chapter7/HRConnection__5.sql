select employee_id
from employees
minus
select employee_id
from job_history;