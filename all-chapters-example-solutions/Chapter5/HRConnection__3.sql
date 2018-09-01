select employees.employee_id, employees.last_name, departments.location_id, department_id
from employees join departments
using (department_id);