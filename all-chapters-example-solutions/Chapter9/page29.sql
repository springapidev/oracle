create table t7(
    employee_id number(6) primary key,
    first_name varchar2(20) not null,
    email varchar2(25) not null unique,
    salary number(8,2) check(salary>5000),
    department_id number(4)
    constraint t7_fk references departments(department_id) /*column level constraint*/
    );