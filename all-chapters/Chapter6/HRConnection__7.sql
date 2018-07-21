select last_name
from employees
where employee_id not in(select manager_id from employees);