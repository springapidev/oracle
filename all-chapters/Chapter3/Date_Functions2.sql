select
  sysdate as today,
  hire_date as hiredate,
  round(sysdate - hire_date) as day,
  round((sysdate - hire_date)/7) as weak,
  round((sysdate - hire_date)/30) as months,
  round((sysdate - hire_date)/365) as year
from employees;