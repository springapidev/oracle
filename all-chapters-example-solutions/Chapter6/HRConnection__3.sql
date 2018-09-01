select department_id, min(salary)
from employees
group by department_id
having min(salary) > (select min(salary) from employees where department_id=50);