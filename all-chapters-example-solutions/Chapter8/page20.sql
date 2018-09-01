delete from sales_reps
where commission_pct=
                (
                select commission_pct
                from employees
                where commission_pct=0.25
                );
select *
from sales_reps;