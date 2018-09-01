create table t3(
    employee_id number(6)
        constraint t3_pk primary key, /*Column level constraint*/
    first_name varchar2(20)
    );

create table t4(
    employee_id number(6),
    first_name varchar2(20),
    job_id varchar2(10) not null, /*column level constraint*/
    constraint t4_pk primary key(employee_id) /*table level constraint*/
    );