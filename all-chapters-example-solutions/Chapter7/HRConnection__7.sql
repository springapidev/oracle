select department_id, to_number(null) location, hire_date
from employees
union
select department_id, location_id, to_date(null)
from departments;