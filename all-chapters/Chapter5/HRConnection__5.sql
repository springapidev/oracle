select e.employee_id, e.last_name, e.department_id, d.department_id, d.location_id
from employees e join departments d
on (e.department_id = d.department_id);