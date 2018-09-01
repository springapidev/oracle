select e.employee_id, e.last_name, d.location_id, department_id
from employees e join departments d
using (department_id);