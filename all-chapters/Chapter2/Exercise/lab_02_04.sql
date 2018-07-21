select last_name, job_id, hire_date
from employees
where last_name in('Matos', 'Taylor')
order by hire_date;