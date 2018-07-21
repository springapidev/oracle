--Creating a sequence
create sequence dept_deptid_seq
  increment by 10
  start with 120
  maxvalue 9999
  nocache
  nocycle;
  

truncate table abc;
select *
from abc;
desc abc;

insert into abc(abc_id, first_name)
values(dept_deptid_seq.nextval, 'shahin');

select dept_deptid_seq.currval
from dual;

alter SEQUENCE dept_deptid_seq
  INCREMENT by 20
  maxvalue 9999
  nocache
  nocycle;

drop SEQUENCE dept_deptid_seq;
