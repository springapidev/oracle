select last_name, job_id
from employees
where job_id = (select job_id
                from employees
                where last_name = 'Urman');