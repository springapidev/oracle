select last_name, job_id, salary
from employees
where job_id in('SA_REP', 'ST_CLERK')
and salary not in(2500, 3500, 7000);