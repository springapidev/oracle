alter sequence s1
        increment by 20
        maxvalue 99999
        nocache
        nocycle;
        
insert into t3(employee_id, first_name)
values(s1.nextval, 'Jobs');

select *
from t3;

drop sequence s1;