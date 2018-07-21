desc t3;

insert into t3(employee_id, first_name)
values(s1.nextval, 'Rahman');

select *
from t3;

select s1.currval
from dual;