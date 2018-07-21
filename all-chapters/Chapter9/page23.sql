create table t5(
    employee_id number(6),
    last_name varchar2(25) not null,
    email varchar2(25),
    constraint t5_uk unique(email)
    );