insert first
when empid>200 then
into sal_history values(empid,hire_date,sal)
else
into mgr_history values(empid,mgr,sal)

select employee_id empid,hire_date,salary sal,manager_id mgr
from employees
;





