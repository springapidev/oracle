select e.last_name emp, m.last_name mgr
from employees e join employees m
on (e.manager_id = m.employee_id);