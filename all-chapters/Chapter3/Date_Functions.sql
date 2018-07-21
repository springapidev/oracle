select 
  sysdate, --system date
  round(months_between(sysdate, '10-AUG-90')) as month,
  add_months(sysdate, 8),
  next_day(sysdate, 'friday'),
  last_day(sysdate)
from dual;