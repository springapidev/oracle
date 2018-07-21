select last_name, round(months_between(sysdate, hire_date),0) months_worked
from employees
order by months_worked;