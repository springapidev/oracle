select last_name, salary
from employees
where salary > 
  (select salary
  from employees
  where last_name = 'Abel');