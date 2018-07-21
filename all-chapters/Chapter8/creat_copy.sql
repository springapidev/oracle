create table students
    (student_id number(10),
    first_name varchar2(14),
    last_name varchar2(14));
    
insert into students(student_id, first_name, last_name)
select employee_id, first_name, last_name
from employees;

select *
from students; 