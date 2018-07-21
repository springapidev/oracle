create table abc2(
  id number(10) not null,
  name varchar2(50) not null,
  contact_name varchar2(50),
  constraint abc2_pk primary key (id), -- automatic index
  constraint abc2_unique unique(name) -- automatic index
);

create sequence s
  increment by 1
  start with 1
  maxvalue 100
  nocache
  nocycle;

INSERT into abc2(id, name, contact_name)
values(s.nextval, 'shamim', 'sarker');

select *
from abc2;
desc abc2;