select last_name, salary
from employees
where manager_id = (
    select employee_id
    from employees
    where last_name = 'King'
);