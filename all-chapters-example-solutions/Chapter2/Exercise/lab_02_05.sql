select last_name, department_id
from employees
where department_id in (20,50)
order by last_name;