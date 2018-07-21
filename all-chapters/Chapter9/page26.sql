create table t6(
    employee_id number(6),
    last_name varchar2(25) not null,
    department_id number(4),
    constraint t6_fk foreign key(department_id) references departments(department_id)
    );