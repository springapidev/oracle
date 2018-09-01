select last_name, salary, commission_pct
from employees
where commission_pct is not null
order by salary, commission_pct desc;