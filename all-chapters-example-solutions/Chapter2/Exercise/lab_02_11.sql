select employee_id, last_name, salary, department_id
from employees
where manager_id = &manager_id
order by &sorting_column;